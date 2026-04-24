Act as Senior ERP UI Architect (React + Ant Design + AG Grid).

Goal:
Refactor New Purchase Requisition screen for:
- Faster data entry
- Clean hierarchy
- Modern ERP look (Zoho / Microsoft style)
- High contrast + depth

STRICT:
- No API/backend changes
- No field removal except specified
- Keep validations
- UI/UX only

-----------------------------------
CHANGES
-----------------------------------

1. REMOVE FIELD
- Remove "Scope" from Financial Info

-----------------------------------

2. RENAME
- "Line Items" → "Items"

-----------------------------------

3. ROW HANDLING (CRITICAL)

REMOVE:
- "Add Item" button

IMPLEMENT:
- Always keep minimum 1 row
- Auto-add new row when:
  - User completes last row (on Enter or last cell blur)

- Auto-remove:
  - If last row is empty

- Focus:
  - New row → auto focus Item Code

-----------------------------------

4. TABLE (REPLACE WITH AG GRID)

Use AG Grid instead of Ant Table

FEATURES:
- Editable cells
- Keyboard navigation:
  Tab → next cell
  Enter → next row
- Auto row add logic
- Virtual scrolling

COLUMNS:
- Item Code (searchable)
- Description
- Qty
- UOM
- Unit Price
- Total (auto calc)
- Req Date
- Actions (delete)

UI:
- Solid header background
- Light text (high contrast)
- Dense rows
- Hover highlight

-----------------------------------

5. FORM REDESIGN (IMPORTANT)

REMOVE:
- 3 card layout (Basic / Dept / Financial)

REPLACE WITH:
- Single compact form panel

LAYOUT:
Row1: PR No | PR Date | Department
Row2: Requester | Required Date | Cost Centre
Row3: Section/Team | Order Type
Row4: Remarks (full width)

STYLE:
- Label top aligned
- Reduce spacing
- Align inputs properly

-----------------------------------

6. VISUAL DESIGN FIX

PROBLEM:
- Low contrast
- Borders messy
- Background blending

FIX:

- Form background: pure white
- Section container: subtle border (token.colorBorderSecondary)
- Inputs:
  - border: clear visible
  - focus: primary color outline

- Remove colored card backgrounds
- Use left border accent (optional)

TYPOGRAPHY:
- Label: medium weight
- Value: normal
- Section title: bold

-----------------------------------

7. ADVANCED FIELDS

CHANGE:
- Remove inline expanded block

USE:
- Drawer / Side panel
- Open per row

-----------------------------------

8. SUMMARY

- Keep bottom/right summary
- Auto update totals
- Highlight change briefly

-----------------------------------

OUTPUT

- Refactored React components
- AG Grid implementation
- Clean form layout
- No pseudo code

-----------------------------------

EXPECTED RESULT

- ERP-grade form (fast, clean)
- Excel-like item entry
- Reduced clicks
- High readability