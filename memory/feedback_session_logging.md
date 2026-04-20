---
name: Session Logging Requirement
description: After every conversation thread, write a short summary log to E:\Abinandan\SPINRISE\.claude\logs\
type: feedback
originSessionId: 6b62964e-cb2f-4267-b53a-700f2799cff7
---
Always log a summary of every session to the project log folder.

**Why:** User wants a persistent reference of all Claude sessions for the Spinrise project so context is never lost across conversations.

**How to apply:**
- At the end of every conversation (or when asked), create/update a file in `E:\Abinandan\SPINRISE\.claude\logs\`
- File naming: `YYYY-MM-DD_NNN_short-topic.md`
- Keep it short: Goal → Changes made → Outcome
- Update the index table in `E:\Abinandan\SPINRISE\.claude\logs\README.md`
- Do this proactively — do not wait for the user to ask
