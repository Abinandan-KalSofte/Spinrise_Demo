# SPINRISE ERP — AI-Assisted Development Governance Document

**Document Title:** Claude Code AI Integration in ERP Development Lifecycle  
**Document Reference:** SPINRISE-AIDG-v1.0  
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
2. End-to-End Development Lifecycle  
3. What Claude Code AI Does in SPINRISE Development  
4. Files and Artifacts Created During Development  
5. Governance Rules Followed During AI-Assisted Development  
6. Standard Prompt Templates Used with Claude Code  
7. Developer Workflow After AI-Generated Output  
8. Handover Process to the IST Team  
9. Benefits to the Organisation  
10. Conclusion  

---

---

# SECTION 1 — EXECUTIVE SUMMARY

## 1.1 Purpose of This Document

This document explains, in clear business language, how the SPINRISE ERP development team incorporates Claude Code AI into the product development process. It is prepared for review by senior management and provides a transparent account of how artificial intelligence is governed, controlled, and applied responsibly within the company's delivery framework.

Claude Code AI is an enterprise-grade AI development assistant. It does not make independent business decisions. It does not change approved designs without instruction. It does not act outside the boundaries of what the development team directs it to do. It functions as a highly skilled digital co-worker that accelerates implementation tasks — under the full authority and review of Kalpatharu Software's development team.

---

## 1.2 The Core Workflow at a Glance

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    SPINRISE DEVELOPMENT WORKFLOW                        │
│                                                                         │
│  CEO Approves FSD  →  UI/UX Design  →  Design Approval                 │
│                                             │                           │
│                              AI Development Begins (After Approval)     │
│                                             │                           │
│           ┌────────────────┬───────────────┴──────────────────┐        │
│           │                │                                  │        │
│     Screen Build     Business Logic               Database Work         │
│     (Frontend)       (Backend)                    (Data Layer)          │
│           │                │                                  │        │
│           └────────────────┴──────────────────────────────────┘        │
│                                             │                           │
│                         Developer Review + Validation                   │
│                                             │                           │
│                         IST Testing + CEO Demo Review                   │
│                                             │                           │
│                              Production Deployment                      │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 1.3 Why Claude Code AI Is Used

Kalpatharu Software manages a complex ERP platform serving spinning mills and textile enterprises. SPINRISE is a full-scale migration and modernisation initiative — not a routine upgrade. The scope spans multiple business modules, hundreds of business rules, and dozens of transaction forms. Managing this volume of development with traditional manual-only methods would result in:

- Inconsistency between modules built by different developers
- Higher probability of business rule omission or misinterpretation
- Longer delivery timelines
- Documentation gaps
- Difficulty in onboarding new team members

Claude Code AI directly addresses each of these challenges.

---

## 1.4 Summary of Key Benefits

| Benefit | Business Impact |
|---|---|
| **Faster Development** | Implementation tasks that previously took days are completed in hours, without reducing quality |
| **Standardised Output** | Every screen and process follows the same standards, regardless of which team member leads it |
| **Reduced Manual Errors** | AI follows approved documents precisely, reducing the risk of misinterpretation |
| **Alignment with Approved Designs** | AI refers directly to the CEO-approved FSD and UI/UX files during implementation |
| **Faster Delivery Cycles** | Parallel development of screens, processes, and data layers simultaneously compresses timelines |
| **Documentation Consistency** | Technical documentation is generated as part of the build process, not as a separate afterthought |
| **Audit-Ready Delivery** | Every development decision traces back to an approved document, providing a clear governance trail |

---

---

# SECTION 2 — END-TO-END DEVELOPMENT LIFECYCLE

This section describes the complete journey from the moment a business module is approved to the point it reaches the hands of the testing team. Each step is explained in straightforward business terms.

---

## STEP 1 — FSD Approval

**What happens:**  
The business analyst or domain expert prepares a Functional Specification Document (FSD). This document describes, in structured detail, every business rule, screen field, validation requirement, approval workflow, and data interaction for a given transaction — for example, the Purchase Requisition form.

The FSD travels through a formal review chain: Module Developer → TL-Dev → IST Reviewer → TL-IST → Project Manager → CEO.

**CEO Approves the FSD.**

Once the CEO counter-signs the document, it becomes the locked development baseline. No feature can be built, and no business rule can be implemented, without a corresponding entry in the CEO-approved FSD.

**What the development team receives:**
- Signed FSD document (the master development reference)
- Functional Markdown file (a structured summary used as AI input)
- Process and workflow notes
- Any CEO clarifications or comments from the approval chain

---

## STEP 2 — UI/UX Design Phase

**What happens:**  
With the FSD approved, the design team prepares the visual and interactive blueprint for each screen. This is not code — it is a precise visual model of what the user will see and how they will navigate the system.

The design work produces:
- Complete screen layouts for all transaction forms
- Navigation flow between screens
- Field arrangement and grouping
- Responsive designs that work on different screen sizes
- Colour standards, typography, and interaction patterns consistent with the SPINRISE Web Blueprint

This phase ensures that before a single line of application code is written, both the business requirements (FSD) and the visual requirements (UI/UX) are fully defined and approved.

---

## STEP 3 — Design Approval

**What happens:**  
The completed screen designs are reviewed by the IST (Implementation Support Team) — the team with direct customer site experience. They verify that the screens match real-world usage patterns and that the navigation is practical for the end user.

Following IST review, the design is submitted to the CEO for final approval.

**The design approval is a mandatory gate. Development cannot begin until this approval is confirmed.**

This ensures that the visual design is aligned with customer expectations before investment in development occurs.

---

## STEP 4 — AI-Assisted Development Initiation

**What happens:**  
Only after both the FSD and the UI/UX design carry CEO approval does the development team activate Claude Code AI for implementation work.

At this point, the development team prepares a structured instruction set for the AI. This instruction set includes:

- The complete approved FSD (the AI reads and follows every business rule)
- The approved screen designs (the AI builds exactly what was designed)
- The project naming and structure standards (the AI follows the existing code architecture)
- The security and validation standards (the AI applies mandatory controls)
- The project-specific configuration (database name, API structure, technology stack)

**The AI is given no latitude to make independent business decisions.** It receives a precise, documented instruction set and implements it.

---

## STEP 5 — Parallel Development

**What happens:**  
Once AI-assisted development begins, work on the three layers of the application proceeds simultaneously:

```
┌──────────────────────────────────────────────────────────────┐
│                    PARALLEL DEVELOPMENT                      │
│                                                              │
│  ┌────────────────┐  ┌────────────────┐  ┌───────────────┐ │
│  │  APPLICATION   │  │   BUSINESS     │  │    DATABASE   │ │
│  │    SCREENS     │  │   PROCESSES    │  │    LAYER      │ │
│  │  (Frontend)    │  │   (Backend)    │  │               │ │
│  │                │  │                │  │               │ │
│  │ What the user  │  │ Rules, logic,  │  │ Data storage, │ │
│  │ sees and uses  │  │ calculations,  │  │ retrieval,    │ │
│  │                │  │ approvals      │  │ procedures    │ │
│  └────────────────┘  └────────────────┘  └───────────────┘ │
│           │                  │                  │           │
│           └──────────────────┴──────────────────┘           │
│                              │                              │
│                    All three layers built                   │
│                    simultaneously, guided                   │
│                    by the same approved FSD                 │
└──────────────────────────────────────────────────────────────┘
```

**Application Screens (Frontend):**  
The user-facing screens — forms, lists, dashboards, printouts — are built to exactly match the approved visual design. Every field, every button, every layout element corresponds to what was approved.

**Business Processes (Backend):**  
The rules that govern how the system behaves are implemented. This includes approval workflows, calculation logic (e.g., Quantity × Rate = Value), validation checks, status transitions, and audit trail recording.

**Database Layer:**  
The stored procedures and data access routines that retrieve, save, and update information in the database are created. These follow the existing database structure and naming conventions.

**API Communication Layer:**  
The communication interfaces that allow the screen layer to speak with the business process layer — and the business process layer to speak with the database — are established. These follow the approved integration standards.

**Validation Rules:**  
Mandatory field checks, range validations, duplicate detection, and approval status guards are implemented to ensure data integrity.

---

---

# SECTION 3 — WHAT CLAUDE CODE AI DOES IN SPINRISE DEVELOPMENT

This section describes, in plain business terms, the specific tasks Claude Code AI performs as part of the development process.

---

## A. Screen Development

Claude Code AI builds the application screens that users interact with. Given the approved HTML design and the FSD, the AI constructs each form with its fields, labels, buttons, tables, and navigation elements. The output matches the approved visual specification precisely.

This eliminates the risk of a developer inadvertently arranging fields differently from the approved design, or missing a field that appears only once in the FSD.

---

## B. Business Rule Implementation

Every business rule documented in the FSD is converted into system behaviour by the AI. This includes:

- Approval chain logic (who can approve what, at what stage)
- Calculation rules (e.g., Value = Quantity × Rate; Cost = Rate + Tax)
- Status transitions (e.g., a Purchase Requisition moves from Draft → Approved → Closed)
- Conditional rules (e.g., if budget category is Capital, a justification field becomes mandatory)
- Block conditions (e.g., once a PR is approved at Level 1, modification and deletion are blocked)

The AI does not invent or assume rules. It implements only what the FSD specifies.

---

## C. Database Preparation

Claude Code AI assists in creating the database procedures that store, retrieve, and update business data. It follows the existing database structure and naming conventions established for SPINRISE, ensuring that new modules integrate cleanly with the existing data environment without requiring changes to the database schema.

---

## D. Validation Handling

The AI implements the full set of input validations and process controls described in the FSD. These include:

- Mandatory field enforcement (a form cannot be submitted without required fields)
- Format validation (e.g., date fields accept only valid dates)
- Duplicate prevention (e.g., the same item cannot appear twice on a requisition with the same machine reference)
- Workflow guards (e.g., a form in "Approved" status cannot be deleted)

These controls protect data quality and enforce the business process rules that the organisation depends on.

---

## E. API and Integration Assistance

The AI constructs the communication layer between the application screens and the business process engine. It ensures that data entered by a user on screen reaches the correct process, is validated correctly, and is stored or retrieved from the database accurately. It also handles the response — returning success confirmation, error messages, or data to display — in a consistent, standardised format.

---

## F. Documentation Support

As development proceeds, Claude Code AI generates parallel technical documentation. This includes developer reference notes, API documentation for each communication point, and inline explanations of complex business rule implementations. This documentation accelerates future maintenance and supports team member onboarding.

---

## G. Quality Standardisation

One of the most significant business benefits of AI-assisted development is that the output quality is consistent regardless of the individual developer's experience level. Senior and junior developers both produce work that adheres to the same naming standards, the same structural patterns, the same security practices, and the same error-handling conventions — because all of them are directing the same AI with the same standard instruction templates.

This reduces the quality gap between team members and ensures that every module of SPINRISE feels and behaves consistently.

---

---

# SECTION 4 — FILES AND ARTIFACTS CREATED DURING DEVELOPMENT

The following table describes each file and document produced during the AI-assisted development process. All items are explained in business terms.

| File / Artifact | What It Is | Used By | Business Importance |
|---|---|---|---|
| **FSD Document** | The complete approved specification of a module's business rules, fields, validations, and workflows | Developers, IST, CEO | The master authority document. All development must align with this. |
| **Functional Markdown File** | A structured summary of the FSD prepared as a direct input for the AI development tool | Development Team | Ensures the AI reads and follows the correct approved version of the business requirements |
| **UI Design Files (HTML)** | Visual screen designs showing exact layout, field arrangement, and navigation for each form | Developers, IST, CEO | The visual blueprint that the AI and developers replicate in the working application |
| **Application Screen Files** | The built, working screens that users will see and interact with in the live system | End Users, IST Testing | The delivered user interface for each business transaction |
| **Business Process Files** | The implemented rules, calculations, workflows, and approvals that govern system behaviour | System (Internal), IST Testing | The "engine" behind each screen — ensures business rules are enforced correctly |
| **Database Procedure Files** | Structured instructions that store and retrieve business data in the database | System (Internal) | Ensures data is saved and loaded correctly, with no corruption or inconsistency |
| **API Interface Files** | The defined communication channels between screen, process, and database layers | System (Internal), Integration | Standardises how all parts of the system exchange data with each other |
| **Validation Rule Files** | Configuration of mandatory fields, format checks, and process guards | System (Internal), IST Testing | Protects data integrity and enforces process compliance |
| **Configuration Files** | System settings including database connection, security parameters, and environment definitions | Infrastructure Team | Defines how the application connects to its environment without hard-coding sensitive information |
| **IST Test Documentation** | Structured test scenarios covering every feature and business rule in a module | IST Team, QA, CEO | Provides a formal record of what was tested and the result — essential for sign-off |
| **Deployment Package** | The complete, compiled application ready for installation on the production server | Infrastructure Team | The deliverable that goes live on the customer's system |
| **User Reference Notes** | Plain-language summaries of how each screen works and what each field means | IST Team, End Users, Support | Supports training and ongoing customer support |
| **Release Notes** | A structured summary of what changed in each version, including new features and resolved issues | CEO, PM, IST, Customers | Provides transparent communication of what each release contains |

---

---

# SECTION 5 — GOVERNANCE RULES FOLLOWED DURING AI-ASSISTED DEVELOPMENT

The following governance framework governs all AI-assisted development activity at Kalpatharu Software. These rules are non-negotiable and apply to every module in SPINRISE.

---

## 5.1 AI Cannot Independently Change Approved Business Logic

Claude Code AI is directed by developers using structured instructions. It cannot, on its own initiative, change the business rules defined in the CEO-approved FSD. If the AI produces output that deviates from the FSD, the developer identifies the deviation, corrects the instruction, and regenerates the output. The FSD is the final authority — not the AI's interpretation.

---

## 5.2 AI Must Follow the Approved UI/UX Design

Every screen built with AI assistance must match the approved HTML design in layout, field order, labelling, and navigation. The developer validates the built screen against the approved design before the output is accepted.

---

## 5.3 AI Must Follow Naming and Structure Standards

All AI-generated code must follow the naming conventions and project structure standards established for SPINRISE. These standards ensure that all modules are consistent, maintainable, and navigable by any team member — not just the original author.

---

## 5.4 Every Generated Output Is Reviewed by a Developer

No AI-generated output is deployed without manual developer review. The developer examines the output against the FSD, the approved design, and the project standards. AI assistance reduces time; it does not replace human judgment.

---

## 5.5 IST Review Is a Mandatory Gate Before Release

After developer validation, every module passes through the IST (Implementation Support Team) review. IST reviews the working build against the original business requirements, with the benefit of their direct customer site experience. IST sign-off is required before any module is presented to the CEO or released.

---

## 5.6 Changes After Development Require Formal Approval

If a business requirement changes after development begins, a formal change request is required. The change must be approved by the relevant authority before the development team acts on it. The AI cannot implement unapproved changes.

---

## 5.7 All Development Is Traceable to an Approved Document

Every feature, rule, screen element, and validation in the built system traces back to a specific entry in the CEO-approved FSD. If a question arises about why a screen behaves a certain way, the answer can always be found in the approved documentation.

---

## 5.8 The CEO Remains the Final Authority

No module is considered complete until it has received CEO review and approval at the defined review gates. The CEO's assessment during working sessions, weekly reviews, and formal sign-offs is binding on all development decisions.

---

---

# SECTION 6 — STANDARD PROMPT TEMPLATES USED WITH CLAUDE CODE

This section provides the production-grade instruction templates that the development team uses when directing Claude Code AI. These templates enforce discipline, prevent deviation from approved documents, and ensure enterprise-grade output quality.

Each template is a structured brief — like a precise work order — that the developer completes and submits to the AI before implementation begins.

---

## A. FRONTEND SCREEN DEVELOPMENT PROMPT TEMPLATE

```
SPINRISE ERP — Frontend Screen Development Instruction
=======================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Technology Platform: React 18, TypeScript (strict mode), Ant Design 5 component library
- Architecture standard: Feature-based module structure under src/features/[moduleName]/
- Design standard: Kalpatharu Software SPINRISE Web Blueprint v1.1

APPROVED DOCUMENTS PROVIDED:
- FSD Reference: [Insert FSD document name and version, e.g., SpinRise-M01-PurchaseRequisition-FSD-v2.5]
- UI Design Reference: [Insert approved HTML design file name]
- Blueprint Reference: SPINRISE_WebFormBlueprint_v1.1

DEVELOPMENT INSTRUCTION:
Build the [screen name] screen for the [module name] module.

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. Follow the approved FSD exactly. Do not add, remove, or modify any field or rule not present in the FSD.
2. Match the approved UI/UX design precisely. Field order, labels, and grouping must replicate the approved design.
3. All labels must use Title Case format (e.g., "Purchase Date", not "PURCHASE DATE" or "purchase date").
4. Do not use placeholder labels such as "Enter value here" — use proper descriptive labels from the FSD.
5. Apply the exact decimal precision rules: Quantity = 3 decimal places, Rate = 4 decimal places, Value = 2 decimal places.
6. The form must display on a single screen with no vertical scrolling. All fields must fit within the visible window.
7. Mandatory fields must be visually marked and must block form submission if empty.
8. Follow the shared component library — do not create duplicate or custom versions of existing shared components.
9. No hardcoded data values, user IDs, or company-specific identifiers anywhere in the screen code.
10. Implement full responsive layout — screen must function correctly on 1280px width and above.
11. All API calls must use the shared Axios client with standard error handling.
12. Apply proper loading states — user must see a loading indicator during any data retrieval or save operation.
13. Do not add any feature, field, or behaviour not explicitly described in the FSD.

SCREEN SPECIFICATION:
- Screen Name: [Insert exact screen name from FSD]
- Screen Purpose: [Insert one-line business purpose]
- Entry Mode: [Add New / Edit / View / All three]
- Fields Required: [List all fields as per FSD, with field name, type, and mandatory status]
- Approval Workflow Display: [Yes/No — if Yes, describe states from FSD]
- KPI Summary Strip: [Specify 5-card contents if applicable]
- Action Buttons Required: [List all buttons as per FSD with their trigger behaviour]
- Print / Export Requirement: [Yes/No — if Yes, describe format]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ Every field from the FSD is present on screen
□ No field appears that is not in the FSD
□ Labels match FSD exactly (Title Case, correct spelling)
□ Field order matches approved design
□ Decimal precision applied correctly
□ Mandatory field indicators present
□ Form fits single screen — no vertical scroll
□ Loading states implemented
□ Error messages display correctly
□ Shared components used (not custom duplicates)
```

---

## B. BACKEND BUSINESS PROCESS DEVELOPMENT PROMPT TEMPLATE

```
SPINRISE ERP — Backend Business Process Development Instruction
================================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Technology Platform: ASP.NET Core 8, C# (async/await pattern), Dapper data access layer
- Architecture: Controller → Service → Repository → Database Stored Procedure
- Database: SQL Server — SpinRiseSaranya (M01) / JAT (M02)
- Response standard: All API responses must use ApiResponse<T> wrapper format

APPROVED DOCUMENTS PROVIDED:
- FSD Reference: [Insert FSD document name and version]
- Module: [Insert module name, e.g., M01 — Purchase Requisition]
- Division: [Insert division, e.g., Purchase]

DEVELOPMENT INSTRUCTION:
Build the backend business process layer for [transaction name].

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. All data access must go through parameterised stored procedures. No raw SQL queries in application code.
2. No Entity Framework. Use Dapper exclusively for database interaction.
3. Never expose database entity objects in API responses. Use Data Transfer Objects (DTOs) for all responses.
4. Implement async/await pattern on all service and repository methods without exception.
5. All list endpoints must implement pagination — no endpoint returns unbounded results.
6. Implement correlation ID logging on all operations for traceability.
7. Validate all input parameters using Data Annotation attributes on DTOs.
8. Follow the exact naming convention: [Module][Transaction]Service, [Module][Transaction]Repository.
9. Folder structure must follow: Areas/[Division]/[Module]/ pattern across all layers.
10. Do not implement any business rule not explicitly described in the FSD.
11. Implement the exact approval workflow states defined in the FSD — no additional states.
12. Apply the block conditions from the FSD: if a record is in an approved state, modification and deletion must be rejected with a clear message.
13. Register all new services and repositories in Program.cs — do not leave registrations incomplete.
14. No hardcoded IDs, user references, or company-specific values in business logic.

TRANSACTION SPECIFICATION:
- Transaction Name: [Insert name from FSD]
- Business Purpose: [Insert one-line description]
- Approval Workflow: [Describe levels and transitions from FSD]
- Calculations Required: [List all calculations from FSD with exact formula]
- Block Conditions: [List all conditions where modification/deletion is prevented]
- Audit Trail Requirements: [Describe what must be logged and when]
- Pagination Requirement: [Specify default page size]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ All FSD business rules are implemented
□ No business rule appears that is not in the FSD
□ All data access uses stored procedures (no raw SQL)
□ All methods are async
□ Approval workflow states match FSD exactly
□ Block conditions enforced correctly
□ DTOs used (no entity exposure in responses)
□ Pagination implemented on all list endpoints
□ Services and repositories registered in Program.cs
□ Correlation ID logging present
```

---

## C. DATABASE STORED PROCEDURE PROMPT TEMPLATE

```
SPINRISE ERP — Database Stored Procedure Development Instruction
=================================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Database Server: 172.16.16.52\sql2016
- Target Database: SpinRiseSaranya (M01) / JAT (M02) [specify which]
- Naming Convention: All stored procedures must be prefixed ksp_PR_ (M01) or ksp_RMI_PO_ (M02)
- Creation Standard: CREATE OR ALTER PROCEDURE — never DROP and CREATE
- Deploy method: All changes must also be reflected in merged.sql (M01) or merged_jat.sql (M02)

APPROVED DOCUMENTS PROVIDED:
- FSD Reference: [Insert FSD document name and version]
- Existing Table Reference: [List relevant table names from the database]

DEVELOPMENT INSTRUCTION:
Create stored procedure(s) for [transaction name] — [operation type: Insert / Update / Delete / Select / List].

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. No schema changes. Do not create new tables, add columns, or create indexes. Work only with existing schema.
2. All queries must use parameterised inputs — no string concatenation in SQL under any circumstances.
3. Use CREATE OR ALTER PROCEDURE syntax — never DROP + CREATE.
4. All write operations (Insert, Update, Delete) must be wrapped in transaction blocks with proper error handling and rollback.
5. Implement UPDLOCK hint where concurrent access race conditions are possible (e.g., document number generation).
6. All stored procedures must include an output parameter for operation status and message.
7. Follow the exact naming convention — prefix ksp_PR_ for M01, ksp_RMI_PO_ for M02.
8. Implement soft delete where specified in the FSD — do not physically delete records.
9. Apply the backdate prevention rule — document date must equal the processing date unless FSD explicitly allows otherwise.
10. Duplicate check: implement the uniqueness rule specified in the FSD before insert.
11. After writing or modifying any stored procedure, update merged.sql (M01) or merged_jat.sql (M02) in the same session.

PROCEDURE SPECIFICATION:
- Procedure Name: [Insert full procedure name including prefix]
- Operation Type: [Insert / Update / Delete / Select / List with Pagination]
- Input Parameters: [List all parameters with data type and purpose]
- Output Parameters: [List expected outputs including status and message]
- Business Rules to Enforce: [List all rules from FSD that apply at database level]
- Duplicate Prevention Rule: [Specify uniqueness criteria from FSD]
- Audit Trail Columns: [Specify columns to be updated on each operation]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ CREATE OR ALTER syntax used (not DROP + CREATE)
□ All inputs are parameterised (no string concatenation)
□ Transaction block with rollback on all write operations
□ UPDLOCK applied where concurrent access is possible
□ Output parameters for status and message included
□ Soft delete implemented (not physical delete) where specified
□ Uniqueness check implemented before insert
□ Naming convention followed (ksp_PR_ or ksp_RMI_PO_)
□ merged.sql / merged_jat.sql updated in same session
```

---

## D. API INTERFACE DEVELOPMENT PROMPT TEMPLATE

```
SPINRISE ERP — API Interface Development Instruction
=====================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Technology Platform: ASP.NET Core 8, REST API
- Base Controller: All controllers must inherit from BaseApiController
- Response Wrapper: All responses must use ApiResponse<T> or ApiResponse format
- Authentication: JWT Bearer token — applied via [Authorize] attribute on all secured endpoints
- Documentation: Swagger/OpenAPI documentation must be generated for all endpoints
- API Base URL (Production): http://172.16.16.40:5001

APPROVED DOCUMENTS PROVIDED:
- FSD Reference: [Insert FSD document name and version]
- Module: [Insert module name]

DEVELOPMENT INSTRUCTION:
Build the API endpoints for [transaction name] — [module name].

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. All controllers must inherit from BaseApiController — no standalone controllers.
2. All responses must be wrapped in ApiResponse<T> format — no raw object returns.
3. Apply [Authorize] attribute on all endpoints that require authentication.
4. Use standard HTTP verbs correctly: GET for retrieval, POST for creation, PUT for update, DELETE for removal.
5. Implement proper HTTP status codes: 200 OK, 201 Created, 400 Bad Request, 401 Unauthorized, 404 Not Found, 500 Internal Server Error.
6. All endpoint routes must follow the approved naming convention: api/[module]/[transaction].
7. Input validation must be applied at the API boundary using model validation.
8. Implement pagination on all list endpoints — accept PageNumber and PageSize parameters.
9. Generate Swagger documentation attributes on all endpoints including request/response examples.
10. Do not expose internal database or infrastructure error messages to the API consumer — return sanitised messages only.
11. Log all requests with correlation IDs for traceability.

ENDPOINT SPECIFICATION:
- Endpoint Name: [Insert name]
- HTTP Method: [GET / POST / PUT / DELETE]
- Route: [Insert full route]
- Authentication Required: [Yes / No]
- Request Body: [Describe fields expected]
- Response Body: [Describe fields returned]
- Business Rules to Enforce at API Level: [List from FSD]
- Pagination Required: [Yes / No — if Yes, specify default page size]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ Inherits from BaseApiController
□ All responses use ApiResponse<T> wrapper
□ [Authorize] attribute applied where required
□ Correct HTTP verbs and status codes used
□ Input validation applied
□ Pagination implemented on list endpoints
□ Swagger documentation attributes present
□ No raw database error messages in responses
□ Correlation ID logging present
□ Route follows approved naming convention
```

---

## E. VALIDATION AND BUSINESS RULE PROMPT TEMPLATE

```
SPINRISE ERP — Validation and Business Rule Implementation Instruction
=======================================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Module: [Insert module name]
- FSD Version: [Insert version]

DEVELOPMENT INSTRUCTION:
Implement the validation and business rule layer for [transaction name].

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. Implement only the validations explicitly described in the approved FSD. Do not add assumed or precautionary validations.
2. Every mandatory field defined in the FSD must block submission when empty — no exceptions.
3. Approval workflow guards must prevent any modification, deletion, or status change that the FSD does not permit.
4. Validation error messages must be descriptive and business-appropriate — not technical system messages.
5. All messages must use Title Case phrasing consistent with the SPINRISE language standard.
6. Implement the exact duplicate prevention rule specified in the FSD — uniqueness is defined per FSD, not assumed.
7. Backdate prevention: document dates must equal processing date unless FSD explicitly permits backdating.
8. Implement all block conditions: once a document reaches an approved state, the exact set of fields and actions the FSD prohibits must be locked.

VALIDATION SPECIFICATION:
- Mandatory Fields: [List all mandatory fields from FSD]
- Format Validations: [List all format rules, e.g., date format, numeric range]
- Uniqueness Rule: [Specify the exact uniqueness criteria from FSD]
- Approval State Guards: [List each state and what actions are blocked in that state]
- Calculation Validations: [List all calculation checks, e.g., Value must equal Qty × Rate]
- Custom Business Rules: [List any non-standard rules from FSD]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ All mandatory fields block submission when empty
□ All format validations implemented
□ Uniqueness rule matches FSD exactly
□ Approval state guards implemented correctly
□ Calculation validations present
□ Error messages are business-friendly (not technical)
□ No validations added that are not in the FSD
□ Backdate prevention applied (unless FSD exempts)
```

---

## F. TESTING DOCUMENTATION PROMPT TEMPLATE

```
SPINRISE ERP — IST Test Scenario Generation Instruction
=========================================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Module: [Insert module name]
- FSD Version: [Insert version]
- Build Version: [Insert build version being tested]

DEVELOPMENT INSTRUCTION:
Generate a comprehensive IST test scenario document for [transaction name].

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. Every test scenario must trace back to a specific entry in the approved FSD.
2. Cover both the expected (positive) and exception (negative) paths for every business rule.
3. Include approval workflow testing: test every stage transition and every block condition.
4. Include validation testing: test every mandatory field, every format rule, every uniqueness constraint.
5. Include calculation testing: verify every formula defined in the FSD with precise expected results.
6. Include permission testing: verify that users at each role level can and cannot perform the actions the FSD defines.
7. Number every test case sequentially for tracking and reporting.
8. Each test case must include: Test Case ID, Description, Pre-condition, Steps, Expected Result, Actual Result (blank), Status (blank).
9. Group test cases by functional area (Header fields, Line items, Approval workflow, Validation, Print/Export).

TEST SCOPE:
- Module: [Insert module name]
- Transaction: [Insert transaction name]
- FSD Sections to Cover: [List FSD sections]
- Approval Workflow Stages: [List all stages from FSD]
- Critical Business Rules to Test: [List from FSD]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ Every FSD business rule has at least one test case
□ Positive and negative paths covered for each rule
□ All approval workflow transitions tested
□ All validation rules tested with correct and incorrect inputs
□ All calculation rules tested with known expected outputs
□ Permission boundaries tested
□ Test cases numbered sequentially
□ Each test case has all required fields
```

---

## G. BUG FIX AND DEFECT RESOLUTION PROMPT TEMPLATE

```
SPINRISE ERP — Defect Resolution Instruction
=============================================

PROJECT CONTEXT:
- Product: SPINRISE ERP
- Module: [Insert module name]
- Build Version: [Insert version where defect was found]
- IST Defect Reference: [Insert defect number from IST test log]

DEFECT DESCRIPTION:
- Defect Title: [Insert exact title from IST report]
- Severity: [High / Medium / Low as per IST classification]
- Steps to Reproduce: [List exact steps the IST team used to reproduce the defect]
- Observed Behaviour: [Describe what the system currently does]
- Expected Behaviour: [Describe what the FSD specifies the system should do]
- FSD Reference: [Insert the specific FSD section or rule that the defect violates]

MANDATORY RULES — READ BEFORE GENERATING ANY OUTPUT:
1. Fix only the specific defect described. Do not refactor, restructure, or improve surrounding code.
2. The fix must bring the behaviour into alignment with the FSD — not introduce new behaviour.
3. Do not introduce changes that could affect other screens, transactions, or modules.
4. If the fix requires a stored procedure change, update merged.sql in the same session.
5. After fixing, explain what was changed and why, in plain language suitable for the IST defect log.
6. If the FSD is ambiguous about the expected behaviour, flag this before implementing — do not assume.

FIX SPECIFICATION:
- Location of Defect: [Specify which file or area contains the issue]
- Root Cause Assessment: [Describe the likely cause]
- Proposed Fix: [Describe the change required]
- Risk of Regression: [Identify any related areas that could be affected]

POST-GENERATION CHECKLIST (Developer must verify before accepting output):
□ Fix resolves the exact defect described
□ No unrelated code changes introduced
□ Behaviour now matches FSD specification
□ No risk of regression in related areas
□ merged.sql updated if stored procedure changed
□ Plain-language explanation ready for IST defect log
□ Build re-deployed to test server after fix
```

---

---

# SECTION 7 — DEVELOPER WORKFLOW AFTER AI-GENERATED OUTPUT

Claude Code AI accelerates the generation of application components. However, no AI output proceeds to testing or deployment without passing through a structured manual review process. This section describes the steps every developer follows after receiving AI-generated output.

```
AI Output Received
       │
       ▼
Step 1 — Code Review
       │
       ▼
Step 2 — FSD Validation
       │
       ▼
Step 3 — UI Design Comparison
       │
       ▼
Step 4 — Business Logic Verification
       │
       ▼
Step 5 — Database Validation
       │
       ▼
Step 6 — Security Review
       │
       ▼
Step 7 — Unit Testing
       │
       ▼
Step 8 — Integration Testing
       │
       ▼
Step 9 — Internal Build Generation
       │
       ▼
Step 10 — Internal QA Verification
       │
       ▼
Step 11 — IST Handover Preparation
       │
       ▼
IST Testing Begins
```

---

**Step 1 — Code Review**  
The developer reads through the entire AI-generated output to verify it is structurally complete and follows the project standards. Any structural issues are corrected before proceeding.

**Step 2 — FSD Validation**  
The developer places the AI-generated screen or process side by side with the approved FSD and confirms, item by item, that every business rule, field, and workflow state is correctly implemented. Any deviation — however minor — is corrected.

**Step 3 — UI Design Comparison**  
The built screen is displayed in a browser and visually compared against the approved HTML design. Field order, labels, grouping, button placement, and layout are verified to match exactly.

**Step 4 — Business Logic Verification**  
The developer manually tests the key business scenarios on the built system — entering values, triggering approval workflows, testing block conditions, and verifying calculations — to confirm the logic behaves as the FSD specifies.

**Step 5 — Database Validation**  
The developer confirms that data entered through the screen is correctly stored in the database, that data retrieved from the database is correctly displayed, and that all update and delete operations function as intended.

**Step 6 — Security Review**  
The developer verifies that all screens require authenticated access, that users can only perform the actions their role permits, and that no sensitive data is exposed inappropriately.

**Step 7 — Unit Testing**  
Individual business rules are tested in isolation to confirm they behave correctly for both valid and invalid inputs.

**Step 8 — Integration Testing**  
The module is tested as part of the full application to confirm it communicates correctly with other modules and does not disrupt existing functionality.

**Step 9 — Internal Build Generation**  
A clean application build is generated and deployed to the internal test server (`172.16.16.40:3000` for frontend, `172.16.16.40:5001` for backend API).

**Step 10 — Internal QA Verification**  
The TL-Dev and relevant team members perform a final internal check on the deployed build before it is handed to the IST team.

**Step 11 — IST Handover Preparation**  
The developer prepares the IST handover package (described in the next section) and ensures all documentation is current and complete.

---

---

# SECTION 8 — HANDOVER PROCESS TO THE IST TEAM

The IST (Implementation Support Team) is the customer-experience layer of the review chain. Their role is to evaluate the built module from the perspective of real-world usage at actual customer sites. They bring years of on-site experience with spinning mill operations and ERP usage patterns. Their review is the final gate before the CEO review and customer pilot deployment.

---

## 8.1 Documents Shared at IST Handover

| Document | Contents |
|---|---|
| **Approved FSD** | The complete business specification the build was developed against |
| **Build Version Note** | Identifies which version is being tested and what changes it contains |
| **IST Test Scenario Document** | Pre-prepared test cases covering every feature and business rule |
| **Known Open Items List** | Any items intentionally deferred or awaiting CEO decision — to prevent confusion during testing |
| **Screen Navigation Guide** | Brief walkthrough of how to access and use each screen |
| **Defect Reporting Format** | The standard format IST must use to log any issues found |

---

## 8.2 What Must Be Verified Before IST Receives the Build

Before the build is handed to IST, the following must all be complete:

- All developer review steps (Steps 1–11 above) completed and signed off
- Build successfully deployed to the internal test server and accessible
- All known defects from any previous IST review cycle resolved and verified
- FSD, test scenarios, and navigation guide current and matching the build version
- TL-Dev sign-off on internal review completion

---

## 8.3 IST Review Process

IST executes the pre-prepared test scenarios against the live build. For each test case they record:
- Whether the system behaved as expected (Pass) or not (Fail)
- If failed: a precise description of the observed behaviour, the steps to reproduce, and the severity level

IST findings are consolidated into a defect report. High-severity defects must be resolved before the build progresses to CEO review. The cycle repeats until the pass rate meets the required threshold.

---

## 8.4 CEO Review Gate

Once IST confirms the build meets the acceptance threshold, a CEO working session is scheduled. The CEO reviews the live deployed build, verifies alignment with the original approved FSD and design, and issues formal acceptance or returns with specific corrections.

---

---

# SECTION 9 — BENEFITS TO THE ORGANISATION

---

## 9.1 Faster Delivery Without Sacrificing Quality

AI-assisted development compresses the time between FSD approval and working build. Tasks that previously required multiple days of manual coding — building a form, wiring validations, creating database procedures — are completed in hours. This acceleration does not reduce quality because the AI follows the same approved standards consistently.

---

## 9.2 Consistency Across the Entire Product

Every module, every screen, every business rule implementation follows the same structure, the same naming standards, and the same architectural patterns — whether it was built by the most experienced developer or the newest team member. This consistency makes the product easier to maintain, extend, and support.

---

## 9.3 Reduced Dependency on Individual Knowledge

In a traditional development environment, a significant amount of implementation knowledge exists only in the minds of individual developers. If a developer is unavailable, progress stalls. AI-assisted development externalises this knowledge into structured, documented prompt templates and FSD documents that any qualified developer can use to continue the work.

---

## 9.4 Better Documentation as a By-Product of Development

In most development teams, documentation is the first casualty of delivery pressure. With AI-assisted development, documentation is generated alongside the implementation — not as an afterthought. Technical references, API documentation, and test scenarios are produced as part of the standard workflow.

---

## 9.5 Faster Onboarding of New Team Members

A new developer joining the SPINRISE team does not need months of informal knowledge transfer. The standard prompt templates, the approved FSDs, and the documented project structure give them a structured, self-sufficient framework for productive contribution from day one.

---

## 9.6 Controlled Development Lifecycle

Every development decision is traceable to an approved document. Every change goes through a defined review and approval process. This controlled lifecycle protects the organisation from unplanned scope creep, undocumented changes, and the downstream support costs they create.

---

## 9.7 Improved Audit Tracking

Because every AI-generated output is validated against an approved FSD, and every FSD carries a dated CEO countersignature, the organisation maintains a complete, timestamped audit trail from business requirement to live implementation. This is of significant value for governance, compliance, and customer confidence.

---

## 9.8 Standardised Enterprise Delivery at a Vertical ERP Scale

Kalpatharu Software's competitive advantage is 22 years of deep spinning mill domain knowledge. AI-assisted development allows the organisation to convert that domain knowledge — captured in FSDs — into working software faster and more reliably than competitors. The result is enterprise-grade delivery at the speed a focused vertical ERP company requires.

---

---

# SECTION 10 — CONCLUSION

---

## 10.1 AI Is an Assisted Development Tool, Not an Autonomous One

Claude Code AI does not make business decisions. It does not design products. It does not approve requirements. It implements, within precise boundaries set by the development team, what has already been decided, designed, and approved through the company's formal governance process.

The AI is a highly capable implementation accelerator — like a skilled contractor who works only from approved plans and stops immediately when the plan runs out.

---

## 10.2 Final Control Remains With Kalpatharu Software

Every piece of AI-generated output passes through human review before it becomes part of the product. The developers, the TL-Dev, the IST team, and the CEO each exercise independent review authority at defined points in the lifecycle. No module is released without completing this chain.

---

## 10.3 Governance and Approvals Are Mandatory

The AI development process is built on top of Kalpatharu's existing governance framework — not instead of it. The FSD approval chain, the IST review requirement, the CEO working sessions, and the pilot readiness gate all continue to apply. AI accelerates the implementation steps between these gates; it does not replace the gates.

---

## 10.4 The System Ensures Controlled Enterprise-Grade Delivery

The combination of formal FSD approval, structured prompt templates, mandatory developer review, IST testing, and CEO sign-off creates a development system that is both fast and trustworthy. The speed comes from AI assistance. The trust comes from governance.

This is the model SPINRISE is built on: domain knowledge captured in documents, documents enforced by process, process accelerated by AI, all under the authority of the company's leadership.

---

---

**END OF DOCUMENT**

---

| Field | Detail |
|---|---|
| Document Title | Claude Code AI Integration in ERP Development Lifecycle |
| Document Reference | SPINRISE-AIDG-v1.0 |
| Version | 1.0 |
| Status | Final — For Management Distribution |
| Prepared By | Development Team, Kalpatharu Software Ltd. |
| Date | May 2026 |
| Next Review | November 2026 |

*This document is prepared for internal management circulation at Kalpatharu Software Ltd. and is classified as Internal — Management Circulation.*
