# AI (Claude) Review Process Gate
## Post-Development Validation Framework

**Document Title:** AI (Claude) Review Process Gate — Post-Development Validation Framework  
**Document Reference:** SPINRISE-ARPG-v1.0  
**Prepared By:** Development Team — Kalpatharu Software Ltd.  
**Reviewed By:** TL-Dev (Sasi), Technical Team  
**Intended Audience:** CEO, Directors, Senior Management  
**Classification:** Internal — Management Circulation  
**Version:** 1.0  
**Date:** May 2026  

---

---

## TABLE OF CONTENTS

1. Executive Summary
2. Purpose of the AI Review Process Gate
3. End-to-End Validation Workflow
4. What Claude AI Validates
5. AI Review Governance Rules
6. Inputs Required for AI Review
7. Outputs Generated from AI Review
8. Benefits to the Organisation
9. Risk Reduction Through AI Review
10. Recommended AI Review Checklists
11. Developer Responsibilities Before IST Handover
12. Final Handover Gate to the IST Team
13. Standard Claude AI Review Prompt Framework
14. Conclusion

---

---

# SECTION 1 — EXECUTIVE SUMMARY

## 1.1 The Core Problem This Process Solves

In any large-scale ERP implementation, a consistent gap exists between what was approved on paper and what was delivered in practice. Business requirements are specified in documents. Designs are approved in visual mockups. Rules are captured in structured specifications. But when multiple developers build multiple modules across an extended timeline, the risk of subtle deviation — a missing validation, a workflow step out of sequence, a field label that does not match the approved design — accumulates silently.

These deviations are often not discovered until the product reaches the customer. At that point, the cost of correction is significantly higher than it would have been if the gap had been identified before delivery.

The AI Review Process Gate addresses this problem directly.

---

## 1.2 What the AI Review Process Gate Is

The AI Review Process Gate is a structured, mandatory quality validation stage that is executed after development is complete and before the module is handed to the Implementation Support Team (IST) for user testing.

In this stage, Claude AI is used as an independent, systematic reviewer. It receives the CEO-approved Functional Specification Document (FSD), the approved UI/UX designs, and the workflow and validation requirements — and it compares them, point by point, against the completed application. Every field, every business rule, every workflow transition, every screen layout, every validation, and every calculation is examined for compliance with the approved documentation.

The AI does not pass judgment based on opinion. It performs a structured factual comparison — approved requirement versus actual implementation — and produces a documented finding for every deviation it identifies.

---

## 1.3 Why This Matters to Management

```
┌─────────────────────────────────────────────────────────────────────────┐
│                THE QUALITY ASSURANCE POSITION                           │
│                                                                         │
│  Without AI Review Gate:                                                │
│                                                                         │
│  FSD Approved → Development → IST Testing → DEFECTS FOUND LATE         │
│                                                                         │
│  With AI Review Gate:                                                   │
│                                                                         │
│  FSD Approved → Development → AI REVIEW GATE → Corrections             │
│                                    │                                    │
│                              Gaps caught here,                          │
│                              at the lowest cost                         │
│                                    │                                    │
│                              IST Testing → Cleaner build,               │
│                              fewer defects, faster sign-off             │
└─────────────────────────────────────────────────────────────────────────┘
```

From a management perspective, the AI Review Process Gate delivers five measurable outcomes:

| Outcome | Business Value |
|---|---|
| **Earlier defect detection** | Issues caught before IST testing cost significantly less to fix than those found during or after |
| **FSD compliance assurance** | Every business rule approved by the CEO is verified to be present and correctly implemented |
| **UI/UX fidelity** | The delivered screen matches the approved design — no undocumented deviations reach users |
| **Risk reduction** | Missing validations, broken workflows, and calculation errors are identified before they affect live operations |
| **Governance documentation** | Every review produces a formal compliance report — creating an auditable record of quality validation |

---

---

# SECTION 2 — PURPOSE OF THE AI REVIEW PROCESS GATE

## 2.1 Formal Definition

The AI Review Process Gate is a mandatory validation checkpoint in the SPINRISE development lifecycle. It is executed after all development work for a module is complete and before the module is transferred to the IST team for formal user acceptance testing.

Its purpose is to provide an independent, systematic, document-driven quality check that confirms the delivered application is a faithful implementation of everything the CEO approved.

---

## 2.2 Primary Objectives

**Validate FSD Compliance**
Every business rule, every field specification, every workflow requirement, and every validation rule documented in the approved FSD must be present and correctly functioning in the delivered application. The AI Review Gate verifies this comprehensively — not through selective sampling, but through full-scope coverage.

**Validate UI/UX Implementation Accuracy**
The approved screen designs represent a visual contract between the design team, the CEO, and the end user. The AI Review Gate verifies that the delivered screens match this contract in layout, field arrangement, labelling, navigation, and visual standards.

**Validate Business Workflow Correctness**
Multi-step approval workflows, status transitions, and transaction flows must behave exactly as specified. The AI Review Gate traces every workflow path defined in the FSD and verifies that the application handles each path correctly.

**Detect Missing Requirements**
Requirements that were approved but not implemented — whether omitted accidentally or deferred without authorisation — are identified and flagged for correction before IST testing begins.

**Detect Incorrect Implementation**
Business rules that were implemented but produce incorrect results — wrong calculations, incorrect approval sequences, backwards block conditions — are identified through structured scenario analysis.

**Detect UI Deviations**
Screens that have drifted from the approved design — different field order, incorrect labels, missing sections — are identified and reported.

**Detect Incomplete Validations**
Mandatory field checks, format validations, and duplicate-prevention rules that are missing or incorrectly configured are identified before they expose data integrity risks in production.

**Ensure Enterprise Quality Standards**
The review confirms that the delivered module meets the naming standards, structural standards, and presentation standards established for SPINRISE — ensuring consistency across all modules.

---

---

# SECTION 3 — END-TO-END VALIDATION WORKFLOW

The following workflow describes the complete AI Review Process Gate from development completion to IST handover clearance.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                  AI REVIEW PROCESS GATE — FULL WORKFLOW                 │
│                                                                         │
│  STEP 1         Development Complete                                    │
│     │           (Screens + Processes + Database + APIs)                 │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 2         Approved Documents Collected                            │
│     │           (FSD + UI/UX + MOM + Rules)                            │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 3         Claude AI Review Initiated                              │
│     │           (Structured comparison — Expected vs Actual)           │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 4         Validation Analysis Performed                           │
│     │           (Screens, Workflows, Fields, Rules, Reports)           │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 5         Gaps Identified and Categorised                         │
│     │           (Missing / Incorrect / Deviated / Incomplete)          │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 6         Review Report Generated                                 │
│     │           (Compliance + Gap + Risk + Recommendations)            │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 7         Developer Correction Cycle                              │
│     │           (All critical gaps resolved)                           │
│     │                                                                   │
│     ▼                                                                   │
│  STEP 8         Final Re-Validation                                     │
│     │           (AI confirms corrections before IST handover)          │
│     │                                                                   │
│     ▼                                                                   │
│              ✓ CLEARED FOR IST HANDOVER                                 │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## Step 1 — Development Completion

Before the AI Review Gate is initiated, the development team confirms that all layers of the application are complete:

- Application screens (the user-facing forms, lists, and views) are built and functioning
- Business processes (rules, calculations, approval logic, validation enforcement) are implemented
- Database procedures (data storage, retrieval, and management) are complete
- API communication layer (the connections between screens, processes, and database) is in place

A partial build does not qualify for AI review. The review is only initiated on a complete, deployable module.

---

## Step 2 — Approved Documents Collection

The AI review is only as reliable as the documents it reviews against. Before initiating the gate, the development team assembles the full set of approved reference documents:

- The CEO-countersigned FSD (the master business specification)
- The approved HTML/UI screen designs
- Minutes of Meeting notes containing CEO decisions and clarifications
- Any formally approved change requests
- Validation requirements and business rule summaries
- Workflow diagrams and approval chain specifications

No review is initiated without this complete document set. Reviewing against an incomplete or unapproved document set would produce unreliable findings.

---

## Step 3 — Claude AI Review Initiation

With the approved documents assembled and the completed build deployed to the internal test environment, the development team initiates the AI review using the Standard Prompt Framework described in Section 13 of this document.

Claude AI receives a structured brief that specifies:
- The module being reviewed
- The version of each approved reference document
- The specific areas to be validated
- The categorisation standard for findings (Critical, High, Medium, Low)
- The format for the output report

The AI then performs a systematic comparison of the expected behaviour (as defined in the approved documents) against the actual behaviour (as observed in the deployed application).

---

## Step 4 — Validation Analysis Performed

The AI conducts structured validation across six domains:

| Domain | What Is Examined |
|---|---|
| **Screen Compliance** | Every field, label, button, and layout element against the approved design |
| **Workflow Compliance** | Every approval step, status transition, and process sequence against the FSD |
| **Field Validation** | Every mandatory field, format check, range rule, and duplicate prevention rule |
| **Navigation Behaviour** | Field-to-field movement, keyboard navigation, tab sequencing, and focus management |
| **Business Logic** | Calculations, conditional rules, block conditions, and approval guards |
| **Reports and Outputs** | Print layouts, calculation totals, export formats, and data presentation |

---

## Step 5 — Gap Identification and Categorisation

Every finding identified by the AI review is categorised by type and severity.

**Finding Types:**

| Type | Description |
|---|---|
| **Missing Implementation** | A requirement present in the FSD is not present in the delivered application |
| **Incorrect Implementation** | A requirement is present but functions incorrectly (wrong calculation, wrong workflow direction) |
| **UI Deviation** | The screen layout or field arrangement does not match the approved design |
| **Validation Gap** | A mandatory check or format validation is absent or incorrectly configured |
| **Workflow Deviation** | A process step is out of sequence, missing, or incorrectly conditioned |
| **Naming Inconsistency** | Labels, titles, or identifiers do not match the approved FSD or design standard |

**Severity Levels:**

| Severity | Definition |
|---|---|
| **Critical** | Prevents the transaction from completing or produces incorrect business data. Must be resolved before IST handover. |
| **High** | Causes incorrect behaviour in a business rule or workflow. Must be resolved before IST handover. |
| **Medium** | Represents a deviation that does not prevent operation but does not match the FSD. Must be resolved before CEO review. |
| **Low** | Minor visual or labelling inconsistency. Tracked and resolved in the current sprint. |

---

## Step 6 — Review Report Generation

The AI review produces a structured set of output documents. These are described in detail in Section 7. At a summary level, the review generates:

- A Compliance Report showing the overall match percentage between implementation and approved requirements
- A Gap Analysis Report listing every identified finding with its type, severity, and location
- A Risk Observation noting any areas where the current state creates operational risk
- Correction Recommendations providing clear guidance on how each finding should be resolved

---

## Step 7 — Developer Correction Cycle

The development team receives the AI review reports and addresses each finding according to its severity. Critical and High findings are mandatory corrections before IST handover. The correction cycle is not complete until every Critical and High finding has been resolved.

Each correction is documented — what was changed, which FSD reference it addresses, and who made the correction.

---

## Step 8 — Final Re-Validation

After corrections are applied, the AI review is repeated on the corrected build. This final re-validation confirms that all identified gaps have been resolved and that no new deviations were introduced during the correction cycle.

Only when the final re-validation produces a clean result — all Critical and High findings resolved, compliance report at the accepted threshold — is the module cleared for IST handover.

---

---

# SECTION 4 — WHAT CLAUDE AI VALIDATES

## A. FSD Compliance Validation

This is the primary validation domain. The AI reads the CEO-approved FSD in its entirety and verifies that the delivered application implements every specified requirement.

**Business Rules**
Every conditional rule, processing rule, and calculation rule documented in the FSD is checked for correct implementation. For example: if the FSD states that a Purchase Requisition cannot be modified once it reaches Level 1 approval, the AI verifies that the application enforces this block condition correctly.

**Mandatory Validations**
Every field marked as mandatory in the FSD is verified to be enforced — the application must refuse to proceed without it.

**Workflow Adherence**
Every step in the approved workflow chain is verified — that it exists, that it triggers at the correct point, that it routes to the correct next step, and that it produces the correct status change.

**Functional Completeness**
The AI checks that all sections of the FSD are represented in the delivered application — no section has been omitted or deferred without a formal documented decision.

---

## B. UI/UX Compliance Validation

**Screen Layout Matching**
The delivered screen is compared against the approved HTML design. Field count, field grouping, section arrangement, and overall layout structure are verified.

**Field Positioning**
Individual field positions — their order within a group, their column placement, and their visual proximity to related fields — are compared against the approved design.

**Navigation Consistency**
The navigation flow between screens matches the approved interaction design. Users are taken to the correct destination from every action on every screen.

**User Interaction Behaviour**
Button actions, form submission behaviour, confirmation dialogues, and error message presentation all match the approved design specifications.

**Label and Naming Compliance**
All field labels, section headings, button names, and status indicators use Title Case formatting and match the exact terminology specified in the FSD and approved design — no abbreviations, no all-capitals, no informal shorthand.

---

## C. Business Workflow Validation

**Approval Flows**
Every level of the approval chain is verified: that it requires the correct approver, that it progresses in the correct sequence, that it produces the correct status change, and that it sends the correct notification or indicator.

**Transaction Flows**
The complete lifecycle of a transaction — from initial entry through completion or cancellation — is traced and verified against the FSD.

**Save and Submit Behaviour**
The distinction between saving a draft and submitting a transaction for approval is verified to function correctly and to trigger the correct downstream actions.

**Status Transitions**
Every permitted and prohibited status transition is verified. The AI confirms that permitted transitions work correctly and that prohibited transitions are blocked with appropriate messages.

---

## D. Data Validation Review

**Mandatory Fields**
Every field designated as mandatory in the FSD blocks form submission when empty. The AI verifies every mandatory field individually.

**Numeric Validations**
Decimal precision rules (Quantity = 3 decimal places, Rate = 4 decimal places, Value = 2 decimal places), range limits, and negative-value prevention are all verified.

**Date Validations**
Date fields accept only valid dates in the approved format. Backdate prevention rules are verified where the FSD specifies them.

**Duplicate Prevention**
The uniqueness rules defined in the FSD — for example, that the same item cannot appear twice on a requisition with the same machine reference — are verified to be enforced correctly.

---

## E. Navigation and Accessibility Validation

**Tab Sequence**
The order in which focus moves between fields when the user presses the Tab key matches the logical data entry sequence defined in the approved design.

**Cursor Positioning**
When a screen opens or a new row is created, the cursor is positioned at the first data entry field, as specified in the FSD.

**Keyboard Navigation**
All primary functions — saving, submitting, navigating to the next or previous record — are accessible via keyboard without requiring mouse interaction.

**Focus Handling**
After a validation error, focus returns to the field that requires correction. After a successful save, focus moves to the next logical position.

---

## F. Reporting Validation

**Report Layout**
Printed and exported reports match the approved print design in terms of content sections, field order, and labelling.

**Calculation Totals**
All totals, subtotals, and summary values in reports are verified to be mathematically correct and consistent with the values displayed on screen.

**Export Behaviour**
Excel and PDF export functions produce correctly structured, accurately populated files with the expected content.

**Decimal and Format Consistency**
Report figures apply the same decimal precision and formatting rules as the on-screen display.

---

---

# SECTION 5 — AI REVIEW GOVERNANCE RULES

The following governance rules apply without exception to every AI Review Process Gate execution.

---

**Rule 1 — AI Cannot Approve Business Requirement Changes**
If the AI review identifies a gap and the developer's proposed correction would introduce behaviour not present in the CEO-approved FSD, that correction requires a formal change request and management approval before it is implemented. The AI review cannot authorise changes — it can only validate against approved documents.

**Rule 2 — AI Reviews Only Against Approved Documents**
The AI is provided only with documents that carry formal approval — CEO-countersigned FSDs, formally approved designs. It is not directed to review against draft versions, verbal instructions, or unapproved working documents.

**Rule 3 — Final Business Authority Remains With Management**
The AI review produces findings and recommendations. The interpretation of those findings, the decision on prioritisation, and the approval of corrections are all human responsibilities. No finding or recommendation from the AI review is implemented without developer judgement and, where necessary, CEO confirmation.

**Rule 4 — Every Deviation Requires a Formal Record**
Any finding that is accepted rather than corrected — for example, a low-severity deviation that is formally deferred to the next sprint — must be recorded in the deviation log with a written justification and an authorised sign-off. No undocumented deviations are permitted.

**Rule 5 — Manual Review Checkpoints Are Mandatory**
The AI review does not replace human review. The TL-Dev reviews the AI-generated findings report before it is acted upon. The developer validates each correction against the FSD before marking it resolved. The AI re-validation confirms the corrections. Three distinct human checkpoints exist within the gate.

**Rule 6 — IST Review Remains Compulsory**
The AI Review Process Gate is a pre-IST quality check. It does not replace or reduce the scope of IST testing. IST reviews the same module independently with their customer-site experience. Both reviews are mandatory.

**Rule 7 — All Corrections Are Traceable**
Every correction made in response to an AI review finding is logged with the finding reference, the action taken, the developer who made the correction, and the date. This log becomes part of the module's delivery documentation and is available for audit.

---

---

# SECTION 6 — INPUTS REQUIRED FOR AI REVIEW

The following documents must be assembled before the AI Review Process Gate is initiated. Initiating a review without the complete input set is not permitted.

| Input Document | Purpose in the Review |
|---|---|
| **CEO-Approved FSD** | The master reference for all business rules, validations, workflows, and field specifications. This is the primary document against which the delivered application is validated. |
| **Approved UI/UX Screen Designs** | The visual blueprint for every screen. Used to verify field layout, label accuracy, section grouping, and interaction design. |
| **Minutes of Meeting (MOM)** | Records of CEO decisions, clarifications, and directions issued during review sessions. These supplement the FSD with real-time decisions that may not yet be formally incorporated into the document. |
| **Approved Change Requests** | Any formally approved changes to the original FSD scope. These represent authorised deviations from the original specification and must be reflected in the review. |
| **API Interface Specifications** | Definitions of the communication points between application screens and business processes. Used to validate that data flows correctly between layers. |
| **Validation Rule Register** | A consolidated list of all mandatory fields, format rules, range limits, and duplicate-prevention rules from the FSD. Provides a structured checklist for validation testing. |
| **Workflow and Approval Chain Diagrams** | Visual representations of the approval sequence and status transitions for each transaction. Used to verify that the application follows the correct routing logic. |
| **Previous IST Defect Log** | If this is a re-review after corrections, the previous defect log is provided so the AI can specifically verify that each previously identified issue has been resolved. |

---

---

# SECTION 7 — OUTPUTS GENERATED FROM AI REVIEW

The AI Review Process Gate produces the following formal output documents.

| Output Document | Description | Used By |
|---|---|---|
| **FSD Compliance Report** | A structured assessment of how completely and accurately the delivered application implements the approved FSD. Provides a compliance percentage by section and identifies every section with gaps or deviations. | TL-Dev, Development Team, CEO Review |
| **Gap Analysis Report** | A full listing of every identified gap between the approved requirements and the delivered implementation. Each gap is categorised by type (Missing / Incorrect / Deviated) and severity (Critical / High / Medium / Low). | Development Team, TL-Dev |
| **UI/UX Mismatch Report** | A specific report on visual and interaction deviations between the delivered screens and the approved designs. Includes field-level and layout-level findings. | Development Team, Design Lead |
| **Validation Defect Report** | A listing of all missing, incorrect, or incomplete validations identified during the review. Each entry specifies the field or rule, the FSD reference, and the observed behaviour. | Development Team, IST Team |
| **Functional Deviation Report** | A detailed account of business rules, calculations, or workflow steps that are implemented but function incorrectly. Each entry includes the expected behaviour from the FSD and the observed behaviour in the application. | Development Team, TL-Dev, CEO |
| **Risk Observation Report** | An assessment of areas where the current state — even if not technically a defect — creates potential operational, data integrity, or business process risk. | TL-Dev, Project Manager, CEO |
| **Final Review Summary** | A consolidated single-page executive summary produced after the final re-validation. Confirms overall compliance status, lists any accepted deferred items, and provides formal clearance recommendation for IST handover. | CEO, Project Manager, IST Team |

---

---

# SECTION 8 — BENEFITS TO THE ORGANISATION

## 8.1 Improved Delivery Quality

The AI Review Gate catches the category of defect most likely to be missed in manual review — the subtle deviation that is technically present but functionally wrong. A field that accepts negative values when it should not. A workflow that allows deletion of an approved record. A calculation that produces a result one decimal place off. These issues are difficult and time-consuming to find manually but are reliably caught through systematic AI comparison.

## 8.2 Reduced Production Defects

Issues identified at the AI Review Gate stage are corrected before they reach any user — internal or external. This dramatically reduces the volume of defects that reach IST testing, which in turn reduces the volume that could potentially reach production. The cost of correcting a defect at this stage is a fraction of the cost of correcting it after customer deployment.

## 8.3 Better Governance

Every module that passes through the AI Review Gate produces a formal compliance documentation trail. The organisation can demonstrate, for any module, that a structured validation was performed against the CEO-approved FSD and that all Critical and High findings were resolved before delivery. This is valuable for internal governance, for customer confidence, and for any external audit.

## 8.4 Faster Review Cycles

A comprehensive manual review of a complex ERP module against its full FSD is a multi-day exercise. The AI Review Gate produces the same coverage in hours, with more consistent and complete findings. This compression of the review cycle means the development team receives corrections sooner and the IST team receives a cleaner build sooner.

## 8.5 Reduced Manual Review Effort

The IST team and the CEO's review sessions are highest-value activities that require human judgement and domain experience. The AI Review Gate pre-filters the build — removing preventable defects before they consume IST or CEO time. The result is that the IST team and the CEO are reviewing a product that has already passed a systematic quality screen, allowing them to focus on the domain-specific judgement that only they can provide.

## 8.6 Standardised Validation Across All Modules

Manual review quality varies with the reviewer's experience and attention on a given day. AI review quality is constant. Every module receives the same structured, systematic validation regardless of which developer built it, which reviewer is available, or what other delivery pressures exist at the time. This standardisation is a significant advantage in a multi-module, multi-developer programme like SPINRISE.

## 8.7 Better Audit Readiness

The structured documentation produced by the AI Review Gate — compliance reports, gap analyses, correction logs — constitutes a ready-made audit trail. At any point after a module is delivered, the organisation can produce documented evidence of the quality validation process applied to that module.

## 8.8 Controlled ERP Delivery Process

The AI Review Gate is a formal, documented checkpoint in the delivery lifecycle. It cannot be skipped. It cannot be passed without evidence. This discipline ensures that the delivery process remains controlled even under the timeline pressure that is inherent in a 12-module, 12-month ERP programme.

## 8.9 Improved User Satisfaction

Users of an ERP system notice inconsistencies — screens that behave differently from module to module, labels that use different terminology for the same concept, validations that catch errors on one form but not on another. The AI Review Gate, applied consistently across all modules, eliminates the systematic deviations that create these inconsistencies and delivers a product that feels coherent, predictable, and professionally built.

---

---

# SECTION 9 — RISK REDUCTION THROUGH AI REVIEW

The following risks are materially reduced through systematic application of the AI Review Process Gate.

| Risk | Without AI Review Gate | With AI Review Gate |
|---|---|---|
| **Missing Business Logic** | Business rules present in the FSD but absent in the build reach IST or production before detection | Identified at the gate stage — before any user sees the module |
| **Incorrect Workflows** | Approval sequences that do not match the FSD pass internal review undetected and are discovered during customer operation | Every workflow path is traced against the FSD before IST handover |
| **UI Inconsistencies** | Screens that deviate from the approved design create a disjointed user experience and generate support calls | Every screen is compared against the approved design before delivery |
| **Approval Flow Issues** | A document that can be modified after approval — or that bypasses an approval level — creates compliance and governance exposure | All approval guards and block conditions are verified systematically |
| **Incorrect Validations** | Mandatory fields that do not enforce entry allow incomplete or incorrect data to enter the system | All validation rules from the FSD are individually verified |
| **Incomplete Implementation** | Sections of the FSD that were not implemented are not discovered until a user attempts to use the missing functionality | Full FSD coverage is verified before the module leaves the development team |
| **Navigation Defects** | Incorrect tab sequences and focus behaviour reduce operational efficiency and user confidence | Navigation compliance is validated against the approved interaction design |
| **Data Integrity Risks** | Missing duplicate-prevention checks, incorrect decimal handling, and absent range validations corrupt business data | All data validation rules are verified before production exposure |

---

---

# SECTION 10 — RECOMMENDED AI REVIEW CHECKLISTS

The following checklists define the minimum verification scope for each domain in the AI Review Process Gate. These are the structured items against which the AI validates the delivered application.

---

## A. FSD Compliance Checklist

- [ ] All business rules from the FSD are present and functioning in the delivered application
- [ ] All conditional rules apply the correct condition and produce the correct outcome
- [ ] All calculation rules produce the mathematically correct result using the formula specified in the FSD
- [ ] All approval workflow levels are present and trigger in the correct sequence
- [ ] All block conditions prevent the correct actions at the correct status levels
- [ ] All status transitions produce the correct status change and record the correct audit entry
- [ ] All field defaults match the values specified in the FSD
- [ ] All FSD sections are represented — no section has been silently omitted

---

## B. UI/UX Compliance Checklist

- [ ] Every field in the approved design is present on the delivered screen
- [ ] No field appears on the delivered screen that is not in the approved design or FSD
- [ ] Field order and grouping matches the approved design exactly
- [ ] All section headings use Title Case and match the approved design terminology
- [ ] All field labels use Title Case and match the approved FSD exactly
- [ ] All button labels match the approved design (Save, Submit, Cancel — not shorthand)
- [ ] Screen layout fits the approved viewport without horizontal or vertical overflow
- [ ] Colour coding and status indicators match the approved design specifications
- [ ] All action buttons are positioned as per the approved design

---

## C. Workflow Compliance Checklist

- [ ] Every approval level defined in the FSD is present and accessible
- [ ] Approval routing proceeds to the correct next level from every transition point
- [ ] Status changes at each approval step match the FSD specification
- [ ] Save as Draft and Submit for Approval are distinct actions with distinct outcomes
- [ ] Recall and rejection workflows function as specified in the FSD
- [ ] Completed transactions cannot be re-opened or modified without an authorised process
- [ ] Approval history displays the correct sequence of approvers and timestamps

---

## D. Validation Compliance Checklist

- [ ] Every mandatory field blocks form submission when empty
- [ ] Every format validation rejects non-conforming input with a clear message
- [ ] Numeric fields enforce the correct decimal precision (Qty = 3dp, Rate = 4dp, Value = 2dp)
- [ ] Negative values are rejected in all fields where the FSD does not permit them
- [ ] Duplicate-prevention rules detect and reject duplicate entries as specified in the FSD
- [ ] Backdate prevention is applied on all date fields where the FSD requires it
- [ ] All validation error messages are in Title Case and use business-appropriate language
- [ ] Validation messages direct the user to the specific field requiring correction

---

## E. Navigation Compliance Checklist

- [ ] Tab sequence moves through fields in the logical order defined in the approved design
- [ ] Cursor is positioned at the first input field on screen load
- [ ] After a validation error, focus returns to the field requiring correction
- [ ] All primary functions (save, submit, navigate) are accessible via keyboard
- [ ] Page-up and page-down navigation through records functions correctly
- [ ] New row insertion positions cursor at the first field of the new row

---

## F. Security Compliance Checklist

- [ ] All screens require authenticated user access — no screen is accessible without login
- [ ] Each user role can only access the actions the FSD specifies for that role
- [ ] Actions that are role-restricted are not visible or accessible to unauthorised users
- [ ] No sensitive configuration or connection data is visible in any screen or report
- [ ] Session expiry behaves correctly and redirects the user appropriately

---

## G. Reporting Compliance Checklist

- [ ] All reports include the fields specified in the FSD
- [ ] Report field order matches the approved print design
- [ ] All calculation totals and subtotals are mathematically correct
- [ ] Report headers and footers match the approved design including company name and document title
- [ ] Decimal precision in reports matches on-screen display (Qty = 3dp, Rate = 4dp, Value = 2dp)
- [ ] PDF output is correctly formatted for A4 Landscape (standard for purchase documents)
- [ ] Excel export produces a correctly structured file with accurate data
- [ ] Date formats in reports are consistent and match the approved standard

---

---

# SECTION 11 — DEVELOPER RESPONSIBILITIES BEFORE IST HANDOVER

After the AI Review Report is received, the development team is responsible for the following actions before the module is submitted for IST testing.

---

**1. Resolve All Critical and High Findings**
Every finding classified as Critical or High in the AI review report must be corrected. No module with unresolved Critical or High findings proceeds to IST.

**2. Document Each Correction**
For every finding addressed, the developer records: the finding reference, the specific change made, the FSD section the correction aligns with, and the date of correction. This correction log accompanies the IST handover package.

**3. Revalidate Each Correction Against the FSD**
After making a correction, the developer verifies the corrected behaviour against the FSD before marking the finding as resolved. A correction that closes one gap while opening another is not acceptable.

**4. Confirm UI/UX Consistency**
After all corrections are applied, the developer performs a final visual comparison of each screen against the approved design to confirm that corrections have not introduced new layout deviations.

**5. Complete Internal Build and Deployment**
A fresh, clean build is generated and deployed to the internal test server after all corrections are applied. The AI re-validation is performed against this clean build — not against a partially corrected working copy.

**6. Obtain TL-Dev Sign-Off on Correction Completion**
The TL-Dev reviews the correction log and the updated build before the AI re-validation is initiated. This ensures a responsible senior review before the final gate.

**7. AI Re-Validation Clearance**
The AI re-validation confirms that all Critical and High findings are resolved and that no new deviations were introduced. The Final Review Summary from the re-validation is the formal clearance document for IST handover.

---

---

# SECTION 12 — FINAL HANDOVER GATE TO THE IST TEAM

The following conditions must all be satisfied before a module is transferred to the IST team for user acceptance testing.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    IST HANDOVER CLEARANCE CONDITIONS                    │
│                                                                         │
│  Condition 1 — AI Review completed on deployed build          ✓ / ✗    │
│  Condition 2 — All Critical findings resolved                 ✓ / ✗    │
│  Condition 3 — All High findings resolved                     ✓ / ✗    │
│  Condition 4 — Correction log completed and signed            ✓ / ✗    │
│  Condition 5 — AI re-validation Final Summary issued          ✓ / ✗    │
│  Condition 6 — TL-Dev internal review sign-off received       ✓ / ✗    │
│  Condition 7 — FSD compliance confirmed at or above threshold ✓ / ✗    │
│  Condition 8 — IST test scenarios prepared and current        ✓ / ✗    │
│  Condition 9 — Known open items list prepared                 ✓ / ✗    │
│  Condition 10 — Build deployed and accessible on test server  ✓ / ✗    │
│                                                                         │
│  ALL CONDITIONS MUST BE ✓ BEFORE IST HANDOVER IS INITIATED             │
└─────────────────────────────────────────────────────────────────────────┘
```

**What IST Receives at Handover**

| Document | Contents |
|---|---|
| **AI Review Final Summary** | Confirmation that the AI gate was passed, overall compliance status, and list of any accepted deferred items |
| **Correction Log** | Record of every finding resolved and what change was made |
| **IST Test Scenarios** | Pre-prepared test cases covering all FSD business rules and scenarios |
| **Known Open Items List** | Any items intentionally deferred with formal approval — prevents IST confusion about expected behaviour |
| **Build Version Note** | Identifies the exact version being tested |
| **Screen Navigation Brief** | A short walkthrough of how to access and use each screen |

---

---

# SECTION 13 — STANDARD CLAUDE AI REVIEW PROMPT FRAMEWORK

This section provides the production-grade review prompt templates used by the development team to direct Claude AI during the validation gate. Each template is structured to prevent assumption-based review, enforce strict document comparison, require evidence-based findings, and produce categorised, actionable output.

---

## MASTER REVIEW PROMPT — FSD COMPLIANCE VALIDATION

```
SPINRISE ERP — AI Review Process Gate: FSD Compliance Validation
=================================================================

REVIEW CONTEXT:
- Product: SPINRISE ERP
- Module: [Insert module name, e.g., M01 — Purchase Requisition]
- Build Version: [Insert build version number]
- Review Stage: Post-Development / Pre-IST
- Reference Document: [Insert FSD name and version, e.g., SpinRise-M01-PurchaseRequisition-FSD-v2.5]
- Review Date: [Insert date]

MANDATORY INSTRUCTION — READ BEFORE BEGINNING REVIEW:
You are acting as an independent post-development quality reviewer for SPINRISE ERP.
Your role is to compare the completed application strictly against the approved FSD provided.
You are not designing, recommending new features, or making business decisions.
You are identifying deviations — gaps between what was approved and what was delivered.
Do not assume anything is correct because it appears to function. Verify it against the FSD.
Do not assume anything is incorrect because it is different from what you might expect. Reference the FSD.
Every finding must cite the specific FSD section, rule, or requirement it relates to.

REVIEW SCOPE — FSD COMPLIANCE:

1. Business Rules Completeness
   Review every business rule in the FSD. For each rule:
   - State the rule as documented in the FSD
   - State whether it is implemented (Yes / No / Partial)
   - If No or Partial: describe the gap precisely
   - Assign severity: Critical / High / Medium / Low
   - Cite FSD section reference

2. Approval Workflow Compliance
   Trace every approval workflow path defined in the FSD. For each path:
   - Describe the expected workflow from the FSD
   - Describe the observed behaviour in the delivered build
   - Identify any deviation between expected and observed
   - Assign severity and cite FSD section

3. Block Condition Enforcement
   Review every condition in the FSD where modification, deletion, or status change is blocked.
   For each condition:
   - State the block condition from the FSD
   - Confirm whether the block is enforced (Yes / No)
   - If No: describe what the application currently allows
   - Assign severity: all unimplemented block conditions are Critical or High

4. Calculation Rule Accuracy
   Review every calculation defined in the FSD. For each calculation:
   - State the formula from the FSD
   - State the observed result in the application (provide test inputs and outputs)
   - Confirm whether the result is correct
   - If incorrect: describe the deviation

5. Functional Completeness
   Review the FSD section by section. For each section:
   - Confirm all requirements are implemented
   - Identify any section or sub-section with no corresponding implementation
   - All missing sections are at minimum High severity

OUTPUT FORMAT REQUIRED:
Produce findings in the following structured format:

Finding ID | FSD Section | Requirement Description | Implemented? | Gap Description | Severity | Recommendation

After all findings, produce:
- Summary Table: Total findings by severity level
- FSD Compliance Score: Percentage of FSD requirements fully implemented
- Critical Action Items: Numbered list of items that must be resolved before IST

Do not produce a narrative essay. Produce structured, categorised findings only.
```

---

## UI/UX COMPLIANCE REVIEW PROMPT

```
SPINRISE ERP — AI Review Process Gate: UI/UX Compliance Validation
====================================================================

REVIEW CONTEXT:
- Module: [Insert module name]
- Build Version: [Insert version]
- Approved Design Reference: [Insert HTML design file name]
- Blueprint Reference: SPINRISE_WebFormBlueprint_v1.1

MANDATORY INSTRUCTION:
Compare the delivered application screens against the approved HTML design files and Blueprint.
Reference only what is in the approved documents. Do not recommend improvements beyond the approved scope.
Every finding must cite the specific design element or Blueprint rule it relates to.

REVIEW SCOPE — UI/UX COMPLIANCE:

1. Screen Layout and Field Arrangement
   For each screen in the module:
   - Compare the field count: approved design vs delivered screen
   - Compare the field order: are fields in the same sequence?
   - Compare section grouping: are fields grouped as in the approved design?
   - List every deviation with its location and severity

2. Label and Naming Compliance
   For every field label, section heading, button, and status indicator:
   - Confirm it uses Title Case (not all-capitals, not all-lowercase)
   - Confirm it matches the exact wording in the approved FSD and design
   - List every deviation

3. Visual Standards Compliance
   Against the approved Blueprint:
   - Confirm colour coding matches the approved standard
   - Confirm button styles match the approved standard
   - Confirm status badge colours and labels match the approved standard
   - Confirm the KPI Summary Strip (if applicable) shows the correct 5 cards with correct content

4. Single-Screen Compliance
   - Confirm the form displays without vertical scrolling on a 1280px viewport
   - If vertical scrolling is required: identify which sections exceed the viewport and suggest which sections can be compacted without losing functionality

5. Interaction and Navigation Compliance
   - Confirm all action buttons are present and positioned as per approved design
   - Confirm modal and lookup dialogues match the approved interaction pattern
   - Confirm loading states and error states are implemented as approved

OUTPUT FORMAT:
Finding ID | Screen/Section | Design Specification | Observed Behaviour | Severity | Recommendation

Followed by:
- UI Compliance Score: Percentage of design elements correctly implemented
- Priority corrections required before Friday review session
```

---

## BUSINESS WORKFLOW VERIFICATION PROMPT

```
SPINRISE ERP — AI Review Process Gate: Business Workflow Verification
======================================================================

REVIEW CONTEXT:
- Module: [Insert module name]
- Build Version: [Insert version]
- FSD Workflow Reference: [Cite FSD sections covering workflow and approval chain]

MANDATORY INSTRUCTION:
Trace every workflow path defined in the FSD. Test each path by describing the exact sequence
of actions required and the expected outcome at each step. Compare against the FSD specification.
Do not assume a workflow is correct without tracing it end to end.

WORKFLOW PATHS TO VERIFY:

1. New Transaction Creation Workflow
   Step: [Describe complete path from opening form to first save]
   Expected outcome: [From FSD]
   Verify: does the application produce this outcome?

2. Submission for Approval Workflow
   Step: [Describe path from saved draft to Level 1 approval submission]
   Expected outcome: Status change, approval indicator update, action locks applied
   Verify each step against FSD specification

3. Level 1 Approval Workflow
   Step: [Describe Level 1 approver actions and outcomes]
   Expected outcome: [From FSD]
   Verify: correct status change, correct lock conditions applied after approval

4. Level 2 Approval Workflow (if applicable)
   [Same structure as Level 1]

5. Rejection / Recall Workflow
   Step: [Describe rejection path and outcomes]
   Expected outcome: [From FSD]
   Verify: status returns to correct state, correct fields unlocked, reason captured

6. Completion / Closure Workflow
   Step: [Describe final completion path]
   Expected outcome: [From FSD]
   Verify: record locked, no further modifications possible, audit trail complete

7. Delete Workflow (if permitted by FSD)
   Step: [Describe conditions under which deletion is permitted]
   Expected outcome: Deletion only permitted in states the FSD allows
   Verify: deletion blocked at all states where FSD prohibits it

OUTPUT FORMAT:
Workflow Path | Expected Behaviour (FSD) | Observed Behaviour | Match? | Deviation Description | Severity

Followed by:
- Workflow Compliance Summary: which paths pass, which fail
- Critical workflow deviations requiring immediate correction
```

---

## VALIDATION RULES VERIFICATION PROMPT

```
SPINRISE ERP — AI Review Process Gate: Validation Rules Verification
=====================================================================

REVIEW CONTEXT:
- Module: [Insert module name]
- Build Version: [Insert version]
- FSD Validation Reference: [Cite FSD sections covering validations]

MANDATORY INSTRUCTION:
Test every validation rule defined in the FSD by providing specific test inputs designed to
trigger each rule. Observe the outcome. Compare against the FSD specification.
Do not test validations that are not in the FSD. Do not omit validations that are in the FSD.

VALIDATION CATEGORIES TO VERIFY:

1. Mandatory Field Validations
   For each mandatory field defined in the FSD:
   - Test: attempt to submit with the field empty
   - Expected outcome: submission blocked, field highlighted, correct error message shown
   - Report: Pass / Fail for each mandatory field

2. Decimal Precision Validations
   - Quantity fields: confirm 3 decimal place enforcement
   - Rate fields: confirm 4 decimal place enforcement
   - Value fields: confirm 2 decimal place enforcement and auto-calculation correctness
   - Test: enter values with more decimal places than specified — confirm rounding or rejection

3. Date Validations
   - Confirm date fields accept only valid dates
   - Confirm backdate prevention where FSD requires it (document date = processing date)
   - Test: enter invalid date — confirm rejection
   - Test: enter past date where FSD prohibits it — confirm rejection

4. Duplicate Prevention Validations
   For each uniqueness rule in the FSD:
   - State the uniqueness rule (e.g., Item Code + Machine Code must be unique per PR)
   - Test: enter a duplicate entry — confirm rejection with correct message
   - Report: Pass / Fail

5. Range and Format Validations
   For each range or format rule in the FSD:
   - Test valid input — confirm acceptance
   - Test invalid input — confirm rejection with correct message

6. Error Message Quality Review
   For every validation error message:
   - Confirm it uses Title Case
   - Confirm it is business-appropriate (not a technical system message)
   - Confirm it directs the user to the specific field requiring correction

OUTPUT FORMAT:
Validation Rule | FSD Reference | Test Input | Expected Result | Observed Result | Pass/Fail | Severity (if Fail)

Followed by:
- Validation Coverage Score: percentage of FSD validations passing
- Missing validations list (rules in FSD with no implementation)
- Incorrectly configured validations list
```

---

## MISSING IMPLEMENTATION DETECTION PROMPT

```
SPINRISE ERP — AI Review Process Gate: Missing Implementation Detection
========================================================================

REVIEW CONTEXT:
- Module: [Insert module name]
- Build Version: [Insert version]
- FSD Reference: [Full FSD document name and version]

MANDATORY INSTRUCTION:
Perform a section-by-section audit of the FSD against the delivered application.
For every section of the FSD, confirm whether a corresponding implemented feature exists in the application.
This prompt is specifically designed to detect omission — requirements that are approved but absent.
Do not accept "implied" or "assumed" implementation. Verify each item explicitly.

AUDIT SCOPE — SECTION BY SECTION:

For each of the following FSD sections, confirm implementation status:

Section 1 — Module Overview and Scope: Confirm all scope items are addressed
Section 2 — Screen and Field Specifications: Confirm all fields are present
Section 3 — Business Rules: Confirm all rules are implemented
Section 4 — Validation Requirements: Confirm all validations are present
Section 5 — Workflow and Approval Chain: Confirm all workflow steps are implemented
Section 6 — Calculation Rules: Confirm all calculations are implemented
Section 7 — Status and State Management: Confirm all statuses and transitions are implemented
Section 8 — Audit Trail Requirements: Confirm all audit entries are generated
Section 9 — Print and Export Requirements: Confirm print and export functions are present
Section 10 — Configuration Parameters: Confirm all configurable items are respected
Section 11 — Known Defects and Migration Decisions: Confirm legacy defects are not replicated

For each section item that is absent from the delivered build:
- State the requirement
- Confirm it is absent
- Assign severity: absent critical business functions are Critical; absent secondary functions are High

OUTPUT FORMAT:
FSD Section | Requirement | Present in Build? | If Absent: Severity and Description

Followed by:
- Implementation Completeness Score: percentage of FSD requirements present in build
- Mandatory additions before IST handover: numbered list
```

---

## FINAL REVIEW SUMMARY PROMPT

```
SPINRISE ERP — AI Review Process Gate: Final Review Summary
============================================================

REVIEW CONTEXT:
- Module: [Insert module name]
- Build Version: [Insert version]
- Review Stage: Final Re-Validation (Post-Correction)
- Prior Review Reference: [Insert prior review date and finding count]

MANDATORY INSTRUCTION:
This is the final re-validation review. The development team has addressed the findings from
the prior review. Your task is to:
1. Confirm that every Critical and High finding from the prior review has been resolved
2. Confirm that corrections have not introduced new deviations
3. Produce the formal Final Review Summary for IST handover clearance

VERIFICATION SCOPE:

1. Prior Critical Findings Resolution
   For each Critical finding from the prior review:
   - State the original finding
   - Verify the correction — is the FSD-specified behaviour now present?
   - Mark as Resolved / Not Resolved

2. Prior High Findings Resolution
   [Same structure as Critical findings]

3. Regression Check
   For each correction made, verify that:
   - The correction does not affect adjacent functionality
   - The correction does not introduce a new deviation from the FSD
   - The correction does not break an existing passing validation

4. Deferred Items Confirmation
   For any Medium or Low finding formally deferred to the next sprint:
   - Confirm the deferral is documented with authorisation
   - Confirm the deferred item does not constitute a business process risk

OUTPUT FORMAT:

FINAL REVIEW SUMMARY
Module: [Name]
Build Version: [Version]
Review Date: [Date]
Reviewer: Claude AI Review Process Gate

Prior Review Findings Summary:
- Critical: [X] raised / [X] resolved / [X] outstanding
- High: [X] raised / [X] resolved / [X] outstanding
- Medium: [X] raised / [X] resolved / [X] deferred
- Low: [X] raised / [X] resolved / [X] deferred

Final Compliance Status:
- FSD Compliance Score: [X]%
- Critical findings outstanding: [X] (must be 0 for clearance)
- High findings outstanding: [X] (must be 0 for clearance)

HANDOVER RECOMMENDATION:
[ ] CLEARED — All Critical and High findings resolved. Module ready for IST handover.
[ ] NOT CLEARED — [X] Critical / [X] High findings remain unresolved. Resolve before handover.
```

---

---

# SECTION 14 — CONCLUSION

## 14.1 AI Review Is a Governance and Quality-Control Mechanism

The AI Review Process Gate is not an optional quality improvement exercise. It is a mandatory governance control — a formal checkpoint in the SPINRISE delivery lifecycle that cannot be bypassed and cannot be self-certified by the development team. It exists to protect the organisation's investment in the FSD and UI/UX approval process by ensuring that what is approved is what is delivered.

## 14.2 Final Ownership Remains With the Organisation's Teams

The AI review produces findings. Human professionals — the TL-Dev, the development team, and where necessary the CEO — evaluate those findings, make decisions on correction priority, and approve the corrections applied. The AI does not own the quality of the product. The organisation does. The AI makes the quality verification process faster, more consistent, and more comprehensive than is possible manually.

## 14.3 The Process Ensures Controlled ERP Implementation

A development process without a systematic post-development validation gate is vulnerable to silent deviation — the gradual drift between what was approved and what was delivered, visible only in aggregate and expensive to reverse. The AI Review Process Gate is the mechanism that prevents this drift. Every module passes through it. Every module produces documented evidence of compliance. Every deviation is recorded, resolved, and traceable.

## 14.4 The Objective Is Consistent Enterprise-Grade Delivery Quality

Kalpatharu Software's customers have been operating with the company's ERP platform for more than 20 years. The reliability and domain accuracy of that platform is the foundation of those customer relationships. SPINRISE must meet or exceed that standard — not occasionally, but consistently, across every module, in every release.

The AI Review Process Gate is one of the primary mechanisms through which that consistency is assured.

---

---

**END OF DOCUMENT**

---

| Field | Detail |
|---|---|
| Document Title | AI (Claude) Review Process Gate — Post-Development Validation Framework |
| Document Reference | SPINRISE-ARPG-v1.0 |
| Version | 1.0 |
| Status | Final — For Management Distribution |
| Prepared By | Development Team, Kalpatharu Software Ltd. |
| Date | May 2026 |
| Next Review | November 2026 |

*This document is prepared for internal management circulation at Kalpatharu Software Ltd. and is classified as Internal — Management Circulation.*
