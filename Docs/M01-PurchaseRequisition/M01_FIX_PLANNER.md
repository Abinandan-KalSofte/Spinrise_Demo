# M01 PR Form — IST Fix Planner
**FSD Baseline:** v2.3 — CEO-approved 17 April 2026  
**IST Result:** 44 Pass / 57 Fail (44% pass rate) — Mariyaiya, 30 April 2026  
**CEO Demo:** Saturday 2 May 2026  
**Fix Deadline:** EOD Thursday 30 April 2026  
**Fix Report Due:** Thursday 1 PM → send to Mani

---

## Issue Summary

| Severity | Count | Status |
|----------|-------|--------|
| 🔴 High | 18 | 0 Fixed / 1 Blocked / 17 Open |
| 🟡 Medium | 18 | All Open |
| 🔵 Low | 4 | Post-demo |

**Mani's 14 mandatory items (EOD 30 Apr):** Issues 1–4, 6, 8*, 10, 11, 13, 14, 23, 32+34+36, 37, 39  
*Issue 8 — BLOCKED pending Sasi design confirmation

---

## 🔴 HIGH PRIORITY — Fix by EOD 30 Apr

---

### ISSUE-01 · Requisition Type field missing from PR form header
**WF:** WF-01 Step 10 | **Issue Log #1** | **FSD §3**  
**What happened:** Requisition Type field (E=Emergency, O=Ordinary, U=Urgent) is entirely absent from the New PR form header.  
**Affected files:**
- `Spinrise.Application/.../DTOs/CreatePRHeaderDto.cs` — add `RequisitionType` field
- `Spinrise.Application/.../DTOs/UpdatePRHeaderDto.cs` — add `RequisitionType` field
- `Spinrise.Application/.../DTOs/PRHeaderResponseDto.cs` — add to response
- `Spinrise.DBScripts/.../ksp_PR_Insert.sql` — map `@RequisitionType` → `ABCFLG`
- `Spinrise.DBScripts/.../ksp_PR_Update.sql` — map `@RequisitionType` → `ABCFLG`
- `spinrise-web/.../components/pr-form/PRHeaderCards.tsx` — add Requisition Type Select (E/O/U)
- `spinrise-web/.../types.ts` — add `requisitionType` to PR header type

**Fix prompt:**
```
Fix ISSUE-01: Add Requisition Type field to the PR form.

FSD rule: Requisition Type (stored in PO_PRH.ABCFLG) is a mandatory header field.
Valid values: E = Emergency, O = Ordinary, U = Urgent.
This is SEPARATE from Order Type (which is CR/CA/AD).

Backend:
1. In CreatePRHeaderDto.cs — add: [Required] string RequisitionType (validate: must be E, O, or U)
2. In UpdatePRHeaderDto.cs — add the same field
3. In PRHeaderResponseDto.cs — add string RequisitionType mapped from ABCFLG
4. In ksp_PR_Insert.sql — add @RequisitionType parameter, map to ABCFLG column on INSERT
5. In ksp_PR_Update.sql — add @RequisitionType parameter, map to ABCFLG column on UPDATE
6. In PurchaseRequisitionService.cs — pass RequisitionType from DTO to SP call
7. In PurchaseRequisitionRepository.cs — include ABCFLG in SELECT for GetById and GetPaginated SPs

Frontend:
8. In PRHeaderCards.tsx — add a Select control labeled "Requisition Type" with options:
   { value: 'E', label: 'Emergency' }, { value: 'O', label: 'Ordinary' }, { value: 'U', label: 'Urgent' }
   Field is mandatory. Place it in the header section near Order Type.
9. In types.ts — add requisitionType: 'E' | 'O' | 'U' to the PR header type
10. Update merged.sql with the modified SP bodies.
```

---

### ISSUE-02 · Quantity saved to wrong DB column (qtyreqd instead of qtyind)
**WF:** WF-01 Step 19 | **Issue Log #2** | **FSD §3**  
**What happened:** Entered line item Qty is being saved to `PO_PRL.qtyreqd` instead of the correct column `PO_PRL.qtyind`.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_InsertLine.sql` — fix INSERT column mapping
- `Spinrise.DBScripts/.../ksp_PR_Update.sql` or `ksp_PR_SoftDeleteLines.sql` — verify UPDATE mapping

**Fix prompt:**
```
Fix ISSUE-02: Quantity is being saved to the wrong DB column.

The correct column is PO_PRL.qtyind. The wrong column currently being written is qtyreqd.

1. Open ksp_PR_InsertLine.sql — find the INSERT INTO PO_PRL statement.
   Change the column from qtyreqd to qtyind in both the column list and the value parameter.
2. Open ksp_PR_Update.sql (or whichever SP handles line item updates during Modify) —
   find any SET qtyreqd = and change to SET qtyind =.
3. Open ksp_PR_GetById.sql and ksp_PR_GetPaginated.sql — confirm the SELECT reads qtyind
   (not qtyreqd) for the Qty column returned to the frontend.
4. Update merged.sql with the corrected SP bodies.

Do NOT change any table schema — only fix the SP column references.
```

---

### ISSUE-03 · PR Serial Number not generating correctly
**WF:** WF-01 Step 2/28 | **Issue Log #3** | **FSD §5.1**  
**What happened:** PR Number is not being auto-generated correctly or not displayed after save.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GenerateNumber.sql` — generation logic
- `Spinrise.DBScripts/.../ksp_PR_GetMaxPrSNo.sql` — max serial number lookup
- `Spinrise.DBScripts/.../ksp_PR_Insert.sql` — must call generate and return PR number
- `Spinrise.Application/.../Services/PurchaseRequisitionService.cs` — verify number returned to caller

**Fix prompt:**
```
Fix ISSUE-03: PR Serial Number not generating correctly.

FSD rule: PR Number is auto-generated, read-only, sequential within the current financial year.

1. Open ksp_PR_GenerateNumber.sql — trace the generation logic:
   - It should use ksp_PR_GetMaxPrSNo (or equivalent) to get the last used number for the
     current financial year (typically year starting April 1).
   - Verify it locks correctly (use UPDLOCK) to prevent duplicate numbers under concurrent inserts.
   - Verify it returns the new PR number as an OUTPUT parameter or result set.

2. Open ksp_PR_Insert.sql — verify:
   - It calls ksp_PR_GenerateNumber (or inline the number generation).
   - The generated PR number is written to PO_PRH.prno (or equivalent column).
   - The SP returns the generated prno back to the caller.

3. Open PurchaseRequisitionService.cs — verify the Create method:
   - It reads the returned PR number from the SP result.
   - It includes the PR number in the response DTO returned to the frontend.

4. Open PurchaseRequisitionNewPage.tsx (frontend) — verify that after a successful save,
   the returned PR number is displayed to the user (e.g., in a success message: "PR-2425-001 created").

5. Update merged.sql.
```

---

### ISSUE-04 · Requester mandatory validation not enforced (requireRequesterName flag ON)
**WF:** WF-01 Step 9 | **Issue Log #4** | **FSD §3 §4.2**  
**What happened:** PR saves without a Requester even when `requireRequesterName` server flag is ON.  
**Affected files:**
- `Spinrise.Application/.../Services/PurchaseRequisitionService.cs` — add flag check before save
- `Spinrise.Application/.../DTOs/CreatePRHeaderDto.cs` — conditional validation
- `Spinrise.API/.../Controllers/PurchaseRequisitionController.cs` — ensure server config passed

**Fix prompt:**
```
Fix ISSUE-04: Requester mandatory validation not enforced when requireRequesterName flag is ON.

FSD rule (§4.2): When the server flag requireRequesterName = true, the Requester field is mandatory
and save must be blocked if it is blank.

1. In PurchaseRequisitionService.cs, in the Create (and Update) method:
   - Read the requireRequesterName flag from app configuration (appsettings.json or DB config).
   - If flag is true AND (RequesterCode is null or empty), throw a ValidationException with message:
     "Requester is mandatory. Please select a requester before saving."
   - This check must happen BEFORE calling the repository/SP.

2. In CreatePRHeaderDto.cs — do NOT use a static [Required] attribute on RequesterCode since
   it is conditional. The validation is done in the service layer.

3. In the Controller, ensure the 400 response from the ValidationException is returned properly
   (the existing ExceptionHandlingMiddleware should handle this).

4. In PRHeaderCards.tsx (frontend) — if the server config is available via an API endpoint,
   dynamically mark the Requester field as required (*) when the flag is ON.
   If config is not exposed, at minimum add client-side validation:
   check requesterCode is not empty before calling save.
```

---

### ISSUE-06 · Amended PRs appearing in Modify lookup (must be excluded)
**WF:** WF-02 Step 2 | **Issue Log #6** | **FSD §4.4**  
**What happened:** PRs with `amendno > 0` are visible and editable in the Modify lookup — they must be excluded.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GetPaginated.sql` — add WHERE amendno = 0 (or IS NULL) for Modify mode
- `Spinrise.DBScripts/.../ksp_PR_GetAll.sql` — same filter if used by Modify lookup
- `spinrise-web/.../api/purchaseRequisitionApi.ts` — pass mode=modify query param if not already

**Fix prompt:**
```
Fix ISSUE-06: Amended PRs must be excluded from the Modify lookup.

FSD rule (§4.4): Only original, un-amended PRs can be opened for Modify.
Amended PRs (where amendno > 0 or amendno IS NOT NULL) must not appear.

1. Open ksp_PR_GetPaginated.sql (or whichever SP is used to load the PR list for the Modify screen).
   In the WHERE clause, add: AND (amendno IS NULL OR amendno = 0)
   This must apply when the query is in "modify" context. If the SP is shared with the view-only list,
   add a @Mode parameter (e.g., 'MODIFY' vs 'LIST') and apply the filter conditionally.

2. If ksp_PR_GetAll.sql is a separate SP for the Modify lookup dropdown, apply the same filter there.

3. In the frontend PurchaseRequisitionEditPage.tsx or the lookup call in purchaseRequisitionApi.ts,
   ensure the API call passes a parameter that triggers the amended-PR exclusion on the backend.

4. Update merged.sql.
```

---

### ISSUE-08 · Order Type / Requisition Type mixed up — shows CR/CA/AD instead of E/O/U
**WF:** WF-02 Step 8 | **Issue Log #8** | **FSD §3**  
**⚠️ BLOCKED — Awaiting Sasi design confirmation**  
**What happened:** Order Type drop-down shows C, CR, CA, AD (which are Order Types) instead of E/O/U (Requisition Types). These are two separate fields per FSD. Current screen design has only one field where there should be two.  
**Action required:** Raise with Sasi today. Do NOT fix without design sign-off.  
**Questions to confirm with Sasi:**
1. Should the PR form have BOTH an Order Type field (CR/CA/AD) AND a Requisition Type field (E/O/U)?
2. What are the valid Order Type values and their DB column mapping?
3. Is Requisition Type the same as what is stored in ABCFLG (already addressed in ISSUE-01)?

---

### ISSUE-10 · Quantity changes not saved after Modify
**WF:** WF-02 Step 12 | **Issue Log #10** | **FSD §5.8**  
**What happened:** Changing Qty on a line in Modify mode, saving, then reopening shows original Qty unchanged.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_Update.sql` — check line update logic
- `Spinrise.Application/.../Services/PurchaseRequisitionService.cs` — verify line items are included in update payload
- `spinrise-web/.../pages/PurchaseRequisitionEditPage.tsx` — verify updated line items are sent in request body

**Fix prompt:**
```
Fix ISSUE-10: Quantity changes in Modify mode are not being persisted.

FSD rule (§5.8): All field changes including Qty on line items must be saved on Modify.

This is likely one of two root causes — check both:

ROOT CAUSE A — Frontend not sending updated line items:
1. Open PurchaseRequisitionEditPage.tsx.
   After user changes Qty in the grid, verify the local state is updated (the row in the items array
   is mutated with the new Qty, not just the input field).
   Verify the save function serializes ALL line items (including modified ones) into the request body.
   Log the request payload to console before the API call to confirm.

ROOT CAUSE B — Backend SP not updating line Qty:
2. Open ksp_PR_Update.sql.
   Find where it processes line items. Verify it does UPDATE PO_PRL SET qtyind = @Qty (using correct
   column per ISSUE-02 fix) WHERE prno = @PrNo AND srno = @LineNo.
   If the SP only INSERTs new lines and does not UPDATE existing ones, add the UPDATE logic.
   If lines are deleted and re-inserted on every save, ensure the line key (srno/line number) is
   preserved correctly so the re-inserted row matches what was on screen.

3. After the fix, reopen the PR and confirm the new Qty appears.
4. Update merged.sql.
```

---

### ISSUE-11 · Delete acting as Cancel — PR not physically deleted
**WF:** WF-03 Step 5 | **Issue Log #11** | **FSD §5.7**  
**What happened:** Clicking Delete and confirming sets the PR status to Cancelled instead of physically removing the record from the table.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_Delete.sql` — must DELETE records, not UPDATE status
- `Spinrise.Application/.../Services/PurchaseRequisitionService.cs` — verify Delete path
- `Spinrise.Application/.../DTOs/PRDeleteReasonDto.cs` — reason code required

**Fix prompt:**
```
Fix ISSUE-11: PR Delete must physically delete the record, not cancel it.

FSD rule (§5.7): Full Delete removes the PR header (PO_PRH) and all its lines (PO_PRL) from the DB.
It is NOT the same as Cancel (which sets a status flag).

1. Open ksp_PR_Delete.sql.
   The SP must:
   a. Accept @PrNo and @DeleteReasonCode parameters.
   b. First validate pre-conditions (approval flag check — see ISSUE-13; enquiry link check — see ISSUE-14).
   c. DELETE FROM PO_PRL WHERE prno = @PrNo  (delete all lines first due to FK constraints)
   d. DELETE FROM PO_PRH WHERE prno = @PrNo  (delete the header)
   e. Optionally write a deletion audit record before deleting.
   If the SP currently does UPDATE PO_PRH SET status = 'CANCELLED' — replace that with the DELETE logic.

2. Open PurchaseRequisitionService.cs — the Delete method should call ksp_PR_Delete.
   Do NOT call any Cancel or SoftDelete SP for a full delete action.

3. Open PurchaseRequisitionListPage.tsx (frontend) — after successful delete:
   Remove the deleted record from local list state immediately (optimistic update).
   Do NOT wait for a page reload — the list must update without refresh (WF-03 Step 6 / Issue 15).

4. Update merged.sql.
```

---

### ISSUE-13 · Delete block not working when approval flag is set
**WF:** WF-03 Step 3 | **Issue Log #13** | **FSD §4.4**  
**What happened:** Delete proceeds even when `FirstApp`, `SecondApp`, or `ThirdApp = 'Y'` — the approval lock is not enforced.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_Delete.sql` — add approval flag guard
- `Spinrise.DBScripts/.../ksp_PR_ExistsChecks.sql` — may already have this check; verify

**Fix prompt:**
```
Fix ISSUE-13: Delete must be blocked when any approval flag is set.

FSD rule (§4.4): If FirstApp = 'Y' OR SecondApp = 'Y' OR ThirdApp = 'Y' on the PR,
neither Delete nor Modify is allowed.

1. In ksp_PR_Delete.sql, at the top of the SP body (before any DELETE statement), add:
   DECLARE @FirstApp CHAR(1), @SecondApp CHAR(1), @ThirdApp CHAR(1)
   SELECT @FirstApp = firstapp, @SecondApp = secondapp, @ThirdApp = thirdapp
   FROM PO_PRH WHERE prno = @PrNo
   IF (@FirstApp = 'Y' OR @SecondApp = 'Y' OR @ThirdApp = 'Y')
   BEGIN
       RAISERROR('This PR has been approved and cannot be deleted.', 16, 1)
       RETURN
   END

2. In ksp_PR_ExistsChecks.sql (if it exists and is called before delete) — verify the same
   approval check is present there too; remove duplication if both exist.

3. In PurchaseRequisitionService.cs — the Delete method should propagate the error from the SP
   as a user-facing validation message (the ExceptionHandlingMiddleware will handle the 400 response).

4. Update merged.sql.
```

---

### ISSUE-14 · Enquiry-link delete block not implemented
**WF:** WF-03 Step 4 | **Issue Log #14** | **Backend V28**  
**What happened:** A PR linked to an enquiry record in `po_enql` can be deleted — the block is missing.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_Delete.sql` — add enquiry link check
- `Spinrise.DBScripts/.../ksp_PR_ExistsChecks.sql` — may have a check template

**Fix prompt:**
```
Fix ISSUE-14: Delete must be blocked when the PR is linked to an enquiry.

Backend V28 rule: If a record exists in po_enql referencing this PR number, delete must be blocked
with message: "This PR is linked to an enquiry and cannot be deleted."

1. In ksp_PR_Delete.sql, after the approval flag check (ISSUE-13), add:
   DECLARE @EnqCount INT
   SELECT @EnqCount = COUNT(*) FROM po_enql WHERE prno = @PrNo
   IF @EnqCount > 0
   BEGIN
       RAISERROR('This PR is linked to an enquiry and cannot be deleted.', 16, 1)
       RETURN
   END

   (Confirm the actual column name in po_enql that references PO_PRH — it may be prno, prnumber, etc.)

2. Update merged.sql.
```

---

### ISSUE-18 · Save after single line removal — remaining lines not persisted
**WF:** WF-03 Line Delete Step 11 | **Issue Log #18** | **FSD §5.7 §5.8**  
**What happened:** After deleting a single line from a PR and saving, the remaining lines are not correctly persisted and the audit record is not written.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_DeleteLine.sql` — single-line delete logic
- `Spinrise.DBScripts/.../ksp_PR_Update.sql` — must handle remaining lines after line delete
- `Spinrise.DBScripts/.../ksp_PR_InsertAuditLog.sql` — must be called on line delete

**Fix prompt:**
```
Fix ISSUE-18: After single line delete, remaining lines must persist and audit log must be written.

FSD rule (§5.7): Single-line delete removes only that line; other lines remain. (§5.8): An audit row
must be written per deleted line.

1. Open ksp_PR_DeleteLine.sql.
   Verify it:
   a. Accepts @PrNo and @LineNo (srno) as parameters.
   b. Deletes only that specific line: DELETE FROM PO_PRL WHERE prno = @PrNo AND srno = @LineNo
   c. Does NOT delete or touch other lines.
   d. Calls ksp_PR_InsertAuditLog (or inline INSERT into audit table) with operation = 'DELETE_LINE',
      user ID, IP, timestamp, line details.

2. After line deletion, re-sequence line numbers if required by business logic (check FSD §5.7 for
   renumbering rules). If renumbering is required, UPDATE PO_PRL SET srno = <new_seq>
   for the remaining lines in PRno order.

3. Open PurchaseRequisitionEditPage.tsx (frontend) — when user clicks delete on a line:
   a. Remove the line from local state immediately (before save).
   b. On save, the remaining lines list is sent to the update endpoint.
   c. Verify the backend receives the correct remaining lines and does not re-insert deleted ones.

4. Update merged.sql.
```

---

### ISSUE-23 · Approval level indicators missing from View modal
**WF:** WF-04 Step 7 | **Issue Log #23** | **FSD §5.5a Rec 13**  
**What happened:** The View modal shows no approval level details — approver names and dates are absent.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GetById.sql` — must return approval fields
- `Spinrise.Application/.../DTOs/PRHeaderResponseDto.cs` — add approval level fields
- `spinrise-web/.../components/pr-list/PRViewModal.tsx` — render approval level section

**Fix prompt:**
```
Fix ISSUE-23: Approval level indicators must be shown in the View modal.

FSD rule (§5.5a, Rec 13): For each approval level (First, Second, Third) that has been completed,
the View modal must show: approver name + approval date. Pending levels show blank.

Backend:
1. Open ksp_PR_GetById.sql — add to the SELECT:
   firstapp, firstappby, firstappdate,
   secondapp, secondappby, secondappdate,
   thirdapp, thirdappby, thirdappdate
   from PO_PRH (confirm actual column names in the table).

2. Open PRHeaderResponseDto.cs — add:
   string? FirstApprovalBy, DateTime? FirstApprovalDate, bool FirstApproved,
   string? SecondApprovalBy, DateTime? SecondApprovalDate, bool SecondApproved,
   string? ThirdApprovalBy, DateTime? ThirdApprovalDate, bool ThirdApproved

3. In PRMappings.cs (or PurchaseRequisitionService.cs) — map the new fields from SP result to DTO.

Frontend:
4. In PRViewModal.tsx — add an "Approval Status" section below the header fields.
   For each of the 3 levels, show a row:
   - If Approved = true: show approver name + formatted date (e.g., "Muthuvel — 30 Apr 2026")
   - If Approved = false: show "Pending" in grey
   Use Ant Design Descriptions or a simple 3-column layout.

5. In types.ts — add the approval level fields to the PRHeader type.
```

---

### ISSUE-31 · Approval details not printed in PR print
**WF:** WF-05 Step 11 | **Issue Log #31** | **FSD §8 B.2**  
**What happened:** The printed PR does not show approver names or approval dates in the signature area.  
**Affected files:**
- `Spinrise.Infrastructure/.../Reports/PurchaseRequisitionQuestDocument.cs` — add approval section
- `Spinrise.Infrastructure/.../Reports/QuestPdfPurchaseRequisitionService.cs` — pass approval data
- `Spinrise.Application/.../Reports/DTOs/PurchaseRequisitionReportRowDto.cs` — add approval fields

**Fix prompt:**
```
Fix ISSUE-31: Approval details must print in the PR document signature area.

FSD rule (§8 B.2): For each completed approval level, the printed PR must show approver name
and approval date in the signature/stamp area at the bottom of the document.

1. Open PurchaseRequisitionReportRowDto.cs — add approval fields:
   string? FirstApprovalBy, DateTime? FirstApprovalDate, bool FirstApproved,
   string? SecondApprovalBy, DateTime? SecondApprovalDate, bool SecondApproved,
   string? ThirdApprovalBy, DateTime? ThirdApprovalDate, bool ThirdApproved

2. Open QuestPdfPurchaseRequisitionService.cs — in the method that fetches data for print:
   Ensure the SP query (ksp_PR_GetById or a dedicated print SP) returns the approval columns.
   Map them into the DTO.

3. Open PurchaseRequisitionQuestDocument.cs (QuestPDF document class) — add an approval section:
   Create a row of 3 cells (First Approval | Second Approval | Third Approval).
   For each cell: if approved → show "Approved by: {name}" and "{date}"; else → "Pending" or blank line.
   Place this section in the footer/signature area of the document, above the company footer.
   Use QuestPDF Column/Row layout components.

4. Test by printing a PR that has at least one approval level completed.
```

---

### ISSUE-32 · Status filter absent from PR list screen
**WF:** WF-06 Steps 2–4 | **Issue Log #32** | **FSD §5.5**  
**What happened:** No Status filter drop-down exists on the PR list screen.  
**Affected files:**
- `spinrise-web/.../components/pr-list/PRFilterBar.tsx` — add Status filter
- `spinrise-web/.../api/purchaseRequisitionApi.ts` — pass status param
- `Spinrise.DBScripts/.../ksp_PR_GetPaginated.sql` — add @Status filter parameter

**Fix prompt:**
```
Fix ISSUE-32: Add Status filter to the PR list screen.

FSD rule (§5.5): Status filter must support all lifecycle values: OPEN, APPROVED, CONVERTED, CANCELLED.

Backend:
1. Open ksp_PR_GetPaginated.sql.
   Add parameter: @Status NVARCHAR(20) = NULL
   In the WHERE clause, add: AND (@Status IS NULL OR status = @Status)
   This makes the filter optional — when NULL, all statuses are returned.

2. In PRListQueryDto.cs — add: string? Status

3. In PurchaseRequisitionRepository.cs — pass Status to the SP.

Frontend:
4. In PRFilterBar.tsx — add a Select control labeled "Status" with options:
   All (empty), OPEN, APPROVED, CONVERTED, CANCELLED
   On change, update the filter state and trigger a list reload.

5. In purchaseRequisitionApi.ts — include status in the query params when calling the list endpoint.

6. In usePurchaseRequisitionList.ts (or equivalent hook) — pass the status filter value to the API call.

7. Update merged.sql.
```

---

### ISSUE-34 · Search by PR Number returning wrong/unrelated records
**WF:** WF-06 Step 6 | **Issue Log #34** | **FSD §2**  
**What happened:** Searching by PR Number returns unrelated PR numbers and records from non-current financial years.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GetPaginated.sql` — fix search + financial year filter
- `spinrise-web/.../components/pr-list/PRFilterBar.tsx` — verify search sends PR number correctly

**Fix prompt:**
```
Fix ISSUE-34: PR Number search must return exact matches within current financial year only.

Two problems to fix:
A) Search matching is too broad (returning unrelated records).
B) Records from previous financial years are included.

Backend:
1. Open ksp_PR_GetPaginated.sql.
   a. Financial year filter: Add @FinancialYear parameter (or derive current FY from GETDATE()).
      Indian FY starts April 1. Current FY = if MONTH(GETDATE()) >= 4 then YEAR(GETDATE())
      else YEAR(GETDATE())-1. Apply: AND YEAR(prdate) = @FY (or use actual FY column if one exists).
   b. PR Number search: Change the LIKE '%@PrNo%' search to exact match: AND prno = @PrNo
      when a PR number is supplied. If partial search is needed, use LIKE @PrNo + '%' (prefix only).

2. Open PRListQueryDto.cs — ensure PrNo search param is passed correctly.

Frontend:
3. In PRFilterBar.tsx — verify the search input for PR number sends the value as a 'prNo' query param,
   not mixed with a general text search field.

4. Update merged.sql.
```

---

### ISSUE-36 · PR list / report not working — only date-wise report works
**WF:** WF-06 Steps 10–11 | **Issue Log #36** | **FSD §2**  
**What happened:** The main PR list/report screen is broken. Only the date-wise report functions.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GetPaginated.sql` — main list SP
- `spinrise-web/.../pages/PurchaseRequisitionListPage.tsx` — list page load
- `spinrise-web/.../hooks/usePurchaseRequisitionList.ts` — data fetching hook

**Fix prompt:**
```
Fix ISSUE-36: PR list screen must load and display all PRs with correct columns.

The list must show: PR No, Date, Department, Section, Status, Created By (username — not DB ID).

1. Open ksp_PR_GetPaginated.sql.
   Verify it:
   a. Returns columns: prno, prdate, deptcode, deptname, section, status, createdby_username
      (join to user table to resolve createdby integer ID to username).
   b. Has correct pagination (@PageNumber, @PageSize, total count).
   c. Does not error on NULL filter parameters.
   Run the SP directly in SSMS with no filters to confirm it returns data.

2. Open PurchaseRequisitionListPage.tsx — check the useEffect / query hook that loads the list.
   If there is an unhandled error on initial load (e.g., missing required param being sent as undefined),
   the list will appear blank. Add error boundary / console logging to identify the failure point.

3. Open usePurchaseRequisitionList.ts — verify the API call parameters are correctly built even when
   no filters are selected (default state should load all PRs for current FY).

4. In the list columns config (prListConfig.ts) — verify the "Created By" column renders
   the username field from the response DTO, not a raw integer.

5. After fix, confirm: PRs load on page open, pagination works, status column shows correct values.
```

---

### ISSUE-37 · Status shows "Converted" immediately after approval (should be "Approved")
**WF:** WF-07 Step 5 | **Issue Log #37** | **FSD §5.5**  
**What happened:** After an approver approves a PR, the status immediately shows CONVERTED instead of APPROVED. CONVERTED should only appear after a PO is created from the PR.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_GetPaginated.sql` — status derivation logic
- `Spinrise.DBScripts/.../ksp_PR_GetById.sql` — status derivation logic
- `Spinrise.DBScripts/.../ksp_PR_GetSummary.sql` — if used for status badge

**Fix prompt:**
```
Fix ISSUE-37: PR status lifecycle must follow: OPEN → APPROVED → CONVERTED.

FSD rule (§5.5):
- OPEN: No approval flags set
- APPROVED: Any approval flag (FirstApp/SecondApp/ThirdApp) = 'Y', but NOT yet converted to PO
- CONVERTED: A PO has been created from this PR (convflg = 'Y' or equivalent)
- CANCELLED: PR was cancelled

The bug is that CONVERTED is being shown when only approval flags are set, before any PO is created.

1. Open ksp_PR_GetPaginated.sql and ksp_PR_GetById.sql.
   Find the status derivation logic (a CASE statement or status column read).
   Fix the CASE order:
   CASE
     WHEN convflg = 'Y' THEN 'CONVERTED'          -- PO created: check FIRST
     WHEN (firstapp = 'Y' OR secondapp = 'Y' OR thirdapp = 'Y') THEN 'APPROVED'
     WHEN delflg = 'Y' THEN 'CANCELLED'
     ELSE 'OPEN'
   END AS status

   (Verify the actual column names: convflg, delflg, firstapp etc. in PO_PRH)

2. Apply the same fix to ksp_PR_GetSummary.sql if it derives status independently.

3. In the frontend PRFilterBar.tsx / PRDataTable.tsx — the status values displayed must match
   exactly: OPEN, APPROVED, CONVERTED, CANCELLED (no other values).

4. Update merged.sql.
```

---

### ISSUE-39 · Audit log not writing entries for Add and Modify
**WF:** WF-07 Step 9 | **Issue Log #39** | **FSD §5.8**  
**What happened:** Add and Modify operations are not writing audit rows to the audit log table.  
**Affected files:**
- `Spinrise.DBScripts/.../ksp_PR_InsertAuditLog.sql` — audit write SP
- `Spinrise.DBScripts/.../ksp_PR_Insert.sql` — must call audit SP after INSERT
- `Spinrise.DBScripts/.../ksp_PR_Update.sql` — must call audit SP after UPDATE
- `Spinrise.Application/.../DTOs/AuditContext.cs` — carries userId, ipAddress

**Fix prompt:**
```
Fix ISSUE-39: Audit log must record every Add and Modify operation.

FSD rule (§5.8): Every Add and every Modify writes one audit row per PR line.
Required fields: user ID, IP address, timestamp, operation type (ADD/MODIFY), PR number, line number.

1. Open ksp_PR_InsertAuditLog.sql — verify it accepts:
   @PrNo, @LineNo, @Operation (ADD/MODIFY/DELETE), @UserId, @IpAddress, @Timestamp
   and does an INSERT INTO the audit table. If the SP does not exist, create it.

2. Open ksp_PR_Insert.sql — after the INSERT INTO PO_PRL (for each line), add:
   EXEC ksp_PR_InsertAuditLog @PrNo=@PrNo, @LineNo=@LineNo, @Operation='ADD',
     @UserId=@UserId, @IpAddress=@IpAddress, @Timestamp=GETDATE()

3. Open ksp_PR_Update.sql — after each line UPDATE, add the same EXEC with @Operation='MODIFY'.

4. Open PurchaseRequisitionController.cs — verify AuditContext (userId, ipAddress) is populated
   from the HTTP context and passed to the service/repository:
   - userId: from JWT claims (User.FindFirst(ClaimTypes.NameIdentifier))
   - ipAddress: from HttpContext.Connection.RemoteIpAddress

5. Open PurchaseRequisitionRepository.cs — verify the audit params are included in the SP call.

6. After the fix, add a PR line and verify a row appears in the audit log table in SSMS.
7. Update merged.sql.
```

---

## 🟡 MEDIUM PRIORITY — Fix after CEO Demo

| # | Issue | WF | Description |
|---|-------|----|-------------|
| 5 | Reference No mandatory (requireRefNo flag) | WF-01 | Not enforced when flag ON |
| 7 | Created By field missing from Modify screen | WF-02 | Shows blank instead of username |
| 9 | Drawing No & Catalogue No absent from Advanced section | WF-02 | Both fields missing |
| 12 | Delete reason code list incomplete | WF-03 | Only Cancel reasons shown; proper delete reason codes absent |
| 15 | List does not refresh after delete | WF-03 | Page reload required to see deletion |
| 16 | Single line delete — reason flow broken | WF-03 | Delete reason step not working correctly |
| 17 | Grand Total not recalculating after single line delete | WF-03 | Total stale after line removal |
| 19 | Field labels incorrect in View modal | WF-04 | Labels mismatched or missing |
| 21 | "Indent Type" label instead of "Order Type" in View modal | WF-04 | Wrong caption |
| 22 | Cost Centre field not shown in View modal | WF-04 | Field absent |
| 24 | LPO Date & LPO Supplier columns missing from View modal | WF-04 | Only Last Rate available |
| 26 | Sub-Cost Centre missing from print header | WF-05 | Design mismatch pending Sasi confirmation |
| 27 | Created By missing from print header | WF-05 | ERP username not printed |
| 30 | Grand Total label and ₹ symbol wrong in print | WF-05 | Shows "App.cost value"; Rs symbol absent |
| 33 | Department Code filter absent from list screen | WF-06 | No department filter |
| 35 | PDF download from list not working | WF-06 | Only Excel export works |
| 38 | Qty vs MinLevel warning not shown | WF-07 | No warning when Qty < item MINLEVEL |
| 40 | Item lookup missing pending PR/PO qty | WF-07 | Only current stock shown |

---

## 🔵 LOW PRIORITY — Post-demo cleanup

| # | Issue | WF | Description |
|---|-------|----|-------------|
| 20 | CAT column requires horizontal scroll in View modal | WF-04 | Not visible at 1920×1080 |
| 25 | Catalogue No not displaying correctly in View modal | WF-04 | Display issue |
| 28 | Machine No label prints when all values blank | WF-05 | Label should be suppressed |
| 29 | Drawing No / Catalogue No labels print when values absent | WF-05 | Labels should be suppressed |

---

## ⛔ BLOCKED — Awaiting Sasi Design Confirmation

| Issue | Question | Assigned to |
|-------|----------|------------|
| ISSUE-08 | Order Type vs Requisition Type — two separate fields? What are the valid Order Type values and their DB column? | Sasi |
| ISSUE-26 | Sub-Cost Centre — FSD says header-level (PO_PRH.SUBCOST) but currently saved at item level. Confirm correct design. | Sasi |

---

## Fix Status Report Template (Due to Mani — Thursday 1 PM)

```
M01 PR Form — Fix Status Report
Date: 30 April 2026 | Prepared by: Abinandan N

| # | Issue | Status | Notes |
|---|-------|--------|-------|
| 1 | Requisition Type field missing | Fixed / In Progress / Blocked | |
| 2 | Quantity saved to qtyreqd instead of qtyind | Fixed / In Progress / Blocked | |
| 3 | PR Serial Number not generating correctly | Fixed / In Progress / Blocked | |
| 4 | Requester mandatory validation not enforced | Fixed / In Progress / Blocked | |
| 6 | Amended PRs in Modify lookup | Fixed / In Progress / Blocked | |
| 8 | Order Type / Requisition Type mix-up | BLOCKED — awaiting Sasi design confirmation | |
| 10 | Qty changes not saved after Modify | Fixed / In Progress / Blocked | |
| 11 | Delete acting as Cancel | Fixed / In Progress / Blocked | |
| 13 | Delete block — approval flag not enforced | Fixed / In Progress / Blocked | |
| 14 | Enquiry-link delete block missing | Fixed / In Progress / Blocked | |
| 23 | Approval level indicators absent from View | Fixed / In Progress / Blocked | |
| 32 | Status filter absent from list | Fixed / In Progress / Blocked | |
| 34 | PR Number search wrong results | Fixed / In Progress / Blocked | |
| 36 | PR list screen not working | Fixed / In Progress / Blocked | |
| 37 | Shows Converted instead of Approved | Fixed / In Progress / Blocked | |
| 39 | Audit log not writing on Add/Modify | Fixed / In Progress / Blocked | |
```

---

## Fix Execution Order (Recommended)

| Order | Issues | Why first |
|-------|--------|-----------|
| 1st | 02, 37 | Data integrity + status — foundational; other tests depend on correct data |
| 2nd | 11, 13, 14 | Delete flow — fix as a batch (one SP, three rules) |
| 3rd | 01, 04 | New PR form fields |
| 4th | 03 | Serial number — depends on Insert being stable |
| 5th | 10, 18 | Modify + line delete persistence |
| 6th | 06 | Lookup filter — low risk, one WHERE clause |
| 7th | 32, 34, 36 | List screen — fix as a batch (all WF-06) |
| 8th | 23, 31 | Approval display — View modal + Print |
| 9th | 39 | Audit log — add after SP changes are stable |
| Last | 08 | BLOCKED — only after Sasi confirms design |
