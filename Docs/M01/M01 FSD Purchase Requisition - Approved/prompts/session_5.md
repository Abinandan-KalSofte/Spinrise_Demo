# Session 5 — FY Date Fix + Post-Save Reload

## Context
Module: M01 Purchase Requisition | FSD v2.3 | Spinrise ERP
Stack: React 18 + TypeScript
Rule: Frontend only. No backend or SP changes.

## FSD References
- §5.3: Stock calculation uses FY = April 1 to March 31. `yfDate` = April 1, `ylDate` = March 31 next year.
- Rec #20: After save, all line data (LPO Rate, LPO Date, Supplier) must reload from GET /pr/{id}. Stale local state not acceptable.

## Current Bugs
1. `PRItemFormV2.tsx` L205: `yfDate = prDate`, `ylDate = prDate + 1 year` — WRONG. Should be FY bounds.
2. `PurchaseRequisitionV2Page.tsx`: After `create()` / `update()`, `items[]` state retains pre-save local data.

## Tasks

### T1 — Fix Financial Year Date Calculation
**File:** `Development/spinrise-web/src/features/purchase-requisition/components/v2/PRItemFormV2.tsx`

Find lines ~204–207:
```typescript
const yfDate = prDate ? prDate.format('YYYY-MM-DD') : dayjs().format('YYYY-MM-DD')
const ylDate = prDate ? prDate.add(1, 'year').format('YYYY-MM-DD') : ...
```

Replace with:
```typescript
const getFYBounds = (refDate: Dayjs) => {
  const month = refDate.month() // 0-indexed; April = 3
  const year = refDate.year()
  const fyStart = month >= 3
    ? dayjs(`${year}-04-01`)
    : dayjs(`${year - 1}-04-01`)
  const fyEnd = fyStart.add(1, 'year').subtract(1, 'day') // March 31
  return { yfDate: fyStart.format('YYYY-MM-DD'), ylDate: fyEnd.format('YYYY-MM-DD') }
}

const ref = prDate ?? dayjs()
const { yfDate, ylDate } = getFYBounds(ref)
```

Note: `getFYBounds` is already defined in `usePurchaseRequisitionList.ts` — extract to a shared utility in `src/shared/lib/dateUtils.ts` and import from both.

### T2 — Post-Save Reload After Create
**File:** `Development/spinrise-web/src/features/purchase-requisition/pages/PurchaseRequisitionV2Page.tsx`

Find `handleSubmit` / `handleSaveDraft` (both call `purchaseRequisitionApi.create()`).

After successful create, add:
```typescript
const saved = await purchaseRequisitionApi.create(buildPayload(values))
setSavedPrNo(saved.prNo)

// Reload line data to get server-filled LPO Rate, LPO Date, Supplier
const fullPr = await purchaseRequisitionApi.getById(saved.prNo)
if (fullPr?.lines) {
  setItems(fullPr.lines.map(line => ({
    key: crypto.randomUUID(),
    ...line,
  })))
}
```

### T3 — Post-Save Reload After Update
Same page — find `handleUpdate`. After successful `purchaseRequisitionApi.update()`:
```typescript
const fullPr = await purchaseRequisitionApi.getById(prNo)
if (fullPr?.lines) {
  setItems(fullPr.lines.map(line => ({ key: crypto.randomUUID(), ...line })))
}
```

### T4 — Extract Shared FY Utility
**File (new):** `Development/spinrise-web/src/shared/lib/dateUtils.ts`

```typescript
import dayjs, { type Dayjs } from 'dayjs'

export function getFYBounds(refDate?: Dayjs): { yfDate: string; ylDate: string } {
  const ref = refDate ?? dayjs()
  const month = ref.month() // 0=Jan, 3=Apr
  const year = ref.year()
  const fyStart = month >= 3 ? dayjs(`${year}-04-01`) : dayjs(`${year - 1}-04-01`)
  const fyEnd = fyStart.add(1, 'year').subtract(1, 'day')
  return {
    yfDate: fyStart.format('YYYY-MM-DD'),
    ylDate: fyEnd.format('YYYY-MM-DD'),
  }
}
```

Update imports in `PRItemFormV2.tsx` and `usePurchaseRequisitionList.ts` to use shared util.

## Do NOT Change
- Backend
- SP files
- Any other component
