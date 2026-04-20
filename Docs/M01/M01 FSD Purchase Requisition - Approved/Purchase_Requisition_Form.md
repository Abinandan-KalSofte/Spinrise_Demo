# Purchase Requisition Form (tmpPOINDENT)

A Visual Basic 6 form used to create and manage Purchase Requisitions (PR / Indent).

---

## Header Section

| Field | Type | Notes |
|---|---|---|
| PR No. | Text (read-only) | Auto-generated requisition number |
| PR Date | Text / Date | Date of requisition (dd/MM/yyyy) |
| Reference | Text | Optional reference number |
| Requester Name | Text | Name of the person raising the requisition |
| User | Text (read-only) | Logged-in user |
| Department * | Text / Lookup | Required — triggers Department Listing |
| Section | Text | Sub-division within the department |
| Order Type * | Dropdown (Combo) | Required — e.g. Purchase Order Type |
| Requisition Type | Text / Lookup | Type of requisition |
| Budget Amount | Text (numeric) | Available budget amount |
| Scope | Text / Lookup | Scope of the requisition |
| GIN No. | Text | Goods Issue Note reference |
| TC | Text | Transaction code or type |

> Fields marked with `*` are mandatory.

---

## Item Details Section

Repeating section — one row per line item. Use **New Item** to add a line, **Add** to confirm it.

| Field | Type | Notes |
|---|---|---|
| Item Code | Text | Lookup — opens Item Listing |
| Item Name | Text | Auto-filled from Item Code |
| Item Group | Text | Auto-filled (Item Group Code + Name) |
| UOM | Label | Unit of Measure — auto-filled |
| Machine | Text | Associated machine / equipment |
| Model | Text | Machine model |
| Quantity Required * | Numeric | Required quantity |
| Current Stock | Label (read-only) | Current stock level |
| Current Qty | Label (read-only) | Current quantity in store |
| Rate | Numeric | Unit rate |
| Approx. Cost | Numeric | Approximate total cost |
| Max. Cost | Numeric | Maximum allowable cost |
| Sub Cost Centre | Text / Lookup | Cost centre for the line item |
| Required Days / Date | Text / Date | When the item is needed |
| Samples Yes/No | Checkbox | Tick if samples are required |
| Remarks | Text (multiline) | Additional notes for the line item |
| Place | Text | Delivery / location details |

### Item Details Toolbar Buttons

| Button | Action |
|---|---|
| New Item | Clear fields to enter a new line item |
| Add | Add / save the current line item to the grid |
| Item History | View purchase history for the selected item |
| OK | Confirm item selection from lookup |

---

## Item Listing Lookup (pop-up)

Opened when searching for an item. Supports:
- Search / filter by Item Group
- Grid display of matching items
- Double-click a row to select

---

## Approval Status Indicators

The form displays the current approval chain status as read-only labels:

| Label | Meaning |
|---|---|
| First Level Approved | Approved by first approver |
| Second Level Approved | Approved by second approver |
| Third Level Approved | Approved by third approver |
| Final Level Approved | Fully approved |
| Not Approved | Pending or rejected |

---

## Action Buttons (Footer / Toolbar)

| Button | Action |
|---|---|
| OK | Save / submit the requisition |
| Cancel | Discard changes |
| Query | Search / retrieve existing PRs |
| Addition | Switch to add mode |
| Modification | Switch to edit mode |
| Deletion | Delete the requisition or a line item |
| Close | Close the form |

---

## Deletion Options (pop-up)

When deletion is triggered, the user must choose:

- **Complete Deletion** — removes the entire requisition
- **Line Deletion** — removes only the selected line item

---

## Find / Search (pop-up — Frame5)

| Field | Type | Notes |
|---|---|---|
| Indent Number | Text | Enter PR / Indent number to search |
| Find | Button | Execute the search |
| OK | Button | Confirm selection |
| Cancel | Button | Cancel search |

---

## PR Listing / Indent Listing (pop-up)

Displays a grid of existing PRs. Double-click a row to load it into the form.

---

## Item History (pop-up)

Shows the purchase history for the selected item in a read-only grid. Closed via the **Close** button.

---

## Report Footer Option

A toggle displayed at print / report time:

- **Yes** — include a footer on the report
- **No** — suppress the footer

---

## Referenced Lookup Screens

The form opens these secondary listing / lookup forms:

| Lookup Name | Purpose |
|---|---|
| Department Listing | Pick a department |
| Section | Sub-section within department |
| Cost Centre Listing | Pick a cost centre |
| SubCost Centre Listing | Pick a sub cost centre |
| Item Listing | Search and pick an item |
| ItemGroup Listing | Filter by item group |
| Machine Listing | Pick a machine |
| Scope Listing | Pick a scope value |
| Requester Name Listing | Pick the requester |
| Supplier Code / Name | Supplier details (view only) |
| Purchase Order Type Listing | Pick order type |
| Requisition Type | Pick requisition type |
| Category Listing | Pick item category |
| Group Listing | Pick item group |

---

## Technical Notes

- **Platform:** Visual Basic 6 (VB6)
- **Form name:** `tmpPOINDENT`
- **Window state:** Maximized MDI Child
- **Controls used:** MSDataGrid, FPSpread (spreadsheet grid), MaskedEdit, TabDlg (tab strip), CommonControls, CrystalReports OCX
- **Date format:** `dd/MM/yyyy`
- **Grid columns (main item grid):** Item Code, Item Name, UOM, Quantity Required, Rate, Approx. Cost, and others
