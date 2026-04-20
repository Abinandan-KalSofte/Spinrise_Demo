# Project Planner — PR Module FSD Gap Implementation
**Module:** M01 Purchase Requisition | **FSD:** v2.3 CEO Approved 17-Apr-2026
**Constraint:** No DB table changes. SP updates allowed. Code layer only.

---

## Sessions

| # | Session Name | Priority | Est. Time | Est. Tokens |
|---|---|---|---|---|
| S1 | Critical Status Fix + Partial Approval Block | CRITICAL | 3–4 hrs | ~60K |
| S2 | Header Form — Missing Fields (ScopeCode, PoGroup, SaleOrder, SubCost) | HIGH | 2–3 hrs | ~50K |
| S3 | Category Code — Full Stack (DTO → SP → Frontend) | HIGH | 4–5 hrs | ~80K |
| S4 | Composite Duplicate Check + MINLEVEL Validation | HIGH | 2–3 hrs | ~40K |
| S5 | FY Date Fix + Post-Save Reload | CRITICAL | 1–2 hrs | ~30K |
| S6 | IType/Remarks Length Fix + DrawNo/CatNo DTOs | MEDIUM | 1–2 hrs | ~30K |
| S7 | Approval Pipeline Display (Read-only Badge) | MEDIUM | 2–3 hrs | ~40K |
| S8 | Pending Qty Before Item Selection | HIGH | 3–4 hrs | ~60K |
| S9 | Item Purchase History API + Modal | HIGH | 3–4 hrs | ~60K |
| S10 | Budget Balance Display | MEDIUM | 1–2 hrs | ~25K |

**Total:** 22–32 hrs | ~475K tokens

---

## Session Details

### S1 — Critical Status Fix + Partial Approval Block
**Scope:**
- Fix `IsLockedStatus()` — add checks for `FirstApp`, `SecondApp`, `ThirdApp` flags
- Fix status meaning: `prstatus='C'` = RECEIVED (not cancelled) per IST-10
- Align frontend status label map to correct values
- SP: `ksp_PR_GetById` — verify machine JOIN filters by `PO_PRH.DEPCODE`

**Files Impacted:**
- BE: `Spinrise.Application/.../PurchaseRequisitionService.cs`
- BE: `Spinrise.Domain/.../PurchaseRequisitionHeader.cs` (add FirstApp/SecondApp/ThirdApp fields)
- FE: `src/features/purchase-requisition/types.ts` (status label map)
- SP: `ksp_PR_GetById.sql` (machine JOIN dept filter — Rec #19)

**Est. Time:** 3–4 hrs | **Est. Tokens:** ~60K

---

### S2 — Header Form — Missing Fields
**Scope:**
- Render `ScopeCode`, `PoGroupCode`, `SaleOrderNo`, `SaleOrderDate`, `SubCost` in `PRHeaderV2.tsx`
- Fix mandatory validation: PO Group mandatory when `pendingPoDetailsEnabled` → correct to `PurTypeFlg` path
- Add scope/sale-order lookup display names

**Files Impacted:**
- FE: `src/features/purchase-requisition/components/v2/PRHeaderV2.tsx`
- FE: `src/features/purchase-requisition/types.ts` (PRHeaderFormValues)
- BE: `PurchaseRequisitionService.cs` (fix V8 flag mapping)

**Est. Time:** 2–3 hrs | **Est. Tokens:** ~50K

---

### S3 — Category Code — Full Stack
**Scope:**
- Add `CategoryCode` field to `CreatePRLineDto`, `UpdatePRLineDto`, `PRLineResponseDto`
- Add SP constant `ksp_PR_CategoryExists` to `Constants.cs`
- Add `CategoryExistsAsync()` to `IPurchaseRequisitionRepository` + `PurchaseRequisitionRepository`
- Add validation V-CAT in `ValidateCreateLinesAsync` + `ValidateUpdateLinesAsync`
- Add SP param `@CATCODE` to `ksp_PR_InsertLine`, `ksp_PR_Update` (SP update)
- FE: add `categoryCode` field to `PRLineFormItem`, `CreatePRLineRequest`, `PRItemFormV2.tsx`

**Files Impacted:**
- BE: `CreatePRLineDto.cs`, `UpdatePRLineDto.cs`, `PRLineResponseDto.cs`
- BE: `Spinrise.Shared/Constants.cs`
- BE: `IPurchaseRequisitionRepository.cs`, `PurchaseRequisitionRepository.cs`
- BE: `PurchaseRequisitionService.cs`
- FE: `types.ts`, `PRItemFormV2.tsx`
- SP: `ksp_PR_InsertLine.sql`, `ksp_PR_ExistsChecks.sql` (add CategoryExists proc)

**Est. Time:** 4–5 hrs | **Est. Tokens:** ~80K

---

### S4 — Composite Duplicate Check + MINLEVEL
**Scope:**
- Fix `ValidateCreateLinesAsync`: change duplicate key from `itemCode` to `itemCode|machineNo` composite (matches IST-15 + Update path)
- Add `GetItemMinLevelAsync(divCode, itemCode)` → repo + SP
- Add MINLEVEL warning in `ValidateCreateLinesAsync` + `ValidateUpdateLinesAsync` (warning, not hard stop)
- Add SP constant `ksp_PR_GetItemMinLevel` to `Constants.cs`

**Files Impacted:**
- BE: `PurchaseRequisitionService.cs`
- BE: `IPurchaseRequisitionRepository.cs`, `PurchaseRequisitionRepository.cs`
- BE: `Constants.cs`
- SP: `ksp_PR_ExistsChecks.sql` (add GetItemMinLevel proc)

**Est. Time:** 2–3 hrs | **Est. Tokens:** ~40K

---

### S5 — FY Date Fix + Post-Save Reload
**Scope:**
- Fix `yfDate`/`ylDate` in `PRItemFormV2.tsx`: use April 1 – March 31 bounds (not prDate +1 year)
- After `create()` succeeds: call `purchaseRequisitionApi.getById(prNo)` and update `items[]` state from response
- After `update()` succeeds: same reload pattern

**Files Impacted:**
- FE: `src/features/purchase-requisition/components/v2/PRItemFormV2.tsx` (yfDate calc)
- FE: `src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx` (post-save reload)

**Est. Time:** 1–2 hrs | **Est. Tokens:** ~30K

---

### S6 — IType/Remarks Length + DrawNo/CatNo DTOs
**Scope:**
- Fix `CreatePRHeaderDto.IType`: `StringLength(2)` → `StringLength(1)`
- Fix `CreatePRLineDto.Remarks`: `StringLength(50)` → `StringLength(100)` (pending DB fix by team)
- Add `DrawNo` + `CatNo` to `CreatePRLineDto`, `PRLineResponseDto`
- Add `model` + `maxCost` to frontend `PRLineResponse` type
- Map `DrawNo`/`CatNo` in `InsertLineAsync` SP params

**Files Impacted:**
- BE: `CreatePRHeaderDto.cs`, `CreatePRLineDto.cs`, `PRLineResponseDto.cs`
- FE: `src/features/purchase-requisition/types.ts`
- SP: `ksp_PR_InsertLine.sql` (add @DrawNo, @CatNo params)

**Est. Time:** 1–2 hrs | **Est. Tokens:** ~30K

---

### S7 — Approval Pipeline Display
**Scope:**
- Add `SecondAppUser`, `APP2DATE` to `PRHeaderResponseDto` + domain entity
- Build read-only approval steps strip in `PRHeaderV2.tsx` (collapsed view)
- Map new fields in `GetByIdAsync` Dapper multi-result read
- FE type update: `PRHeaderResponse.approvalSteps[]`

**Files Impacted:**
- BE: `PRHeaderResponseDto.cs`, `PurchaseRequisitionHeader.cs`
- BE: `PurchaseRequisitionRepository.cs` (Dapper mapping)
- FE: `types.ts`, `PRHeaderV2.tsx`
- SP: `ksp_PR_GetById.sql` (add SecondAppUser/APP2DATE to SELECT — SP update)

**Est. Time:** 2–3 hrs | **Est. Tokens:** ~40K

---

### S8 — Pending Qty Before Item Selection
**Scope:**
- Enhance `LookupController.GetItems` to accept `depCode` + return `pendingPrQty`, `pendingPoQty` per item
- Add `ILookupRepository.GetItemsWithPendingAsync()` → calls existing `ksp_PR_PendingIndentCheck` logic
- FE: show pending qty columns in item search dropdown before user confirms selection

**Files Impacted:**
- BE: `LookupController.cs`, `ILookupService.cs`, `LookupService.cs`
- BE: `ILookupRepository.cs`, `LookupRepository.cs`
- BE: `Constants.cs` (new SP constant if needed)
- FE: `src/features/purchase-requisition/api/lookupApi.ts`
- FE: `PRItemFormV2.tsx` (item select dropdown)
- FE: `types.ts` (ItemLookup type)

**Est. Time:** 3–4 hrs | **Est. Tokens:** ~60K

---

### S9 — Item Purchase History API + Modal
**Scope:**
- New endpoint: `GET api/v1/purchase-requisitions/item-history?divCode&itemCode`
- Calls new SP `ksp_PR_GetItemHistory` (SP change — reads from PO_ORDL + PO_ORDH)
- Returns: `PrNo`, `PoNo`, `PoDate`, `Supplier`, `Rate`, `Qty`, `ReceivedQty`
- Replace `PRRateHistoryModal` stub with real history grid

**Files Impacted:**
- BE: `PurchaseRequisitionController.cs`, `IPurchaseRequisitionService.cs`, `PurchaseRequisitionService.cs`
- BE: `IPurchaseRequisitionRepository.cs`, `PurchaseRequisitionRepository.cs`
- BE: `Constants.cs`
- FE: `purchaseRequisitionApi.ts`, `types.ts`
- FE: `src/features/purchase-requisition/components/v2/PRRateHistoryModal.tsx` (rewrite)
- SP: `ksp_PR_GetItemHistory.sql` (new SP)

**Est. Time:** 3–4 hrs | **Est. Tokens:** ~60K

---

### S10 — Budget Balance Display
**Scope:**
- Add `BudgetBalance` to `PRHeaderResponseDto`
- Map from SP result in `GetByIdAsync`
- Render in `PRHeaderV2.tsx` as read-only badge when `BudgetValidationEnabled=true`
- SP: `ksp_PR_GetById.sql` — add `budgetBALAMT` to SELECT (SP update)

**Files Impacted:**
- BE: `PRHeaderResponseDto.cs`, `PurchaseRequisitionRepository.cs`
- FE: `types.ts`, `PRHeaderV2.tsx`
- SP: `ksp_PR_GetById.sql`

**Est. Time:** 1–2 hrs | **Est. Tokens:** ~25K

---

## Change Log

| Session | What Changed | Files Modified | SP Changes | Reason |
|---|---|---|---|---|
| S1 | Added APPROVED to IsLockedStatus(); added PrApprovalLocked message; fixed PR_STATUS_LABELS (D=Draft, C=Received per IST-10); added APPROVED to STATUS_TAG/STATUS_OPTIONS | PurchaseRequisitionService.cs, types.ts, prListConfig.ts | ksp_PR_GetById.sql — PrStatus CASE adds APPROVED when any PO_PRL line has FirstApp/SecondApp/ThirdApp='Y' | IST-5 partial approval block; IST-10 prstatus='C' fix |
| S2 | Added ScopeCode, PoGroup, SaleOrderNo, SaleOrderDate, SubCost (InputNumber) to PRHeaderV2 Group 3; fixed subCost type string→number in PRHeaderFormValues; added pendingPoDetailsEnabled prop; V8b PoGroupRequired check in service | PRHeaderV2.tsx, types.ts, PurchaseRequisitionV2Page.tsx, PurchaseRequisitionService.cs | None | FSD §2 missing header fields; §4.2 PoGroup mandatory; NOTE: PurTypeFlg vs PendingPoDetailsEnabled mapping needs backend clarification |
| S3 | CategoryCode added full stack: domain entity, DTOs (Create/Update/Response), mappings, repository interface+impl, service V25 validation, frontend types+form field | PurchaseRequisitionLine.cs, CreatePRLineDto.cs, PRLineResponseDto.cs, PRMappings.cs, IPurchaseRequisitionRepository.cs, PurchaseRequisitionRepository.cs, PurchaseRequisitionService.cs, Constants.cs, types.ts, PRItemFormV2.tsx, PurchaseRequisitionV2Page.tsx | ksp_PR_InsertLine.sql (@CatCode param+INSERT), ksp_PR_ExistsChecks.sql (new ksp_PR_CategoryExists proc), ksp_PR_GetById.sql (l.CATCODE in SELECT) | FSD §2 Item Grid Col 10; §4.3 IN_CAT validation |
| S4 | — | — | — | Pending |
| S5 | FY date fix in PRItemFormV2 (was prDate±1yr, now correct April-March bounds); shared dateUtils.ts; usePurchaseRequisitionList migrated to shared util; post-save reload via getById in both handleSaveDraft+handleSubmit; mapSavedLine helper | dateUtils.ts (new), PRItemFormV2.tsx, usePurchaseRequisitionList.ts, PurchaseRequisitionV2Page.tsx | None | Rec #20 stale LPO data; §5.3 FY bounds fix |
| S6 | — | — | — | Pending |
| S7 | — | — | — | Pending |
| S8 | — | — | — | Pending |
| S9 | — | — | — | Pending |
| S10 | — | — | — | Pending |

> Each session appends its completed row before closing.

---

## Execution Order

```
WEEK 1
  Day 1:  S5  → S1   (quick win + critical fix)
  Day 2:  S2  → S4   (form fields + validation)
  Day 3:  S6         (DTO fixes, small)

WEEK 2
  Day 1:  S3         (Category Code — largest)
  Day 2:  S7  → S10  (approval display + budget)
  Day 3:  S8  → S9   (lookup enhancements + history)
```
