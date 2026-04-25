# Session Log — 2026-04-25 — CEO Review Round 2 Fixes (T. Mani Email)

## Summary
Fixed 2 explicit bugs + 1 FSD compliance + 1 layout issue from T. Mani's second review email. All confirmed with 0 TS errors.

## Files Changed

### `ksp_PR_GetById.sql` + `merged.sql`
- **BUG-1**: `h.createdby` (raw DB ID '2') → `ISNULL(u.user_name, h.createdby)` via LEFT JOIN `PP_PASSWD u ON h.createdby = u.user_id AND u.divcode = h.divcode`
- View modal now shows 'SPGMT' instead of '2' — same as PR print

### `PRLineItemsTable.tsx`
- **BUG-2 (Grand Total)**: `subtotal` and Total column `valueGetter` — both now apply fallback: `rate > 0 ? rate : (lastPoRate ?? 0)` × qty. Edit form PR #368 will now show ~₹6,92,880 instead of ₹980.
- **S1 (isSample default)**: `emptyRow()` `isSample: false` → `true`; Form.Item `isSample` added `initialValue={true}`. Checkbox is now pre-checked on every new item entry per CEO/FSD §11.

### `PRViewModal.tsx`
- **V1 (CAT column visibility)**: Removed `Remarks` and `Sub-Cost` columns; tightened all fixed column widths (fixed total 768px, flex Description ~144px). All columns including Draw No (72px) and Cat (46px) now visible without horizontal scrolling at 960px modal / 1920×1080 monitor.

## V4 Clarification (NOT implemented — awaiting CEO input)
- **Cost Centre**: Already in Advanced Drawer (⚙ button on each grid row) — no code change needed, just needs to be pointed out in meeting.
- **Sale Order No**: Was explicitly removed in Revision 01 per user direction; FSD §2 does not list it in the header. CEO cc'd Mariyaiya to verify — awaiting their clarification before re-adding.

## TypeScript Result
0 errors — clean build
