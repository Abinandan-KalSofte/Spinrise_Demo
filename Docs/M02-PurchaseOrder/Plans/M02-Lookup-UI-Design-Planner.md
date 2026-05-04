# M02 — RMI Purchase Order: Lookup & UI Design Planner

**7 prompts covering missing lookup infrastructure and UI component upgrades.
Each prompt is self-contained — paste directly into a new Claude Code session.**

Run these AFTER the 10 fixes in `M02-Implementation-Fix-Planner.md` are complete,
or run LOOKUP-01 in parallel (it has no dependency on any FIX-* prompt).

---

## Execution Order

| Phase | Task | Dependency |
|---|---|---|
| **Lookup SP layer** | LOOKUP-01 | None — run first or in parallel |
| **Lookup backend** | LOOKUP-02 | After LOOKUP-01 SPs deployed to JAT |
| **Lookup frontend** | LOOKUP-03 | After LOOKUP-02 |
| **Form upgrades** | UI-01, UI-02, UI-03 | After LOOKUP-03 |
| **Modal + filter** | UI-04 | After FIX-02 (BalanceQtyKg) |
| **Edit form** | UI-05 | After FIX-* complete + LOOKUP-03 |

> **Every session**: after SP changes, update `merged_jat.sql` and deploy to JAT DB in SSMS before testing frontend.

---

## LOOKUP-01 — New Lookup SPs for M02 Masters

**Severity**: High — POHeaderForm has 7 plain-text inputs that must be replaced with validated dropdowns/autocompletes backed by real master data.

**Missing SPs**:
- `ksp_RMI_GetBrokers` — `FA_SLMAS` where `SuppType = 'B'` (or equivalent broker flag in JAT)
- `ksp_RMI_GetDeliveryTypes` — `RM_DELTYPE` or equivalent table
- `ksp_RMI_GetBillAddresses` — `PP_DIVMAS` or `FA_ADDMAS` filtered by divCode
- `ksp_RMI_GetDelAddresses` — same source, separate use
- `ksp_RMI_GetPurchaseTypes` — `RM_PURTYPE` or equivalent
- `ksp_RMI_GetPlants` — `PP_PLANTMAS` or `RM_PLANT`
- `ksp_RMI_GetSeasons` — `RM_SEASON` (currently POHeaderForm hardcodes K/R/S)
- `ksp_RMI_GetSustainTypes` — `RM_SUSTAINTYPE` or equivalent

**Files**:
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/` (new files for each SP)
- `Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a .NET Core + React ERP.
Database: JAT (172.16.16.52\sql2016). All SPs use CREATE OR ALTER PROCEDURE.

TASK: Create 8 new lookup stored procedures for M02 master data.

For each SP below, write a CREATE OR ALTER PROCEDURE that SELECT all active
rows from the specified table. Use the naming pattern shown. All SPs are
read-only (SELECT only, no DML). Add a divCode parameter only where the
source table is scoped per division.

---- SP LIST ----

1. ksp_RMI_GetBrokers
   Source: FA_SLMAS WHERE SuppType IN ('B','A')  -- brokers/agents
   Columns to return: SUPPCD AS BrkCd, SUPPNAME AS BrkName
   Filter: active only (check for CancelFlg IS NULL OR CancelFlg <> 'Y')

2. ksp_RMI_GetDeliveryTypes
   Source: RM_DELTYPE (if this table does not exist, query sysobjects/INFORMATION_SCHEMA
   and return the actual table name in a comment — do NOT invent column names)
   Columns: DELTYPECD AS DlyTypeCode, DELTYPENAME AS DlyTypeName (adjust if different)

3. ksp_RMI_GetBillAddresses
   Source: PP_DIVMAS
   Parameter: @DivCode VARCHAR(2)
   Columns: DIVCODE AS DivCode, DIVNAME AS DivName, ADDRESS AS BillAdd
   (This covers the billing address dropdown — one row per division)

4. ksp_RMI_GetDelAddresses
   Source: RM_DELADD or PP_DIVMAS (check which table stores delivery addresses)
   Parameter: @DivCode VARCHAR(2) (if scoped)
   Columns: ADDCD AS DelAddCode, ADDRESS AS DelAdd
   If RM_DELADD does not exist, query RM_GODOWN or PP_DIVMAS and leave a
   -- NEEDS VERIFICATION comment with the actual table chosen.

5. ksp_RMI_GetPurchaseTypes
   Source: RM_PURTYPE or RM_PTYPE (check sysobjects for the exact table name)
   Columns: PURTYPECD AS PurTypeCode, PURTYPENAME AS PurTypeName

6. ksp_RMI_GetPlants
   Source: PP_PLANTMAS or RM_PLANT (check sysobjects)
   Columns: PLANTCD AS PlantCode, PLANTNAME AS PlantName
   Parameter: @DivCode VARCHAR(2) if plant is division-scoped

7. ksp_RMI_GetSeasons
   Source: RM_SEASON
   Columns: SEASONCD AS SeasonCode, SEASONNAME AS SeasonName
   No filter needed — return all rows ordered by SEASONCD

8. ksp_RMI_GetSustainTypes
   Source: RM_SUSTAINTYPE or RM_SUSTAIN (check sysobjects)
   Columns: SUSTAINCD AS SustainCode, SUSTAINNAME AS SustainName

---- INSTRUCTIONS ----

For any table you cannot confirm exists in JAT (check INFORMATION_SCHEMA.TABLES):
  - Write the SP with a -- TABLE NOT CONFIRMED comment at the top
  - Use the best-guess table name but mark every column alias with -- VERIFY

Save each SP as a separate file:
  Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_Get<Name>.sql

Then append all 8 SPs (with GO separators) to the end of:
  Development/Backend/Spinrise.DBScripts/M02-JAT/merged_jat.sql
  (find the existing last GO + end of file, append after it)
```

---

## LOOKUP-02 — Backend Lookup Layer for M02 Masters

**Severity**: High — depends on LOOKUP-01 SPs being deployed.

**Files**:
- `Development/Backend/Spinrise.Application/Areas/Common/Lookup/DTOs/LookupDtos.cs` (or nearest DTO file)
- `Development/Backend/Spinrise.Application/Areas/Common/Lookup/Interfaces/ILookupRepository.cs`
- `Development/Backend/Spinrise.Application/Areas/Common/Lookup/Interfaces/ILookupService.cs`
- `Development/Backend/Spinrise.Application/Areas/Common/Lookup/Services/LookupService.cs`
- `Development/Backend/Spinrise.Infrastructure/Areas/Common/Lookup/LookupRepository.cs`
- `Development/Backend/Spinrise.API/Areas/Common/Controllers/LookupController.cs`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a .NET Core + React ERP.
Database: JAT (172.16.16.52\sql2016). Backend uses Dapper + IJATUnitOfWork.
All JAT DB operations must use IJATUnitOfWork (not the default IUnitOfWork).

TASK: Add 8 new lookup methods for M02 master data across all backend layers.

STEP 1 — ADD DTO TYPES
In the lookup DTOs file (find it under Areas/Common/Lookup/DTOs/ or DTOs/LookupDtos.cs),
add these simple DTO records (or classes matching the existing pattern):

  public record BrokerLookupDto(string BrkCd, string BrkName);
  public record DeliveryTypeLookupDto(string DlyTypeCode, string DlyTypeName);
  public record BillAddressLookupDto(string DivCode, string DivName, string BillAdd);
  public record DelAddressLookupDto(string DelAddCode, string DelAdd);
  public record PurchaseTypeLookupDto(string PurTypeCode, string PurTypeName);
  public record PlantLookupDto(string PlantCode, string PlantName);
  public record SeasonLookupDto(string SeasonCode, string SeasonName);
  public record SustainTypeLookupDto(string SustainCode, string SustainName);

STEP 2 — ADD INTERFACE METHODS
In ILookupRepository.cs, add:
  Task<IEnumerable<BrokerLookupDto>>       GetBrokersAsync();
  Task<IEnumerable<DeliveryTypeLookupDto>> GetDeliveryTypesAsync();
  Task<IEnumerable<BillAddressLookupDto>>  GetBillAddressesAsync(string divCode);
  Task<IEnumerable<DelAddressLookupDto>>   GetDelAddressesAsync(string divCode);
  Task<IEnumerable<PurchaseTypeLookupDto>> GetPurchaseTypesAsync();
  Task<IEnumerable<PlantLookupDto>>        GetPlantsAsync(string divCode);
  Task<IEnumerable<SeasonLookupDto>>       GetSeasonsAsync();
  Task<IEnumerable<SustainTypeLookupDto>>  GetSustainTypesAsync();

In ILookupService.cs — add the exact same 8 signatures.

STEP 3 — IMPLEMENT IN LookupRepository.cs
For each method, use the IJATUnitOfWork pattern already present in the file
(look at how GetPaymentModesAsync or GetCurrenciesAsync is implemented — follow
that exact pattern). Execute the matching SP from LOOKUP-01:
  GetBrokersAsync          → ksp_RMI_GetBrokers
  GetDeliveryTypesAsync    → ksp_RMI_GetDeliveryTypes
  GetBillAddressesAsync    → ksp_RMI_GetBillAddresses  (pass @DivCode)
  GetDelAddressesAsync     → ksp_RMI_GetDelAddresses   (pass @DivCode)
  GetPurchaseTypesAsync    → ksp_RMI_GetPurchaseTypes
  GetPlantsAsync           → ksp_RMI_GetPlants         (pass @DivCode)
  GetSeasonsAsync          → ksp_RMI_GetSeasons
  GetSustainTypesAsync     → ksp_RMI_GetSustainTypes

STEP 4 — IMPLEMENT IN LookupService.cs
Each method delegates to _repository.<Method>. Match existing delegation pattern.

STEP 5 — ADD CONTROLLER ENDPOINTS in LookupController.cs
Add 8 GET actions following the existing pattern (look at GetPaymentModes or
GetCurrencies for the exact route + response wrapper pattern):

  GET api/v1/lookup/brokers
  GET api/v1/lookup/delivery-types
  GET api/v1/lookup/bill-addresses       (reads divCode from JWT claim)
  GET api/v1/lookup/del-addresses        (reads divCode from JWT claim)
  GET api/v1/lookup/purchase-types
  GET api/v1/lookup/plants               (reads divCode from JWT claim)
  GET api/v1/lookup/seasons
  GET api/v1/lookup/sustain-types

For the divCode parameter: follow the existing pattern used by GetSuppliersAsync
or any other division-scoped endpoint in LookupController. Do not accept divCode
from the query string — read it from the JWT claim (look at how the existing
controller reads the division claim).

Do not change any existing methods or endpoints.
```

---

## LOOKUP-03 — Frontend Lookup API + TypeScript Types

**Severity**: High — UI-01 through UI-05 all depend on these types and API functions.

**Files**:
- `Development/spinrise-web/src/shared/lookup/api/lookupApi.ts`
- `Development/spinrise-web/src/features/purchase-order/types.ts`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a React + TypeScript frontend.
Strict TypeScript — no 'any'. All API calls use the existing axios client.

TASK: Add 8 new lookup API functions and TypeScript types for M02 masters.

STEP 1 — ADD TYPES
In Development/spinrise-web/src/features/purchase-order/types.ts,
add these interfaces (near the existing lookup types section):

  export interface BrokerLookup       { brkCd: string; brkName: string }
  export interface DeliveryTypeLookup { dlyTypeCode: string; dlyTypeName: string }
  export interface BillAddressLookup  { divCode: string; divName: string; billAdd: string }
  export interface DelAddressLookup   { delAddCode: string; delAdd: string }
  export interface PurchaseTypeLookup { purTypeCode: string; purTypeName: string }
  export interface PlantLookup        { plantCode: string; plantName: string }
  export interface SeasonLookup       { seasonCode: string; seasonName: string }
  export interface SustainTypeLookup  { sustainCode: string; sustainName: string }

STEP 2 — ADD API FUNCTIONS
In Development/spinrise-web/src/shared/lookup/api/lookupApi.ts,
add 8 new functions following the exact same pattern used by
getBrokers, getPaymentModes, or getCurrencies (check the file for the pattern).

  getBrokers():        GET /api/v1/lookup/brokers        → BrokerLookup[]
  getDeliveryTypes():  GET /api/v1/lookup/delivery-types → DeliveryTypeLookup[]
  getBillAddresses():  GET /api/v1/lookup/bill-addresses → BillAddressLookup[]
  getDelAddresses():   GET /api/v1/lookup/del-addresses  → DelAddressLookup[]
  getPurchaseTypes():  GET /api/v1/lookup/purchase-types → PurchaseTypeLookup[]
  getPlants():         GET /api/v1/lookup/plants         → PlantLookup[]
  getSeasons():        GET /api/v1/lookup/seasons        → SeasonLookup[]
  getSustainTypes():   GET /api/v1/lookup/sustain-types  → SustainTypeLookup[]

Import the new types from purchase-order/types.ts (check if lookupApi already
imports from there — if it uses its own types file, add the types there instead
and keep consistency with existing pattern).

Do not modify any existing functions.
Zero TypeScript errors must result.
```

---

## UI-01 — POHeaderForm: Replace Plain Inputs with Lookup Controls

**Severity**: High — 8 header fields currently accept free text with no validation against master tables.

**Current gaps in** `Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx`:
- `season` — `Select` with hardcoded `['K','R','S']` — must fetch from `RM_SEASON`
- `dlyType` — plain `Input` — must be `Select` from `getDeliveryTypes()`
- `brkCd` — plain `Input` — must be `AutoComplete` from `getBrokers()` (code + name)
- `billAdd` — plain `Input` — must be `Select` from `getBillAddresses()`
- `delAdd` — plain `Input` — must be `Select` from `getDelAddresses()`
- `purType` — plain `Input` — must be `Select` from `getPurchaseTypes()`
- `acceptance` — plain `Input` (NEEDS INPUT: confirm if this has a master table or stays free text)
- `transport` — plain `Input` (NEEDS INPUT: confirm if this has a master table)

**Files**:
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a React + TypeScript frontend.
Strict TypeScript — no 'any'. Uses Ant Design 5. All lookups use lookupApi.ts.

CONTEXT: POHeaderForm.tsx renders the PO header fields. Several fields are plain
Input components that must become proper lookup controls. The lookupApi functions
getBrokers, getDeliveryTypes, getBillAddresses, getDelAddresses, getPurchaseTypes,
getSeasons were added in LOOKUP-03 (they exist in lookupApi.ts now).

The hook usePurchaseOrderForm.ts manages all form state. It already loads
paymentModes and currencies on mount. Add the new lookups to the same init block.

TASK:

1. In usePurchaseOrderForm.ts, add state and fetch logic for:
     seasons:       SeasonLookup[]       (from lookupApi.getSeasons())
     deliveryTypes: DeliveryTypeLookup[] (from lookupApi.getDeliveryTypes())
     brokers:       BrokerLookup[]       (from lookupApi.getBrokers())
     billAddresses: BillAddressLookup[]  (from lookupApi.getBillAddresses())
     delAddresses:  DelAddressLookup[]   (from lookupApi.getDelAddresses())
     purchaseTypes: PurchaseTypeLookup[] (from lookupApi.getPurchaseTypes())
   Load all 6 in the same Promise.all block that fetches paymentModes + currencies.
   Expose all 6 from the hook return value.

2. In POHeaderForm.tsx, update the Props interface to accept:
     seasons:       SeasonLookup[]
     deliveryTypes: DeliveryTypeLookup[]
     brokers:       BrokerLookup[]
     billAddresses: BillAddressLookup[]
     delAddresses:  DelAddressLookup[]
     purchaseTypes: PurchaseTypeLookup[]

3. Replace these form fields in POHeaderForm.tsx:
   a) season: replace hardcoded ['K','R','S'] Select options with
      seasons.map(s => ({ value: s.seasonCode, label: `${s.seasonCode} – ${s.seasonName}` }))

   b) dlyType: replace plain Input with:
      <Select options={deliveryTypes.map(d => ({ value: d.dlyTypeCode, label: d.dlyTypeName }))} />

   c) brkCd: replace plain Input with AutoComplete using broker search:
      - On search (debounced 300ms): filter brokers array client-side by brkCd or brkName containing the input
      - options: brokers.map(b => ({ value: b.brkCd, label: `${b.brkCd} – ${b.brkName}` }))
      - On select: set form field brkCd to the selected brkCd

   d) billAdd: replace plain Input with:
      <Select options={billAddresses.map(a => ({ value: a.billAdd, label: `${a.divName}: ${a.billAdd}` }))} />

   e) delAdd: replace plain Input with:
      <Select options={delAddresses.map(a => ({ value: a.delAdd, label: a.delAdd }))} />

   f) purType: replace plain Input with:
      <Select options={purchaseTypes.map(p => ({ value: p.purTypeCode, label: `${p.purTypeCode} – ${p.purTypeName}` }))} />

4. In PurchaseOrderNewPage.tsx, pass all 6 new props to <POHeaderForm>.

5. Acceptance and transport fields: leave as plain Input (no master table
   confirmed — do not change them).

Zero TypeScript errors. All existing fields and their validation rules unchanged.
```

---

## UI-02 — PODeliveryTable: Variety Column → AutoComplete Lookup

**Severity**: Medium — users can currently type any free text in the variety column of the delivery schedule, bypassing validation.

**Current code** (`PODeliveryTable.tsx`): `varCode` column is a plain `<Input>` with no lookup.

**Files**:
- `Development/spinrise-web/src/features/purchase-order/components/po-form/PODeliveryTable.tsx`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a React + TypeScript frontend.
Strict TypeScript — no 'any'. Uses Ant Design 5.

FILE: Development/spinrise-web/src/features/purchase-order/components/po-form/PODeliveryTable.tsx

CONTEXT: The delivery schedule table has a varCode column rendered as a plain
<Input>. It should instead be an AutoComplete that searches varieties from
lookupApi.searchVarieties — the same lookup used in POLineItemsTable.tsx.

Look at how VarietyCell is implemented in POLineItemsTable.tsx for the exact
pattern to replicate (debounced 300ms search, maps to varCode label `code – name`,
onSelect patches varCode + varName on the row).

TASK:
1. Create a local VarietyCellDelivery component inside PODeliveryTable.tsx
   (same shape as VarietyCell in POLineItemsTable.tsx, adapted for the delivery
   row type PODeliveryFormItem — check the type in usePurchaseOrderForm.ts).

2. In the varCode column render: replace the plain <Input> with <VarietyCellDelivery>.
   - When a variety is selected, patch both varCode AND varName on the delivery row.
   - The variety name should be shown in the varName column (if that column exists)
     or as a tooltip on the varCode cell.

3. In disabled (read-only) mode: show plain <span>{r.varCode}</span> as before.

Zero TypeScript errors. No other columns or behavior changed.
```

---

## UI-03 — POLineItemsTable: bbFlag (Pack Type) → Validated Select

**Severity**: Low — bbFlag accepts free text; valid values are B/H/R only.

**Current code** (`POLineItemsTable.tsx`): `packType` column rendered via `txt('packType', r, 72, true)` — a plain uppercase Input.

**Legacy values** (VB6 source): `B = Bale`, `H = Half Bale`, `R = Loose (Rasi)`

**Files**:
- `Development/spinrise-web/src/features/purchase-order/components/po-form/POLineItemsTable.tsx`

**Prompt**:

```
You are working on M02 RMI Purchase Order in a React + TypeScript frontend.
Strict TypeScript — no 'any'. Uses Ant Design 5.

FILE: Development/spinrise-web/src/features/purchase-order/components/po-form/POLineItemsTable.tsx

TASK: In the 'Pack' column (dataIndex: 'packType'), replace the plain uppercase
Input with a Select restricted to three valid values:

  const PACK_OPTIONS = [
    { value: 'B', label: 'B – Bale' },
    { value: 'H', label: 'H – Half Bale' },
    { value: 'R', label: 'R – Loose' },
  ]

Render when not disabled:
  <Select
    size="small"
    value={r.packType}
    options={PACK_OPTIONS}
    style={{ width: 100 }}
    onChange={(val) => onUpdate(r.key, { packType: val })}
  />

Render when disabled: <span>{r.packType}</span> (unchanged)

No other changes to the file. Zero TypeScript errors.
```

---

## UI-04 — PRLinePickerModal: Add Variety/Name Filter Bar

**Severity**: Medium — the PR picker currently shows all pending lines with no way to filter by variety or PR number; becomes unusable when there are 50+ PR lines.

**Current code** (`PRLinePickerModal.tsx`): table with no filter UI above it.

**Files**:
- `Development/spinrise-web/src/features/purchase-order/components/po-form/PRLinePickerModal.tsx`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`
- `Development/spinrise-web/src/features/purchase-order/api/purchaseOrderApi.ts`
- Backend SP: `ksp_RMI_PO_FilterPRLines` (check if it exists in the SP folder)

**Prompt**:

```
You are working on M02 RMI Purchase Order in a React + TypeScript frontend.
Strict TypeScript — no 'any'. Uses Ant Design 5.

CONTEXT: PRLinePickerModal shows a modal with a table of pending PR lines.
It currently has no filter. A backend SP ksp_RMI_PO_FilterPRLines may already
exist for this — check Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/
for that file.

TASK:

1. Add a filter bar above the table in PRLinePickerModal.tsx with two fields:
   - Variety Code: <Input size="small" placeholder="Variety code…" style={{ width: 120 }} />
   - PR No: <InputNumber size="small" placeholder="PR No" style={{ width: 80 }} />
   - A Search button (or trigger on Enter) that calls onFilter(varCode, prNo)
   - A Clear button that resets both inputs and calls onFilter(undefined, undefined)

2. The filter should work CLIENT-SIDE first (filter the `lines` prop by varCode/prNo)
   to avoid extra API calls. Only fall back to a new API call if the `lines` array
   is empty (i.e. the first fetch returned no results and we have a filter).

   Implementation:
   - Add local filterVarCode + filterPrNo state inside the modal.
   - Derive `filteredLines = lines.filter(l => matches varCode + prNo)` from those states.
   - Render filteredLines in the table instead of lines.

3. If ksp_RMI_PO_FilterPRLines EXISTS in the SP folder:
   - Also add a filterPRLines(varCode: string, prNo: number, contDt?: string, supCd?: string)
     function in purchaseOrderApi.ts that calls GET api/v1/rmi/po/pr-lines/filter
   - Add a filterPRLines action to usePurchaseOrderForm.ts and expose it
   - Use it as a fallback when no results are returned by client-side filter

4. If ksp_RMI_PO_FilterPRLines does NOT exist: skip step 3 entirely. Client-side
   filter is sufficient.

5. The `BalanceQtyKg` column must be present in the modal table (added by FIX-02).
   If it is not yet there, add it between BalQty and Rate/Candy:
     { title: 'Bal Kg', dataIndex: 'balanceQtyKg', width: 85, align: 'right' }

Zero TypeScript errors. Selection behavior and existing columns unchanged.
```

---

## UI-05 — PurchaseOrderEditPage: Implement Actual Edit Form + UpdateAsync

**Severity**: High — the edit page is currently read-only. No modifications to an existing PO are possible. UpdateAsync returns "not yet implemented".

**Current state**:
- `PurchaseOrderEditPage.tsx`: renders read-only description cards + approval buttons only
- `PurchaseOrderService.UpdateAsync()`: returns `(false, "Update not yet implemented.", warnings)`
- `ksp_RMI_PO_Update` SP: exists in the SP folder (verify)

**Business rules** (from VB6 source):
- If arrivals exist in `RM_Arrival` for this PO → supplier, agent (brkCd), and cropYear are LOCKED (read-only)
- `Org_OrdQty` / `Org_OrdKgs` are preserved (set only once: when `Mod_UserId IS NULL` at update start)
- Delivery schedule: DELETE all existing rows for this CONTNO + CONTDT, then INSERT fresh rows
- Status check: if PO is fully approved (L2 + Final approved), reject edit with error message

**Files**:
- `Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderEditPage.tsx`
- `Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/IPurchaseOrderService.cs`
- `Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs`
- `Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/PurchaseOrderRepository.cs`
- `Development/Backend/Spinrise.API/Areas/Purchase/Controllers/PurchaseOrderController.cs`
- `Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/ksp_RMI_PO_Update.sql` (verify)

**Prompt**:

```
You are working on M02 RMI Purchase Order in a .NET Core + React ERP.
Database: JAT (172.16.16.52\sql2016). Backend: Dapper + IJATUnitOfWork.
Frontend: React 18, TypeScript strict, Ant Design 5, React Router v7.

CONTEXT:
  PurchaseOrderEditPage.tsx at /purchase/order/edit/:contNo/:contDt
  currently shows a READ-ONLY view. UpdateAsync in PurchaseOrderService returns
  "not yet implemented". The SP ksp_RMI_PO_Update exists — verify it first.

TASK A — BACKEND (complete first):

1. Verify ksp_RMI_PO_Update.sql exists in
   Development/Backend/Spinrise.DBScripts/M02-JAT/02-StoredProcedures/
   Read it to understand its parameters. If it is incomplete or missing:
   - DO NOT write a new SP — leave a TODO comment and stop Task A
   - Continue with Task B (frontend edit form) using the existing create form
     as the template, noting that save is disabled until SP is verified

2. If SP exists and is complete:
   a) In UpdatePODto (PODtos.cs), add any missing fields that ksp_RMI_PO_Update
      expects as parameters. Compare SP parameter list vs current UpdatePODto.

   b) In IPurchaseOrderService.cs and IPurchaseOrderRepository.cs, confirm
      UpdateAsync signature matches: Task<(bool, string, List<string>)> UpdateAsync(UpdatePODto dto)

   c) Implement PurchaseOrderService.UpdateAsync:
      - Run a pre-check: call GetApprovalStatusAsync(dto.ContNo, dto.ContDt)
        If status is fully approved (L2Appflg='Y' AND FinalAppflg='Y') → return (false, "PO is fully approved and cannot be modified.", [])
      - Call _repo.UpdateAsync(dto)
      - Return result

   d) Implement PurchaseOrderRepository.UpdateAsync:
      - Execute ksp_RMI_PO_Update via IJATUnitOfWork
      - Use the UPDLOCK pattern already in CreateAsync (check the file for the pattern)
      - Map SP output/return value to (bool success, string message)

   e) In PurchaseOrderController.cs, the PUT endpoint already exists — verify it
      calls UpdateAsync correctly. No change if already wired up.

TASK B — FRONTEND (after Task A or in parallel if SP is missing):

1. Add an isEditMode boolean and load-existing-data logic to usePurchaseOrderForm.ts:
   - Add loadForEdit(contNo: number, contDt: string) function
   - Calls getById(contNo, contDt) and getApprovalStatus(contNo, contDt) in parallel
   - Populates header form fields, lines[], delivery[] from the loaded PO detail
   - Sets isFullyApproved = (status.l2Appflg === 'Y' && status.finalAppflg === 'Y')
   - If arrivals exist (check if PODetailResponseDto has an arrivalsExist flag):
     set lockedFields = ['supCd', 'brkCd', 'cropYear']
   - Add doUpdate(values: POHeaderFormValues) that calls purchaseOrderApi.update(...)

2. Rebuild PurchaseOrderEditPage.tsx as a proper edit form:
   - Reuse POHeaderForm, POLineItemsTable, PODeliveryTable (same as New page)
   - Pass disabled={isFullyApproved} to all form components
   - For locked fields: pass a lockedFields string[] prop to POHeaderForm;
     POHeaderForm renders those fields as read-only (disabled Input, not full Select)
   - Show the approval action buttons (L1/L2/Final) in the sticky header bar
     (they are already on this page — keep them)
   - Show a read-only "PO Status" tag in the header (Pending / L1 Approved / etc.)
   - Save button label: "Update PO" (not "Save PO")
   - On successful update: show success message and navigate back to the list

3. POHeaderForm.tsx: add optional lockedFields?: string[] prop.
   For each field in lockedFields, replace its control with a disabled Input showing
   the current value. This is only used in edit mode.

4. In purchaseOrderApi.ts: add update function if not already present:
   update(dto: UpdatePORequest): PUT /api/v1/rmi/po/{contNo} with body dto

5. UpdatePORequest type in types.ts: map from UpdatePODto (add if missing).

Zero TypeScript errors. New page and edit approval flow must both compile and
render without console errors. Read-only approval view behavior must be preserved
for fully-approved POs.
```

---

## Summary: What Each Prompt Delivers

| Prompt | Deliverable | Lines Changed (est.) |
|---|---|---|
| LOOKUP-01 | 8 new SPs + merged_jat.sql additions | ~200 SQL |
| LOOKUP-02 | 8 DTO records, 8 interface methods, 8 repo/service impls, 8 controller endpoints | ~120 C# |
| LOOKUP-03 | 8 TypeScript interfaces, 8 API functions | ~60 TS |
| UI-01 | POHeaderForm 6 upgraded fields + hook state | ~100 TSX |
| UI-02 | PODeliveryTable variety AutoComplete | ~50 TSX |
| UI-03 | POLineItemsTable pack type Select | ~15 TSX |
| UI-04 | PRLinePickerModal filter bar | ~80 TSX |
| UI-05 | Full edit form + UpdateAsync | ~350 TSX + C# |

**Critical path**: LOOKUP-01 → LOOKUP-02 → LOOKUP-03 → UI-01 through UI-04 (can run in parallel after LOOKUP-03). UI-05 can run in parallel with all of these.
