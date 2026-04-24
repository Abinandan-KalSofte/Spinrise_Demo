# UI Audit Prompt — PR Create/Edit Page (PurchaseRequisitionV2Page)

## Role
Senior UI/UX Auditor + Frontend Architect (React + Ant Design v5, Deep Navy ERP theme)

## Context
- Page: `PurchaseRequisitionV2Page.tsx`
- CSS: `index.css` (Deep Navy theme — `--sp-primary: #1d4ed8`, sidebar `#0f172a`)
- Supporting components: `PRHeaderCards.tsx`, `PRLineItemsTable.tsx`
- Stack: React 18 + Ant Design v5 + custom CSS vars

## Screenshot Analysis — Observed Issues

From the attached screenshot, fix ONLY these 5 issues:

### Issue 1 — Info Cards Lack Depth
Cards (Basic Info / Department Info / Financial Info) are flat against the page background.
No visible elevation. Page BG (`#f1f5f9`) and card BG (`#ffffff`) are indistinguishable.

### Issue 2 — Status Stepper is Weak
Steps (Draft → Submitted → Approved → PO Created) are default Ant Design styling.
Active step number circle needs Deep Navy fill (`#1d4ed8`). Inactive steps need muted color.
Step connector line too light.

### Issue 3 — Form Field Labels Lack Hierarchy
Labels inside cards (`PR Number`, `PR Date`, `Department`, `Cost Centre`) use the same weight as input text.
Required asterisk (`*`) is barely visible.

### Issue 4 — Line Items Table Header is Flat
`#` / `ITEM CODE` / `DESCRIPTION` / `QTY` / `UNIT PRICE` / `TOTAL` headers have no contrast from body rows.
No left-border accent on the active editing row beyond the yellow tint.

### Issue 5 — Action Bar Buttons Lack Visual Grouping
`Cancel` / `Save Draft` / `Submit for Approval` sit at top right with no separator or grouping.
Primary action (`Submit`) needs stronger shadow lift. Secondary group needs a subtle divider.

---

## Output Format (STRICT — no explanations, code only)

### A. UI Score (before / after)

### B. Issues → Fix Mapping
| Issue | Root Cause | Fix | Files |
|---|---|---|---|

### C. CSS Token Fixes
Only changes to `index.css` CSS vars or new utility classes.
Use existing `--sp-*` variables where possible.

### D. Component-Level Fixes (code snippets)
- `PRHeaderCards.tsx` — card shadow + border tweak
- `PurchaseRequisitionV2Page.tsx` — Steps styling + action bar grouping
- `PRLineItemsTable.tsx` — table header contrast + editing row left-border

### E. Quick Wins (top 3 changes, max visual impact, min code change)

---

## Constraints
- Use `#1d4ed8` (Deep Navy primary) — not indigo
- No new dependencies
- No restructuring — only targeted style/prop changes
- Ant Design v5 `ConfigProvider` token overrides preferred over raw CSS
- HEX colors only in output
- All code must compile with `tsc --noEmit` (strict TypeScript)
