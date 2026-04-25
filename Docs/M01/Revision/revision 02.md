
1. Align with signle row not two Rows
Requested By
Section
Order Type

2. CurrentStock badge need little bit bigger and diffrent color like is it empty or 0 should be in red other wise green

3a. Proposed Redesigned Layout (High Clarity)
🔹 Row 1 — Primary Action Row (High Emphasis)
<Item Code (Search) - full width 8 cols>   <Qty>   <Add Button>
Item Code → dominant (ERP pattern)
Qty + Add inline → fast keyboard entry
🔹 Row 2 — Contextual Info (Auto-filled, Read-only)
UOM | Current Stock | Last Purchase Rate | Last PO Date

👉 These should appear AFTER item selection
👉 Use subtle badges instead of inputs

<Tag color="blue">Stock: 15</Tag>
<Tag color="green">Last Rate: ₹120</Tag>
<Tag>PO: 12-Mar-2026</Tag>
🔹 Row 3 — Pricing + Required Date (Grouped)
Unit Price (₹)   |   Required Date [ + Days Quick Input ]
Keep compact (Space.Compact is correct ✅)
Add ₹ prefix bold + darker color
🔹 Row 4 — Operational Fields
Machine   |   Sub Cost Centre   |   Sample (checkbox inline)
🔹 Row 5 — Optional Metadata (Collapsible)
[ Advanced ▼ ]
Drawing No | Catalogue No | Remarks

👉 Reduces clutter
👉 Keeps FSD compliance

4) Visual SaaS Enhancements (Important)
✅ Card Styling
background: #fff;
border-radius: 12px;
box-shadow: 0 2px 8px rgba(0,0,0,0.04);
padding: 16px 20px;
✅ Section Header Improvement
<Item Entry>
+ icon + subtle divider
<Space>
  <AppstoreOutlined />
  <Text strong>Item Entry</Text>
</Space>
✅ Input Density Fix (ERP Grade)
Reduce vertical spacing
Use size="middle" everywhere
Align labels top-left (not floating)
✅ Primary CTA Fix (Critical UX)

Current:

Button floating right ❌

Fix:

<Space.Compact block>
  <QtyInput />
  <Button type="primary" icon={<PlusOutlined />}>
    Add
  </Button>
</Space.Compact>

👉 Makes action feel transactional
✅ Color System (SaaS Standard)
Element	Color
Primary CTA	Blue (Ant primary)
Info (stock)	Cyan
Financial	Green
Warning	Orange
5) Missing Functional UX (High Impact)
🔴 Must Add (CEO already flagged)
Auto-fetch:
Stock
Last Rate
Last PO Date
Inline display (not modal)
🟡 Add Keyboard UX (ERP Power Users)
Enter → Add item
Tab flow optimized
Auto focus Qty after item select
6) Clean React Implementation (Example)
<Row gutter={12}>
  <Col span={14}>
    <Form.Item name="itemCode" label="Item Code" required>
      <Select showSearch placeholder="Search item..." />
    </Form.Item>
  </Col>

  <Col span={5}>
    <Form.Item name="qty" label="Qty" required>
      <InputNumber min={1} style={{ width: '100%' }} />
    </Form.Item>
  </Col>

  <Col span={5} style={{ display: 'flex', alignItems: 'end' }}>
    <Button type="primary" block icon={<PlusOutlined />}>
      Add
    </Button>
  </Col>
</Row>

{/* Context Info */}
<Space size="middle">
  <Tag>UOM: NOS</Tag>
  <Tag color="cyan">Stock: 15</Tag>
  <Tag color="green">Last Rate: ₹120</Tag>
</Space>
7) Final Recommendation (Priority Order)
🔴 Do First
Add stock + last purchase info
Fix layout grouping (3 zones)
Move Add button inline with Qty
🟡 Next
Add Drawing/Catalogue under collapsible
Improve visual hierarchy (badges + tags)
🟢 Final Polish
Shadows, spacing, density tuning
Keyboard optimization
3b. arget SaaS Structure (ERP Standard)
✅ Split into 3 Sections
[ System Info ]   [ Core Inputs ]   [ Optional / Metadata ]
3) Proposed Layout (Production Ready)
🔷 Section 1 — System Info (Compact / Read-only)
PR Number | Status | Workflow Stage

👉 Convert to badge style instead of inputs

<Tag>PR# Auto</Tag>
<Tag color="blue">Draft</Tag>
<Tag>Step 1/4</Tag>

Why:

Removes dead UI space
Improves clarity
🔷 Section 2 — Core Inputs (Primary Focus)
Row 1:
PR Date (required)   |   Department (required)

Row 2:
Requested By (auto/default)   |   Order Type
Improvements:
Make Department full-width dropdown (searchable)
Auto-fill Requested By (disable editing if not needed)
🔷 Section 3 — Secondary Inputs (De-emphasized)
Row 3:
Section   |   Reference No

👉 Lower visual priority (lighter label / smaller size)

4) Visual SaaS Enhancements
✅ Card Design Upgrade
background: #ffffff;
border-radius: 12px;
padding: 20px;
box-shadow: 0 2px 10px rgba(0,0,0,0.05);
✅ Section Header
<Space>
  <FileTextOutlined />
  <Text strong>Requisition Details</Text>
</Space>
✅ Label Hierarchy
Type	Style
Required fields	Bold + darker
Optional	Light gray
System fields	Badge
✅ Input Styling Fix
Use consistent height (size="middle")
Remove excessive vertical gaps
Align labels left (ERP standard)
5) UX Behavior Improvements (High Impact)
🔴 Must Add
1. Auto Defaults
PR Date = today
Requested By = logged-in user
Department = last used (optional cache)
2. Smart Order Type
Filter options based on department or item type
Avoid full dropdown dump
3. Validation UX
Inline validation (not on submit only)
Highlight missing required fields early
6) Clean React Refactor (Example)
<Row gutter={12}>
  <Col span={8}>
    <Form.Item name="prDate" label="PR Date" required>
      <DatePicker style={{ width: '100%' }} />
    </Form.Item>
  </Col>

  <Col span={16}>
    <Form.Item name="department" label="Department" required>
      <Select showSearch placeholder="Select department..." />
    </Form.Item>
  </Col>
</Row>

<Row gutter={12}>
  <Col span={12}>
    <Form.Item name="requestedBy" label="Requested By">
      <Select disabled />
    </Form.Item>
  </Col>

  <Col span={12}>
    <Form.Item name="orderType" label="Order Type">
      <Select placeholder="Select order type..." />
    </Form.Item>
  </Col>
</Row>

<Row gutter={12}>
  <Col span={12}>
    <Form.Item name="section" label="Section">
      <Input />
    </Form.Item>
  </Col>

  <Col span={12}>
    <Form.Item name="referenceNo" label="Reference No">
      <Input placeholder="E.g. VEN-QUOT-2026" />
    </Form.Item>
  </Col>
</Row>
7) UX Upgrade (SaaS-Level)
Add Top Summary Strip (Important)
PR# | Department | Requested By | Status

👉 Sticky header improves context while scrolling

8) Final Recommendations (Priority)
🔴 Critical
Convert PR Number → badge (not input)
Fix layout grouping (3 sections)
Align Requested By properly
🟡 Important
Improve Department UX (search + default)
Reduce visual noise
🟢 Polish
Add icons + subtle shadows
Consistent spacing & alignment

4.  In grid not binding data for Current Stock, Last Purchase Rate, Last PO Date use rate history function to fetch data and bind it to grid dont use directly create some new function for this auto bind
5. Grid Columns should display header fit column width and data should also fit in column width without overflow

❌ Currency still not standardized to ₹ (INR) across UI/print
❌ Missing in Item Entry:
Drawing No
Catalogue No
Machine No
Current Stock (on item select)
Previous Purchase (Rate, Value, Date)
Medium Issues
❌ "IT..." column truncated → expand to “Items”
❌ View Modal missing Drawing No column
❌ Workflow Step 4 label mismatch → should be Converted
❌ Sub Cost showing 0 → fallback logic not applied in UI
Minor
Test data visible (Cost Centre)
No tooltip for truncated descriptions

