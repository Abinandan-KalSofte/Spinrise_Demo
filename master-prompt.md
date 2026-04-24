# MASTER UI REDESIGN PROMPT
**Role**: Senior ERP UI/UX Architect + React (Ant Design v5) Expert  
**Project**: Spinrise ERP — Purchase Requisition Module  
**Stack**: React 18 · TypeScript (strict) · Ant Design v5 · Vite  

---

## ABSOLUTE RULES — NEVER BREAK

1. **Zero logic changes** — no API calls, state, hooks, or validations touched
2. **Zero field removal** — every input, button, and workflow stays intact
3. **Zero new libraries** — only Ant Design v5 + existing CSS
4. **No TypeScript errors** — run `npx tsc --noEmit` before reporting done
5. **No comments in JSX** — clean production code only

---

## DESIGN SYSTEM (SINGLE SOURCE OF TRUTH)

### Colors
| Role | Value |
|---|---|
| Primary | `#1677FF` |
| Purple | `#7C3AED` |
| Green | `#16A34A` |
| Warning | `#F59E0B` |
| Error | `#DC2626` |
| Page Background | `#F5F7FA` |
| Card Background | `#FFFFFF` |
| Input Fill | `#F9FAFB` |
| Border Default | `#E5E7EB` |
| Border Subtle | `#F1F5F9` |
| Text Primary | `#111827` |
| Text Secondary | `#6B7280` |
| Text Muted | `#9CA3AF` |

### Typography
| Element | Size | Weight | Color |
|---|---|---|---|
| Page Title | 22–24px | 600 | `#111827` |
| Section Title | 16px | 500 | `#1F2937` |
| Card Label | 11px | 700 | `#6B7280` (uppercase) |
| Form Label | 12px | 500 | `#6B7280` |
| Input Text | 14px | 400 | `#111827` |
| Body | 14px | 400 | `#374151` |

### Spacing (8px grid)
- Card internal padding: `24px`
- Gap between cards: `24px`
- Form field vertical gap: `16px–20px`
- Action bar height: `56px`

### Elevation — Card Depth System
```css
/* Default card */
box-shadow: 0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.08);
border: 1px solid #E5E7EB;
border-radius: 12px;

/* Hover card */
box-shadow: 0 4px 12px rgba(0,0,0,0.12);
```

### Input States
```css
/* Default */
background: #F9FAFB;
border: 1px solid #E5E7EB;
border-radius: 8px;

/* Hover */
border-color: #1677FF;

/* Focus */
border-color: #1677FF;
box-shadow: 0 0 0 2px rgba(22,119,255,0.15);
```

### Section Accent System (LEFT BAR + TINTED HEADER)
| Section | Left Bar | Header Tint |
|---|---|---|
| Basic Info | `4px solid #1677FF` | `rgba(22,119,255,0.05)` |
| Department | `4px solid #7C3AED` | `rgba(124,58,237,0.05)` |
| Financial / Order | `4px solid #16A34A` | `rgba(22,163,74,0.05)` |

### Icon Anchor (each section header)
```css
background: rgba(<section-color>, 0.10);
border-radius: 8px;
padding: 6px;
font-size: 16px;
```

---

## PHASE 1 — LOGIN PAGE

**File**: `src/features/auth/pages/LoginPage.tsx`

### Layout
- Full viewport: `min-height: 100vh`
- Two-column on desktop: left panel (branding/illustration) + right panel (form)
- Mobile: single column, form only

### Left Panel (desktop only, `md={12}`)
- Background: `linear-gradient(135deg, #0f172a 0%, #1677FF 100%)`
- Centered content: logo + tagline + low-opacity geometric illustration (CSS shapes, no image required)
- Text color: `#ffffff`

### Right Panel (form card)
- Background: `#ffffff`
- Full height, centered form with max-width `400px`
- Logo on top (small, centered)
- Title: 22px, `#111827`, semi-bold
- Subtitle: 13px, `#6B7280`

### Inputs
- `size="large"` (height 44px+)
- Variant: filled (`background: #F9FAFB`)
- `border-radius: 8px`
- Focus state: blue ring
- Icons in prefix slot

### CTA Button
- `type="primary"`, `block`, `size="large"`
- `height: 48px`
- `border-radius: 8px`
- Hover: slight `translateY(-1px)` + stronger shadow

### Avoid
- Default Ant Design outlined white inputs
- Centered single-column layout that wastes space

---

## PHASE 2 — PR FORM PAGE (new-v2)

### 2A. Action Bar — `PurchaseRequisitionV2Page.tsx`

Sticky bar anchored below topbar (`top: 56px`, `z-index: 100`):

```
[Left]                                              [Right]
 ▌ Purchase Requisition   PR-0042   [DRAFT badge]    [Cancel] [Save Draft] [Submit ▶]
```

- `background: #ffffff`
- `border-bottom: 1px solid #E5E7EB`
- `box-shadow: 0 2px 8px rgba(15,23,42,0.07)`
- Left accent bar: `width: 4px, height: 32px, background: #1677FF, border-radius: 2px`
- Module label above title: `10px, uppercase, #94a3b8`
- **Submit for Approval** button: `type="primary"`, `padding: 0 24px`, strong blue
- **Save Draft**: `type="default"`
- **Cancel**: `type="text"`

### 2B. Header Cards — `PRHeaderCards.tsx`

Three equal-width cards in a Row (`Col xs={24} md={8}`), `gutter={[24, 24]}`:

**Card structure** (same pattern for all three):
```tsx
<Card
  bordered={false}
  style={{
    borderRadius: 12,
    borderLeft: '4px solid <accent>',
    boxShadow: '0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.08)',
  }}
  styles={{
    header: { background: '<tint>', borderBottom: '1px solid #F1F5F9', padding: '12px 20px' },
    body: { padding: '20px 20px 8px' },
  }}
  title={
    <span style={{ display: 'flex', alignItems: 'center', gap: 10 }}>
      <span style={{ background: '<icon-bg>', borderRadius: 8, padding: 6 }}>
        <Icon style={{ color: '<accent>', fontSize: 16 }} />
      </span>
      <Typography.Text strong style={{ fontSize: 14, color: '#1F2937' }}>Section Title</Typography.Text>
    </span>
  }
>
```

**Card 1 — Basic Info** (`#1677FF`):
- Fields: PR Date · Reference No · Section · PO Group

**Card 2 — Department & Personnel** (`#7C3AED`):
- Fields: Department · Requested By · Indent Type (if `purTypeFlgEnabled`) · Scope

**Card 3 — Financial / Order Reference** (`#16A34A`):
- Fields: Sale Order No · Sale Order Date · PR Number (read-only, if saved)

**Form field styling** (apply via `ConfigProvider` override inside the Form):
- Labels: `font-size: 12px, color: #6B7280`
- Inputs: `background: #F9FAFB, border-radius: 8px`
- Select, DatePicker: same as inputs
- `gutter={[16, 0]}` on Row, `Form.Item` `style={{ marginBottom: 16 }}`

### 2C. Advanced Section (Collapse)

Refine existing `<Collapse ghost>`:
- Add `<Divider style={{ margin: '0 0 12px' }} />` above collapse
- Panel label: gear icon + "Advanced Options" text, muted
- Panel body: `background: #FAFAFA, border-radius: 8px, padding: 16px`

---

## PHASE 3 — LINE ITEMS GRID

**File**: `components/v2/PRLineItemsTable.tsx`

### Table Visual
Add to `<Table>` props:
```tsx
rowClassName={(_, index) =>
  editingKey === _.key
    ? 'pr-row--editing'
    : index % 2 === 1 ? 'pr-row--stripe' : ''
}
```

### CSS classes to add in `index.css`:
```css
/* Zebra stripe */
.pr-row--stripe td { background: #FAFAFE !important; }

/* Row hover */
.ant-table-tbody > tr:not(.pr-row--editing):hover > td {
  background: #EFF6FF !important;
  box-shadow: inset 0 0 0 1px rgba(22,119,255,0.08);
}

/* Editing row highlight */
.pr-row--editing td { background: #FFFBEB !important; }

/* Row actions — hide until hover */
.pr-row-actions-v2 { opacity: 0; transition: opacity 0.15s; }
.ant-table-row:hover .pr-row-actions-v2 { opacity: 1; }

/* Sticky table header */
.ant-table-thead > tr > th { position: sticky; top: 0; z-index: 2; }

/* Currency column */
.col-currency { text-align: right !important; font-variant-numeric: tabular-nums; }
```

### Total Row
Add a summary footer row inside the Card footer div:
```
| — | — | — | — | — | Total Qty: {n} | — | RM {subtotal} | — |
```
Style: `font-weight: 700`, `background: #F8FAFC`, `border-top: 2px solid #E5E7EB`

### Empty State
```tsx
<div style={{ padding: '56px 0', textAlign: 'center' }}>
  <FileAddOutlined style={{ fontSize: 40, color: '#D1D5DB', display: 'block', marginBottom: 12 }} />
  <Typography.Text type="secondary" style={{ fontSize: 14, display: 'block' }}>No line items yet</Typography.Text>
  <Button type="primary" icon={<PlusOutlined />} onClick={handleAddItem} style={{ marginTop: 16 }}>
    Add First Item
  </Button>
</div>
```

---

## PHASE 4 — LIST PAGE

### 4A. KPI Cards — `PurchaseRequisitionListPage.tsx`

Insert above filter card. Four `Col span={6}` cards (responsive: `xs={24} sm={12} lg={6}`):

```tsx
const KPI_CARDS = [
  { label: 'Total PRs',  value: total,  color: '#1677FF', icon: <FileTextOutlined />,      bg: 'rgba(22,119,255,0.08)'  },
  { label: 'Open',       value: '—',    color: '#F59E0B', icon: <ClockCircleOutlined />,   bg: 'rgba(245,158,11,0.08)'  },
  { label: 'Approved',   value: '—',    color: '#16A34A', icon: <CheckCircleOutlined />,   bg: 'rgba(22,163,74,0.08)'   },
  { label: 'Cancelled',  value: '—',    color: '#DC2626', icon: <CloseCircleOutlined />,   bg: 'rgba(220,38,38,0.08)'   },
]
```

Each card:
```tsx
<Card bordered={false} style={{ borderRadius: 12, boxShadow: '0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.06)' }}>
  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
    <div>
      <Typography.Text style={{ fontSize: 12, color: '#6B7280', display: 'block', marginBottom: 6 }}>
        {label}
      </Typography.Text>
      <Typography.Title level={3} style={{ margin: 0, color, fontSize: 28 }}>{value}</Typography.Title>
    </div>
    <div style={{ background: bg, borderRadius: 10, padding: 10, fontSize: 20, color }}>
      {icon}
    </div>
  </div>
  <div style={{ height: 3, background: color, borderRadius: 2, marginTop: 16, opacity: 0.3 }} />
</Card>
```

> For Open/Approved/Cancelled counts: show `—` for now (no extra API call). Hook up when backend adds status breakdown endpoint.

### 4B. Filter Bar — `PRFilterBar.tsx`

- Search input: `border-radius: 20px`, `background: #F9FAFB`, prefix `SearchOutlined`
- Other inputs: `border-radius: 8px`, `size="small"`
- Wrap all filter inputs in a single `<Card>` with `padding: '12px 16px'`
- `New PR` button: `type="primary"`, stays far right

### 4C. Data Table — `PRDataTable.tsx`

- `onRow` returns hover style: `{ style: { cursor: 'pointer' } }`
- Row hover CSS (via `index.css`): `background: #F0F9FF`
- Action buttons: `type="text"`, icon-only, `Tooltip` on each
- Action column: apply class `pr-row-actions` (fade-in on row hover — already in CSS)

---

## PHASE 5 — SIDEBAR

**File**: `src/shared/layouts/MainLayout.tsx`

- Verify active menu item has: `box-shadow: 0 0 0 3px rgba(22,119,255,0.15)` around pill
- Verify `<Sider collapsible>` prop is set — enables icon-only collapse
- Section group labels: `font-size: 10px, font-weight: 700, letter-spacing: 0.08em, text-transform: uppercase, color: rgba(148,163,184,0.5)`
- No changes to dark theme colors (already correct: `#0F172A`)

---

## EXECUTION ORDER (strict sequence)

```
Step 1  → themeConfig.ts          colorSuccess: '#22C55E'
Step 2  → index.css               zebra, hover, sticky header, input focus, row-actions CSS
Step 3  → LoginPage.tsx           two-column glassmorphism layout
Step 4  → PRHeaderCards.tsx       left accent bar + tinted header + icon anchors + spacing
Step 5  → PurchaseRequisitionV2Page.tsx  action bar redesign + advanced panel polish
Step 6  → PRLineItemsTable.tsx    zebra rowClassName + total row + empty state + action fade
Step 7  → PurchaseRequisitionListPage.tsx  KPI cards
Step 8  → PRFilterBar.tsx         pill search + spacing
Step 9  → PRDataTable.tsx         row hover class + action fade
Step 10 → MainLayout.tsx          sidebar active glow verify
```

---

## QUALITY GATES (check before each step is marked done)

- [ ] No white-on-white flat sections
- [ ] Every card has visible shadow and border separation from `#F5F7FA` background
- [ ] Left accent bar present on all 3 header cards
- [ ] Inputs have `#F9FAFB` fill (not pure white, not outlined)
- [ ] Labels are `12px #6B7280`
- [ ] Action bar is sticky and has shadow
- [ ] `npx tsc --noEmit` → 0 errors
- [ ] No `any` types introduced
- [ ] No comments added to JSX

---

## DO NOT TOUCH
- `purchaseRequisitionApi.ts` · `lookupApi.ts` · all `*.ts` API files
- `useLookupStore.ts` · `useAuthStore.ts` · all Zustand stores
- `usePurchaseRequisitionList.ts` · all hooks
- `types.ts`
- All backend files
