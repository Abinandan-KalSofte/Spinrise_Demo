# M01 PR — Session Prompts (Ultra-Low Token)
> Spinrise ERP · React 18 + ASP.NET Core 8 · Working dir: `D:\Spinrise`
> Each prompt = one Claude Code session. Copy-paste as-is.

---

## P01 · Currency RM → ₹ (CRITICAL)

```
In Development/spinrise-web/src/features/purchase-requisition/:

1. components/v2/PRLineItemsTable.tsx
   - Replace every `RM ` (with space) → `₹ `
   - Replace every `prefix="RM"` → `prefix="₹"`
   - Replace every `'Rate (RM)'` → `'Rate (₹)'`
   - Replace every `'Unit Price (RM)'` → `'Unit Price (₹)'`
   - Replace `en-MY` → `en-IN` (all toLocaleString calls)

2. pages/PurchaseRequisitionV2Page.tsx
   - Replace `RM ` → `₹ ` (2 occurrences in subtotal display)
   - Replace `en-MY` → `en-IN`

3. components/v2/PRRateHistoryModal.tsx
   - Replace `'Rate (RM)'` → `'Rate (₹)'`
   - Replace `RM {Number(` → `₹ {Number(`

Run: cd Development/spinrise-web && npx tsc --noEmit
```

---

## P02 · Workflow Bar "PO Created" → "Converted" (MEDIUM)

```
File: Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx

Find the Steps items array (around line 50):
  { title: 'PO Created'}
Change to:
  { title: 'Converted' }
```

---

## P03 · Move MachineNo + DrawNo + CatNo to Main Entry Form (HIGH)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx

Context: MachineNo, DrawNo, CatNo are currently only in the Advanced Drawer (right-side panel).
CEO requires them visible in the main item entry form alongside Item Code, Qty, Rate.

In the main entry form section (search for `Form.Item name="rate"` — add AFTER the Rate row):

Add three Form.Item fields in a Row with 3 cols:
  - name="machineNo"  label="Machine No."   → Input maxLength={5}
  - name="drawNo"     label="Drawing No."   → Input maxLength={25}
  - name="catNo"      label="Cat No."       → Input maxLength={25}

These fields already exist in: emptyRow() defaults, handleAddOrUpdate() mapping, startEdit() mapping.
No new state or handler changes needed — just add the JSX Form.Item controls.

Run: npx tsc --noEmit
```

---

## P04 · isSample Checkbox + Place Field in Main Entry Form (HIGH)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx

isSample and place already exist in: emptyRow(), handleAddOrUpdate(), startEdit() mappings.
Only UI controls are missing from the main entry form.

After the Remarks Form.Item, add in a Row:
  Col span=12:
    <Form.Item name="place" label="Place / Delivery">
      <Input placeholder="Delivery location…" maxLength={40} />
    </Form.Item>
  Col span=12:
    <Form.Item name="isSample" valuePropName="checked">
      <Checkbox>Sample Request</Checkbox>
    </Form.Item>

Import Checkbox from antd if not already imported.
Run: npx tsc --noEmit
```

---

## P05 · ApproxCost Auto-Calculate (MEDIUM)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx

In handleAddOrUpdate(), find where approxCost is mapped to the row object.
Change it to auto-derive:
  approxCost: values.rate && values.qtyRequired
    ? parseFloat((values.rate * values.qtyRequired).toFixed(2))
    : null

Remove approxCost as a user-entered Form.Item if one exists in the entry form.
The AG Grid total column already computes rate × qty for display — now the stored value matches.

Run: npx tsc --noEmit
```

---

## P06 · View Modal — Add DRAWNO Column + Tooltip on Descriptions (MEDIUM + MINOR)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/pr-list/PRViewModal.tsx

1. Add DRAWNO column:
   Find the CAT column definition (dataIndex: 'catNo' or similar).
   Add a new column BEFORE it:
     { title: 'Draw No', dataIndex: 'drawNo', key: 'drawNo', width: 90 }

2. Tooltip on truncated descriptions:
   Find: { title: 'Description', dataIndex: 'itemName', key: 'itemName', ellipsis: true }
   Change render to:
     render: (text: string) => (
       <Tooltip title={text}>
         <span style={{ display: 'block', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
           {text}
         </span>
       </Tooltip>
     )
   Also apply same Tooltip pattern to Remarks column (ellipsis: true).

Import Tooltip from antd if not already imported.
Run: npx tsc --noEmit
```

---

## P07 · View Modal — ApproxCost Fallback (SUB-COST = 0 Fix) (MEDIUM)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/pr-list/PRViewModal.tsx

Find where line items are rendered in the modal table (the column showing approxCost or subCost).
The print already uses fallback: approxCost ?? (lastPoRate * qtyRequired).

Add a render function to the approxCost/subCost column:
  render: (val: number | null, row: any) => {
    const displayed = val && val > 0 ? val : (row.lastPoRate ?? 0) * (row.qtyRequired ?? 0)
    return displayed > 0 ? `₹ ${displayed.toLocaleString('en-IN', { minimumFractionDigits: 2 })}` : '—'
  }

Read the file first to identify the exact column field name and row type.
Run: npx tsc --noEmit
```

---

## P08 · Approval Status Section in PRHeaderCards (MEDIUM)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderCards.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx
  Development/spinrise-web/src/features/purchase-requisition/types.ts

Step 1 — Check PRHeaderResponse in types.ts for approval fields:
  Level1ApproverName, Level1ApprovedAt, Level2ApproverName, Level2ApprovedAt,
  FinalApproverName, FinalApprovedAt

Step 2 — Add optional props to PRHeaderCards interface:
  approvalVisible?: boolean
  level1ApproverName?: string | null
  level1ApprovedAt?: string | null
  level2ApproverName?: string | null
  level2ApprovedAt?: string | null
  finalApproverName?: string | null
  finalApprovedAt?: string | null

Step 3 — At the bottom of the PRHeaderCards return JSX, add:
  {approvalVisible && (level1ApproverName || level2ApproverName || finalApproverName) && (
    <div style={{ marginTop: 8, display: 'flex', gap: 8, flexWrap: 'wrap' }}>
      {level1ApproverName && <Tag color="blue">L1: {level1ApproverName} {level1ApprovedAt ? `(${level1ApprovedAt})` : ''}</Tag>}
      {level2ApproverName && <Tag color="geekblue">L2: {level2ApproverName} {level2ApprovedAt ? `(${level2ApprovedAt})` : ''}</Tag>}
      {finalApproverName  && <Tag color="green">Final: {finalApproverName} {finalApprovedAt ? `(${finalApprovedAt})` : ''}</Tag>}
    </div>
  )}

Step 4 — In PurchaseRequisitionEditPage.tsx, pass approval props to PRHeaderCards from loaded PR data.
  Gate on: preCheckResult?.approvalStatusVisible ?? false

Run: npx tsc --noEmit
```

---

## P09 · Backend — SubmitForApproval Handler in Service (HIGH)

```
File: Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs

SubmitForApproval bool already exists in CreatePRHeaderDto (line 42).
The frontend sends it as true when user clicks "Submit for Approval".

In CreateAsync(), after building the header entity, add:
  if (dto.SubmitForApproval)
      header.PrStatus = "P";  // P = Pending Approval (distinct from open "O")

Also do the same in UpdateAsync() — read dto.SubmitForApproval and set PrStatus = "P".

Then in the PR_STATUS_LABELS on the frontend (types.ts), confirm "P" maps to "Pending Approval":
  File: Development/spinrise-web/src/features/purchase-requisition/types.ts
  Find PR_STATUS_LABELS constant and add: P: 'Pending Approval'

Also in PurchaseRequisitionV2Page.tsx statusToStep function, map 'P' to step index 1 (Submitted).

Run backend: cd Development/Backend && dotnet build Spinrise.sln -q 2>&1 | grep "error CS"
Run frontend: cd Development/spinrise-web && npx tsc --noEmit
```

---

## P10 · Migrate Edit Page to V2 Components (HIGH)

```
File: Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx

Currently imports: PRHeaderV2, PRItemFormV2, PRItemTableV2 (old components)
Target: Replace with PRHeaderCards + PRLineItemsTable (V2 components used in V2Page)

Steps:
1. Remove imports: PRHeaderV2, PRItemFormV2, PRItemTableV2
2. Add imports: PRHeaderCards, PRLineItemsTable, PRActionBarV2
3. Read PurchaseRequisitionV2Page.tsx to understand how PRHeaderCards and PRLineItemsTable
   are wired (props, state, handlers) — mirror that pattern.
4. Key mappings from loaded PRHeaderResponse → PRHeaderCards form values:
   prDate, depCode, section, iType, reqName, refNo, poGroupCode, scopeCode
5. Key mappings from PRLineResponse[] → PRLineFormItem[] (use same mapSavedLine logic as V2Page)
6. On submit: call purchaseRequisitionApi.update(buildUpdatePayload(values))
7. Pass preCheckResult flags to PRHeaderCards (requireRequesterName, requireRefNo, etc.)

Read both files fully before starting. Mirror V2Page structure exactly.
Run: npx tsc --noEmit
```

---

## P11 · SubCostCode in Advanced Drawer (MEDIUM)

```
File: Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx

SubCostCode already exists in: PRLineFormItem type, CreatePRLineDto, emptyRow(), handleAddOrUpdate().
Only the UI control is missing from the Advanced Drawer.

In the Advanced Drawer form (search for drawerForm or the Drawer JSX):
Add Form.Item for subCostCode:
  <Form.Item name="subCostCode" label="Sub Cost Centre">
    <InputNumber style={{ width: '100%' }} min={0} precision={0} placeholder="Sub cost code…" />
  </Form.Item>

Check that drawerForm.getFieldsValue() already spreads subCostCode into the row on saveDrawer().
If not, add subCostCode to the saveDrawer mapping.

Run: npx tsc --noEmit
```

---

## P12 · Budget Balance Display in PRHeaderCards (MEDIUM)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderCards.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx

Step 1 — Check PRHeaderResponse in types.ts — confirm budgetBalance field exists.
Step 2 — Add to PRHeaderCards props:
  budgetValidationEnabled?: boolean
  budgetBalance?: number | null

Step 3 — In PRHeaderCards JSX, after the main form rows, add:
  {budgetValidationEnabled && budgetBalance != null && (
    <div style={{ display: 'flex', gap: 8, alignItems: 'center', marginTop: 4 }}>
      <span style={{ fontSize: 12, color: '#6b7280' }}>Budget Balance:</span>
      <Tag color={budgetBalance > 0 ? 'green' : 'red'}>
        ₹ {budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
      </Tag>
    </div>
  )}

Step 4 — Pass from V2Page: budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
  For new PR: budgetBalance is on the PreCheckResult response.
  For edit PR: budgetBalance is on the PRHeaderResponse.

Run: npx tsc --noEmit
```

---

## P13 · Per-Line API Deletion for Saved PRs (MEDIUM)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx

Step 1 — Add prop to PRLineItemsTable:
  savedPrNo?: number

Step 2 — Ensure PRLineFormItem has prSNo?: number (check types.ts).
  If missing, add it. Populate prSNo from PRLineResponse in mapSavedLine() in V2Page.

Step 3 — In PRLineItemsTable, in the row Delete handler:
  if (savedPrNo && row.prSNo) {
    // API delete with reason
    const reason = ... // show a Select modal for delete reason (use purchaseRequisitionApi.getDeleteReasons())
    await purchaseRequisitionApi.deleteLine(savedPrNo, row.prSNo, reason)
    remove row from local items state
  } else {
    // new unsaved row — just remove from local state (existing behaviour)
    onDelete(row.key)
  }

Step 4 — In PurchaseRequisitionV2Page.tsx, pass savedPrNo={savedPrNo ?? undefined} to PRLineItemsTable.

Run: npx tsc --noEmit
```

---

## P14 · GIN No + Requisition Type Header Fields (MEDIUM)

```
Files to read first:
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs
  Development/spinrise-web/src/features/purchase-requisition/types.ts
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderCards.tsx

GIN No:
Backend — Add to CreatePRHeaderDto + UpdatePRHeaderDto: public string? GinNo { get; set; }
  Map in PRMappings.ToEntity(). Add @GinNo param to ksp_PR_Insert + ksp_PR_Update SPs.
  Add GinNo to PRHeaderResponseDto + ksp_PR_GetById SP SELECT.
Frontend — Add ginNo?: string to PRHeaderFormValues + CreatePRRequest in types.ts.
  Add Form.Item name="ginNo" label="GIN No." (Input maxLength={20}) in PRHeaderCards Row 3.
  Include in buildPayload() in V2Page.

Requisition Type:
Backend — Add to CreatePRHeaderDto + UpdatePRHeaderDto: public string? RequisitionType { get; set; }
  (PRHeaderResponseDto.RequisitionType already exists — only write path is missing)
  Map in PRMappings.ToEntity(). Add @RequisitionType to ksp_PR_Insert + ksp_PR_Update SPs.
Frontend — Add requisitionType?: string to PRHeaderFormValues + CreatePRRequest.
  Add Form.Item name="requisitionType" label="Req. Type" (Input maxLength={10}) in PRHeaderCards.
  Include in buildPayload().

Update merged.sql after SP changes.
Run backend build + frontend tsc.
```

---

## P15 · Item Group Support (LOW)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/types.ts
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx
  Development/spinrise-web/src/features/purchase-requisition/api/lookupApi.ts

Step 1 — types.ts: Add itemGroup?: string to PRLineFormItem and ItemLookup.
Step 2 — PRLineItemsTable: When preCheckResult.itemGroupFilterEnabled is true,
  show a Select "Item Group" filter above the Item Code field in the entry form.
  Filter the item search results by selected itemGroup.
Step 3 — On item select (handleItemSelect), populate itemGroup from the selected ItemLookup.
Step 4 — Pass itemGroup in handleAddOrUpdate() row mapping.
Step 5 — lookupApi.ts: Add optional itemGroupCode param to searchItems() or getItems() call.

This is additive — read the existing item search implementation first.
Run: npx tsc --noEmit
```

---

## P16 · Manual PR Number Input (LOW)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderCards.tsx
  Development/spinrise-web/src/features/purchase-requisition/types.ts
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs

Frontend:
  Add manualPrNumberEnabled?: boolean to PRHeaderCardsProps.
  When true, make the PR No display editable: replace disabled Tag with InputNumber.
  Add manualPrNo?: number to PRHeaderFormValues and CreatePRRequest in types.ts.
  In PRHeaderCards, wire the InputNumber to form field 'manualPrNo'.
  In buildPayload() in V2Page, include manualPrNo.

Backend:
  Add public long? ManualPrNo to CreatePRHeaderDto.
  In PurchaseRequisitionService.CreateAsync(): when ManualPrNumberEnabled is true
  and dto.ManualPrNo has value, skip GetNextPrNumberAsync() and use dto.ManualPrNo.
  Add uniqueness check: if PR with that number already exists, return validation error.

Run backend + frontend type checks.
```

---

## P17 · SubCostCode Validation — Activate Dead Code (LOW)

```
File: Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs

In ValidateCreateLinesAsync(), after the CostCentreCode check block:
  if (line.SubCostCode.HasValue)
  {
      var exists = await _repo.SubCostExistsAsync(divCode, line.SubCostCode.Value);
      if (!exists)
          return (string.Format(PRMessages.SubCostRequired, line.SubCostCode), warnings);
  }

Check if SubCostExistsAsync exists in IPurchaseRequisitionRepository and PurchaseRequisitionRepository.
If missing, add it:
  Interface: Task<bool> SubCostExistsAsync(string divCode, long subCostCode)
  Repository: parameterized SP call — read existing CostCentreExistsAsync for pattern.
  SP: add ksp_PR_SubCostExists stored procedure following same EXISTS pattern as ksp_PR_CostCentreExists.
  Add constant to StoredProcedures.PurchaseRequisition in Constants.cs: SubCostExists = "ksp_PR_SubCostExists"
  Update merged.sql.

Run: dotnet build Spinrise.sln -q 2>&1 | grep "error CS"
```

---

## P18 · Item Purchase History — Wire PRRateHistoryModal (HIGH)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRRateHistoryModal.tsx
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx
  Development/spinrise-web/src/features/purchase-requisition/api/purchaseRequisitionApi.ts
  Development/spinrise-web/src/features/purchase-requisition/types.ts

Step 1 — Read PRRateHistoryModal.tsx to see current implementation (stub or real).
Step 2 — Check purchaseRequisitionApi.getItemHistory() exists and returns PRItemHistoryDto[].
Step 3 — PRLineItemsTable already calls getItemHistory (line 298) and sets historyData state.
  Verify historyData is passed as the data prop to PRRateHistoryModal.
Step 4 — PRRateHistoryModal should render a Table with columns:
  PR No, PO No, PO Date, Supplier, Rate (₹), Qty, Received Qty
  sourced from PRItemHistoryDto fields.
Step 5 — Check PRItemHistoryDto in types.ts — confirm all columns have matching fields.
  If fields missing, read the backend PRItemHistoryDto.cs and align.

Run: npx tsc --noEmit
```

---

## P19 · Backend SP — ksp_PR_GetItemHistory (HIGH)

```
File: Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_GetItemHistory.sql

Read the current SP content first.
The SP should return: PrNo, PoNo, PoDate, SupplierCode, SupplierName, Rate, Qty, ReceivedQty
by joining: po_ordl (PO lines) → po_ordh (PO header) → fa_slmas (supplier)
filtered by @DivCode and @ItemCode.

If SP is a stub or empty:
  SELECT
    h.prno        AS PrNo,
    o.ordno       AS PoNo,
    o.orddate     AS PoDate,
    s.slcode      AS SupplierCode,
    s.slname      AS SupplierName,
    l.rate        AS Rate,
    l.ordqty      AS Qty,
    l.rcvqty      AS ReceivedQty
  FROM po_ordl l
  JOIN po_ordh o ON o.divcode = l.divcode AND o.ordno = l.ordno
  JOIN fa_slmas s ON s.divcode = o.divcode AND s.slcode = o.slcode
  WHERE l.divcode = @DivCode AND l.itemcode = @ItemCode
  ORDER BY o.orddate DESC

Update merged.sql after changes.
```

---

## P20 · Pending Qty in Item Search Lookup (HIGH)

```
Files:
  Development/Backend/Spinrise.Infrastructure/Areas/Common/Lookup/LookupRepository.cs
  Development/Backend/Spinrise.API/Areas/Common/LookupController.cs (check path)
  Development/spinrise-web/src/features/purchase-requisition/api/lookupApi.ts
  Development/spinrise-web/src/features/purchase-requisition/types.ts
  Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_GetItemsEnriched.sql

Step 1 — Read ksp_GetItemsEnriched.sql — confirm it returns pendingPrQty, pendingPoQty per item.
Step 2 — Read LookupRepository.cs — confirm GetItemsEnriched method exists and maps those fields.
Step 3 — Read LookupController — confirm endpoint accepts depCode param and calls GetItemsEnriched.
Step 4 — In types.ts, add to ItemLookup: pendingPrQty?: number, pendingPoQty?: number.
Step 5 — In PRLineItemsTable item search dropdown (Select with showSearch), update option render:
  When pendingPrQty > 0, show a warning tag: <Tag color="orange">PR Pending: {opt.pendingPrQty}</Tag>
  When pendingPoQty > 0, show: <Tag color="blue">PO Pending: {opt.pendingPoQty}</Tag>

Pass depCode as a param to the item lookup API call.
Run: dotnet build + npx tsc --noEmit
```

---

## P21 · Status Fix — prstatus='C' = Received (CRITICAL)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/types.ts
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs

Frontend — In types.ts, find PR_STATUS_LABELS constant.
Verify: 'C' maps to 'Received' (NOT 'Cancelled').
VB6 source truth: PRSTATUS='C' = Received. Cancelled = QTYREQD=0.

If 'C' is currently mapped to 'Cancelled', correct it to 'Received'.
Find where cancelled state is derived and confirm it uses a different flag (QtyRequired = 0 or CancelFlag).

Backend — In PurchaseRequisitionService.cs, find any method that evaluates prstatus for status labels.
Confirm 'C' → "Received" mapping is correct in the service layer too.

Read the SP ksp_PR_GetById.sql to confirm what PRSTATUS value the SP returns for received records.
```

---

## P22 · FY Date Fix + Post-Save Reload (CRITICAL)

```
Files:
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRLineItemsTable.tsx
  Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx

FY Date Fix — PRLineItemsTable:
  Find the yfDate/ylDate calculation (financial year bounds for Required Date picker).
  Current likely uses: prDate to prDate+1year.
  Correct logic: FY runs Apr 1 – Mar 31.
    const prDay = dayjs(prDate)
    const yfDate = prDay.month() >= 3
      ? prDay.startOf('year').month(3).date(1)           // Apr 1 current year
      : prDay.startOf('year').subtract(1,'year').month(3).date(1)  // Apr 1 prev year
    const ylDate = yfDate.add(1,'year').subtract(1,'day')          // Mar 31

Post-Save Reload — PurchaseRequisitionV2Page.tsx:
  After successful purchaseRequisitionApi.create(payload) → call getById(result.prNo).
  Update items state with the returned line data (so prSNo fields are populated).
  After successful purchaseRequisitionApi.update(...) → same pattern.
  This ensures saved line prSNo values are available for per-line deletion.

Run: npx tsc --noEmit
```

---

## P23 · Category Code Full Stack (HIGH)

```
Read these files first:
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRLineDto.cs
  Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs
  Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/ksp_PR_InsertLine.sql

CreatePRLineDto.CategoryCode already exists (StringLength 1).
Check ksp_PR_InsertLine.sql — confirm @CATCODE parameter exists.
If missing, add @CATCODE CHAR(1) = NULL parameter and INSERT it to po_prl.catcode.

Check PurchaseRequisitionRepository InsertLineAsync — confirm @CATCODE is mapped.
If missing, add: new { ..., CATCODE = line.CategoryCode }.

Frontend:
  types.ts — confirm categoryCode exists in PRLineFormItem (it should).
  PRLineItemsTable — confirm the "Category code" Input in Advanced Drawer is named 'categoryCode'.
  If yes, no frontend changes needed. If no, add Form.Item name="categoryCode".

Update merged.sql after any SP changes.
Run: dotnet build + npx tsc --noEmit
```

---

## P24 · Header Fields — ScopeCode, PoGroupCode, SaleOrderNo (HIGH)

```
Read these files first:
  Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs
  Development/spinrise-web/src/features/purchase-requisition/components/v2/PRHeaderCards.tsx
  Development/spinrise-web/src/features/purchase-requisition/types.ts (PRHeaderFormValues)

Check which of these already exist in CreatePRHeaderDto:
  ScopeCode, PoGroupCode, SaleOrderNo, SaleOrderDate

Check which are already in PRHeaderFormValues and PRHeaderCards form.
For any missing from the UI form, add Form.Item controls in PRHeaderCards:
  - scopeCode:    Input maxLength={10} label="Scope Code"
  - poGroupCode:  Input maxLength={10} label="PO Group"
  - saleOrderNo:  Input maxLength={20} label="Sale Order No."
  - saleOrderDate: DatePicker label="Sale Order Date"

Ensure buildPayload() in PurchaseRequisitionV2Page.tsx includes all four fields.
Run: npx tsc --noEmit
```

---

## P25 · IType Length Fix + Remarks Length Align (LOW)

```
File: Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs

Find IType property. If StringLength is 2, change to StringLength(1) — VB6 field is CHAR(1).

File: Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRLineDto.cs

Find Remarks property. If StringLength is 50, check po_prl remarks column length in DB.
If DB column is 100 chars, change to StringLength(100).

Run: dotnet build Spinrise.sln -q 2>&1 | grep "error CS"
```

---

## EXECUTION ORDER

```
WEEK 1 — Day 1  : P01 P02 P25
WEEK 1 — Day 2  : P03 P04 P05 P06 P07
WEEK 1 — Day 3  : P08 P09 P21 P22
WEEK 2 — Day 1  : P10 P11 P12
WEEK 2 — Day 2  : P13 P14 P23 P24
WEEK 2 — Day 3  : P18 P19 P20
WEEK 3 — Day 1  : P15 P16 P17
WEEK 3 — Day 2  : Deploy + CEO demo prep
```
