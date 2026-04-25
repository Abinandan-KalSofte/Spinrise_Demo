# Session Log — 2026-04-24 — Revision 01 Implementation

## Summary
Implemented all R01–R12 Revision 01 changes across PRHeaderCards.tsx and PRLineItemsTable.tsx. 0 TypeScript errors.

## Files Changed

### PRHeaderCards.tsx — full rewrite
- **R01**: Removed `poGroupCode` (PO Group) field entirely; removed Advanced Options Collapse (saleOrderNo, saleOrderDate, scopeCode); removed `purTypeFlgEnabled` prop
- **R02**: Label "Section / Team" → "Section"
- **R03**: Order Type options filtered to E, O, U only via `orderTypeOptions`

### PurchaseRequisitionV2Page.tsx + PurchaseRequisitionEditPage.tsx
- Removed `purTypeFlgEnabled={...}` prop from PRHeaderCards call site in both pages

### PRLineItemsTable.tsx — targeted edits
- **R04**: Removed Description auto-fill read-only Input Col from entry form
- **R05**: Item Code Col widened (md=6→md=10); UOM Col widened (md=3→md=6)
- **R06**: Qty `initialValue={0}`, validation message changed to "Must be > 0"
- **R07**: Unit Price field wrapped in Space.Compact with adjacent Rate History button (`HistoryOutlined`); Rate History removed from grid Actions column; added `openHistoryForEntryItem` callback
- **R08**: Required Date wrapped in Space.Compact with `InputNumber` days quick-fill (sets DatePicker to `dayjs().add(N, 'day')`); `daysInput` state resets on date picker change and on cancelEdit/startEdit
- **R09**: Remarks moved to its own full-width Row at the bottom of the entry form
- **R10**: Sub Cost Centre Select added to entry form Row 3 (from `useLookupStore().subCosts`); `subCostCode` added to `EntryFormValues`; wired into `startEdit`, `cancelEdit`, both branches of `handleAddOrUpdate`
- **R11**: DrawNo, CatNo Form.Items removed from entry form (fields kept in types, startEdit, handleAddOrUpdate for data preservation)
- **R12**: Grid columns reordered to: #, Item Code, Description, Last Rate, PO Date, Supplier Code, Supplier Name, Qty, UOM, Unit Price, Total, Actions; Req. Date column removed

## TypeScript Result
0 errors, 0 warnings — clean build
