# SPINRISE — Developer Prompt Guide v1.0
**Role:** Development only — after CEO-approved FSD is received
**Owner:** Fullstack Dev (Abinandan N) · Reports to TL-Dev (Sasi) · May 2026 · Internal

Input to every module: **CEO-approved FSD**
Output: Working SP + Backend + Frontend + deployed to IIS

---

## HOW TO USE

Every Claude Code session starts with **Prompt 0** (project context).
Then use **Prompt 1 → 2 → 3 → 4** in order for each new module.
Use **Prompt 5** when IST returns bug reports.

---

## PROMPT 0 — SESSION CONTEXT
*Paste this at the start of every Claude Code session before any other prompt.*

```
You are the AI coding partner for SPINRISE — an ERP migration project at
Kalpatharu Software Ltd, Coimbatore. We are migrating Kalsofte ERP (VB6 +
SQL Server, 22 years in production) to ASP.NET Core 8 + React 18.

CORE RULE: This is a migration, not a rewrite. Every validation rule, business
logic formula, workflow step, and error message from the approved FSD must be
implemented exactly as specified. Do not add features. Do not improve UX beyond
what the FSD describes.

════════════════════════════════════════
BACKEND STACK
════════════════════════════════════════
• ASP.NET Core 8 Web API
• Architecture: Controller → Service → Repository → Stored Procedure
• Dapper for all DB access (NO Entity Framework, ever)
• SQL Server — tables already exist, never CREATE TABLE
• All DB access via stored procedures only (named ksp_[Module]_[Action])
• JWT Bearer auth ([Authorize]) on all endpoints
• Responses wrapped in ApiResponse<T> — never return raw objects

ApiResponse<T> structure (already exists in Spinrise.API.Models):
  { success: bool, message: string, data: T, warnings: string[]? }

BaseApiController helpers (already exists):
  Success<T>(data, message)                          → 200 or 201
  Success<T>(data, message, warnings)                → 200 with warnings
  SuccessMessage(message)                            → 200 no data
  SuccessMessage(message, warnings)                  → 200 with warnings
  Failure(message, statusCode)                       → 4xx

DivCode rule: NEVER pass divCode from the frontend. Extract it from the JWT:
  private string RequireDivCode() =>
      User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
      ?? throw new UnauthorizedAccessException("Division code not found in token.");

AuditContext (for create/update/delete):
  var audit = new AuditContext(userId, userName, ipAddress, machineName);

UnitOfWork pattern (IUnitOfWork, already registered in DI):
  await _uow.BeginAsync();          // opens connection
  await _uow.BeginAsync(true);      // opens connection + starts transaction
  await _uow.CommitAsync();         // commits (and closes)
  await _uow.RollbackAsync();       // rollback on exception

Every service method:
  await _uow.BeginAsync();
  try { ... return await _repo.SomeMethodAsync(...); }
  finally { await _uow.CommitAsync(); }

Write operations (Insert/Update/Delete):
  await _uow.BeginAsync(true);      // always use transaction
  try { ...; await _uow.CommitAsync(); }
  catch { await _uow.RollbackAsync(); throw; }

Repository pattern (Dapper):
  _uow.Connection!.QueryAsync<T>(SP_NAME, new { Param = val },
      transaction: _uow.Transaction, commandType: CommandType.StoredProcedure)
  // Use: QueryAsync / QueryFirstAsync / QueryFirstOrDefaultAsync / ExecuteAsync / ExecuteScalarAsync

StoredProcedures constants class (Spinrise.Shared.Constants):
  Add a new nested static class per module — never use raw SP name strings in code.
  Example: StoredProcedures.PurchaseRequisition.Insert = "ksp_PR_Insert"

Messages constants (inner static class in the Service file):
  All message strings live in a static class — no inline strings anywhere.
  Example from M01: internal static class PRMessages { public const string PrNotFound = "..."; }

Folder conventions (Areas/<Division>/<Module>/):
  Spinrise.Domain/Areas/<Division>/<Module>/        → entity
  Spinrise.Application/Areas/<Division>/<Module>/
      DTOs/           → input + response DTOs
      Interfaces/     → I[Module]Service, I[Module]Repository
      Services/       → [Module]Service
      Mappings/       → [Module]Mappings (extension methods)
  Spinrise.Infrastructure/Areas/<Division>/<Module>/ → [Module]Repository
  Spinrise.API/Areas/<Division>/Controllers/         → [Module]Controller

════════════════════════════════════════
FRONTEND STACK
════════════════════════════════════════
• React 18 + TypeScript strict (zero 'any' types allowed)
• Vite build tool
• Ant Design 5 (NOT Pro — no ProComponents)
• Zustand for shared/lookup state
• React Router v7 (lazy-loaded routes)
• Axios via shared apiHelpers (never use raw axios)

apiHelpers (src/shared/api/client.ts — already exists):
  apiHelpers.get<T>(url)
  apiHelpers.post<T>(url, payload)
  apiHelpers.put<T>(url, payload)
  apiHelpers.delete(url)
  → All return T (unwraps response.data.data automatically)
  → Warnings from ApiResponse must be read from raw response (not via apiHelpers)

DivCode rule: NEVER send divCode from the frontend — backend reads it from JWT.

Feature module structure:
  src/features/<featureName>/
  ├── api/<featureName>Api.ts       — all Axios calls using apiHelpers
  ├── types.ts                       — all TypeScript interfaces for this feature
  ├── store/use<Feature>Store.ts    — Zustand store (lookups, shared state)
  ├── pages/<Feature>ListPage.tsx   — list + filter page (lazy route)
  ├── pages/<Feature>NewPage.tsx    — create page (lazy route)
  ├── pages/<Feature>EditPage.tsx   — edit/view page (lazy route)
  └── components/
      ├── <Feature>HeaderForm.tsx   — Ant Design Form (header fields)
      ├── <Feature>LineTable.tsx    — line item grid (AG Grid or Ant Table)
      └── <Feature>ViewModal.tsx    — read-only view modal (if needed)

UI patterns established in M01 (follow exactly):
  • List page: Zoho-style — title+count left, export right, inline filter bar, full-width table card
  • Filter bar: PR No | Date range | Dept | Status | Search | Reset (all in one row)
  • Status badges: Ant Design Tag with colour per status code
  • Warnings: <Alert type="warning" showIcon message={msg} closable /> — auto-dismiss 5s
  • Line items table: AG Grid Community (not Ant Design Table for editable grids)
  • Save flow: validate form → call API → on success show message.success → if warnings[] → show Alert per warning

════════════════════════════════════════
DATABASE & DEPLOYMENT RULES
════════════════════════════════════════
• Primary DB: SpinRiseSaranya (SPINRISE modules)
• RMI module (M02): DB=JAT, use IJATUnitOfWork (separate from IUnitOfWork)
• Every new SP must also be added to merged.sql (or merged_jat.sql for M02)
  in the same session. Deploy to SSMS via merged.sql only.
• SP syntax: CREATE OR ALTER PROCEDURE (never DROP + CREATE)
• SET NOCOUNT ON at the top of every SP
• All writes: explicit BEGIN TRAN / COMMIT / ROLLBACK in the SP
• Sequence generation: UPDLOCK + HOLDLOCK to prevent race conditions
  Pattern: SELECT @next = ISNULL(MAX(col),0)+1 FROM table WITH (UPDLOCK, HOLDLOCK)
• IIS deploy: stop app pool → dotnet publish → copy → start app pool
  API path: E:\Abinandan\SPINRISE\Server\Spinrise.API
  Web path: E:\Abinandan\SPINRISE\Server\spinrise-web
```

---

## PROMPT 1 — READ & PLAN FROM APPROVED FSD
*Run this first when you receive a new approved FSD. Output is a dev plan.*

```
I have received a CEO-approved FSD for the following module. Read it fully
and produce a development plan before I write any code.

[PASTE FULL APPROVED FSD HERE]

From this FSD, extract and output:

1. SP LIST — every stored procedure needed (from FSD Section 5: Database Operations)
   Format: SP Name | When Called | Read/Write | Input Params | Returns
   Flag any that involve document number generation or stock checks (concurrency risk).

2. BACKEND CHECKLIST — in build order:
   a) Domain entity fields (from FSD Section 1: Screen Layout)
   b) DTOs needed: Create input, Update input, Response (full), Summary (list)
   c) Interfaces: service methods + repository methods
   d) Validation rules to implement in service (from FSD Sections 2 & 3)
   e) Business logic to implement in service (from FSD Section 4)
   f) Workflow/status transitions (from FSD Section 6)
   g) Exact error message strings (from FSD Section 7) — these become the Messages class

3. FRONTEND CHECKLIST — components to build:
   a) List page — what filters, what columns, what actions per row
   b) New page — header fields, line item grid columns, save/submit buttons
   c) Edit page — same as new but pre-filled; which fields lock after approval
   d) View modal (if needed) — read-only summary
   e) Lookups needed — which dropdowns hit which API endpoints

4. CONCURRENCY FLAGS — any document number generation, stock checks, or
   approval locking that needs UPDLOCK or transaction-scoped reads.

5. QUESTIONS — anything in the FSD that is ambiguous or missing before I start.
   Do not make assumptions. List them explicitly so I can ask the FSD owner.

Do not generate any code yet. Plan only.
```

---

## PROMPT 2 — STORED PROCEDURES
*Run after the plan is confirmed. Generates all SPs for the module.*

```
Generate all stored procedures for [MODULE NAME] based on the approved FSD.

Project context is already loaded. Additional rules for this step:

NAMING: ksp_[ModuleAbbr]_[Action]
  Examples: ksp_SO_Insert, ksp_SO_GetById, ksp_SO_GetPaginated, ksp_SO_Delete

EVERY SP MUST:
  • Start with SET NOCOUNT ON
  • Use CREATE OR ALTER PROCEDURE (not DROP + CREATE)
  • Use parameterised inputs only (no dynamic SQL)
  • All write SPs (Insert/Update/Delete): explicit BEGIN TRAN ... COMMIT ... ROLLBACK

SEQUENCE GENERATION (if the module has document numbers):
  Use UPDLOCK + HOLDLOCK — exact pattern:
  BEGIN TRAN
    SELECT @MaxNo = ISNULL(MAX(DOCNO), 0) + 1
    FROM   [TableName] WITH (UPDLOCK, HOLDLOCK)
    WHERE  DIVCODE = @DivCode AND FINYEAR = @FinYear
    INSERT INTO [TableName] (...) VALUES (...)
  COMMIT

PAGINATED LIST SP: Must return two result sets:
  SET 1 — the page of rows (with OFFSET/FETCH NEXT)
  SET 2 — SELECT COUNT(*) AS TotalCount (same WHERE, no paging)
  Parameters: @DivCode, @Page INT = 1, @PageSize INT = 20,
              @SearchText NVARCHAR(100) = NULL, plus any filter params

READ SPs: Use SELECT column AS [CamelCase] aliasing for Dapper mapping.
  No SELECT * — list every column explicitly.

FSD Section 5 (Database Operations) for this module:
[PASTE FSD SECTION 5 HERE]

FSD Section 1 (Screen Layout — for column names):
[PASTE FSD SECTION 1 HERE]

After generating all SPs:
1. List the merged.sql UPDATE block — all new SPs as a single paste-ready script.
2. List the StoredProcedures.[Module] constants class to add to Spinrise.Shared/Constants.cs.
```

---

## PROMPT 3 — BACKEND LAYERS
*Run after SPs are written and confirmed. Generates all C# layers.*

```
Generate the complete ASP.NET Core 8 backend for [MODULE NAME].
SPs are already written. Project context is loaded.

Build in this exact order:

──────────────────────────────────────────
STEP 1: DOMAIN ENTITY
──────────────────────────────────────────
Namespace: Spinrise.Domain.Areas.[Division].[Module]
File: [Entity].cs
• One property per DB column (match types exactly — decimal for NUMERIC, string for VARCHAR)
• No navigation properties, no attributes, no EF annotations
• Nullable reference types where the column is nullable

──────────────────────────────────────────
STEP 2: DTOs (Spinrise.Application/Areas/[Division]/[Module]/DTOs/)
──────────────────────────────────────────
Create[Module]Dto.cs    — input for POST (DataAnnotations for validation)
Update[Module]Dto.cs    — input for PUT (same shape as Create + Id)
[Module]ResponseDto.cs  — full detail response (GET by id)
[Module]SummaryDto.cs   — lightweight for paginated list (fewer fields)
[Module]ListQueryDto.cs — filter + paging params (Page, PageSize, SearchText, ...)

Rules:
  • DivCode is NEVER in any input DTO — extracted from JWT in the controller
  • Enums as string, not int
  • Dates as DateTime?, not string
  • [Required] [StringLength] [Range] on all constrained fields

──────────────────────────────────────────
STEP 3: INTERFACES (Spinrise.Application/Areas/[Division]/[Module]/Interfaces/)
──────────────────────────────────────────
I[Module]Repository.cs — one method per SP (async, returns Task<T>)
I[Module]Service.cs    — business operations (Create, Update, Delete, GetById, GetPaginated)

──────────────────────────────────────────
STEP 4: MAPPINGS (Spinrise.Application/Areas/[Division]/[Module]/Mappings/)
──────────────────────────────────────────
[Module]Mappings.cs — static extension methods
  • Domain → ResponseDto (ToResponseDto)
  • CreateDto → Domain (ToDomain)
  • UpdateDto → Domain (ToDomain)

──────────────────────────────────────────
STEP 5: SERVICE (Spinrise.Application/Areas/[Division]/[Module]/Services/)
──────────────────────────────────────────
[Module]Service.cs implementing I[Module]Service
  Constructor: (I[Module]Repository repo, IUnitOfWork uow, ILogger<[Module]Service> log)

  Create method signature:
    Task<(bool Success, string Message, [IdType]? Id, IReadOnlyList<string> Warnings)>
        CreateAsync([Module]CreateDto dto, string divCode, AuditContext audit)

  Update method signature:
    Task<(bool Success, string Message, IReadOnlyList<string> Warnings)>
        UpdateAsync([Module]UpdateDto dto, string divCode, AuditContext audit)

  Delete method signature:
    Task<(bool Success, string Message)> DeleteAsync([IdType] id, string divCode, ...)

  GetById:   Task<[Module]ResponseDto?> GetByIdAsync(string divCode, [IdType] id)
  GetPaged:  Task<PagedResult<[Module]SummaryDto>> GetPaginatedAsync(string divCode, [Module]ListQueryDto query)

  All validation from FSD Sections 2 & 3 goes in the service — NOT the controller.
  Non-blocking warnings (like MinLevel) go in the Warnings list, not as errors.

  All message strings in a nested static class [Module]Messages inside this file:
    internal static class [Module]Messages
    {
        public const string NotFound = "[Entity] not found.";
        public const string ApprovalLocked = "...";
        // one const per FSD Section 7 message — exact text
    }

──────────────────────────────────────────
STEP 6: REPOSITORY (Spinrise.Infrastructure/Areas/[Division]/[Module]/)
──────────────────────────────────────────
[Module]Repository.cs implementing I[Module]Repository
  Constructor: (IUnitOfWork uow) — stored in _uow

  Every method calls exactly one SP using Dapper:
    _uow.Connection!.QueryAsync<T>(StoredProcedures.[Module].GetAll,
        new { DivCode = divCode, ... },
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure)

  Paginated method reads two result sets:
    var multi = await _uow.Connection!.QueryMultipleAsync(...)
    var items = (await multi.ReadAsync<[Module]SummaryDto>()).ToList()
    var total = await multi.ReadFirstAsync<int>()
    return new PagedResult<[Module]SummaryDto>(items, total, query.Page, query.PageSize)

──────────────────────────────────────────
STEP 7: CONTROLLER (Spinrise.API/Areas/[Division]/Controllers/)
──────────────────────────────────────────
[Module]Controller.cs
  [Area("[Division]")]
  [Route("api/v1/[kebab-case-module-name]")]
  [Authorize]
  : BaseApiController

  RequireDivCode() and CreateAuditContext() — copy exact pattern from PR controller.

  GET  /             → GetPaginated (query from [FromQuery])
  GET  /{id}         → GetById
  POST /             → Create   → return Success(new { Id = id }, message, warnings, 201)
  PUT  /{id}         → Update   → return SuccessMessage(message, warnings)
  DELETE /{id}       → Delete   → return SuccessMessage(message)

  No business logic in the controller. No validation in the controller.
  If service returns success=false → return Failure(message, 400).

──────────────────────────────────────────
STEP 8: DI REGISTRATIONS
──────────────────────────────────────────
List the exact lines to add to Program.cs:
  builder.Services.AddScoped<I[Module]Repository, [Module]Repository>();
  builder.Services.AddScoped<I[Module]Service, [Module]Service>();

FSD inputs:
  Section 1 (Screen Layout):   [PASTE]
  Section 2–3 (Validations):   [PASTE]
  Section 4 (Business Logic):  [PASTE]
  Section 5 (DB Operations):   [PASTE]
  Section 6 (Workflow):        [PASTE]
  Section 7 (Error Messages):  [PASTE]
```

---

## PROMPT 4 — REACT FRONTEND MODULE
*Run after backend is deployed and endpoints are confirmed working.*

```
Generate the complete React 18 + TypeScript frontend module for [MODULE NAME].
Project context is loaded. Backend is live at http://172.16.16.40:5001/api/v1/[route].

════════════════════════════════════════
FILE: src/features/[featureName]/types.ts
════════════════════════════════════════
Generate TypeScript interfaces for:
• [Module]ListItem    — matches [Module]SummaryDto from backend
• [Module]Detail      — matches [Module]ResponseDto from backend
• [Module]LineItem    — for the line grid (form state, not API)
• [Module]HeaderForm  — Ant Design form values (Dayjs for dates)
• Create[Module]Request, Update[Module]Request — API request bodies
• [Module]ListFilters — filter + paging params

Rules: strict TypeScript, no 'any'. Dates as string in API types, Dayjs in form types.
DivCode is NEVER in any request type.

════════════════════════════════════════
FILE: src/features/[featureName]/api/[featureName]Api.ts
════════════════════════════════════════
Export a const object with:
  getPaginated(filters)    → apiHelpers.get<PagedResult<[Module]ListItem>>(url)
  getById(id)              → apiHelpers.get<[Module]Detail>(url)
  create(dto)              → apiHelpers.post<{ id: [type] }>(url, dto)
  update(id, dto)          → apiHelpers.put<void>(url, dto)
  delete(id, ...)          → apiHelpers.delete(url)
  preChecks()              → apiHelpers.get<[Module]PreCheckResult>(url)
  + any lookup calls specific to this module

Use BASE = '[kebab-case-route]' constant. Build query strings via URLSearchParams.
DivCode is NOT passed — backend reads it from JWT.

════════════════════════════════════════
FILE: src/features/[featureName]/pages/[Module]ListPage.tsx
════════════════════════════════════════
Follow the M01 PRList pattern exactly:
• Title + record count (left) | Export button (right)
• Inline filter bar: [relevant filters] | Search button | Reset button | New [Module] button
• AG Grid or Ant Design Table (use AG Grid if rows are editable inline)
• Columns from FSD Section 1 — use exact field labels from FSD
• Actions column: View | Edit | Delete (disable Edit/Delete based on status)
• Status column: Ant Design Tag with colour map per status code
• Pagination: controlled (page, pageSize in state, totalCount from API)
• On mount: call preChecks() — if any pre-check fails, show blocking Alert instead of form

════════════════════════════════════════
FILE: src/features/[featureName]/pages/[Module]NewPage.tsx
════════════════════════════════════════
• preChecks() on mount — block form if any required setup is missing
• Ant Design Form for header fields (from FSD Section 1 header area)
• Line items table component (separate file) for grid
• Warnings state: string[] — shown as <Alert type="warning"> above table, auto-clear 5s
• Save (draft) and Submit (for approval) buttons — if workflow exists
• On save success: message.success(`[Module] ${id} saved.`)
• On warnings in API response: loop warnings[] → setWarnings([...warnings])
• On save error: message.error(err.message)

════════════════════════════════════════
FILE: src/features/[featureName]/components/[Module]LineTable.tsx (if line items exist)
════════════════════════════════════════
AG Grid Community with:
• Entry form panel below grid (item search → fill → Add button)
• onWarning prop: fires when qty < minLevel or pending checks hit
• onAdd / onUpdate / onDelete callbacks to parent page state
• forwardRef with flushEdit() imperative handle (parent calls before save)
• Item search: debounced 280ms, min 2 chars, calls lookup endpoint
• On item select: auto-fill UOM, current stock, last PO rate, last PO date
• Editable fields inline via entry form (not inline cell editing in AG Grid)

════════════════════════════════════════
ROUTE REGISTRATION (src/router or App.tsx)
════════════════════════════════════════
Add lazy-loaded routes:
  const [Module]ListPage = lazy(() => import('./features/[name]/pages/[Module]ListPage'))
  const [Module]NewPage  = lazy(() => import('./features/[name]/pages/[Module]NewPage'))
  const [Module]EditPage = lazy(() => import('./features/[name]/pages/[Module]EditPage'))

FSD inputs for field labels, validation messages, status codes:
  Section 1 (Screen Layout):   [PASTE]
  Section 6 (Workflow/Status): [PASTE]
  Section 7 (Messages):        [PASTE]
```

---

## PROMPT 5 — IST BUG FIX CYCLE
*Use when IST returns a failed test checklist.*

```
IST has returned the test results for [MODULE NAME]. I need to fix the failures.

IST test results (failed items only):
[PASTE IST CHECKLIST ROWS WITH FAIL STATUS AND ISSUE DESCRIPTION]

For each failed item, do the following:

1. IDENTIFY THE LAYER: Is this a backend validation bug, a business logic bug,
   a stored procedure bug, a frontend display bug, or a missing field?

2. ROOT CAUSE: What is the exact mismatch between FSD specification and current code?
   Quote the relevant FSD section and the current code behaviour.

3. FIX: Write the minimal targeted fix.
   • SP fix → also update merged.sql in the same response
   • Service fix → show only the changed method
   • Frontend fix → show only the changed component section
   Do NOT refactor surrounding code. Fix only what is broken.

4. VERIFICATION: After the fix, state exactly what the IST tester should input
   and what result they should see to confirm the fix. This becomes the re-test step.

Fix priority order (do High first, then Medium, then Low):
  HIGH   — data saved to wrong column, wrong validation blocking valid entry,
            document number wrong, status lifecycle broken, print shows wrong data
  MEDIUM — UI label wrong, warning not shown, optional validation missing
  LOW    — cosmetic, spacing, sort order

IMPORTANT: After all SP fixes are written, output a single merged.sql update block
containing all changed SPs. Do NOT output partial merges.
```

---

## PROMPT 6 — PRINT & EXPORT (QuestPDF / EPPlus)
*Use when the FSD includes a print or export section.*

```
Generate the print/export implementation for [MODULE NAME].

Print technology: QuestPDF (PDF only). EPPlus (Excel/CSV only).
Never use FastReports. Never use Crystal Reports. Never use RDLC.

Follow the M01 PR print architecture exactly:
  • Service: QuestPdf[Module]Service implementing IPurchaseReportService
  • Document class: [Module]QuestDocument : IDocument
  • Template engine: QuestPdfTemplateEngine (static, stateless, config-driven)
  • All layout values in config records (no hardcoded numbers in Compose())

PDF controller endpoint pattern:
  GET api/v1/[module]/reports/{id}/pdf/quest
  → Calls service.GeneratePdfAsync(divCode, id)
  → return File(bytes, ContentTypes.Pdf, $"[Module]_{id}.pdf")

Excel controller endpoint pattern:
  GET api/v1/[module]/reports/{id}/excel
  → Calls service.GenerateExcelAsync(divCode, id)
  → return File(bytes, ContentTypes.Excel, $"[Module]_{id}.xlsx")

Frontend download pattern (from M01):
  const handlePrint = async () => {
    const blob = await fetch(url, { headers: { Authorization: `Bearer ${token}` } }).then(r => r.blob())
    const link = document.createElement('a')
    link.href = URL.createObjectURL(blob)
    link.download = `[Module]_${id}.pdf`
    link.click()
    URL.revokeObjectURL(link.href)
  }

FSD print section: [PASTE FSD PRINT/REPORT SECTION]
Describe what columns, groupings, totals, and signature blocks are required.
```

---

## QUICK REFERENCE — APRIL 2026 LESSONS

These mistakes cost time in M01/M02. Avoid them from day 1:

| Mistake | What Happened | Rule |
|---------|--------------|------|
| Wrong column name | `qtyreqd` used instead of `qtyind` — IST caught it | Always check actual SP output against live DB before writing repository |
| Race condition on doc numbers | CD-2/CD-3 found late in M02 | Use UPDLOCK+HOLDLOCK in EVERY sequence-generating SP, always |
| Schema assumptions | M02 FSD assumed column names that didn't exist in JAT DB | Export live DB schema (SSMS → Script table) before writing any SP |
| Too many FSD versions | M01=v2.4, M02=v8 | CEO mandate: max 2 versions. Read FSD completely, ask all questions BEFORE coding |
| No merged.sql update | SPs deployed but merged.sql stale | Every SP change = merged.sql update in same session. No exceptions |
| DivCode in frontend | - | DivCode is JWT claim only. Never in any request DTO or form field |
| Inline validation in controller | - | All validation belongs in the service. Controller only checks service result |
| Generic error strings | - | Every message is a constant in the Messages class. No inline strings |

---

*SPINRISE Dev Prompt Guide v1.0 · May 2026 · Kalpatharu Software Ltd · Internal*
