# Purchase Requisition — Gap Analysis
> **Reference spec:** `Docs/M01/M01 FSD Purchase Requisition - Approved/Purchase_Requisition_Form.md` (VB6 form `tmpPOINDENT`)
> **Scope:** Frontend (`PurchaseRequisitionV2Page`, `PRHeaderCards`, `PRLineItemsTable`) and Backend (Service V1–V29, DTOs, Controller)
> **Date:** 2026-04-22

---

## Summary Table

| # | Area | Gap | Severity |
|---|------|-----|----------|
| G01 | Backend DTO + Frontend | GIN No. field missing everywhere | Medium |
| G02 | Backend DTO + Frontend | TC (Transaction Code) field missing everywhere | Low |
| G03 | Backend DTO + Frontend | Requisition Type field — in response DTO only, not in create/update or UI | Medium |
| G04 | Backend DTO + Frontend | Budget Amount / Budget Balance — response DTO has it, not surfaced in UI | Medium |
| G05 | Frontend UI | `isSample` checkbox — in type/DTO/payload but absent from entry form | High |
| G06 | Frontend UI | `place` field — in type/DTO/payload but absent from entry form | Medium |
| G07 | Frontend UI | `approxCost` field — in type/DTO/payload but absent from entry form | Medium |
| G08 | Frontend UI | `subCostCode` field — in type/DTO/payload but absent from entry form and Advanced Drawer | Medium |
| G09 | Frontend UI | Item Group — not modelled anywhere (no DTO field, no search filter, no display column) | Medium |
| G10 | Frontend UI | Approval status display — PRHeaderCards (new form) never shows level1/2/final approver | High |
| G11 | Frontend Logic | `getItemInfo` never called on item select — pending indent/PR warnings suppressed | High |
| G12 | Frontend Logic | Config flag `requireRequesterName` not reflected in UI (field not marked required) | High |
| G13 | Frontend Logic | Config flag `requireRefNo` not reflected in UI (field not marked required) | High |
| G14 | Frontend Logic | Config flag `pendingPoDetailsEnabled` — Order Type not marked required in UI | High |
| G15 | Frontend Logic | Config flag `backDateAllowed=false` — DatePicker does not restrict past dates | Medium |
| G16 | Frontend Logic | Config flag `itemGroupFilterEnabled` — no item group filter in item search | Low |
| G17 | Frontend Logic | Config flag `approvalStatusVisible` — approval block never conditionally shown | Medium |
| G18 | Frontend Logic | Config flag `manualPrNumberEnabled` — no manual PR No input in UI | Low |
| G19 | Frontend Logic | "Submit for Approval" calls same `doSave()` as "Save Draft" — no status distinction | High |
| G20 | Frontend Logic | Edit page (`PurchaseRequisitionEditPage`) uses old V1 components, not V2 form | High |
| G21 | Frontend Logic | Line deletion for saved PR lines — no per-line delete with reason in V2 form | Medium |
| G22 | Backend Service | `SubCostRequired` message exists in `PRMessages` but the validation is never triggered (dead code) | Low |
| G23 | Backend DTO | `CreatePRHeaderDto` / `UpdatePRHeaderDto` missing `GinNo`, `Tc`, `RequisitionType` | Medium |
| G24 | Backend DTO | `PRHeaderResponseDto.RequisitionType` exists but no write path populates it | Medium |
| G25 | Print / Report | `place`, `isSample`, `approxCost` values are in the payload but PDF layout may not render them | Low |

---

## Section 1 — Header Field Gaps

### G01 — GIN No. field missing

**FSD:** Header field "GIN No." (Goods Issue Note reference).  
**Current state:** Not present in `CreatePRHeaderDto`, `UpdatePRHeaderDto`, `PRHeaderResponseDto`, `PRHeaderFormValues`, or `PRHeaderCards`.  
**Impact:** GIN linkage is lost; any PR that originates from a GIN issue note cannot be cross-referenced.

**Fixing prompt:**
```
Add GIN No. to the Purchase Requisition header.

Backend:
1. Add `string? GinNo` ([StringLength(20)]) to CreatePRHeaderDto, UpdatePRHeaderDto, and PRHeaderResponseDto.
2. Add GinNo column to the PR header table (ksp_PR_Create / ksp_PR_Update stored procedures and the header entity).
3. Map the field in PRMappings.ToEntity() and ToResponseDto().

Frontend:
1. Add `ginNo?: string` to PRHeaderFormValues and CreatePRRequest in types.ts.
2. Add a Form.Item for "GIN No." in PRHeaderCards.tsx (Row 3, after Section/OrderType).
3. Include ginNo in the buildPayload() mapping in PurchaseRequisitionV2Page.tsx.
```

---

### G02 — TC (Transaction Code) field missing

**FSD:** Header field "TC" (Transaction code / type).  
**Current state:** Not present anywhere in the stack.  
**Impact:** Low for MVP; required if transaction type segregation is needed for reporting.

**Fixing prompt:**
```
Add TC field to the Purchase Requisition header.

Backend: Add `string? Tc` ([StringLength(5)]) to CreatePRHeaderDto, UpdatePRHeaderDto, PRHeaderResponseDto.
Add Tc column to DB table and stored procedures.

Frontend: Add `tc?: string` to PRHeaderFormValues and CreatePRRequest.
Add Form.Item "TC" in PRHeaderCards.tsx alongside GIN No. in Row 3.
Include in buildPayload().
```

---

### G03 — Requisition Type field — write path missing

**FSD:** Header field "Requisition Type" with a lookup popup.  
**Current state:** `PRHeaderResponseDto.RequisitionType` exists (read path). `CreatePRHeaderDto` and `UpdatePRHeaderDto` do NOT have the field. No UI control in `PRHeaderCards`.  
**Impact:** Requisition type can never be set; it will always be null on new/edit.

**Fixing prompt:**
```
Complete the Requisition Type field end-to-end.

Backend:
1. Add `string? RequisitionType` ([StringLength(10)]) to CreatePRHeaderDto and UpdatePRHeaderDto.
2. Confirm ksp_PR_Create and ksp_PR_Update stored procedures include the @RequisitionType parameter.
3. Map in PRMappings.ToEntity().

Frontend:
1. Add `requisitionType?: string` to PRHeaderFormValues and CreatePRRequest in types.ts.
2. Add a RequisitionType Select (or plain Input) in PRHeaderCards.tsx — Row 3 alongside Section/OrderType.
3. Populate options from a lookup endpoint (add lookupApi.getRequisitionTypes() if not present).
4. Include in buildPayload() in PurchaseRequisitionV2Page.tsx.
```

---

### G04 — Budget Balance not surfaced in UI

**FSD:** Header field "Budget Amount" (available budget).  
**Current state:** `PRHeaderResponseDto.BudgetBalance` and `PRHeaderResponse.budgetBalance` (frontend type) exist. `PreCheckResult.BudgetValidationEnabled` flag exists. No display in `PRHeaderCards` for new or existing PRs.  
**Impact:** Users cannot see remaining budget when raising a PR.

**Fixing prompt:**
```
Display budget balance in PRHeaderCards when BudgetValidationEnabled is true.

1. Pass `preCheckResult` (or just `budgetValidationEnabled: boolean` and `budgetBalance?: number`) as props to PRHeaderCards.
2. In PRHeaderCards.tsx, when `budgetValidationEnabled` is true, show a read-only "Budget Balance" Input/Tag in Row 1 or beneath the header title.
3. For edit mode: populate it from PRHeaderResponse.budgetBalance loaded in PurchaseRequisitionEditPage.
4. Add a warning Alert when the PR total (sum of rate × qty) exceeds budgetBalance.
```

---

## Section 2 — Line Item Field Gaps

### G05 — `isSample` checkbox absent from entry form

**FSD:** Line item field "Samples Yes/No" (checkbox).  
**Current state:** `PRLineFormItem.isSample`, `CreatePRLineDto.IsSample`, and `CreatePRLineRequest.isSample` all exist and are sent in the payload. The entry form (`PRLineItemsTable`) has no UI control for it. The default is always `false`.  
**Impact:** Users cannot mark an item as a sample request; the data is silently ignored.

**Fixing prompt:**
```
Add isSample checkbox to the item entry form in PRLineItemsTable.tsx.

1. Add `isSample` to EntryFormValues interface.
2. Add a Form.Item with Checkbox "Samples?" in the second row of the entry form (after Remarks, before the action buttons).
3. In handleAddOrUpdate(), include `isSample: values.isSample ?? false` in the row object.
4. In startEdit(), set entryForm.setFieldValue('isSample', row.isSample).
5. Show an "S" badge or Tag in the AG Grid "Description" or add a dedicated column so it's visible in the items list.
```

---

### G06 — `place` (Delivery / Location) absent from entry form

**FSD:** Line item field "Place" (delivery / location details).  
**Current state:** `PRLineFormItem.place` and `CreatePRLineDto.Place` exist. The entry form has no input for it. `emptyRow()` sets `place: ''`.  
**Impact:** Delivery location information is lost for every line item.

**Fixing prompt:**
```
Add Place field to the item entry form in PRLineItemsTable.tsx.

1. Add `place?: string` to EntryFormValues.
2. Add a Form.Item Input "Place / Delivery Location" in the second row of the entry form, alongside Remarks.
3. In handleAddOrUpdate(), map values.place to the row's place field.
4. In startEdit(), set entryForm.setFieldValue('place', row.place).
```

---

### G07 — `approxCost` (Approximate Cost) absent from entry form

**FSD:** Line item field "Approx. Cost" (approximate total cost).  
**Current state:** `PRLineFormItem.approxCost` and `CreatePRLineDto.ApproxCost` exist. Not shown in entry form. Not auto-calculated either.  
**Impact:** Approx cost is always null; budget-level reporting breaks.

**Fixing prompt:**
```
Add Approx. Cost to the item entry form in PRLineItemsTable.tsx.

Option A (auto-calculated): Remove it as a form field. Instead, auto-derive it as qty × rate when saving:
  approxCost: (values.qtyRequired * (values.rate ?? 0)) || null

Option B (user-entered): Add `approxCost?: number` to EntryFormValues, add an InputNumber "Approx. Cost (RM)" 
in the second row. In startEdit(), populate it from row.approxCost.

Recommended: Option A keeps the form lean. Update handleAddOrUpdate() and the AG Grid Total column 
to use approxCost as the source of truth for display.
```

---

### G08 — `subCostCode` absent from Advanced Drawer

**FSD:** Line item field "Sub Cost Centre" with a lookup popup.  
**Current state:** `PRLineFormItem.subCostCode`, `CreatePRLineDto.SubCostCode`, and `SubCostLookup` type all exist. The Advanced Drawer in `PRLineItemsTable` shows `costCentreCode` and `budgetGroupCode` but NOT `subCostCode`.  
**Impact:** Sub cost centre is always null despite being a FSD-specified field.

**Fixing prompt:**
```
Add Sub Cost Centre field to the Advanced Drawer in PRLineItemsTable.tsx.

1. In openDrawer(), add subCostCode: row.subCostCode to drawerForm.setFieldsValue().
2. Add a Form.Item InputNumber "Sub Cost Centre" (or a Select backed by lookupApi.getSubCosts()) in the Drawer form.
3. In saveDrawer(), the drawerForm.getFieldsValue() already spreads into onUpdate() — ensure subCostCode is included.
4. Note: backend PRMessages.SubCostRequired exists but its validation is dead code. 
   If SubCostRequired validation should be active, add the trigger condition in PurchaseRequisitionService.ValidateCreateLinesAsync().
```

---

### G09 — Item Group not modelled

**FSD:** Line item field "Item Group" (auto-filled from item code); Item Listing supports filter by Item Group.  
**Current state:** Not in `PRLineFormItem`, `PRLineResponse`, `CreatePRLineDto`, or any API response. `ItemLookup` type has no `itemGroup` field. `PreCheckResult.ItemGroupFilterEnabled` flag exists but is unused.  
**Impact:** Item group filtering in the item search popup is not possible; item group is not shown on the PR lines.

**Fixing prompt:**
```
Add Item Group support to the Purchase Requisition.

Backend:
1. Add `string? ItemGroup` and `string? ItemGroupName` to CreatePRLineDto, PRLineResponseDto, and the line entity.
2. Add itemGroup / itemGroupName to ksp_PR_InsertLine and ksp_PR_GetById stored procedures.
3. Add itemGroup to the item info query so it's returned when GetItemInfoAsync is called.

Frontend:
1. Add `itemGroup?: string` and `itemGroupName?: string` to ItemLookup and PRLineFormItem in types.ts.
2. When ItemGroupFilterEnabled is true (from preCheckResult), show an Item Group Select above the Item Code field in the entry form.
3. Pass the selected itemGroupCode to lookupApi.searchItems(query, depCode, itemGroupCode?) to filter results.
4. Auto-fill itemGroup when an item is selected in handleItemSelect().
5. Add an "Item Group" column to the AG Grid in PRLineItemsTable.
```

---

## Section 3 — Frontend Validation & Logic Gaps

### G10 — Approval status not displayed in V2 form

**FSD:** Form shows 4-level approval status as read-only labels.  
**Current state:** `PRHeaderResponseDto` returns `Level1ApproverName`, `Level1ApprovedAt`, `Level2ApproverName`, `Level2ApprovedAt`, `FinalApproverName`, `FinalApprovedAt`. `PreCheckResult.ApprovalStatusVisible` flag exists. `PRHeaderCards` (new V2 form) has no approval section. The old `PRHeaderV2` component (used by `PurchaseRequisitionEditPage`) may show it.  
**Impact:** Approvers and approval dates are invisible to users in the V2 form.

**Fixing prompt:**
```
Add approval status section to PRHeaderCards.tsx.

1. Add optional props: approvalVisible?: boolean, level1ApproverName?: string, level1ApprovedAt?: string, 
   level2ApproverName?: string, level2ApprovedAt?: string, finalApproverName?: string, finalApprovedAt?: string.

2. When approvalVisible is true AND at least one approver name is set, render a read-only "Approval Status" 
   section below the form rows — use a Timeline or a horizontal row of Tag components showing each approver 
   and their approval date.

3. In PurchaseRequisitionEditPage: after loading the PR, pass the approver fields from PRHeaderResponse to PRHeaderCards.
4. Gate visibility on preCheckResult.approvalStatusVisible.
```

---

### G11 — `getItemInfo` never called on item select

**FSD:** On item select, the form fetches last PO rate, current stock, pending indent qty, pending PR no.  
**Current state:** `purchaseRequisitionApi.getItemInfo()` endpoint exists and returns `PRItemInfoDto` with `hasPendingIndent`, `pendingIndentQty`, `hasPendingPR`, `pendingPrNo`, `pendingPrDate`. In `PRLineItemsTable.handleItemSelect()`, only the item lookup result (`ItemLookup`) is used to populate `itemMeta`. `getItemInfo` is **never called**. Pending warnings are completely suppressed.  
**Impact:** Users are not warned about pending indents or existing open PRs for the same item — a key FSD requirement (V26, V27).

**Fixing prompt:**
```
Call getItemInfo on item select in PRLineItemsTable.tsx.

1. In handleItemSelect(), after setting itemMeta from the lookup result, call:
     const info = await purchaseRequisitionApi.getItemInfo(depCode, itemCode, yfDate, ylDate)
   where yfDate/ylDate are the financial year bounds derived from the selected prDate header field.

2. Pass prDate (or yfDate/ylDate) as a prop to PRLineItemsTable from PurchaseRequisitionV2Page.

3. Update itemMeta to also store lastPoRate, lastPoDate, lastPoSupplierCode, lastPoSupplierName from info.
   Pre-fill the rate field: entryForm.setFieldValue('rate', info.lastPoRate ?? null)

4. If info.hasPendingIndent, show an Ant Design Warning message.warning() or inline Alert:
   "Pending indent exists for this item — Qty: {info.pendingIndentQty}"

5. If info.hasPendingPR, show:
   "An open PR (#{info.pendingPrNo} dated {info.pendingPrDate}) already exists for this item."

6. Gate checks: only run hasPendingIndent check when preCheckResult.pendingIndentCheckEnabled is true,
   and hasPendingPR check when preCheckResult.pendingPRCheckEnabled is true.
   Pass preCheckResult as a prop to PRLineItemsTable.
```

---

### G12 — `requireRequesterName` flag not reflected in UI

**FSD / Backend:** When `po_para.RequireReqName = 'Y'`, requester name is mandatory (V9).  
**Current state:** The backend correctly rejects if the flag is set. The frontend `PRHeaderCards` receives `purTypeFlgEnabled` as the only config prop. The "Requested By" Select has no `required` rule applied conditionally.  
**Impact:** User can submit without a requester name when the flag is active; the server returns a 400 but the UI shows no inline validation error.

**Fixing prompt:**
```
Reflect requireRequesterName flag in PRHeaderCards.tsx.

1. Add `requireRequesterName?: boolean` to PRHeaderCardsProps.
2. In the "Requested By" Form.Item, change rules to:
   rules={requireRequesterName ? [{ required: true, message: 'Required' }] : []}
3. In PurchaseRequisitionV2Page.tsx, pass:
   requireRequesterName={preCheckResult?.requireRequesterName ?? false}
   as a prop to PRHeaderCards.
4. Same pattern for PurchaseRequisitionEditPage: pass from its own preCheckResult.
```

---

### G13 — `requireRefNo` flag not reflected in UI

**FSD / Backend:** When `po_para.RequireRefNo = 'Y'`, reference number is mandatory (V11).  
**Current state:** Same gap as G12 — backend validates, frontend does not.

**Fixing prompt:**
```
Reflect requireRefNo flag in PRHeaderCards.tsx.

1. Add `requireRefNo?: boolean` to PRHeaderCardsProps.
2. In the "Reference No." Form.Item, apply:
   rules={requireRefNo ? [{ required: true, message: 'Required' }] : []}
3. Pass requireRefNo={preCheckResult?.requireRefNo ?? false} from both PurchaseRequisitionV2Page and PurchaseRequisitionEditPage.
```

---

### G14 — `pendingPoDetailsEnabled` flag — Order Type not required in UI

**FSD / Backend:** When `po_para.Penpodetails = 'Y'`, Order Type (`iType`) is required (V8).  
**Current state:** Order Type Select in `PRHeaderCards` has no required rule at all.

**Fixing prompt:**
```
Make Order Type conditionally required in PRHeaderCards.tsx.

1. Add `pendingPoDetailsEnabled?: boolean` to PRHeaderCardsProps.
2. Apply rules to the "Order Type" Form.Item:
   rules={pendingPoDetailsEnabled ? [{ required: true, message: 'Required' }] : []}
3. Pass pendingPoDetailsEnabled={preCheckResult?.pendingPoDetailsEnabled ?? false} from both page components.
```

---

### G15 — `backDateAllowed=false` not enforced by DatePicker

**FSD / Backend:** When `in_para.BackDateAllowed = 'N'`, PR date must equal today (V4/V6).  
**Current state:** `PRHeaderCards.tsx` DatePicker has `disabledDate={(d) => d.isAfter(dayjs(), 'day')}` (future dates only). It does NOT check `backDateAllowed`.  
**Impact:** Users can back-date PRs when the flag forbids it; the server returns a 400 with a cryptic date error.

**Fixing prompt:**
```
Enforce backDateAllowed flag in PRHeaderCards.tsx.

1. Add `backDateAllowed?: boolean` to PRHeaderCardsProps.
2. Update the DatePicker's disabledDate:
   disabledDate={(d) =>
     backDateAllowed
       ? d.isAfter(dayjs(), 'day')                          // only block future
       : !d.isSame(dayjs(), 'day')                          // only today allowed
   }
3. Pass backDateAllowed={preCheckResult?.backDateAllowed ?? true} from both page components.
```

---

### G16 — `itemGroupFilterEnabled` flag — item search has no group filter

**FSD:** Item Listing lookup supports filter by Item Group.  
**Current state:** `PreCheckResult.ItemGroupFilterEnabled` flag is received but never used. `lookupApi.searchItems()` has no itemGroup parameter.

**Fixing prompt:**
> Covered by G09 — implement Item Group filter in the item search when `itemGroupFilterEnabled` is active.

---

### G17 — `approvalStatusVisible` flag not used to gate approval display

**Current state:** `PreCheckResult.ApprovalStatusVisible` is received in `preCheckResult` but is never checked before rendering any approval UI (which doesn't exist anyway — see G10).

**Fixing prompt:**
> Covered by G10 — gate the approval section on `preCheckResult.approvalStatusVisible`.

---

### G18 — `manualPrNumberEnabled` flag — no manual PR number input

**FSD:** Some VB6 configurations allowed manual entry of the PR number.  
**Current state:** `PreCheckResult.ManualPrNumberEnabled` flag exists but is unused. PR number is always auto-generated.

**Fixing prompt:**
```
Handle manual PR number entry.

1. Add `manualPrNumberEnabled?: boolean` to PRHeaderCardsProps.
2. When true, replace the disabled auto-generated Input with an editable InputNumber for PR No.
3. Add `prNo?: number` to PRHeaderFormValues and CreatePRRequest.
4. Backend: in CreatePRHeaderDto add `long? ManualPrNo`. In PurchaseRequisitionService.CreateAsync(), 
   when ManualPrNumberEnabled is true and dto.ManualPrNo is set, use that value instead of calling GetNextPrNumberAsync().
   Add a uniqueness check before inserting.
```

---

### G19 — "Submit for Approval" and "Save Draft" are identical

**FSD / Expected:** Save Draft stores as OPEN; Submit for Approval changes status or triggers an approval workflow.  
**Current state:** Both buttons in `PurchaseRequisitionV2Page` call `void doSave()`. There is no `submitForApproval` endpoint or status flag distinction. Every save creates an OPEN PR.  
**Impact:** The workflow distinction communicated to users is false. Approval triggering logic is absent.

**Fixing prompt:**
```
Differentiate Save Draft vs Submit for Approval.

Option A (status-based, simpler):
1. Add a `submitMode: 'DRAFT' | 'SUBMIT'` parameter to doSave().
2. Include it in CreatePRRequest as `submitForApproval?: boolean`.
3. Backend: if submitForApproval is true, set pr.PrStatus = 'PENDING' (add PENDING to the status enum) 
   and trigger any notification hooks.
4. Update Steps to show PENDING as step 2.

Option B (separate endpoint): Create a POST /purchase/requisition/{prNo}/submit endpoint that updates 
status and triggers approval. Call it only from the Submit button, after a successful save.

Recommended: Option A is simpler for Phase 1.
```

---

### G20 — Edit page uses old V1 components

**Current state:** `PurchaseRequisitionEditPage.tsx` imports `PRHeaderV2` and `PRItemFormV2` / `PRItemTableV2` (legacy V1 components), not the refactored `PRHeaderCards` and `PRLineItemsTable`. The V2 form improvements (single compact header panel, separate entry form, AG Grid) are absent in the edit flow.  
**Impact:** Create and Edit forms have completely different UI and behaviour.

**Fixing prompt:**
```
Migrate PurchaseRequisitionEditPage to use V2 components.

1. Replace PRHeaderV2 import with PRHeaderCards.
   Populate the form from the loaded PRHeaderResponse, including the new props:
   purTypeFlgEnabled, requireRequesterName, requireRefNo, pendingPoDetailsEnabled, backDateAllowed (all from preCheckResult).

2. Replace PRItemFormV2 + PRItemTableV2 with PRLineItemsTable.
   Populate items from fullPr.lines.map(mapLine) as in PurchaseRequisitionV2Page.mapSavedLine().

3. On submit, call purchaseRequisitionApi.update(buildUpdatePayload(values)) in place of create().

4. Once edit page is migrated, verify that old V1 components (PRHeaderV2, PRItemFormV2, PRItemTableV2) 
   are no longer referenced anywhere and remove them to avoid dead code.
```

---

### G21 — Line deletion for saved PRs not exposed in V2 form

**FSD:** Deletion popup offers "Line Deletion" for removing a single line item.  
**Current state:** `DELETE /purchase/requisition/{prNo}/line/{prSNo}` endpoint exists and is documented. In `PRLineItemsTable`, the row Delete button removes the item from local `items` state only — it does not call the API. After a PR is saved, deleting a line from the grid does not persist unless the user re-saves the whole PR. There is no reason-required line deletion UI.  
**Impact:** Once a PR is saved, users cannot individually delete a line via a reason-tracked API call; they must re-save the full PR.

**Fixing prompt:**
```
Implement per-line API deletion for saved PRs in PRLineItemsTable.tsx.

1. Add `savedPrNo?: number` prop to PRLineItemsTableProps.
2. Add `prSNo?: number` to PRLineFormItem (populate from PRLineResponse.prSNo in mapSavedLine).
3. When savedPrNo is set and the row has a prSNo, the Delete Popconfirm should:
   a. Show a Select dropdown for cancellation reason (same deleteReasons list used for full PR delete).
   b. On confirm, call purchaseRequisitionApi.deleteLine(savedPrNo, row.prSNo, reason).
   c. On success, remove the row from local items state (onDelete(row.key)).
4. When savedPrNo is not set (new PR draft), keep the current behaviour (local state removal only).
```

---

## Section 4 — Backend Gaps

### G22 — `SubCostRequired` validation is dead code

**Current state:** `PRMessages.SubCostRequired` exists but `PurchaseRequisitionService.ValidateCreateLinesAsync()` never evaluates any condition that would trigger it. The validation guard for SubCostCode existence (V23 pattern) is present for `CostCentreCode` and `BudgetGroupCode` but not `SubCostCode`.  
**Impact:** The backend silently accepts lines with an invalid SubCostCode.

**Fixing prompt:**
```
Activate SubCostCode validation in PurchaseRequisitionService.cs.

In ValidateCreateLinesAsync(), after the CostCentreCode check (V23), add:
  if (line.SubCostCode.HasValue)
  {
      var exists = await _repo.SubCostExistsAsync(divCode, line.SubCostCode.Value);
      if (!exists)
          return (string.Format(PRMessages.SubCostRequired, line.SubCostCode), warnings);
  }

Add SubCostExistsAsync to IPurchaseRequisitionRepository and implement it with a parameterized SP call.
```

---

### G23 & G24 — `RequisitionType` has no write path

**Current state:** `PRHeaderResponseDto.RequisitionType` exists (read only). `CreatePRHeaderDto` and `UpdatePRHeaderDto` have no `RequisitionType` property.  
**Impact:** RequisitionType can never be created or edited via the API — it is always null.

**Fixing prompt:**
> Covered by G03 fixing prompt above.

---

## Section 5 — Cross-Cutting Issues

### Approx Cost auto-calculation

`approxCost` should be auto-derived as `rate × qtyRequired` every time either changes (see G07, Option A). Currently the Total column in the AG Grid computes this on the fly for display, but the stored `approxCost` field is always null. The print PDF template (`PurchaseRequisitionQuestDocument`) may depend on the stored value.

**Verify:** Check `QuestPdfPurchaseRequisitionService.cs` and `PurchaseRequisitionQuestDocument.cs` to confirm whether `approxCost` or the computed `rate × qty` is used for the PDF "Approx Cost" column.

---

### Financial year bounds not passed to `getItemInfo`

`purchaseRequisitionApi.getItemInfo(depCode, itemCode, yfDate, ylDate, flags)` requires the financial year start/end dates. These are derived server-side in `PurchaseRequisitionService.GetFinancialYearStart/End(dto.PrDate)` but the frontend currently derives them only by calling `getById` after save. The `PRLineItemsTable` needs the selected `prDate` from `headerForm` to compute yfDate/ylDate before save — pass `prDate: Dayjs` as a prop (see G11 fixing prompt).

---

### Place / isSample columns missing from PR print

The QuestPDF print layout should verify it renders `Place` and `IsSample` per line. They are in the payload and stored, but if the PDF template skips them (common in legacy migrations), the fields have no visible output.

**Verify:** Check `PurchaseRequisitionQuestDocument.cs` column definitions for `place` and `isSample` rendering.

---

## Priority Order for Fixes

| Priority | Gap IDs | Reason |
|----------|---------|--------|
| P1 — Critical | G11, G12, G13, G14, G19, G20 | Silent failures, wrong validation, broken workflow |
| P2 — High | G05, G06, G07, G08, G10, G15 | Fields sent in payload but no UI; approval invisible |
| P3 — Medium | G01, G03, G04, G09, G21 | Missing fields, incomplete features |
| P4 — Low | G02, G16, G17, G18, G22 | Edge-case flags, dead code, minor UX |
