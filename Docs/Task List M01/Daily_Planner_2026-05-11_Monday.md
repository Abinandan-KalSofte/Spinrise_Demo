# Daily Task Planner — Monday, 11 May 2026
**Owner:** Abinandan N
**Sprint:** M01 PR Form → Pilot Ready | JAT Spinning Mill | Target: 31 May 2026

---

## URGENT — Before 10:00 AM

- [ ] **Follow up with Sasi — Blueprint**
  - Check if Sasi has reviewed the Blueprint draft (submitted to him on 09 May) and sent it to CEO
  - If NOT received by 10:00 AM → call/message Sasi immediately
  - **This is the blocker for all form development today**

- [ ] **Share Component Library Comparison with Sasi**
  - CEO instruction (10 May 08:37 reply): share comparison doc with Sasi for his technical review and decision
  - Covers: grid performance, keyboard navigation, bundle size, licence terms

---

## MORNING — By 11:00 AM

- [ ] **Send Revised Weekly Plan Email to CEO** ⚠️ Hard Deadline
  - Based on the Pilot Tracker (SPINRISE_M01_PR_Form_Pilot_Tracker_v1_1_10May2026.xlsx)
  - Must include all tasks T02–T22 with specific dates for Week 1 and Week 2
  - To: ceo@kalsofte.com
  - Cc: Sasi, Saravanan, Palanivel, Muthuvel, Support, QA

- [ ] **Brief Hari — Today's Task List**
  - Today: Login screen CSS (date, time, company name, division name, PO name)
  - Hari must not be idle — give him the task and reference (CSM/Subam Portal standard)

---

## MORNING — Defect Status (confirm with team first)

- [ ] **Confirm Defect 1 status with Mariyaiya**
  - Defect 1: Item Minimum Level Quantity Validation — already fixed by you
  - Mariyaiya to re-test and confirm PASS today

- [ ] **Confirm Defect 2 status with Muthuvel and Mariyaiya**
  - Defect 2: Pending PO (Business Rule Logic) — your understanding: not required
  - Confirm domain decision with Muthuvel and Mariyaiya before communicating to CEO

- [ ] **Email CEO — Defect Status Update** *(after team confirmation)*
  - Send a separate short email to CEO once Defect 1 re-test result is confirmed
  - Include Defect 2 decision (required / not required) with domain team sign-off
  - Target: get to 16/16 defects closed

---

## AFTERNOON — After Blueprint CEO Approval (T03)

> ⛔ Do NOT start any form development below until CEO approves Blueprint.
> Blueprint approval expected Monday afternoon after Sasi submits in the morning.

- [ ] **Login Screen Redesign — Continue from Saturday** (T09, due Tue 12 May)
  - Apply all CEO demo corrections:
    - [ ] Date display — correct format
    - [ ] Time display — correct format
    - [ ] Company name — Kalpatharu Software Ltd (Title Case)
    - [ ] Division name — correct
    - [ ] PO name — correct
  - Follow CSM/Subam Portal reference standard
  - Hari handles CSS styling in parallel — you handle data binding and logic
  - Target: complete by end of tomorrow (Tue 12 May)

- [ ] **Acknowledge FSD v2.5 Countersignature** (T01)
  - This comes from CEO — just acknowledge when received, no action needed from your side

---

## EVENING — Before 6:00 PM

- [ ] **Deploy Latest Build to Internal Server**
  - URL: `http://172.16.16.40:3000`
  - Deploy current state of login screen (whatever stage it is at)
  - CEO reviews every evening from today — deploy without fail

---

## EOD — Before Close of Day

- [ ] **Send Daily Work Status Email to CEO**
  - Format: # | Task | Status table
  - Every day, no exception (CEO directive)
  - Cover: Blueprint status, defects, weekly plan sent, login screen progress, Hari's progress

---

## Today's Blockers / Dependencies

| Blocker | Waiting On | Action If Not Resolved |
|---|---|---|
| Blueprint CEO approval | Sasi → CEO | Follow up with Sasi before 10 AM |
| FSD v2.5 countersignature | CEO | Just wait — no action needed |
| Defect 2 domain decision | Muthuvel + Mariyaiya | Confirm before emailing CEO |

---

## Today's Hard Deadlines

| Time | Deadline |
|---|---|
| 10:00 AM | Blueprint follow-up with Sasi (escalate if not done) |
| 11:00 AM | Revised weekly plan email sent to CEO |
| 6:00 PM | Latest build deployed to 172.16.16.40:3000 |
| EOD | Daily work status email sent to CEO |

---

## Pilot Milestone Reference (Plan Backwards)

| Date | Gate |
|---|---|
| 21 May | All development complete |
| 23 May | IST review starts |
| 25 May | CEO full review session |
| 27 May | TL-IST consolidated findings to CEO |
| 28 May | All defects closed |
| 29 May | CEO final sign-off + JAT deployment |
| 30 May | JAT user walkthrough |
| **31 May** | **Pilot Go/No-Go — JAT Spinning Mill** |
