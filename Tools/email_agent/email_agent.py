#!/usr/bin/env python3
"""
Spinrise Email Monitor Agent
Watches a Thunderbird mail folder for new emails, summarises each with AI,
and appends the result to D:\\Spinrise\\Docs\\Email\\EmailSummary.md.

Supported providers (set in config.json):
  gemini    — Google Gemini (free tier, recommended)
  ollama    — Local Ollama (fully offline, no API key)
  anthropic — Anthropic Claude (paid)

Runs as a standalone process -- no Claude Code dependency.
"""

import os
import sys
import json
import time
import logging
import mailbox
import email
import email.header
import hashlib
from datetime import datetime
from pathlib import Path
from typing import Optional

try:
    from watchdog.observers import Observer
    from watchdog.events import FileSystemEventHandler
except ImportError:
    print("Missing dependency: watchdog")
    print("Run: pip install watchdog")
    sys.exit(1)

# ─── Paths ────────────────────────────────────────────────────────────────────

BASE_DIR    = Path(__file__).parent
CONFIG_FILE = BASE_DIR / "config.json"
STATE_FILE  = BASE_DIR / "state.json"

DEFAULT_CONFIG: dict = {
    # Path to the Thunderbird MBOX file (no extension) or a folder of .eml files
    "thunderbird_path": "",
    # "mbox"   — Thunderbird IMAP/POP3 MBOX file
    # "folder" — folder containing individual .eml files
    "watch_mode": "mbox",
    "summary_file": "D:\\Spinrise\\Docs\\Email\\EmailSummary.md",
    # Provider: "gemini" | "ollama" | "anthropic"
    "provider": "gemini",
    # Gemini settings (free at aistudio.google.com)
    "gemini_api_key": "",
    "gemini_model": "gemini-2.0-flash",
    # Ollama settings (local, no key needed — install from ollama.com)
    "ollama_url": "http://localhost:11434",
    "ollama_model": "llama3.2",
    # Anthropic settings (paid)
    "anthropic_api_key": "",
    "anthropic_model": "claude-opus-4-7",
    "log_file": "email_agent.log",
    # true  = skip existing messages on first run; watch for new arrivals only
    # false = process all messages in the mailbox from the beginning
    "skip_existing_on_first_run": True,
}

# ─── Logging ─────────────────────────────────────────────────────────────────

def setup_logging(log_filename: str) -> None:
    log_path = BASE_DIR / log_filename
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s [%(levelname)s] %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        handlers=[
            logging.FileHandler(log_path, encoding="utf-8"),
            logging.StreamHandler(sys.stdout),
        ],
    )

logger = logging.getLogger(__name__)

# ─── Config & State ──────────────────────────────────────────────────────────

def load_config() -> dict:
    if not CONFIG_FILE.exists():
        with open(CONFIG_FILE, "w", encoding="utf-8") as f:
            json.dump(DEFAULT_CONFIG, f, indent=2)
        print(f"Config file created: {CONFIG_FILE}")
        print("Fill in the required fields, then re-run.")
        sys.exit(0)
    with open(CONFIG_FILE, encoding="utf-8") as f:
        user_cfg = json.load(f)
    # Strip comment-style keys before merging
    cleaned = {k: v for k, v in user_cfg.items() if not k.startswith("_")}
    return {**DEFAULT_CONFIG, **cleaned}


def load_state() -> dict:
    if STATE_FILE.exists():
        with open(STATE_FILE, encoding="utf-8") as f:
            return json.load(f)
    # -1 signals "no prior state" so first-run logic can apply
    return {"processed_ids": [], "mbox_offset": -1}


def save_state(state: dict) -> None:
    with open(STATE_FILE, "w", encoding="utf-8") as f:
        json.dump(state, f, indent=2)

# ─── AI Provider Abstraction ─────────────────────────────────────────────────

class AIClient:
    """Thin wrapper — call generate(prompt) regardless of provider."""

    def __init__(self, cfg: dict) -> None:
        self.provider = cfg["provider"].lower()
        self.cfg = cfg
        self._client = None

        if self.provider == "gemini":
            self._init_gemini()
        elif self.provider == "anthropic":
            self._init_anthropic()
        elif self.provider == "ollama":
            self._check_ollama()
        else:
            logger.error(f"Unknown provider '{self.provider}'. Use: gemini, ollama, anthropic")
            sys.exit(1)

    def _init_gemini(self) -> None:
        try:
            from google import genai
        except ImportError:
            logger.error("Gemini SDK not installed. Run: pip install google-genai")
            sys.exit(1)
        api_key = self.cfg.get("gemini_api_key") or os.environ.get("GEMINI_API_KEY", "")
        if not api_key:
            logger.error("No Gemini API key. Set gemini_api_key in config.json or GEMINI_API_KEY env var.")
            logger.error("Get a free key at: https://aistudio.google.com/apikey")
            sys.exit(1)
        self._client = genai.Client(api_key=api_key)
        logger.info(f"Provider: Google Gemini ({self.cfg['gemini_model']})")

    def _init_anthropic(self) -> None:
        try:
            import anthropic as _anthropic
        except ImportError:
            logger.error("Anthropic SDK not installed. Run: pip install anthropic")
            sys.exit(1)
        api_key = self.cfg.get("anthropic_api_key") or os.environ.get("ANTHROPIC_API_KEY", "")
        if not api_key:
            logger.error("No Anthropic API key. Set anthropic_api_key in config.json or ANTHROPIC_API_KEY env var.")
            sys.exit(1)
        self._client = _anthropic.Anthropic(api_key=api_key)
        logger.info(f"Provider: Anthropic Claude ({self.cfg['anthropic_model']})")

    def _check_ollama(self) -> None:
        import urllib.request
        url = self.cfg["ollama_url"].rstrip("/") + "/api/tags"
        try:
            with urllib.request.urlopen(url, timeout=5) as r:
                r.read()
        except Exception:
            logger.error(f"Cannot reach Ollama at {self.cfg['ollama_url']}. Is Ollama running?")
            logger.error("Install from https://ollama.com and run: ollama pull llama3.2")
            sys.exit(1)
        logger.info(f"Provider: Ollama ({self.cfg['ollama_model']}) at {self.cfg['ollama_url']}")

    def generate(self, prompt: str) -> Optional[str]:
        try:
            if self.provider == "gemini":
                return self._gemini_generate(prompt)
            elif self.provider == "anthropic":
                return self._anthropic_generate(prompt)
            elif self.provider == "ollama":
                return self._ollama_generate(prompt)
        except Exception as e:
            logger.error(f"AI generation error: {e}")
            return None

    def _gemini_generate(self, prompt: str) -> Optional[str]:
        response = self._client.models.generate_content(
            model=self.cfg["gemini_model"],
            contents=prompt,
        )
        text = response.text
        return text.strip() if text else None

    def _anthropic_generate(self, prompt: str) -> Optional[str]:
        response = self._client.messages.create(
            model=self.cfg["anthropic_model"],
            max_tokens=600,
            messages=[{"role": "user", "content": prompt}],
        )
        for block in response.content:
            if hasattr(block, "text"):
                return block.text.strip()
        return None

    def _ollama_generate(self, prompt: str) -> Optional[str]:
        import urllib.request
        payload = json.dumps({
            "model": self.cfg["ollama_model"],
            "prompt": prompt,
            "stream": False,
        }).encode()
        url = self.cfg["ollama_url"].rstrip("/") + "/api/generate"
        req = urllib.request.Request(url, data=payload, headers={"Content-Type": "application/json"})
        with urllib.request.urlopen(req, timeout=120) as r:
            data = json.loads(r.read())
        return data.get("response", "").strip() or None

# ─── Email Helpers ───────────────────────────────────────────────────────────

def decode_header(raw: str) -> str:
    if not raw:
        return ""
    parts = email.header.decode_header(raw)
    decoded = []
    for part, charset in parts:
        if isinstance(part, bytes):
            decoded.append(part.decode(charset or "utf-8", errors="replace"))
        else:
            decoded.append(part)
    return " ".join(decoded).strip()


def extract_body(msg: email.message.Message, max_chars: int = 5000) -> str:
    body_parts: list[str] = []
    if msg.is_multipart():
        for part in msg.walk():
            if part.get_content_type() == "text/plain" and "attachment" not in str(part.get("Content-Disposition", "")):
                try:
                    payload = part.get_payload(decode=True)
                    charset = part.get_content_charset() or "utf-8"
                    body_parts.append(payload.decode(charset, errors="replace"))
                except Exception:
                    pass
    else:
        try:
            payload = msg.get_payload(decode=True)
            if payload:
                charset = msg.get_content_charset() or "utf-8"
                body_parts.append(payload.decode(charset, errors="replace"))
        except Exception:
            pass
    return "\n\n".join(body_parts).strip()[:max_chars]


def stable_id(msg: email.message.Message) -> str:
    mid = msg.get("Message-ID", "").strip()
    if mid:
        return mid
    raw = f"{msg.get('From','')}{msg.get('Date','')}{msg.get('Subject','')}"
    return hashlib.sha1(raw.encode()).hexdigest()

# ─── AI Summarisation ────────────────────────────────────────────────────────

SUMMARY_PROMPT = """\
You are an assistant that creates concise email summary entries for the Spinrise ERP project log.

The project log (EmailSummary.md) already contains many entries organised by module.
Your task: produce ONE new entry in exactly this format for the email below.

---
**[{date}] — {subject}**
*From:* {sender}
*To:* {recipient}

2-4 sentence summary covering: who sent it, what was communicated or requested, any decisions or action items, and outcome/status if visible. Be factual and professional.

---

Rules:
- Output ONLY the formatted entry above, no extra text, no explanation
- Keep it factual, no speculation
- If the email is a bounce, delivery receipt, or system notification with no project content, output exactly: SKIP

Email:
From: {sender}
To: {recipient}
Date: {date}
Subject: {subject}

Body:
{body}
"""

def summarise_email(ai: AIClient, msg: email.message.Message) -> Optional[str]:
    subject   = decode_header(msg.get("Subject", "(no subject)"))
    sender    = decode_header(msg.get("From", "(unknown)"))
    recipient = decode_header(msg.get("To", ""))
    date_str  = msg.get("Date", "")
    body      = extract_body(msg)

    if not body and not subject:
        logger.info(f"Skipping empty message from {sender}")
        return None

    prompt = SUMMARY_PROMPT.format(
        date=date_str,
        subject=subject,
        sender=sender,
        recipient=recipient,
        body=body,
    )

    result = ai.generate(prompt)
    if not result or result.strip().upper() == "SKIP":
        logger.info(f"Skipped (non-project or empty): {subject}")
        return None
    return result

# ─── Summary File Append ─────────────────────────────────────────────────────

def append_summary(summary_file: str, entry: str) -> None:
    path = Path(summary_file)
    if not path.exists():
        logger.error(f"Summary file not found: {summary_file}")
        return
    separator = f"\n\n<!-- appended {datetime.now().strftime('%Y-%m-%d %H:%M')} -->\n\n"
    with open(path, "a", encoding="utf-8") as f:
        f.write(separator + entry + "\n")
    logger.info(f"Appended summary to {path.name}")

# ─── MBOX Processor ──────────────────────────────────────────────────────────

class MboxProcessor:
    def __init__(self, cfg: dict, state: dict, ai: AIClient) -> None:
        self.cfg   = cfg
        self.state = state
        self.ai    = ai
        self.path  = Path(cfg["thunderbird_path"])

    def run(self) -> None:
        if not self.path.exists():
            logger.warning(f"MBOX not found: {self.path}")
            return

        current_size = self.path.stat().st_size
        last_offset  = self.state.get("mbox_offset", -1)

        if last_offset == -1:
            if self.cfg.get("skip_existing_on_first_run", True):
                logger.info(f"First run — skipping {current_size:,} bytes of existing messages. Watching for new arrivals.")
                self.state["mbox_offset"] = current_size
                self.state["processed_ids"] = []
                save_state(self.state)
                return
            else:
                last_offset = 0
                logger.info("First run — processing all existing messages.")

        if current_size == last_offset:
            return

        processed = set(self.state.get("processed_ids", []))
        new_count  = 0

        try:
            mbox = mailbox.mbox(str(self.path))
            for msg in mbox:
                mid = stable_id(msg)
                if mid in processed:
                    continue
                processed.add(mid)
                subject = decode_header(msg.get("Subject", "(no subject)"))
                logger.info(f"Summarising: {subject}")
                entry = summarise_email(self.ai, msg)
                if entry:
                    append_summary(self.cfg["summary_file"], entry)
                new_count += 1
            mbox.close()
        except Exception as e:
            logger.error(f"Failed reading MBOX: {e}")
            return

        self.state["mbox_offset"]   = current_size
        self.state["processed_ids"] = list(processed)
        save_state(self.state)

        if new_count:
            logger.info(f"Processed {new_count} new message(s)")

# ─── Watchdog Handlers ───────────────────────────────────────────────────────

class MboxChangeHandler(FileSystemEventHandler):
    def __init__(self, processor: MboxProcessor, mbox_name: str) -> None:
        super().__init__()
        self.processor = processor
        self.mbox_name = mbox_name

    def on_modified(self, event) -> None:
        if not event.is_directory and Path(event.src_path).name == self.mbox_name:
            self.processor.run()

    def on_created(self, event) -> None:
        if not event.is_directory and Path(event.src_path).name == self.mbox_name:
            self.processor.run()


class EmlFolderHandler(FileSystemEventHandler):
    def __init__(self, cfg: dict, state: dict, ai: AIClient) -> None:
        super().__init__()
        self.cfg           = cfg
        self.state         = state
        self.ai            = ai
        self.processed_ids = set(state.get("processed_ids", []))

    def on_created(self, event) -> None:
        if event.is_directory:
            return
        path = Path(event.src_path)
        if path.suffix.lower() not in (".eml", ""):
            return
        time.sleep(0.3)
        self._handle_file(path)

    def _handle_file(self, path: Path) -> None:
        try:
            with open(path, "rb") as f:
                msg = email.message_from_bytes(f.read())
        except Exception as e:
            logger.error(f"Cannot read {path}: {e}")
            return

        mid = stable_id(msg)
        if mid in self.processed_ids:
            return

        self.processed_ids.add(mid)
        self.state["processed_ids"] = list(self.processed_ids)
        save_state(self.state)

        subject = decode_header(msg.get("Subject", "(no subject)"))
        logger.info(f"New .eml: {subject}")
        entry = summarise_email(self.ai, msg)
        if entry:
            append_summary(self.cfg["summary_file"], entry)

# ─── Main ────────────────────────────────────────────────────────────────────

def main() -> None:
    cfg = load_config()
    setup_logging(cfg["log_file"])
    logger.info("=" * 60)
    logger.info(f"Spinrise Email Agent | provider={cfg['provider']}")
    logger.info(f"Watch : {cfg['thunderbird_path']}")
    logger.info(f"Output: {cfg['summary_file']}")
    logger.info("=" * 60)

    if not cfg["thunderbird_path"]:
        logger.error("thunderbird_path is not set in config.json")
        sys.exit(1)

    ai     = AIClient(cfg)
    state  = load_state()
    observer = Observer()

    if cfg["watch_mode"] == "mbox":
        mbox_path = Path(cfg["thunderbird_path"])
        processor = MboxProcessor(cfg, state, ai)
        processor.run()
        handler = MboxChangeHandler(processor, mbox_path.name)
        observer.schedule(handler, str(mbox_path.parent), recursive=False)
        logger.info(f"Watching: {mbox_path.name}")

    else:
        folder_path = cfg["thunderbird_path"]
        if not Path(folder_path).is_dir():
            logger.error(f"Folder not found: {folder_path}")
            sys.exit(1)
        handler = EmlFolderHandler(cfg, state, ai)
        # Initial scan for unprocessed .eml files
        for p in sorted(Path(folder_path).iterdir()):
            if p.suffix.lower() in (".eml", ""):
                handler._handle_file(p)
        observer.schedule(handler, folder_path, recursive=False)
        logger.info(f"Watching folder: {folder_path}")

    observer.start()
    logger.info("Running. Press Ctrl+C to stop.")

    try:
        while observer.is_alive():
            time.sleep(2)
    except KeyboardInterrupt:
        logger.info("Shutting down.")
    finally:
        observer.stop()
        observer.join()
    logger.info("Stopped.")


if __name__ == "__main__":
    main()
