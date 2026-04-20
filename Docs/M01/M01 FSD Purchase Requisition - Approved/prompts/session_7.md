# Session 7 — Approval Pipeline Display (Read-only Badge)

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: ASP.NET Core 8 / React 18 + Ant Design 5
Rule: NO DB table changes. SP SELECT update to add missing approval fields.

## FSD References
- Rec #13: Replace single approval status label with visual multi-step pipeline showing which levels complete, who approved, and when.
- §5.5a: 3 approval levels — Level 1 (VB/Web), Level 2 (Before Final), Level 3 (Final). Timestamps from APP1DATE+APP1TIME, APP2DATE+APP2TIME, APP3DATE+APP3TIME.
- IST-16: `PRapprovalstatus` = display only. Does NOT gate any operation.

## Current State
`PRHeaderResponseDto` has: `FirstappUser`, `FinalAppUser`, `APP1DATE`, `APP3DATE`.
Missing: `SecondAppUser`, `APP2DATE` (Level 2 — Before Final).
Frontend V2 form has no approval visualisation.

## Tasks

### T1 — Add Level 2 Fields to Domain Entity
**File:** `Spinrise.Domain/.../PurchaseRequisitionHeader.cs`

Add (Dapper column name match):
```csharp
public string? SecondAppUser { get; set; }   // SP column: SecondAppUser
public DateTime? APP2DATE { get; set; }       // SP column: APP2DATE
```

### T2 — Add Level 2 Fields to Response DTO
**File:** `PRHeaderResponseDto.cs`

Add:
```csharp
public string? Level1ApproverName { get; set; }   // maps FirstappUser
public DateTime? Level1ApprovedAt { get; set; }   // maps APP1DATE
public string? Level2ApproverName { get; set; }   // maps SecondAppUser
public DateTime? Level2ApprovedAt { get; set; }   // maps APP2DATE
public string? FinalApproverName { get; set; }    // maps FinalAppUser
public DateTime? FinalApprovedAt { get; set; }    // maps APP3DATE
```

### T3 — Map in Repository
**File:** `PurchaseRequisitionRepository.cs` → `GetByIdAsync`

After Dapper multi-result reads header, map domain fields to DTO fields. Or use Dapper column aliases in SP if needed.

### T4 — Update Frontend Type
**File:** `types.ts` — `PRHeaderResponse`:
```typescript
level1ApproverName?: string
level1ApprovedAt?: string
level2ApproverName?: string
level2ApprovedAt?: string
finalApproverName?: string
finalApprovedAt?: string
```

### T5 — Build Approval Steps in PRHeaderV2.tsx
**File:** `PRHeaderV2.tsx`

When `isHeaderSaved && savedPrNo` (edit mode), show read-only approval steps panel:
```tsx
// Use Ant Design Steps component in read-only mode
<Steps size="small" current={approvalLevel}>
  <Step title="Requested" />
  <Step title="Level 1" description={level1ApproverName} subTitle={level1ApprovedAt} />
  <Step title="Before Final" description={level2ApproverName} />
  <Step title="Final Approved" description={finalApproverName} />
</Steps>
```

`approvalLevel` computed from which approver fields are non-null.
Only render when `preCheckResult.approvalStatusVisible === true`.

### SP Changes Required
**`ksp_PR_GetById.sql`** — add to SELECT if missing:
```sql
prl.SecondAppUser,
prh.APP2DATE,
prh.APP2TIME
```
Verify column names match PO_PRH schema.

## Do NOT Change
- Service business logic
- Any write operations
- DB table schemas
