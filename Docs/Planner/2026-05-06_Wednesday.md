# Daily Planner — Wednesday, 06 May 2026
**Developer:** Abinandan N | **Role:** Fullstack Dev — Spinrise ERP

---

## Summary of Yesterday (Tue 05 May)

| Item | Status |
|---|---|
| PR Form UX demo to CEO | Done — CEO feedback: "very disappointing UX" (specific feedback awaited) |
| Monthly Work Summary resubmit (12 corrections) | **Overdue — not yet done** |
| React Developer JD → CEO | **Overdue — not yet sent** |
| Revised FSD Completion Schedule → CEO | **Overdue — not yet sent** |
| Email Agent (Spinrise) | Done — Gemini API configured, agent ready to run |
| Sample field Checkbox → Switch (PR form) | Done — committed |

---

## Today's Priority Order

### 🔴 CRITICAL — Do First (administrative blockers)

#### 1. Monthly Work Summary — Resubmit to CEO
- **Status:** 1 day overdue (was due EOD 05 May)
- **Action:** Open `Docs/Email/Docs/Kalsofte_Monthly_Summary_Abinandan_Apr2026_v2.xlsx`
- Apply all 12 CEO corrections:
  1. Employee ID — fill in
  2. Date of Submission — change serial `46146` → text `04-May-2026`
  3. Section C KPI — fill all 8 fields: CRs/Fixes=10, Modules In Progress=4, Effort Hours=220, FSDs Approved=1 (M01 PR FSD v2.4)
  4. Section D Task Log — add M02 RMI PO row (19 SPs + React), PR Print Report (QuestPDF+EPPlus), Phase-0 activities, meetings; all columns filled
  5. Effort hours — break sprint blocks into individual task rows (not 22h averages)
  6. Section F Meetings — log: sprint reviews, IST sessions, FSD review, re-test 02 May
  7. Section G Reporting Compliance — fill honestly (Missed is acceptable, blank is not)
  8. Section H Skill Enhancement — React 18, ASP.NET Core 8, QuestPDF, EPPlus, SQL Server SPs
  9. Accomplishments — add M02 RMI PO (19 SPs + full React form) as 3rd accomplishment
  10. Support Needed — (a) Sasi design confirmation Issues #40/#26; (b) JAT DB access for M02 IST
  11. Submit DEV sheet only — delete/clean PM and IST sheets
  12. Mail subject — `Monthly Work Summary – April 2026 - reg`
- **Send to:** CEO before EOD today

#### 2. React Developer JD — Send to CEO
- **Status:** 1 day overdue (was due Mon 05 May)
- **Action:** Coordinate with Sasi to finalise the JD, send to CEO (ceo@kalsofte.com)
- JD should cover: React 18 + TypeScript, Vite, Ant Design, Zustand, React Router v7
- Keep it concise — experience level, key skills, reporting line (reports to Sasi)

#### 3. Revised FSD Completion Schedule — Submit to CEO
- **Status:** 1 day overdue (was due Mon 05 May)
- **Action:** Draft a revised schedule covering all active FSDs (M01 remaining items, M02 PO, M03, M04)
- Include: module name, FSD owner, current status, revised completion date
- Format: simple table in email body or attached as .xlsx

---

### 🟠 HIGH — Complete Today

#### 4. PR Form UX — Fix Plan (post-demo)
- **Status:** Awaiting specific CEO feedback on "very disappointing UX"
- **Action:** Do NOT start random fixes. Wait for the written feedback list from CEO.
- If no feedback received by afternoon → send a polite follow-up email to CEO requesting the specific UI/UX points to address
- Once list received → prioritise and fix top items same day

#### 5. Fix Inactive PR List Checkboxes (CEO backlog — URGENT)
- **Status:** Confirmed CEO backlog; checkboxes exist but do nothing
- **Decision:** Either activate with a basic action toolbar (select → cancel/download) OR remove them entirely
- **Rule:** An inactive checkbox must not remain in the UI
- File: `src/features/purchase-requisition/` → PR list page
- Coordinate with Sasi on preferred approach before implementing

#### 6. Bell Icon Pending-Count Badge (CEO backlog — URGENT)
- **Status:** Bell icon shows no count badge
- **Action:** Add a badge showing pending approval count on the notification bell in the header
- File: `src/shared/layouts/AppHeader.tsx` — already modified per git status

---

### 🟡 THIS WEEK — Complete Before Saturday Review

#### 7. FSD-to-ASP.NET Core Conversion Steps Document
- **Action:** Document the step-by-step process of converting a VB6 FSD into ASP.NET Core 8 implementation
- Format: Clear numbered steps (DB → Domain → Infrastructure → Application → API → Frontend)
- Submit to CEO via email

#### 8. Baseline Code / Version Submission
- **Action:** Tag or package current working code for all modules
- Modules to cover: M01 PR Module, M02 PO Module (in progress), Admin/Auth
- Submit to CEO (as zip or git tag reference)

#### 9. Start Email Agent
- **Status:** Ready — Gemini API key configured in `config.json`
- **Action:** Run it once to verify it starts and monitors correctly
- ```powershell
  cd D:\Spinrise\Tools\email_agent
  python email_agent.py
  ```
- Confirm first log line shows: "First run — skipping X bytes. Watching for new arrivals."
- Set up as Windows Scheduled Task for auto-start on login (optional)

---

### 🔵 ONGOING / EOD

#### 10. Daily Source Code Update
- Copy today's WIP code to WIP folder
- Send EOD mail to CEO with: what was done today, what is planned tomorrow
- This is a mandatory daily discipline (decided at 03 May MOM)

#### 11. Next Saturday Review (09 May) — PM Saravanan conducting
- Prepare to show progress on: PR UX fixes, inactive checkboxes, bell badge
- Have FSD conversion doc and baseline code ready to share

---

## Time Block Suggestion

| Time | Activity |
|---|---|
| 09:00 – 10:30 | Monthly Summary corrections + email send (**do first**) |
| 10:30 – 11:00 | React JD finalise with Sasi + send to CEO |
| 11:00 – 11:30 | FSD Completion Schedule draft + send |
| 11:30 – 12:00 | Check for CEO PR UX feedback; send follow-up if none received |
| 12:00 – 13:00 | Break |
| 13:00 – 14:00 | Fix inactive PR checkboxes (after Sasi confirms approach) |
| 14:00 – 15:00 | Bell icon badge implementation |
| 15:00 – 16:30 | Apply CEO PR UX feedback fixes (if received) |
| 16:30 – 17:00 | FSD conversion steps document draft |
| 17:00 – 17:30 | Baseline code prep / version tag |
| 17:30 – 18:00 | Start + verify email agent; EOD WIP copy + CEO mail |

---

## Pending Items Tracker

| # | Item | Due | Status |
|---|---|---|---|
| 1 | Monthly Summary resubmit | EOD 05 May | **OVERDUE** |
| 2 | React JD → CEO | Mon 05 May | **OVERDUE** |
| 3 | Revised FSD Schedule → CEO | Mon 05 May | **OVERDUE** |
| 4 | PR UX fixes (post-demo) | TBD (awaiting feedback) | Waiting |
| 5 | Fix inactive PR checkboxes | This week | Pending |
| 6 | Bell badge | This week | Pending |
| 7 | FSD conversion steps doc | This week | Pending |
| 8 | Baseline code → CEO | This week | Pending |
| 9 | Start email agent | Today | Ready |
| 10 | M02 PO module continuation | Sprint 2 | On hold |
| 11 | Blockers to raise: Sasi confirm #40/#26; JAT DB access | Before M01 IST 40/40 PASS | Pending |

---

## Notes

- Max 2 versions per deliverable (CEO rule from 03 May MOM) — do not iterate past v2 without CEO discussion
- All IST members must maintain customer CR mails locally — ongoing discipline
- Daily Claude planning + self-evaluation after each meeting — mandatory per MOM decision
- Next team meeting: **Saturday 09 May 2026** — conducted by PM Saravanan
- Monthly summary deadline from now on: **3rd of every month**, no exceptions
