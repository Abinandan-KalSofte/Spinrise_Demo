# M02 — RMI Purchase Order: Implementation Fix Planner

**10 fixes. Each prompt is self-contained — paste directly into a new Claude Code session.**

---

## Execution Order

| Phase | Fix | Dependency |
|---|---|---|
| **Run first** | FIX-09 (verify view) | None — unblocks FIX-02 |
| **SP layer** | FIX-01, FIX-02, FIX-10 | FIX-09 must pass first |
| **Backend DTO** | FIX-04, FIX-06, FIX-08 | After SP changes deployed |
| **Frontend logic** | FIX-03, FIX-04, FIX-05, FIX-07 | After FIX-01 (needs isIntraState) |
| **Frontend validation** | FIX-07, FIX-08 | Independent |

> **Every session**: after SP changes, update `merged_jat.sql` and deploy to JAT DB in SSMS before testing.

---

## FIX-01 — GST Config SP: Add Interstate Determination

**Severity**: Critical — GST rates never auto-fill correctly without this.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetGSTConfig.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs` → `GSTConfigDto`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/IPurchaseOrderRepository.cs`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/IPurchaseOrderService.cs`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs`
- Infrastructure `PurchaseOrderRepository` → `GetGSTConfigAsync`
- `Development/Backend/Spinrise.API/Areas/Purchase/Controllers/PurchaseOrderController.cs`
- `Development/spinrise-web/src/features/purchase-order/types.ts` → `GSTConfigDto`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`

**Root cause**: `ksp_RMI_PO_GetGSTConfig` only returns raw `FA_SLMAS` columns. The frontend uses `suppType === 'I'` which is always false (`SuppType` is `R`/`U`/`C`). Interstate determination requires comparing `FA_SLMAS.GSTSTATECODE` vs `PP_DIVMAS.GSTSTATECODE` for the division.

**Legacy rule** (VB6 lines 3996–4000):
```
JOIN PP_DIVMAS ON PP_DIVMAS.DIVCODE = @DivCode
             AND PP_DIVMAS.GSTSTATECODE = FA_SLMAS.GSTSTATECODE
→ Row found    = same state = INTRASTATE → CGST + SGST
→ No row found = different  = INTERSTATE → IGST only
→ STATE_FLAG='F' (foreign)  = all GST zero, skip comparison
```

**Prompt**:

```
You are working on the M02 RMI Purchase Order module in a .NET Core + React ERP.
Database: JAT (172.16.16.52\sql2016). All SPs use CREATE OR ALTER PROCEDURE.

PROBLEM: ksp_RMI_PO_GetGSTConfig currently only returns raw FA_SLMAS columns.
It does NOT determine whether a supplier is intrastate or interstate.
The frontend uses suppType === 'I' to decide, which is always false
(suppType is 'R'/'U'/'C', never 'I').

LEGACY LOGIC (from VB6 source):
  Step 1: Fetch FA_SLMAS.GSTSTATECODE + IG_STATE.STATE_FLAG for supplier.
           If STATE_FLAG = 'F' (foreign) → IsIntraState = 0, skip Step 2.
  Step 2: JOIN PP_DIVMAS ON PP_DIVMAS.DIVCODE = @DivCode
           AND PP_DIVMAS.GSTSTATECODE = FA_SLMAS.GSTSTATECODE
           If the JOIN finds a row → same state → IsIntraState = 1 (CGST+SGST)
           Else → different state → IsIntraState = 0 (IGST only)

TASK: Make these changes across all layers:

1. REWRITE ksp_RMI_PO_GetGSTConfig in
   Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetGSTConfig.sql
   New signature: @SupplierCode VARCHAR(10), @DivCode VARCHAR(2)
   Add columns to output: IsIntraState BIT (1=intrastate, 0=interstate), StateFlag CHAR(1)
   Keep existing columns: GstStateCode, GstInNo, SuppType, StateCode
   Use CREATE OR ALTER PROCEDURE. No IF blocks in the SELECT — use CASE expression.
   Also update the same SP in Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql
   (find and replace the existing ksp_RMI_PO_GetGSTConfig block).

2. UPDATE Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs
   In GSTConfigDto, add:
     public bool   IsIntraState { get; set; }
     public string StateFlag    { get; set; } = string.Empty;

3. UPDATE Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/IPurchaseOrderRepository.cs
   Change signature of GetGSTConfigAsync:
     Task<GSTConfigDto?> GetGSTConfigAsync(string supplierCode, string divCode);

4. UPDATE IPurchaseOrderService.cs (same folder pattern):
   Change: Task<GSTConfigDto?> GetGSTConfigAsync(string supplierCode, string divCode);

5. UPDATE PurchaseOrderService.cs:
   Change: public Task<GSTConfigDto?> GetGSTConfigAsync(string supplierCode, string divCode)
       => _repo.GetGSTConfigAsync(supplierCode, divCode);

6. UPDATE PurchaseOrderRepository (Infrastructure layer, find the GetGSTConfigAsync method):
   Change SP call to pass @DivCode as additional parameter.
   Map new IsIntraState and StateFlag columns from result.

7. UPDATE PurchaseOrderController.cs (GetGSTConfig action):
   Pass RequireDivCode() as second argument to GetGSTConfigAsync.
   The GET endpoint stays at api/v1/rmi/po/gst-config?supplierCode=XXX (no change to URL).

8. UPDATE Development/spinrise-web/src/features/purchase-order/types.ts
   In GSTConfigDto interface, add: isIntraState: boolean; stateFlag: string

9. UPDATE Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts
   In blankLine(gstConfig): replace `const interstate = gstConfig?.suppType === 'I'`
   with: `const interstate = !(gstConfig?.isIntraState ?? false)`
   In addPRLines: same replacement.

10. The API call in purchaseOrderApi.ts does not need to change — divCode is read
    from the JWT on the server side.

After all changes, GST auto-fill in the variety line grid will use the correct
isIntraState flag from the real PP_DIVMAS vs FA_SLMAS state code comparison.
```

---

## FIX-02 — PR Lines SP: Return Both Balance Fields (Candy + Kg)

**Severity**: Critical — PR balance check uses KG value as candy qty.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetPendingPRLines.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_FilterPRLines.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs` → `PRLineDto`
- `Development/spinrise-web/src/features/purchase-order/types.ts` → `PRLineDto`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`
- `Development/spinrise-web/src/features/purchase-order/components/po-form/PRLinePickerModal.tsx`

**Root cause**: SP returns `qtyindKG - qtyordKG` as `BalanceQty`. The VB6 source (line 5636) uses both `qtyind - qtyord` (candy) and `qtyindKG - qtyordKG` (kgs) separately.

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database).

PROBLEM: ksp_RMI_PO_GetPendingPRLines returns:
  (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)) AS BalanceQty
This is the KG balance, NOT the candy balance.
The frontend assigns this to ordQty (candy units), causing wrong quantities.

LEGACY SOURCE RULE (VB6 line 5636):
  SELECT ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,
         ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) BALQTYKG
  FROM Rm_PRL WHERE ...
Both BALQTY (candy) and BALQTYKG (kgs) are used separately:
- BALQTY checked against ordQty (candy)
- BALQTYKG checked against ordKgs (kg)

TASK — change these files:

1. Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetPendingPRLines.sql
   In the SELECT, replace the single BalanceQty column with two columns:
     (ISNULL(l.qtyind,   0) - ISNULL(l.qtyord,   0))   AS BalanceQty,
     (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0))   AS BalanceQtyKg,
   Update WHERE clause to filter rows where EITHER balance > 0:
     AND (   (ISNULL(l.qtyind,   0) - ISNULL(l.qtyord,   0))   > 0
          OR (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0))   > 0 )

2. Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_FilterPRLines.sql
   Apply the identical column change and WHERE clause change.

3. Update both SPs in merged_jat.sql (find and replace each block).

4. Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs
   In PRLineDto, add: public decimal BalanceQtyKg { get; set; }
   BalanceQty stays as the candy field (rename its Dapper mapping if needed).

5. Development/spinrise-web/src/features/purchase-order/types.ts
   In PRLineDto interface, add: balanceQtyKg: number

6. Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts
   In addPRLines(), change the new line mapping:
     ordQty:  pr.balanceQty,                  ← candy balance (correct)
     ordKgs:  Math.round(pr.balanceQtyKg),    ← kg balance from new field
   Remove the old: ordKgs: Math.round(pr.balanceQty * 180)

7. Development/spinrise-web/src/features/purchase-order/components/po-form/PRLinePickerModal.tsx
   Add a "Balance (Kg)" column to the picker table showing pr.balanceQtyKg
   alongside the existing "Balance Qty" (candy) column.
```

---

## FIX-03 — Variety Auto-Fill: HSN + GST Rates from RM_VAR on Selection

**Severity**: Critical — GST rates are never populated from master data.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_GetVarieties.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`
- `Development/spinrise-web/src/features/purchase-requisition/types.ts` → `VarietyLookup`
- `Development/spinrise-web/src/shared/lookup/api/lookupApi.ts`
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POLineItemsTable.tsx`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`
- `Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderNewPage.tsx`

**Root cause**: `ksp_RMI_GetVarieties` does not return HSN/GST fields. `VarietyCell.handleSelect` already writes these fields but they are empty. Additionally, GST rates must be shaped by `isIntraState` (requires FIX-01 first).

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database, React + .NET Core).
Prerequisite: FIX-01 must be complete (isIntraState field exists in GSTConfigDto).

PROBLEM: When a user selects a variety in the POLineItemsTable grid, only
varCode and varName are filled. HSN, CGST%, SGST%, IGST%, TaxCode should
auto-fill from RM_VAR — but they don't because the variety lookup SP
does not return these fields.

LEGACY RULE (VB6 lines 6066–6098):
  After variety code entry, query rm_var:
    SELECT HSN, varcode, varname, CGSTper, SGSTper, IGSTper, taxcode
    FROM rm_var WHERE varcode = @code AND isnull(Is_Active,'N') = 'Y'
  Then:
    IF IGSTFLG = 'Y' (intrastate):  CGST=CGSTper, SGST=SGSTper, IGST=0
    ELSE (interstate):               CGST=0, SGST=0, IGST=IGSTper
  TaxCode and HSN always auto-fill regardless of IGST flag.

TASK:

1. Read ksp_RMI_GetVarieties.sql. If the SELECT does not return HSN, CGSTper,
   SGSTper, IGSTper, TaxCode from rm_var — add them. Keep Is_Active filter.
   Update merged_jat.sql.

2. Read the VarietyLookup interface in purchase-requisition/types.ts.
   Add missing fields if not present:
     hsnCode:  string
     cgstPer:  number
     sgstPer:  number
     igstPer:  number
     taxCode:  string
   Map them from the SP response in the Lookup service/repository layer.

3. In POLineItemsTable.tsx, change VarietyCell to accept a new prop:
     isIntraState: boolean
   In handleSelect, apply the intrastate rule before calling onUpdate:
     const gstPatch = isIntraState
       ? { cgstPer: opt.item.cgstPer, sgstPer: opt.item.sgstPer, igstPer: 0 }
       : { cgstPer: 0, sgstPer: 0, igstPer: opt.item.igstPer }
   Always include hsn and taxCode in the patch regardless.
   Update VarietyCell props and pass isIntraState through from POLineItemsTable props.

4. Add isIntraState: boolean to POLineItemsTable Props interface.
   Pass it to each VarietyCell render.

5. In PurchaseOrderNewPage.tsx, derive:
     const isIntraState = gstConfig?.isIntraState ?? false
   Pass it down to POLineItemsTable.

6. In usePurchaseOrderForm.ts, remove hardcoded GST defaults (2.5/5) from
   blankLine() and addPRLines() — set them to 0. The variety selection will
   populate them via the auto-fill. In addPRLines(), after building newLines,
   add a comment: // GST rates will auto-fill when variety is confirmed via VarietyCell.
```

---

## FIX-04 — rateKg: Remove Hardcoded /180, Use RM_RATEUNIT Value

**Severity**: High — silently wrong for any non-candy UOM.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetParam.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs` → `POParamDto`, `PODefaultsDto`
- `Development/spinrise-web/src/features/purchase-order/types.ts` → `PODefaultsDto`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POLineItemsTable.tsx`
- `Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderNewPage.tsx`

**Root cause**: `rateKg = candyRate / 180` hardcoded in two places. Legacy fetches `rm_rateunit.value` by `unitname` and divides. Formula: `ROUND(candyRate / rm_rateunit.value, 5)`.

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database, .NET Core, React).

PROBLEM: rateKg is hardcoded as candyRate / 180 in:
  - usePurchaseOrderForm.ts: addPRLines()
  - POLineItemsTable.tsx: candyRate onChange and ordQty onChange

LEGACY RULE (VB6 lines 4679–4682):
  rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'"
  rscont("ratekg") = Round(val(rscont("candyrate") / rsg("value")), 5)
  'value' is the divisor (180 for candy = 180 kg/candy).

TASK:

1. Read ksp_RMI_PO_GetParam.sql fully before editing.
   Add a second result set (or extend existing SELECT) to also return the
   default rate unit value:
     SELECT TOP 1 ISNULL(unitname,'CANDY') AS DefaultRateUnit,
                  ISNULL(value, 180)       AS DefaultRateUnitValue
     FROM rm_rateunit
     ORDER BY (SELECT NULL)   -- or by primary key if one exists
   If rm_rateunit has a 'isdefault' or similar flag, use it for ordering.
   IMPORTANT: First run SELECT TOP 1 * FROM rm_rateunit to verify actual columns.
   Update merged_jat.sql.

2. In PODtos.cs, add to PODefaultsDto:
     public string  DefaultRateUnit      { get; set; } = "CANDY";
     public decimal DefaultRateUnitValue { get; set; } = 180m;

3. In PurchaseOrderService.cs GetDefaultsAsync():
   Also set DefaultRateUnit and DefaultRateUnitValue from param result.

4. In types.ts, add to PODefaultsDto interface:
   defaultRateUnit:      string
   defaultRateUnitValue: number

5. In usePurchaseOrderForm.ts:
   Add state: const [rateUnitValue, setRateUnitValue] = useState<number>(180)
   In the useEffect that loads defaults:
     setRateUnitValue(def.defaultRateUnitValue ?? 180)
   Replace all instances of / 180 with / rateUnitValue
   Replace all instances of * 180 with * rateUnitValue
   Return rateUnitValue from the hook.

6. In POLineItemsTable.tsx:
   Add prop: rateUnitValue: number
   In candyRate onChange: replace rate / 180 with parseFloat((rate / rateUnitValue).toFixed(4))
   In ordQty onChange: replace qty * 180 with Math.round(qty * rateUnitValue)

7. In PurchaseOrderNewPage.tsx:
   Destructure rateUnitValue from usePurchaseOrderForm().
   Pass it to POLineItemsTable as a prop.
```

---

## FIX-05 — CommPer / CommPerBal Mutual Exclusion

**Severity**: High — wrong data can be submitted with both fields populated.

**Files**:
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`

**Root cause**: No `onChange` enforcement. VB6 `Combo10_Click` / `Combo10_Change` handlers zero out the other field when either is entered.

**Prompt**:

```
You are working on M02 RMI Purchase Order frontend (React + Ant Design 5).

PROBLEM: commPer (Commission %) and commPerBal (Commission per Bale) are
mutually exclusive. VB6 rule: if commPer > 0 → reset commPerBal to 0;
if commPerBal > 0 → reset commPer to 0. Not enforced in the current UI.

TASK — two changes only:

1. In Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx:

   On the commPer InputNumber, add:
     onChange={(val) => {
       if ((val ?? 0) > 0) form.setFieldValue('commPerBal', 0)
     }}

   On the commPerBal InputNumber, add:
     onChange={(val) => {
       if ((val ?? 0) > 0) form.setFieldValue('commPer', 0)
     }}

2. In Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts,
   in doCreate(), after the existing line-count check, add a guard before setSaving(true):
     if (hv.commPer > 0 && hv.commPerBal > 0) {
       void message.error('Commission % and Commission per Bale are mutually exclusive.')
       return
     }
```

---

## FIX-06 — Add Missing Header Fields to DTO and Form

**Severity**: High — key operational fields lost on every save.

**Files**:
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs` → `CreatePODto`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_Insert.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`
- Infrastructure `PurchaseOrderRepository` → `InsertLineAsync`
- `Development/spinrise-web/src/features/purchase-order/types.ts` → `CreatePORequest`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts` → `POHeaderFormValues`, `doCreate`
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx`
- `Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderNewPage.tsx`

**Missing fields** (confirmed column names from VB6 source + RM_CONT schema):

| Field | RM_CONT Column | Default |
|---|---|---|
| Agent/Broker | `brkcd` | null |
| Billing Address | `billadd` | null |
| Header Delivery Address | `deladd` | null |
| Purchase Type | `purtype` | null |
| Arrival Type | `arrivaltype` | `'P'` |
| Rate UOM | `rateunit` | `'CANDY'` |
| Remarks | `REMARKS` | null |
| Tax Mode | `TAX_CHOICE` | `'SINGLE'` |

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database, .NET Core, React).

PROBLEM: Eight fields that exist in RM_CONT are missing from CreatePODto,
the form, and ksp_RMI_PO_Insert. They must be added across all layers.

Fields to add (exact RM_CONT column names from VB6 source):
  brkcd         VARCHAR       Agent/broker code
  billadd       VARCHAR       Billing address code
  deladd        VARCHAR       Header delivery address code
  purtype       VARCHAR       Purchase type code
  arrivaltype   CHAR(1)       'P'=pack-wise / 'K'=kg-wise (default 'P')
  rateunit      VARCHAR       Rate UOM (default 'CANDY')
  Remarks       VARCHAR(200)  Free-text remarks
  TAX_CHOICE    CHAR(6)       'SINGLE' or 'COMMON' (default 'SINGLE')

TASK:

1. In PODtos.cs, add to CreatePODto:
     public string? BrkCd      { get; set; }
     public string? BillAdd    { get; set; }
     public string? DelAdd     { get; set; }
     public string? PurType    { get; set; }
     public string  ArrivalType{ get; set; } = "P";
     public string  RateUnit   { get; set; } = "CANDY";
     public string? Remarks    { get; set; }
     public string  TaxChoice  { get; set; } = "SINGLE";

2. Read ksp_RMI_PO_Insert.sql fully before editing.
   Add the 8 new @parameters and include them in the INSERT INTO RM_CONT.
   Use defaults: @ArrivalType = 'P', @RateUnit = 'CANDY', @TaxChoice = 'SINGLE'.
   Update merged_jat.sql.

3. In PurchaseOrderRepository InsertLineAsync, append to the Dapper parameter object:
     BrkCd      = header.BrkCd,
     BillAdd    = header.BillAdd,
     DelAdd     = header.DelAdd,
     PurType    = header.PurType,
     ArrivalType= header.ArrivalType,
     RateUnit   = header.RateUnit,
     Remarks    = header.Remarks,
     TaxChoice  = header.TaxChoice,

4. In types.ts, add to CreatePORequest:
     brkCd?:      string
     billAdd?:    string
     delAdd?:     string
     purType?:    string
     arrivalType: string
     rateUnit:    string
     remarks?:    string
     taxChoice:   string

5. In usePurchaseOrderForm.ts, add to POHeaderFormValues:
     brkCd: string; billAdd: string; delAdd: string; purType: string
     arrivalType: string; remarks: string
   In doCreate() payload, map the new fields from hv.

6. In POHeaderForm.tsx, add to the Basic Details card:
   - Input for brkCd with label "Broker Code"
   - Input for billAdd with label "Billing Address"
   - Input for delAdd with label "Delivery Address"
   - Input for purType with label "Purchase Type"
   - Input.TextArea (rows=2) for remarks with label "Remarks"
   - Radio.Group for arrivalType: value='P' label='Pack-wise', value='K' label='Kg-wise'
   Keep existing Row/Col layout and FL helper style.

7. In PurchaseOrderNewPage.tsx useEffect defaults, add:
   arrivalType: 'P', taxChoice: 'SINGLE', rateUnit: 'CANDY'
```

---

## FIX-07 — Block Duplicate Variety Codes in Line Table

**Severity**: High — violates core PO integrity rule.

**Files**:
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`

**Root cause**: `updateLine` and `addPRLines` do not check for duplicate `varCode`. VB6 explicitly blocks duplicate variety rows before save.

**Prompt**:

```
You are working on M02 RMI Purchase Order frontend.

PROBLEM: POLineItemsTable allows adding the same varCode twice.
Legacy VB6 blocks duplicate variety rows (checks grid before adding row).

TASK — change one file only:
Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts

1. In updateLine(), when patch contains a non-empty varCode, add a duplicate check
   inside the setLines callback before the map:
     if (patch.varCode && patch.varCode.trim()) {
       const duplicate = prev.some(
         (l) => l.key !== key &&
                l.varCode.trim().toUpperCase() === patch.varCode!.trim().toUpperCase()
       )
       if (duplicate) {
         void message.error(`Variety ${patch.varCode} is already in the order.`)
         return prev
       }
     }

2. In addPRLines(), replace the existing existingKeys duplicate check
   (which uses varCode+prNo+prSno) with a simpler varCode-only check:
     const existingVarCodes = new Set(lines.map((l) => l.varCode.trim().toUpperCase()))
     const toAdd = selected.filter(
       (pr) => !existingVarCodes.has(pr.varCode.trim().toUpperCase())
     )
     if (toAdd.length < selected.length) {
       void message.warning(
         `${selected.length - toAdd.length} variety(ies) skipped — already in order.`
       )
     }
   Use toAdd instead of the old filtered list for building newLines.

No other files need to change.
```

---

## FIX-08 — Validate LotFrom ≤ LotTo + SuppLotNoReqArrival Enforcement

**Severity**: High — lot range saved to DB without validation.

**Files**:
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs` → `PODefaultsDto`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs`
- `Development/spinrise-web/src/features/purchase-order/types.ts` → `PODefaultsDto`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`

**Root cause**: `PODefaultsDto` does not expose `RequireSupplierLotNo`. Frontend and service both skip lot validation.

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database, .NET Core, React).

BUSINESS RULES (VB6 source, section 7.2):
  1. When RM_PARAM.SuppLotNoReqArrival = 'Y':
       lotFrom and lotTo are MANDATORY (cannot be 0 or empty)
  2. lotFrom cannot exceed lotTo (always, regardless of flag)

CONTEXT:
  RM_PARAM.SuppLotNoReqArrival maps to POParamDto.RequireSupplierLotNo (bool).
  PODefaultsDto currently does NOT expose this flag.

TASK:

1. In PODtos.cs, add to PODefaultsDto:
     public bool RequireSupplierLotNo { get; set; }

2. In PurchaseOrderService.cs GetDefaultsAsync():
   Add: RequireSupplierLotNo = param?.RequireSupplierLotNo ?? false

3. In types.ts, add to PODefaultsDto:
   requireSupplierLotNo: boolean

4. In usePurchaseOrderForm.ts doCreate(), after the line-count check,
   add before setSaving(true):
     if ((hv.lotFrom > 0 || hv.lotTo > 0) && hv.lotFrom > hv.lotTo) {
       void message.error('Lot From cannot be greater than Lot To.')
       return
     }
     if (defaults?.requireSupplierLotNo) {
       if (!hv.lotFrom || hv.lotFrom <= 0) {
         void message.error('Supplier Lot No. From is mandatory.')
         return
       }
       if (!hv.lotTo || hv.lotTo <= 0) {
         void message.error('Supplier Lot No. To is mandatory.')
         return
       }
     }

5. In PurchaseOrderService.cs CreateAsync(), after the PRBased validations, add:
     if (param?.RequireSupplierLotNo == true)
     {
         if (dto.LotFrom <= 0)
             return (false, "Supplier Lot No. From is required (RM_PARAM: SuppLotNoReqArrival).", null, warnings);
         if (dto.LotTo <= 0)
             return (false, "Supplier Lot No. To is required (RM_PARAM: SuppLotNoReqArrival).", null, warnings);
     }
     if (dto.LotFrom > 0 && dto.LotTo > 0 && dto.LotFrom > dto.LotTo)
         return (false, "Lot From cannot be greater than Lot To.", null, warnings);
```

---

## FIX-09 — Verify VW_rm_SupplierVariety Columns

**Severity**: Blocking deployment — runtime failure if columns don't match.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/99-Verification/verify_VW_rm_SupplierVariety.sql` *(new)*
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_GetPendingPRLines.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_FilterPRLines.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`

**Root cause**: SP comments say "column names need verification". If `VW_rm_SupplierVariety.MSDOCNO`, `MSDOCSNO`, `CANDYRATE` don't exist with those exact names on the live JAT DB, both PR Lines SPs fail silently or throw.

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database: 172.16.16.52\sql2016, DB=JAT).

PROBLEM: ksp_RMI_PO_GetPendingPRLines and ksp_RMI_PO_FilterPRLines both
LEFT JOIN VW_rm_SupplierVariety using columns MSDOCNO, MSDOCSNO, CANDYRATE.
These column names are unconfirmed against the live database.

TASK:

1. Create a new verification script at:
   Development/Backend/Spinrise.DBScripts/M02-JAT/99-Verification/verify_VW_rm_SupplierVariety.sql
   
   Contents:
   /* Expected columns based on VB6 source (SP_PRToPO_RMI):
      supcd, varcode, plant, MSDOCNO (or MSDocNo), MSDOCSNO (or MSDocSno), CANDYRATE
      If actual column names differ, update the column aliases in:
        ksp_RMI_PO_GetPendingPRLines.sql  (ISNULL(rm.MSDOCNO,...) etc.)
        ksp_RMI_PO_FilterPRLines.sql      (same)
      Then rebuild merged_jat.sql.
   */
   
   -- Step 1: Check the view exists
   SELECT OBJECT_ID('dbo.VW_rm_SupplierVariety') AS ViewObjectId;
   
   -- Step 2: List actual columns
   SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE TABLE_NAME = 'VW_rm_SupplierVariety'
   ORDER BY ORDINAL_POSITION;
   
   -- Step 3: Sample rows
   SELECT TOP 5 * FROM dbo.VW_rm_SupplierVariety;

2. Add a defensive guard at the top of ksp_RMI_PO_GetPendingPRLines.sql
   (inside the SP body, before the main SELECT):
     IF OBJECT_ID('dbo.VW_rm_SupplierVariety') IS NULL
     BEGIN
         RAISERROR('VW_rm_SupplierVariety does not exist. Run verify_VW_rm_SupplierVariety.sql.', 16, 1);
         RETURN;
     END

3. Apply the same guard to ksp_RMI_PO_FilterPRLines.sql.

4. Update merged_jat.sql with both SP changes.
```

---

## FIX-10 — Confirm ksp_RMI_PO_Delete Checks RM_Arrival

**Severity**: High — cancelled POs with arrivals corrupt GRN chain.

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_Delete.sql`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`

**Root cause**: Legacy blocks delete if `RM_Arrival` has any row for the PO. The soft-cancel SP may not enforce this.

**Prompt**:

```
You are working on M02 RMI Purchase Order (JAT database).

BUSINESS RULE (VB6 source, Delete mode):
  Delete is only allowed when NO arrival record exists for the PO.
  Query used in legacy (line 4130): PO must NOT appear in RM_Arrival.
  Simplified: if any row exists in RM_Arrival WHERE divcode=@DivCode
  AND CONTNO=@ContNo AND CONTDT=@ContDt → block the cancel with an error.

TASK:

1. Read ksp_RMI_PO_Delete.sql in full before making any change.

2. If the SP does NOT already check RM_Arrival, add this block at the very
   start of the SP body (before any UPDATE statement):

     DECLARE @ArrivalCount INT = 0;
     SELECT @ArrivalCount = COUNT(*)
     FROM   dbo.RM_Arrival
     WHERE  divcode = @DivCode
       AND  CONTNO  = @ContNo
       AND  CONTDT  = @ContDt;

     IF @ArrivalCount > 0
     BEGIN
         RAISERROR('Cannot cancel: arrival records exist for this Purchase Order.',16,1);
         RETURN;
     END

3. Also check if the SP guards against double-cancellation. If not, add:

     IF NOT EXISTS (
         SELECT 1 FROM dbo.RM_CONT
         WHERE divcode = @DivCode AND CONTNO = @ContNo AND CONTDT = @ContDt
           AND ISNULL(CancelFlg,'N') <> 'Y'
     )
     BEGIN
         RAISERROR('Purchase Order is already cancelled.',16,1);
         RETURN;
     END

4. Update merged_jat.sql with the revised SP.

5. In PurchaseOrderService.cs DeleteAsync(), the existing try/catch already
   propagates SqlException messages as the error string — no change needed.
   Confirm this is the case and leave it as-is.
```

---

*Generated: 2026-04-29 | Module: M02 RMI Purchase Order | DB: JAT*
