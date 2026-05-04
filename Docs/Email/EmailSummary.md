# SPINRISE ERP — Email Thread Summary
**Period Covered:** 25 March 2026 – 2 May 2026
**Total Emails Reviewed:** ~118 (excluding bounces, Outlook test, Claude welcome, cPanel config)
**Compiled:** 2 May 2026
**Last Updated:** 2 May 2026 — 8 pre-launch emails from 25–31 March 2026 appended (project kickoff, Blueprint v4 review, VB6 Doc Guidelines v1.0, VB FSD Claude Guide v1 & v2, PO Module Migration Schedule, and related feedback threads)

---

## Module Index

- [M01 — Purchase Requisition / Purchase Order Module](#m01--purchase-requisition--purchase-order-module)
- [M02 — RMI Raw Material Inventory / Purchase Order](#m02--rmi-raw-material-inventory--purchase-order)
- [M03 — Domestic Sales / Sale Order Module](#m03--domestic-sales--sale-order-module)
- [M04 — HR Payroll / Daily Attendance Module](#m04--hr-payroll--daily-attendance-module)
- [General / Cross-Module](#general--cross-module)
- [Master Action Item Register](#master-action-item-register)
- [Master Decision Register](#master-decision-register)

---

## M01 — Purchase Requisition / Purchase Order Module

### Developer: Mariyaiya | IST: Muthuvel | TL-IST: Palanivel | Dev Support: Abinandan, Hari

---

### Pre-Launch Kickoff (29 Mar 2026)

**Email:** "SPINRISE — Your First Module. Your First Win. | PO Module Migration Schedule for Review"
**From:** CEO (ceo@kalsofte.com) **To:** Mariyaiya, Muthuvel **Date:** 29 Mar 2026 (Fwd to Abinandan & Sasi on 31 Mar)

**Key Points:**
- Stores Purchase Order module selected as the first SPINRISE module deliberately — it is the spine of the procurement cycle (five linked documents, multi-level approvals, GST logic, comparative quotation analysis, 98 scope items total)
- Full PO module deliverable in 10 weeks with Document → Validate → Convert process and Claude Code; same scope would take 22–26 weeks without AI
- Attachment: SPINRISE_PO_Module_Migration_Schedule-29-03-26.docx
- PR Approval workflow architecture identified as the single most critical decision before any code is written; IST must document all approval chain variations across customer sites

**Role Assignments:**
- Sr VB Dev1 (Mariyaiya): Module owner end to end — domain authority for all business rules and edge cases
- New Dev / Full Stack (Abinandan): ASP.NET Core APIs and React UI coordination from approved FSDs; Sprint 0 infrastructure owner
- Jr Web Dev team: React UI build from approved FSDs
- Sr IST (Muthuvel): FSD review and IST sign-off — 5 years of real customer site experience

**Action Items (Pre-Launch):**
- Mariyaiya: Initial estimate of VB6 form count in each PR and PO group — by Saturday session
- Muthuvel: First list of customer-specific approval chain variations — by Saturday session
- Abinandan: Confirm development environment readiness or blockers — by Saturday session

---

### CEO Decisions

| Date | Decision |
|---|---|
| 9 Apr | ksp_PendPR: Full removal in SPINRISE. Used only by SUBAM, which requested its removal. |
| 9 Apr | blcode (Oracle field): Excluded from SPINRISE. |
| 9 Apr | Uniqueness rule for PR line items: Item Code + Machine Code. Single authoritative rule. |
| 9 Apr | po_para.PRapprovalstatus: Display-only indicator. Show current approval level on PR form. |
| 9 Apr | Manual PR numbering (Manual_IndNo): Not required. Auto-sequential via po_doc_para only. |
| 9 Apr | TC=1 rate override logic (reads IN_TRNHEAD/IN_TRNTAIL): Confirmed dead code. Remove in SPINRISE. |
| 10 Apr | EmpCommon flag: Database-driven (PO_Para.EmpMasterComm per DivCode). 5 divisions confirmed (Saranya, Armstrong, Cheran, Skaat, VTS). Dual Crystal report → single QuestPDF with division-level template selection. |
| 10 Apr | PR approval workflow: 2 levels recommended (L1 = Dept Heads, L2 = Purchase Officer). Approved PR does NOT auto-create PO — PO creation is a separate manual step. |
| 10 Apr | Modify and Delete blocked once first approval level is given (PRSTATUS beyond OPEN). |
| 10 Apr | No backdate for PR entry. PR date = processing date only. |
| 10 Apr | PRBased SPINRISE default = Y (HSN code and Tax Code mandatory on every variety line). |
| 11 Apr | FSD Review Checklist (5 stages) mandatory from Monday 13 April. |
| 11 Apr | VB FSD Claude Guide v3 issued 12 April — operative guide from Monday 13 April. |
| 17 Apr | M01 FSD v2.3 — CEO APPROVED. First CEO-approved FSD in SPINRISE history. Sprint 0 begins. |
| 17 Apr | QuestPDF confirmed as print technology (not FastReports). EPPlus for Excel/CSV. |
| 21 Apr | QuestPDF PR print (PR 329) reviewed. Print complete. Production-ready confirmed. FSD note required. |
| 24 Apr | M01 PR UI: 1 Critical + 4 High gaps identified. Completion deadline end of week (25 Apr). |
| 25 Apr | Most UI fixes confirmed. Two bugs + four verifications still required before Saturday. |
| 27 Apr | Deployment noticed and assessed. Bug fixes required before IST testing begins. |
| 27 Apr | indenttopo.frm V5 Stage 0 CLEARED. Process rule: stage version locked before FSD starts. |
| 28 Apr | IST Test Checklist v1 — Four corrections required. IST Testing begins 29 April. |
| 28 Apr | IST Test Checklist v2 APPROVED. IST testing starts 29 April. |
| 28 Apr | UX Gap Analysis: Sprint 2 backlog confirmed — Copy PR, bulk toolbar, compact filter, print panel, GRN chain. |
| 29 Apr | IST Result: 44% pass rate (57 failures / 101 test cases). 14 High-severity bugs due EOD 30 Apr. Fix report 1 PM Thu. CEO demo Sat 2 May. |
| 1 May | FSD v2.4: Minor amendment — line count correction to 14,892 (indenttopo V5). |
| 2 May | IST Test Checklist v2 — ongoing fix sprint. CEO demo at 5 PM meeting today. |

---

### Action Items

| Owner | Action | Due | Status |
|---|---|---|---|
| Mariyaiya | Complete EmpCommon sub-section + TC dead code + FSD amendments | 9 Apr | Done |
| Muthuvel | Complete PR form IST-1 to IST-7 review + po_para column list | 10 Apr EOD | Done |
| Mariyaiya | Update FSD with all resolved IST items. Mark remaining [PENDING IST RESPONSE] | 9 Apr | Done |
| Mariyaiya | Complete four remaining FSD additions before 11 Apr review meeting | 11 Apr 5PM | Done |
| Mariyaiya | Document Claude Code prompting sequence for PR form | Before Sat 11 Apr | Actioned |
| Mariyaiya | Submit FSD v2.3 after corrections | 17 Apr | Done — Approved |
| Abinandan + Hari | PR Form UI corrections (all gaps) | Mon 27 Apr EOD | Done |
| Muthuvel | Be ready for IST review of PR form | From Tue 28 Apr | Done |
| Abinandan | Fix 14 High-severity IST bugs | EOD 30 Apr | In progress |
| Abinandan | Provide fix report | 1 PM Thu 30 Apr | Done |
| Abinandan | CEO demo: SPINRISE PR Form development completion % + next milestone | Sat 2 May 5PM | Pending |
| Mariyaiya | FSD generation for M01_FSD_IndentToPO on V5 (14,892 lines) | Draft by Thu 30 Apr | In progress |
| Sasi | Service PO code cleaning + Stage 0 | Thu 30 Apr | Pending |

---

### Deadlines

- **11 Apr**: FSD v2.1 complete for CEO approval at Saturday review meeting
- **17 Apr**: FSD v2.2 corrections → v2.3 CEO APPROVED
- **21 Apr**: QuestPDF PR print production-ready
- **25 Apr**: PR UI fixes completion target
- **27 Apr**: PR UI corrections done before IST review
- **28 Apr**: IST Test Checklist approved; IST testing begins
- **29 Apr**: IST testing begins (101 test cases)
- **30 Apr**: 14 High-severity bugs fixed; fix report at 1 PM
- **2 May (Sat)**: CEO demo at 5 PM review meeting

---

### Key Threads

1. **PR Form Critical Analysis / IST Review (Apr 3–11)**: Mariyaiya submitted corrected critical analysis. Muthuvel provided IST responses. CEO reviewed both, resolved 6 of 11 questions on 9 Apr, then cleared 4 remaining by 10 Apr. Key resolved items: ksp_PendPR removed, blcode excluded, uniqueness = Item Code + Machine Code, EmpCommon origin confirmed, TC dead code confirmed, approval workflow = 2 levels, no auto-PO creation.

2. **FSD v2.1 → v2.3 CEO Approval (Apr 11–18)**: Four final FSD additions completed. v2.2 submitted; two document-identity corrections required. v2.3 submitted and CEO APPROVED on 17 Apr. First approved FSD in SPINRISE project.

3. **QuestPDF PR Print (Apr 13–21)**: Abinandan submitted QuestPDF POC. CEO reviewed on 14 Apr — 4 corrections (missing Created By field, hardcoded footer, missing Drawing/Catalogue number columns, blank Previous Purchase Date). Final corrections confirmed. Print production-ready confirmed on 21 Apr.

4. **M01 PR UI Design Review (Apr 22–27)**: Vignesh submitted UX gap analysis. CEO identified 1 Critical + 4 High gaps on 24 Apr. Most confirmed fixed on 25 Apr. Two remaining bugs + four verifications required. Corrections completed before IST.

5. **IST Test Checklist & Testing (Apr 27–May 2)**: Test checklist v1 had 4 CEO corrections → v2 approved on 28 Apr. IST testing began 29 Apr. 101 test cases run; 57 failures (44% pass rate) reported on 29 Apr. Bug sprint through 30 Apr. Ongoing IST re-testing through 2 May.

6. **indenttopo.frm V5 Stage 0 (Apr 27)**: V5 CLEARED. Process rule established: the stage version must be locked before FSD generation begins. V5 = locked reference file.

7. **FSD v2.4 Amendment (May 1)**: Sasi submitted minor amendment correcting line count to 14,892 for indenttopo V5. CEO acknowledged. Sasi to update FSD accordingly.

8. **UX Gap Analysis Sprint 2 Backlog (Apr 28)**: CEO confirmed: (a) Inactive checkbox filter and bell badge fix — this sprint. (b) Copy PR, bulk toolbar, compact filter — Sprint 2. (c) Print panel, GRN chain — Phase 2. Vignesh = UX/IST; Muthuvel + Mariyaiya = IST testers.

---

## M02 — RMI Raw Material Inventory / Purchase Order

### Developer: TL-Dev Sasi | IST: PM Saravanan | TL-IST: Palanivel

---

### CEO Decisions

| Date | Decision |
|---|---|
| 10 Apr | RMI PO FSD v2 declared strongest first-draft FSD in project. Stage 0 confirmed, zero CustID blocks, TC framework with full GL journal sets project standard. |
| 10 Apr | CD-2 (MAX+1 race condition): SPINRISE fix = locked sequence table with UPDLOCK. |
| 10 Apr | IST-8 (DelReason): DelReasonCode must be written to RM_Trans_Log.DelReason. Resolves CD-7. |
| 10 Apr | PR-to-PO conversion workflow must be in Section 5.11 of the FSD. |
| 11 Apr | RM_PARAM flag defaults confirmed. PRBased default = Y (CEO decision). wosample default = Y (revised based on 9-site data). SuppLotNoReqArrival = Y. CentralizedOrder = N. SeasoncalcReq = N. PO_Approval = Y. ADDTAXREQUIRED = N. ftamt = N. |
| 11 Apr | PO deletion blocked once first approval level given (FIRST_APPFLG = Y). |
| 11 Apr | No backdate for PO entry. PO date = processing date only. |
| 11 Apr | Cry_RMIPO_JAT_NEW adopted as SPINRISE print template base. JAT-specific branding must be generalised. Cry_RMI_PO_ALL retired. |
| 11 Apr | IST-9 (Saravanan): PM confirmed, CEO approved. wosample default revised to Y. |
| 12 Apr | VB FSD Claude Guide v3 issued and operative. |
| 13 Apr | v6 review: PM Saravanan correct on 3 issues. FastReports references in Sections 5.11, 7.2, 13, 14 must all be replaced with QuestPDF. SuppLotNoReqArrival default fix in Section 11. Cover page label corrected. |
| 15 Apr | v7 submitted with all corrections applied. Saravanan provided TL approval. |
| 17 Apr | M02 RMI PO FSD v8 — CEO APPROVED. Second CEO-approved FSD. |
| 17 Apr | FSD Target Dates confirmed: Arrival Entry by 21 Apr, Lot Bale Entry by 25 Apr, RM Contract by 30 Apr, Bale Opening by end April. |
| 24 Apr | Saravanan acknowledged target dates still on track (reported 24 Apr). |
| 28 Apr | Arrival Entry FSD submitted for IST review. |
| 29 Apr | Arrival Entry FSD at Stage 3 (TL-IST Palanivel review). |
| 30 Apr | Arrival Entry FSD at Stage 4 (PM Saravanan sign-off + CEO review). |
| 1 May | Arrival Entry FSD — CEO APPROVED. Build clearance issued. |
| 1 May | RMI FSD Revised Target Dates: Lot Bale Entry by Sat 9 May; RM Contract by Tue 12 May; Bale Opening by Fri 15 May; Rag Opening by Mon 18 May. |
| 1 May | FSD v2.4 (M01 indenttopo line count correction) — Sasi noted and confirmed. |

---

### Action Items

| Owner | Action | Due | Status |
|---|---|---|---|
| Sasi | Submit SP_PRToPO_RMI + SP_PRToPO_RMIFilter to Claude via Follow-up Prompt B | 11 Apr | Done by v7 |
| Sasi | Add Section 5.11 PR-to-PO conversion workflow | 13 Apr | Done |
| Sasi | Fix all FastReports references to QuestPDF in v6 → v7 | 13 Apr EOD | Done |
| Sasi | Fix SuppLotNoReqArrival default to Y in Section 11 | 13 Apr | Done |
| Saravanan | Provide web PO approval screen URL or name for Section 10 | 13 Apr | Done in v7 |
| Saravanan | Complete Arrival Entry IST review within 1 working day | 28 Apr submission | Done |
| Palanivel | TL-IST review Arrival Entry FSD | 29 Apr | Done |
| Saravanan | Stage 4 PM sign-off Arrival Entry FSD | 30 Apr | Done |
| Sasi | Lot Bale Entry FSD | Now: 9 May | In progress |
| Sasi | RM Contract FSD | Now: 12 May | In progress |
| Sasi | Bale Opening FSD | Now: 15 May | Upcoming |
| Sasi | Service Purchase Order code clean + Stage 0 | Thu 30 Apr | Pending |
| Saravanan | Lot Bale Entry IST review | By Sat 2 May (if Sasi submits by 30 Apr) | Pending |
| All | Confirm Stage 0 for next RMI transaction | Sat 2 May | Pending |

---

### Deadlines

- **13 Apr**: v7 corrections complete — all FastReports/QuestPDF fixes
- **17 Apr**: FSD v8 CEO APPROVED
- **21 Apr**: Arrival Entry FSD target (original)
- **27 Apr**: Arrival Entry FSD target (revised from 21 Apr)
- **28 Apr**: Arrival Entry FSD submitted for IST review
- **30 Apr**: Lot Bale Entry FSD original target
- **1 May**: Arrival Entry FSD CEO APPROVED — Build Clearance issued
- **9 May**: Lot Bale Entry FSD (revised)
- **12 May**: RM Contract FSD (revised)
- **15 May**: Bale Opening FSD (revised)
- **18 May**: Rag Opening FSD (revised)

---

### Key Threads

1. **RMI PO FSD v2 Initial Review (Apr 9–11)**: Sasi submitted FSD v2 draft. CEO praised it as strongest first-draft. PM Saravanan provided Section 13 IST responses. CEO reviewed on 10 Apr — identified missing PR-to-PO conversion workflow (Section 5.11), CD-7 resolution (DelReason storage), Cry_RMIPO_JAT_NEW as SPINRISE template base, 8 RM_PARAM flag defaults confirmed. IST-4 (9 support call patterns from Saravanan) was most valuable IST input.

2. **FSD v5 QA Review → v6 → v7 → v8 Approval (Apr 12–17)**: v5 QA review issued three corrections. v6 submitted. PM raised 3 issues (FastReports conflict, SuppLotNoReqArrival default, cover page label). CEO upheld all 3. v7 corrections applied. Palanivel provided TL-IST approval. Saravanan provided PM sign-off. CEO APPROVED v8 on 17 Apr.

3. **FSD Target Dates (Apr 17)**: Sasi committed: Arrival Entry 21 Apr, Lot Bale Entry 25 Apr, RM Contract 30 Apr, Bale Opening end April. CEO confirmed next review Saturday 25 Apr.

4. **Arrival Entry FSD Approval Chain (Apr 28 – May 1)**: Sasi submitted Arrival Entry FSD. Saravanan IST review (Stage 2) done same day. Palanivel TL-IST review (Stage 3) done 29 Apr. Saravanan PM sign-off (Stage 4) done 30 Apr. CEO reviewed 30 Apr and 1 May — APPROVED on 1 May. Build clearance issued. Full 5-stage chain completed in 4 days.

5. **Revised FSD Dates (May 1)**: Sasi submitted revised dates. CEO responded with concerns — Lot Bale Entry slipped from 25 Apr to 9 May (14 days late). Directed no further revisions. New committed dates: Lot Bale 9 May, RM Contract 12 May, Bale Opening 15 May, Rag Opening 18 May.

---

## M03 — Domestic Sales / Sale Order Module

### Developer: Annamalai | IST: Seenivasan | TL-IST: Palanivel

---

### CEO Decisions

| Date | Decision |
|---|---|
| 10 Apr | Sale Order FSD v2 reviewed. 7 gaps identified: Stage 0 confirmation missing, CustID hardcoding unresolved, 3 SPs not code-analysed, audit trail regression from v1, race condition not flagged as Critical Defect, Section 11 missing config flag names + defaults, auto-email flow incomplete. |
| 10 Apr | Seenivasan corrected on IST reviewer role: describe current system behaviour, not SPINRISE design recommendations. |
| 10 Apr | IST-7 (IG_INSBODT vs IG_BODT): SPINRISE must support both despatch paths. Controlling flag = ig_param.Despatch_Instruction. |
| 11 Apr | IST re-answers reviewed. CSM integration confirmed NOT live at any customer site — Phase 2 only. |
| 11 Apr | TCS threshold hard-coded in KSP_TCSAmountCheckLSales — Critical Defect. SPINRISE fix: move to dedicated TCS config table. |
| 11 Apr | OfferRateFlg currently inactive at all sites. SPINRISE default = N. |
| 12 Apr | Sale Order v3 reviewed — highest praise of any single-version improvement. Stage 0 confirmed, SP analysis complete, audit trail restored, 6 Critical Defects raised. 3 remaining corrections required: CSM as Phase 2, TCS threshold as Critical Defect CD-7, document number race condition warning. |
| 12 Apr | Three IST deadlines set: TL-IST Palanivel commentary column by 15 Apr, IST by 17 Apr, CEO by 21 Apr. |
| 15 Apr | Annamalai confirmed corrections applied. Seenivasan reviewed. |
| 25 Apr | QA review (25 Apr) directed: add TL-IST independent commentary column to Section 13. |
| 27 Apr | Palanivel directed to add commentary column today. Single item blocking CEO approval. |
| 28 Apr | Sale Order FSD Stage 4 sign-off target: Tue 28 Apr (after Palanivel adds commentary). |
| 28 Apr | Despatch Advice FSD target: Tue 28 Apr. Invoice FSD target: Thu 30 Apr. |

---

### Action Items

| Owner | Action | Due | Status |
|---|---|---|---|
| Annamalai | Add Stage 0 confirmation + line counts to FSD header | 11 Apr | Done in v3 |
| Annamalai | SP code analysis for all 3 SPs via Follow-up Prompt B | 11 Apr | Done in v3 |
| Annamalai | Restore audit trail in Section 8.3 | 11 Apr | Done in v3 |
| Annamalai | Add Critical Defect for race condition | 11 Apr | Done in v3 |
| Annamalai | Mark CSM as Phase 2 across Sections 2, 3, 5 | 13 Apr morning | Done |
| Annamalai | Add TCS threshold as CD-7 | 13 Apr morning | Done |
| Annamalai | Add document number race condition warning to Section 5.6 | 13 Apr morning | Done |
| Palanivel | Add TL-IST independent commentary column to Section 13 | Mon 27 Apr | Pending → overdue |
| Palanivel | Add commentary column to Section 13 | Same day (27 Apr) | Pending |
| Saravanan | Sale Order FSD Stage 4 sign-off → CEO | Tue 28 Apr | Status unknown |
| Annamalai | Confirm Despatch Advice code clean-up mail was sent on 25 Apr | Mon 27 Apr | |
| Annamalai | Despatch Advice FSD submission | Tue 28 Apr | |
| Annamalai | Invoice FSD submission | Thu 30 Apr | |
| Seenivasan | Support Annamalai on Despatch Advice IST answers | From Tue 28 Apr | |

---

### Deadlines

- **11 Apr**: v3 corrections (CSM Phase 2, TCS Critical Defect, race condition warning)
- **15 Apr**: TL-IST Palanivel commentary column (original)
- **17 Apr**: IST deadline (original)
- **21 Apr**: CEO deadline for Sale Order FSD (original)
- **25 Apr**: QA review issued — commentary column still missing
- **27 Apr (today)**: Commentary column due (final, no further revision)
- **28 Apr**: Stage 4 sign-off + Despatch Advice FSD
- **30 Apr**: Invoice FSD

---

### Key Threads

1. **Sale Order FSD v1 → v2 (Apr 2–10)**: Annamalai submitted v1. Seenivasan failed to review for 8 days. CEO reviewed v2 on 10 Apr — praised substantial improvement but identified 7 gaps. Directed Seenivasan on correct IST role (current state, not SPINRISE design).

2. **IST Review Rounds (Apr 10–11)**: Seenivasan submitted Round 1 IST responses — CEO found 5 were SPINRISE design recommendations not current state facts. Round 2 responses were substantially better. CEO confirmed IST-1, IST-3, IST-4, IST-5, IST-7, IST-8, IST-12 on 11 Apr with specific FSD action items.

3. **Sale Order v3 CEO Review (Apr 12)**: Most significant single-version improvement in project. Stage 0 confirmed, 3 SPs analysed, audit trail restored, 6 Critical Defects. Three remaining corrections: CSM → Phase 2, TCS threshold → Critical Defect, document number race condition warning.

4. **Blocking Commentary Column (Apr 25–27)**: QA review directed Palanivel to add TL-IST independent commentary to Section 13. Still outstanding on 27 Apr. CEO directed completion same day. Single item blocking CEO approval.

5. **Despatch Advice + Invoice FSD Pipeline**: Annamalai committed to Despatch Advice by 28 Apr, Invoice by 30 Apr. Seenivasan to support IST from 28 Apr.

---

## M04 — HR Payroll / Daily Attendance Module

### Developer: Sathishkumar | IST: Palanivel

---

### CEO Decisions

| Date | Decision |
|---|---|
| 10 Apr | Daily Attendance FSD reviewed. CEO/QA assessment of clarification exchange. Three related screens identified. KSP_AttendanceTransferDate SP code mandatory in Section 8. |
| 10 Apr | Pr_DattExcept: General attendance exception table (not just weekly-off). 3 categories of exception. |
| 10 Apr | modifiedon field controls write-protection. Attendance correction interface must set modifiedon. Reprocessing must check this field before overwriting. |
| 10 Apr | Screen name confirmed: Payroll Daily Attendance Entry (handles manual corrections). Two more screen names still pending from Palanivel. |
| 11 Apr | Sathishkumar submitted FSD v2 with all CEO-directed items addressed. |
| 27 Apr | Shift Schedule code cleaning target: Tue 28 Apr. FSD to follow Wed–Thu. |
| 27 Apr | Palanivel to plan IST review availability for Shift Schedule from Thu 30 Apr. |

---

### Action Items

| Owner | Action | Due | Status |
|---|---|---|---|
| Sathishkumar | Provide KSP_AttendanceTransferDate SP code via Follow-up Prompt B | Before CEO review | Done in v2 |
| Palanivel | Name 2 remaining screens (weekly-off exception review, OT approval) | Before v2 review | Actioned |
| Sathishkumar | Shift Schedule code cleaning (Stage 0) | Tue 28 Apr | Pending |
| Sathishkumar | Shift Schedule FSD generation | Wed–Thu 29–30 Apr | Pending |
| Palanivel | IST review availability for Shift Schedule | From Thu 30 Apr | Pending |
| Sathishkumar | Confirm Stage 0 status at Saturday meeting | Sat 2 May | Pending |

---

### Deadlines

- **10 Apr**: FSD v2 corrections — all items addressed
- **28 Apr**: Shift Schedule Stage 0 complete
- **29–30 Apr**: Shift Schedule FSD generation
- **2 May (Sat)**: Confirm Stage 0 status at review meeting

---

### Key Threads

1. **Daily Attendance FSD Review (Apr 10)**: CEO/QA reviewed clarification exchange between Sathishkumar and Palanivel. Confirmed 3 important additions: Pr_DattExcept expanded scope, modifiedon field write-protection rule, Payroll Daily Attendance Entry screen name. Palanivel's sign-off rejected as premature — two more screen names required + SP code mandatory.

2. **FSD v2 Submission (Apr 10)**: Sathishkumar submitted v2 with all corrections applied — all gaps closed.

3. **Shift Schedule Pipeline (Apr 27)**: Week direction from CEO. Sathishkumar to complete code cleaning by 28 Apr, FSD by 29–30 Apr. Palanivel IST from 30 Apr.

---

## General / Cross-Module

---

### Pre-Launch Emails (25–31 March 2026)

> These 8 emails predate the main April–May archive. They represent the project launch and kickoff communications. Appended 2 May 2026.

---

#### 1. Project Launch Announcement (25 Mar 2026)

**Email:** "Launch of Project SPINRISE — Our Next-Generation ERP Journey Begins"
**From:** CEO (ceo@kalsofte.com) **To:** Saravanan, Sasi, Palanivel (CC: all teams) **Date:** 25 Mar 2026 (Fwd to Abinandan & Sasi on 31 Mar 10:27)

**Key Points:**
- Formal announcement of Project SPINRISE — strategic initiative to move Spinning ERP to a fully modern web-based platform
- This is an evolution, not a rewrite — proven domain strength moves to scalable, AI-assisted modern platform
- Project Timeline: 1 April 2026 to 31 March 2027 (12-month accelerated roadmap)
- Current VB system runs in parallel, both platforms sharing same database — zero disruption migration
- First sprint planning session scheduled Saturday 28 March 2026 at 11:00 AM

**Decisions Made:**
- Project SPINRISE officially launched
- Parallel-run strategy confirmed — existing and new systems share the same database during transition
- 12-month roadmap committed

**Tagline:** "The spindle gave us our roots. SPINRISE gives us our wings."

---

#### 2. Blueprint v4 Review Meeting (27 Mar 2026)

**Email:** "SPINRISE Blueprint review & discussion meeting -reg"
**From:** CEO (ceo@kalsofte.com) **To:** Saravanan, Sasi, Palanivel (CC: all teams) **Date:** 27 Mar 2026 (Fwd to Abinandan & Sasi on 31 Mar 10:39)

**Key Points:**
- SPINRISE Blueprint v4 shared for team review ahead of 5:00 PM discussion meeting on 28 March
- All attendees directed to come prepared for active participation
- Attachment: SPINRISE_Blueprint_v4_Internal.docx

**Action Items:**
- All recipients: Read Blueprint v4 before 5:00 PM meeting on 28 March 2026

---

#### 3. VB6 Form Documentation Guidelines v1.0 (28 Mar 2026)

**Email:** "SPINRISE — VB6 Form Documentation Guidelines v1.0 | Action Required from All Dev & IST Members"
**From:** CEO (ceo@kalsofte.com) **To:** Saravanan, Sasi, Palanivel, Mariyaiya, Annamalai, Sathishkumar, Muthuvel, Seeni, Vignesh (CC: all teams) **Date:** 28 Mar 2026 (Fwd to Abinandan & Sasi on 31 Mar 10:40)

**Key Points:**
- Project SPINRISE officially begins 1 April 2026
- Mandatory process for every VB6 form migration: Document → Validate → Convert
- Attachment: SPINRISE_VB6_Documentation_Guidelines_v1.0.docx
- Document contains: Claude Code prompts for extracting VB6 business logic, complete FSD template, IST review and sign-off instructions, ASP.NET Core API and React UI code conversion prompts, VB6 pattern quick-reference table, Dev and IST checklists

**The Hard Rule (CEO directive):**
- No APPROVED FSD = No code conversion. TL-Dev will not begin Stage 3 for any form without IST-signed FSD in the shared folder. This is not a guideline — it is the process.

**Role-Specific Instructions:**
- TL-Dev and Sr VB Dev: Use Claude Code to produce FSD draft; follow prompts exactly in sequence; do not skip developer review step
- TL-IST, Sr IST1, Sr IST2 and SME: FSD review is the most important step; confirm real-world behaviour at every customer site; sign off only when fully satisfied
- Jr Web Dev: Familiarise with FSD template and quick-reference patterns; use APPROVED FSD for React UI generation in Stage 3

**Action Items:**
- All team members: Read SPINRISE_VB6_Documentation_Guidelines_v1.0.docx over weekend
- All team members: Come to Monday (30 March) with questions

---

#### 4. VB FSD Claude Guide v1 — Issued for Feedback (29 Mar 2026)

**Email:** "SPINRISE — VB FSD Claude Guide v1 | Please Read and Share Your Feedback"
**From:** CEO (ceo@kalsofte.com) **To:** Mariyaiya, Muthuvel, Palanivel, Saravanan (CC: Sasi, Annamalai, Sathishkumar, Seeni, Vignesh, MohanBabu, Hari, QA, Support) **Date:** 29 Mar 2026 (Fwd to Abinandan & Sasi on 31 Mar 10:43)

**Key Points:**
- Guide explains in plain English how each team member uses Claude to convert a VB6 screen into an FSD, and how the FSD travels through the four-level review chain
- Covers: FSD definition and purpose, 5-step developer process, exact Claude prompt (copy-paste ready), 3 follow-up questions, four-level review chain (Module Sr IST → TL-IST → PM → CEO), quick reference desk cards
- Attachment: SPINRISE_VB_FSD_Claude_Guide_v1.docx

**Role-Specific Sections:**
- VB Developers: Section 3 (5-step process + prompt + follow-up questions) + Section 7 quick reference card
- Module Sr IST: Section 4, Level 1 (review coverage, [IST ADD]/[IST CONFIRMED] tags, sign-off requirements)
- TL-IST: Section 4, Level 2 (cross-module domain validation)
- Project Manager: Section 4, Level 3 (completeness check, not domain accuracy)
- CEO: Section 4, Level 4 and Section 6 (final domain authority gate)

**CEO Note:** "We are not just migrating a software platform. We are converting decades of accumulated spinning ERP knowledge into a permanent, structured form that will outlast the technology it runs on."

**Action Items:**
- All team members: Read Guide v1 before Saturday's session
- All team members: Share written feedback as reply to this mail — feedback will shape v2

---

#### 5. Sathishkumar Feedback on VB FSD Guide v1 (30 Mar 2026)

**Email:** Re: "SPINRISE — VB FSD Claude Guide v1 | Please Read and Share Your Feedback"
**From:** SathishKumarM (sathishkumar.m@kalsofte.com) **To:** CEO **Date:** 30 Mar 2026 (appears in thread of 31 Mar 11:45)

**Key Points (Feedback submitted by Sathishkumar):**
- Guide is very clear and well structured
- Gap 1: Business logic is not fully covered by the .frm file alone — validations and calculations are also handled in (a) Common or Class Modules, (b) Stored Procedures, (c) Data loaded into Object properties
- Gap 2: Many critical validations, calculations, and business rules (especially Division and TC logic) are implemented inside stored procedures and would be missed if only the form code is submitted to Claude

---

#### 6. CEO Response to Sathishkumar — Guide v2 Announced (31 Mar 2026, 11:15)

**Email:** Re: "SPINRISE — VB FSD Claude Guide v1 | Please Read and Share Your Feedback"
**From:** CEO (ceo@kalsofte.com) **To:** SathishKumarM (CC: full team) **Date:** 31 Mar 2026 11:15

**Key Points:**
- CEO confirmed both of Sathishkumar's observations as technically precise and critical
- TC (Transaction Code) framework explained to full team: TC drives stock direction and accounting entries across all modules; TC logic lives inside stored procedures — if the FSD misses it, the new web screen will silently produce wrong stock and accounting entries
- Guide v2 announced — will include 5 specific additions based on Sathishkumar's feedback

**v2 Additions Announced:**
1. Step 1 expanded — Mandatory pre-documentation checklist: .frm file + all Common/Class modules + all stored procedures used by the screen
2. New follow-up prompt for Common and Class Module logic
3. New follow-up prompt for Stored Procedure business rules
4. Dedicated FSD section for Transaction Code (TC) behaviour (TC values, stock direction, accounting treatment, where TC logic resides)
5. IST review checkpoint specifically for SP-embedded logic and TC handling

**CEO Directive to full team:** "Before you open Claude for any screen, ask yourself: Are there Common or Class modules? Are there SPs with business rules (not just data access)? Does this screen involve TC? Are there object property assignments at load time? If yes to any — collect that code and include it. An FSD built only on the .frm file is an incomplete FSD."

---

#### 7. Sathishkumar Acknowledgement (31 Mar 2026, 11:45)

**Email:** Re: "SPINRISE — VB FSD Claude Guide v1 | Please Read and Share Your Feedback"
**From:** SathishKumarM (sathishkumar.m@kalsofte.com) **To:** CEO **Date:** 31 Mar 2026 11:45

**Key Points:**
- Acknowledged CEO's response
- Confirmed he will follow the updated approach in upcoming work

---

#### 8. VB FSD Claude Guide v2 — Issued as Operative Guide (31 Mar 2026, 13:27)

**Email:** "SPINRISE — VB FSD Claude Guide v2 | Your Feedback Built This | Please Read and Follow"
**From:** CEO (ceo@kalsofte.com) **To:** Mariyaiya, Muthuvel, Palanivel, Saravanan (CC: full team incl. Abinandan) **Date:** 31 Mar 2026 13:27

**Key Points:**
- Guide v2 issued — from this date, v2 is the operative guide for all FSD documentation in SPINRISE; v1 superseded
- Attachment: SPINRISE_VB_FSD_Claude_Guide_v2.docx
- Three team contributors acknowledged by name:
  - Sathishkumar: Identified Common/Class module gap and TC framework gap
  - Mariyaiya: Raised concern about pending customer customisations making unstabilised code unsuitable for FSD; also independently produced a 12-section critical analysis of tmpPoindent.frm (9,108-line PR form) identifying 3 Critical + 3 High + 4 Medium + 2 Low issues

**What is New in v2 vs v1:**
- Stage 0 added as entirely new mandatory phase: code stabilisation review, screen readiness checklist, pre-Claude checklist (.frm + Common/Class modules + all SPs), TC framework reference table, customer variation register, dead code identification; Stage 0 must be TL-Dev signed off before any FSD work begins
- Follow-up prompts expanded from 3 to 6 (added: Common/Class module logic prompt, SP business rules prompt, TC framework prompt)
- FSD template expanded from 8 to 14 sections (added: TC Framework, Common/Class Module Dependencies, Error Message Catalogue, Customer Variation Register, SPINRISE Migration Recommendations, Summary Scorecard)
- Review chain updated to four levels with full IST structured questionnaire (IST-1 to IST-7)
- New Section 8: 8 known VB6 defect patterns to search for (End statements, hardcoded customer IDs, SQL string concatenation, dead code, inconsistent duplicate logic, hardcoded file paths, missing transaction rollback, typos in error messages)
- Three quick reference cards: Developer Daily Card, Reviewer Checklist, Defect Patterns Card

**Special Note to Abinandan (New Developer):**
- "Welcome again. This guide is your primary reference for how SPINRISE development works. Start by reading Section 3 (Stage 0) and Section 4. The defect patterns in Section 8 will be particularly useful as you begin reading Kalsofte VB6 code for the first time."

**Action Items (for Saturday session):**
- All developers and IST members: Read v2 in full before Saturday
- Module VB Developers: Bring Stage 0 readiness assessment for assigned module (identify stable vs pending customisation screens)
- Mariyaiya: Bring updated PR form critical analysis with v2 FSD template (14 sections) applied; Muthuvel IST review (IST-1 to IST-7) should be underway
- TL-Dev (Sasi): Bring list of all Phase 1 screens with pending customisations or open corrections (Stage 0 stabilisation backlog)
- PM (Saravanan): Activate Stage 0 pre-sprint tracking in PULSE 360 for all Phase 1 modules

---

### CEO Decisions — Cross-Module

| Date | Topic | Decision |
|---|---|---|
| 25 Mar | Project Launch | Project SPINRISE formally launched. 12-month roadmap (1 Apr 2026 – 31 Mar 2027). Parallel-run strategy: VB and web platforms share the same database. |
| 28 Mar | Documentation Process | Mandatory process for all VB6 form migrations: Document → Validate → Convert. Hard rule: No APPROVED FSD = No code conversion. |
| 29 Mar | PO Module First | Stores Purchase Order module selected as first SPINRISE module. PR Approval workflow architecture is the single most critical decision before coding begins. |
| 29 Mar | VB FSD Guide v1 | VB FSD Claude Guide v1 issued. All team members to read and share feedback before Saturday session. |
| 31 Mar | VB FSD Guide v2 | VB FSD Claude Guide v2 issued as operative guide — v1 superseded. Stage 0 mandatory before any FSD work. FSD template expanded from 8 to 14 sections. |
| 4 Apr | Infrastructure | Hardware procurement deferred until team moves into code conversion phase. Claude-recommended spec: i7, 32 GB RAM, 512 GB NVMe, 100 Mbps fibre. |
| 4 Apr | Sprint 0 | Deferred pending at least one CEO-approved FSD. |
| 6 Apr | PULSE 360 | All task entries must not exceed 90 minutes. Descriptions must be specific and sub-task oriented. Non-compliance not acceptable. |
| 7 Apr | Tool Sequence | MANDATORY: Claude AI (browser) for Stage 0 + FSD documentation → CEO-approved FSD → Claude Code for code generation. No exceptions. No Claude Code on any form without an approved FSD. |
| 7 Apr | Project Structure | TL-Dev Sasi must define and lock SPINRISE project structure before team scales Claude Code. |
| 7 Apr | Claude Pro | Active for Sasi, Mariyaiya, Abinandan. Annamalai + Sathishkumar subscriptions to be activated this week. PM Saravanan arranged 10 Apr. |
| 9 Apr | Stage 0 | SQL Server stored procedures mandatory in Stage 0 readiness for every module. |
| 10 Apr | Reporting Stack | Crystal Reports → QuestPDF (MIT-licensed) for all PDF prints. EPPlus for all Excel/CSV exports. FastReports EXCLUDED from Phase 1 scope. Zero licence cost. |
| 11 Apr | FSD Checklist | 5-stage mandatory checklist effective Monday 13 April. |
| 12 Apr | Guide v3 | VB FSD Claude Guide v3 operative from 13 April. Living document — improves with each FSD cycle. |
| 11 Apr | Naming | Module = M01–M04. FSD naming convention = MODULE_FSD_TransactionName_vN. |
| 25 Apr | Weekly Customer Tracker | Sathishkumar to manage ERP customer priority tracker (Vamshadhara Paper Mills gap doc). |
| 25 Apr | Laptop request | Request reviewed. No permission granted at this time; working from office is preferred. |
| 28 Apr | Claude Usage | Claude Pro usage hitting limits. Extra Usage enabled as immediate solution. Max plan deferred to end-of-May review. |
| 30 Apr | Claude Usage | Team must manage usage consciously: use Claude AI for FSD/review (no chat), Claude Code for development. Reduce casual usage. |
| 1 May | Monthly Summary | New template effective April 2026. All developers must submit monthly work summary using new format. |
| 2 May | Blueprint v5 | Released. Updates: tech stack corrected, FSD pipeline documented, Stage 0 SOP formalized, Risk Register updated. |
| 2 May | Saturday Meeting | Review meeting at 5 PM today. Every member must report module status with dates, versions, confirmed statuses. Vague updates not accepted. |

---

### Key General Threads

0-A. **Project SPINRISE Launch Announcement (25 Mar)**: CEO formally announced Project SPINRISE — strategic initiative to migrate Spinning ERP to modern web-based platform. 12-month roadmap (1 Apr 2026 – 31 Mar 2027). Parallel-run strategy: both systems share the same database. First sprint planning scheduled Saturday 28 March.

0-B. **Blueprint v4 Review Meeting (27–28 Mar)**: CEO distributed Blueprint v4 ahead of a 5:00 PM meeting on 28 March. All team leads directed to come prepared for active participation.

0-C. **VB6 Form Documentation Guidelines v1.0 (28 Mar)**: CEO issued SPINRISE_VB6_Documentation_Guidelines_v1.0 — the first formal process document. Established Document → Validate → Convert as the mandatory quality gate for every VB6 form. Hard rule: no FSD approval = no code conversion. Effective immediately from 1 April.

0-D. **VB FSD Claude Guide v1 → Feedback → v2 (29–31 Mar)**: CEO issued Guide v1 on 29 March requesting team feedback before Saturday session. Sathishkumar responded on 30 March with two precise gaps: (1) business logic spread across Common/Class modules and SPs, not just .frm files; (2) TC (Transaction Code) framework logic lives inside SPs and would be invisible to Claude. CEO responded on 31 March 11:15, acknowledged both gaps, explained TC framework to full team, announced 5 specific v2 additions. Guide v2 issued 31 March 13:27 — v2 became the operative guide, v1 superseded. Stage 0 introduced as new mandatory phase before any FSD work. FSD template expanded from 8 to 14 sections. Mariyaiya also contributed by producing an independent 12-section critical analysis of the PR form (9,108 lines) — this shaped the template structure in v2.

1. **MoM 4 April Review Meeting (sent 6 Apr)**: Infrastructure deferred. Stage 0 readiness module-by-module update. PR form IST review pending. Claude Code demonstration by Mariyaiya at Sat 11 Apr session directed. Claude Pro for all developers. SP identification mandatory in Stage 0.

2. **Performance Feedback — Claude AI vs Claude Code (7 Apr)**: CEO response to Mariyaiya's feedback. Validated both tools. Defined mandatory sequence: Claude AI for FSD → CEO approval → Claude Code for code generation. No developer may use Claude Code on production forms without approved FSD. TL-Dev Sasi must define project structure before scaling.

3. **PULSE 360 Compliance Reminder (9 Apr)**: Final reminder. Each task entry ≤ 90 minutes. Descriptions must be specific. Non-compliance = direct violation of meeting instruction.

4. **Activity Tracker Review (9 Apr)**: CEO reviewed 8 Apr tracker. Praised developer side (Mariyaiya, Sasi, Annamalai, Sathishkumar all active). IST side stalled — all 4 IST scope cross-checks overdue. PM Saravanan's own IST tasks overdue. Muthuvel PR IST review most critical blocker. Claude Pro for Saravanan arranged same day.

5. **Crystal Reports → QuestPDF Decision (10–11 Apr)**: Abinandan submitted analysis + POC. No reliable conversion from .rpt to .frx. FastReport paid = $499–$1499/dev/year. CEO decided: QuestPDF (MIT, zero cost) for all PDF prints; EPPlus for Excel/CSV. FastReports excluded from Phase 1. Confirmed and locked in VB FSD Claude Guide v3.

6. **Project Review MoM 11 Apr (sent 11 Apr evening)**: FSD process review — learnings, checklist feedback, way forward. FSD checklist made mandatory. Guide v3 issued. Each module status summarised. M01 closest to approval. Next review Friday 17 Apr 5 PM.

7. **Pre-Meeting Status + FSD Checklist (11 Apr)**: Working calendar: 4 days next week (13, 15, 16, 17 Apr). Review moved to Friday 17 Apr 5 PM. M01 = 4 additions remaining for CEO approval. M02 = Section 5.11 missing. M03 = Stage 0 not confirmed. M04 = 7 IST items still open.

8. **Project Review MoM 25 Apr (sent 26 Apr)**: Detailed MoM from Saturday meeting. All revised committed dates recorded. Service PO Stage 0 by Thu 30 Apr. M03 Despatch Advice and Invoice dates set. M04 Shift Schedule timeline set.

9. **Week Direction 27 Apr – 2 May (sent 27 Apr)**: Working days Mon–Thu + Sat (1 May = May Day holiday). Every item must have clear status before Sat 2 May 5PM meeting. M01: PR UI done today; IST review Tue; CEO submission Tue. M02: Arrival Entry due today; Lot Bale Entry Thu. M03: commentary column today; Despatch Advice Tue; Invoice Thu. M04: Shift Schedule Stage 0 Tue.

10. **Team Progress Update 29 Apr (sent 29 Apr)**: Comprehensive status update before Saturday meeting. IST 44% pass rate noted. Module-wise progress documented.

11. **Claude Pro Usage Guide (2 May)**: Team hitting usage limits. Extra Usage enabled. Usage disciplines issued. Max plan deferred to end-of-May review. Guidance on managing Claude AI vs Claude Code usage.

12. **Blueprint v5 (2 May)**: Released before 5 PM meeting. Tech stack corrected, FSD pipeline documented, Stage 0 SOP formalized, Risk Register updated.

13. **Weekly Customer Priority Tracker (27 Apr)**: Forwarded by CEO from Sathishkumar. CEO assessment and directions issued. ERP customer support responsibilities must be balanced with SPINRISE development work.

14. **VB FSD Claude Guide Versions**: v1 (29 Mar), v2 (31 Mar), v3 (12 Apr). Each version incorporated team feedback. v1 issued with 3 follow-up prompts and 8-section FSD template. v2 triggered by Sathishkumar and Mariyaiya feedback — Stage 0 added, 6 prompts, 14-section template. v3 operative from 13 Apr. Living document improved by each FSD cycle.

---

## Master Action Item Register

| # | Module | Owner | Action | Due Date | Status |
|---|---|---|---|---|---|
| 1 | M01 | Muthuvel | Complete PR form IST-1 to IST-7 review | 10 Apr EOD | Done |
| 2 | M01 | Mariyaiya | Update FSD with IST-resolved items, resubmit | 10 Apr | Done |
| 3 | M01 | Mariyaiya | 4 final FSD additions before 11 Apr meeting | 11 Apr 5PM | Done |
| 4 | M01 | Mariyaiya | Document Claude Code prompting sequence | Before 11 Apr | Done |
| 5 | M01 | Mariyaiya | Submit corrected v2.2 → v2.3 | 17 Apr | Done — Approved |
| 6 | M01 | Abinandan | QuestPDF PR print — 4 corrections + Excel/CSV eval | 15–16 Apr | Done |
| 7 | M01 | Abinandan + Hari | PR Form UI corrections — all gaps | 27 Apr EOD | Done |
| 8 | M01 | Muthuvel | Be ready for IST review of PR form | 28 Apr | Done |
| 9 | M01 | Abinandan | Fix 14 High-severity IST bugs | 30 Apr EOD | In progress |
| 10 | M01 | Abinandan | Provide bug fix report | 1 PM 30 Apr | Done |
| 11 | M01 | Abinandan | CEO demo — PR Form completion % + next milestone | Sat 2 May 5PM | Pending |
| 12 | M01 | Mariyaiya | FSD generation for M01_FSD_IndentToPO (V5, 14,892 lines) | Draft Thu 30 Apr | In progress |
| 13 | M01 | Sasi | Service PO code cleaning + Stage 0 | Thu 30 Apr | Pending |
| 14 | M02 | Sasi | Submit SP_PRToPO_RMI + SP_PRToPO_RMIFilter via Follow-up Prompt B | 11 Apr | Done |
| 15 | M02 | Sasi | Add Section 5.11 PR-to-PO conversion workflow | 13 Apr | Done |
| 16 | M02 | Sasi | Fix all FastReports → QuestPDF references in v6 | 13 Apr EOD | Done |
| 17 | M02 | Sasi | Fix SuppLotNoReqArrival default to Y in Section 11 | 13 Apr | Done |
| 18 | M02 | Saravanan | Provide web PO approval screen URL for Section 10 | 13 Apr | Done in v7 |
| 19 | M02 | Saravanan | IST review Arrival Entry FSD within 1 working day | 28 Apr | Done |
| 20 | M02 | Palanivel | TL-IST review Arrival Entry FSD | 29 Apr | Done |
| 21 | M02 | Saravanan | Stage 4 sign-off Arrival Entry FSD | 30 Apr | Done |
| 22 | M02 | Sasi | Lot Bale Entry FSD | 9 May (revised) | In progress |
| 23 | M02 | Sasi | RM Contract FSD | 12 May (revised) | Upcoming |
| 24 | M02 | Sasi | Bale Opening FSD | 15 May (revised) | Upcoming |
| 25 | M02 | Sasi | Rag Opening FSD | 18 May (revised) | Upcoming |
| 26 | M02 | Saravanan | Lot Bale Entry IST review | By Sat 2 May | Pending |
| 27 | M03 | Annamalai | Add CSM as Phase 2, TCS as CD-7, race condition warning | 13 Apr morning | Done |
| 28 | M03 | Palanivel | Add TL-IST commentary column to Section 13 | 27 Apr (today) | Pending/Overdue |
| 29 | M03 | Saravanan | Sale Order FSD Stage 4 sign-off → CEO | Tue 28 Apr | Status unknown |
| 30 | M03 | Annamalai | Confirm Despatch Advice code clean-up mail sent 25 Apr | 27 Apr | |
| 31 | M03 | Annamalai | Despatch Advice FSD submission | Tue 28 Apr | |
| 32 | M03 | Annamalai | Invoice FSD submission | Thu 30 Apr | |
| 33 | M03 | Seenivasan | Support Annamalai on Despatch Advice IST | From Tue 28 Apr | |
| 34 | M04 | Sathishkumar | Shift Schedule code cleaning (Stage 0) | Tue 28 Apr | Pending |
| 35 | M04 | Sathishkumar | Shift Schedule FSD generation | Wed–Thu 29–30 Apr | Pending |
| 36 | M04 | Palanivel | IST review availability for Shift Schedule | From Thu 30 Apr | Pending |
| 37 | M04 | Sathishkumar | Confirm Stage 0 status at Saturday meeting | Sat 2 May | Pending |
| 38 | General | Sasi | Define and lock SPINRISE project structure | ASAP (from 7 Apr) | Done (basis for development) |
| 39 | General | Muthuvel | Keep hardware/internet quotes on file | Ongoing | Noted |
| 40 | General | PM Saravanan | Coordinate Stage 0 progress across all modules | Weekly | Ongoing |
| 41 | General | All devs | Claude Code familiarisation on non-production forms | Apr week | Ongoing |
| 42 | General | Abinandan | RAM upgrade: 16 GB approved (approved 14 Apr) | ASAP | Approved |
| 43 | General | All devs | Submit monthly work summary using new template | April 2026 | New requirement |
| 44 | General | All members | Read SPINRISE_VB6_Documentation_Guidelines_v1.0 before Phase 0 begins | Before 30 Mar | Done (pre-launch) |
| 45 | General | All members | Read VB FSD Claude Guide v1 before Saturday session (28 Mar) | Before 28 Mar | Done (pre-launch) |
| 46 | General | All members | Share written feedback on Guide v1 as reply mail | ASAP after 29 Mar | Done — Sathishkumar + Mariyaiya responded |
| 47 | General | All members | Read VB FSD Claude Guide v2 in full before Saturday session | Before Sat 5 Apr | Done (pre-launch) |
| 48 | M01 | Mariyaiya | Initial estimate of VB6 form count in each PR and PO group | Before 28 Mar session | Done (pre-launch) |
| 49 | M01 | Muthuvel | First list of customer-specific approval chain variations | Before 28 Mar session | Done (pre-launch) |
| 50 | M01 | Abinandan | Confirm development environment readiness / blockers | Before 28 Mar session | Done (pre-launch) |
| 51 | General | Module VB Devs | Bring Stage 0 readiness assessment (stable vs pending screens) for assigned module | Before Sat session | Done (pre-launch) |
| 52 | M01 | Mariyaiya | Update PR critical analysis using v2 FSD template (14 sections); share with Muthuvel for IST-1 to IST-7 review | Before Sat session | Done — led to FSD v2 submission |
| 53 | General | Sasi (TL-Dev) | Bring list of all Phase 1 screens with pending customisations (Stage 0 stabilisation backlog) | Before Sat session | Done (pre-launch) |
| 54 | General | Saravanan (PM) | Activate Stage 0 pre-sprint tracking in PULSE 360 for all Phase 1 modules | Before Sat session | Done (pre-launch) |

---

## Master Decision Register

| # | Date | Decision | Owner | Module |
|---|---|---|---|---|
| D-01 | 4 Apr | Hardware procurement deferred until code conversion phase | CEO | General |
| D-02 | 4 Apr | Sprint 0 deferred until at least one FSD CEO-approved | CEO | General |
| D-03 | 7 Apr | Tool sequence mandatory: Claude AI → FSD → CEO Approval → Claude Code | CEO | General |
| D-04 | 7 Apr | No Claude Code on any SPINRISE form without CEO-approved FSD | CEO | General |
| D-05 | 7 Apr | TL-Dev Sasi must define/lock project structure before team scales | CEO | General |
| D-06 | 9 Apr | SQL Server SPs mandatory in Stage 0 readiness for every module | CEO | General |
| D-07 | 9 Apr | ksp_PendPR: Full removal in SPINRISE | CEO | M01 |
| D-08 | 9 Apr | blcode (Oracle field): Excluded from SPINRISE | CEO | M01 |
| D-09 | 9 Apr | PR line item uniqueness: Item Code + Machine Code | CEO | M01 |
| D-10 | 9 Apr | PRapprovalstatus: Display-only status indicator on PR form | CEO | M01 |
| D-11 | 9 Apr | Manual PR numbering: Not required. Auto-sequential only | CEO | M01 |
| D-12 | 9 Apr | TC=1 rate override logic: Dead code. Excluded from SPINRISE | CEO | M01 |
| D-13 | 9 Apr | EmpCommon flag: Database-driven. 5 divisions confirmed. Dual Crystal → single QuestPDF | CEO | M01 |
| D-14 | 10 Apr | Crystal Reports → QuestPDF (all PDF prints), EPPlus (all Excel/CSV). FastReports excluded Phase 1 | CEO | General |
| D-15 | 10 Apr | PR approval workflow: 2 levels (L1 = Dept Heads, L2 = Purchase Officer). No auto-PO from approved PR | CEO | M01 |
| D-16 | 10 Apr | Modify and Delete blocked once first approval level given | CEO | M01 |
| D-17 | 10 Apr | No backdate for PR entry | CEO | M01 |
| D-18 | 10 Apr | CD-2 fix (race condition): UPDLOCK on RM_CONT | CEO | M02 |
| D-19 | 10 Apr | CD-7 fix (DelReason): Write to RM_Trans_Log.DelReason | CEO | M02 |
| D-20 | 10 Apr | Section 5.11 PR-to-PO conversion workflow mandatory in M02 FSD | CEO | M02 |
| D-21 | 10 Apr | Sale Order: IST reviewer role = current state facts, not SPINRISE design recommendations | CEO | M03 |
| D-22 | 10 Apr | IG_INSBODT vs IG_BODT: SPINRISE supports both despatch paths. ig_param.Despatch_Instruction controls routing | CEO | M03 |
| D-23 | 11 Apr | CSM integration: Not live at any customer site. Phase 2 only. Not in Phase 1 scope | CEO | M03 |
| D-24 | 11 Apr | TCS threshold hard-coded in KSP_TCSAmountCheckLSales = Critical Defect. Move to config table | CEO | M03 |
| D-25 | 11 Apr | RM_PARAM flags defaults confirmed (see M02 CEO Decisions table) | CEO | M02 |
| D-26 | 11 Apr | PRBased SPINRISE default = Y | CEO | M02 |
| D-27 | 11 Apr | wosample SPINRISE default = Y (revised based on 9-site customer data) | CEO | M02 |
| D-28 | 11 Apr | Cry_RMIPO_JAT_NEW = SPINRISE print template base. Cry_RMI_PO_ALL retired | CEO | M02 |
| D-29 | 11 Apr | PO deletion blocked once first approval level given (FIRST_APPFLG = Y) | CEO | M02 |
| D-30 | 11 Apr | No backdate for PO entry | CEO | M02 |
| D-31 | 11 Apr | FSD Review Checklist (5 stages) mandatory from 13 April | CEO | General |
| D-32 | 12 Apr | VB FSD Claude Guide v3 operative from 13 April | CEO | General |
| D-33 | 13 Apr | FastReports all references in M02 FSD must be replaced with QuestPDF | CEO | M02 |
| D-34 | 13 Apr | SuppLotNoReqArrival SPINRISE default = Y | CEO | M02 |
| D-35 | 14 Apr | RAM upgrade for Abinandan approved (8 GB → 16 GB) | CEO | General |
| D-36 | 17 Apr | M01 PR Form FSD v2.3 — CEO APPROVED. Sprint 0 begins | CEO | M01 |
| D-37 | 17 Apr | M02 RMI PO FSD v8 — CEO APPROVED | CEO | M02 |
| D-38 | 17 Apr | QuestPDF confirmed production-ready for all transaction prints. EPPlus for Excel/CSV | CEO | General |
| D-39 | 17 Apr | M02 FSD target dates: Arrival Entry 21 Apr, Lot Bale 25 Apr, RM Contract 30 Apr, Bale Opening end Apr | CEO | M02 |
| D-40 | 21 Apr | QuestPDF PR print PR 329 — production-ready confirmed | CEO | M01 |
| D-41 | 27 Apr | indenttopo.frm V5 Stage 0 CLEARED. V5 = locked reference file | CEO | M01 |
| D-42 | 28 Apr | IST Test Checklist v2 approved. IST testing begins 29 April | CEO | M01 |
| D-43 | 28 Apr | Sprint 2 backlog confirmed: Copy PR, bulk toolbar, compact filter, print panel, GRN chain | CEO | M01 |
| D-44 | 30 Apr | Claude Pro Extra Usage enabled for team. Max plan deferred to end-of-May | CEO | General |
| D-45 | 1 May | M02 Arrival Entry FSD — CEO APPROVED. Build clearance issued | CEO | M02 |
| D-46 | 1 May | M02 FSD revised dates: Lot Bale 9 May, RM Contract 12 May, Bale Opening 15 May, Rag Opening 18 May | CEO | M02 |
| D-47 | 1 May | Monthly Work Summary new template effective April 2026 | CEO | General |
| D-48 | 1 May | M01 FSD v2.4: Minor amendment — line count = 14,892 for indenttopo V5 | CEO | M01 |
| D-49 | 2 May | Blueprint v5 released. Tech stack, FSD pipeline, Stage 0 SOP, Risk Register updated | CEO | General |
| D-50 | 2 May | Saturday 5 PM review meeting — all members must report with dates, versions, confirmed statuses | CEO | General |
| D-51 | 25 Mar | Project SPINRISE formally launched. 12-month roadmap: 1 Apr 2026 – 31 Mar 2027 | CEO | General |
| D-52 | 25 Mar | Parallel-run strategy: VB system continues; both platforms share the same database; customers migrate at the right time without risk | CEO | General |
| D-53 | 28 Mar | Mandatory migration process for every VB6 form: Document → Validate → Convert | CEO | General |
| D-54 | 28 Mar | Hard rule: No APPROVED FSD = No code conversion. TL-Dev will not begin Stage 3 without IST-signed FSD. This is the process. | CEO | General |
| D-55 | 29 Mar | Stores Purchase Order module selected as first SPINRISE module — sets architecture standard for all subsequent modules | CEO | M01 |
| D-56 | 29 Mar | PR Approval workflow architecture is the single most critical decision before any code is written; IST must document all approval chain variations first | CEO | M01 |
| D-57 | 29 Mar | VB FSD Claude Guide v1 issued — all team members must read and share feedback before Saturday session | CEO | General |
| D-58 | 31 Mar | FSD built only on the .frm file is incomplete — must also include all Common/Class modules and all stored procedures called by the screen | CEO | General |
| D-59 | 31 Mar | TC (Transaction Code) framework must have a dedicated FSD section for every screen involving stock movement or financial posting | CEO | General |
| D-60 | 31 Mar | VB FSD Claude Guide v2 is the operative guide from 31 March. v1 superseded. Stage 0 is mandatory before any FSD work begins on any screen. | CEO | General |
| D-61 | 31 Mar | Stage 0 must be TL-Dev signed off before FSD documentation begins for any screen | CEO | General |
| D-62 | 31 Mar | FSD template expanded from 8 sections to 14 sections — all 6 new sections mandatory for transaction screens | CEO | General |

---

*End of Email Summary — SPINRISE ERP Project*
*Source: D:\Spinrise\Docs\Email\ — approximately 118 emails reviewed, 25 March – 2 May 2026*
*Pre-launch emails (25–31 Mar 2026): 8 emails appended on 2 May 2026*
