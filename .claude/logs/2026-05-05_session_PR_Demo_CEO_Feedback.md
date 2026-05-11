# Session Log — 2026-05-05 PR Demo & CEO Feedback

**Topic:** PR Form CEO demo day — Sample field fix, post-demo action list  
**Developer:** Abinandan

## Changes Made

### Frontend
- `PRLineItemsTable.tsx` — Changed `isSample` field from Checkbox to Switch (Yes/No label); default = No (false)
- This matches CEO requirement: "Sample = No by default"

## CEO Demo Outcome (MOM captured separately)
CEO demo held. 30+ action items raised. Key directives:

1. Single-screen design — no scroll
2. Labels: Title Case (not ALL-CAPS), no abbreviations ("Qty" → "Quantity", "Appr. Cost" → "Approximate Cost")
3. Field alignment: numerics right-aligned, text left-aligned
4. Value = Qty × Rate; Approximate Cost = Rate + Tax (computed display)
5. Decimal standards: Quantity = 3dp, Rate = 4dp, Amount = 2dp
6. Web Form Blueprint required by Sat 09 May 2026
7. Visual standard: modern web-native, NOT a VB6 replica
8. Company name: Kalpatharu Software Ltd. / Product: SpinRise ERP

## CEO Email Follow-up (06 May)
CEO corrected MOM Section 3.3: refers to UI/UX review cycle (Dev → IST → TL-IST → PM → CEO), not transaction approval.
Labels standard: Title Case, not all-caps.
