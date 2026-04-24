# UI Redesign — Process Plan
**Scope**: Purchase Requisition Module — SaaS-grade visual upgrade  
**Rules**: No logic changes · No field removal · UI/UX only

---

## Phase 1 — Login Page

**File**: `src/features/auth/pages/LoginPage.tsx`

- Full-screen gradient background: dark → `#1677FF`
- Centered glassmorphism card: `backdrop-filter: blur`, soft shadow, `border-radius: 16px+`
- Inputs: `size="large"`, filled/soft background style
- Labels: `12px`, muted color (`#6b7280`)
- CTA button: full-width, `#1677FF`, hover elevation
- Optional: low-opacity left-side illustration panel

---

## Phase 2 — PR Form Page (new-v2)

**Files**:
- `components/v2/PRHeaderCards.tsx`
- `pages/PurchaseRequisitionV2Page.tsx`

### Header Cards
- 3 side-by-side cards using `Col xs={24} md={8}`:
  - **Basic Info** → Blue accent (`#1677FF`)
  - **Department** → Purple accent (`#7c3aed`)
  - **Financial** → Green accent (`#16a34a`)
- Each card: `box-shadow`, `border-radius: 10px`, top accent border `3px solid <color>`, internal padding `24px`
- Section headers: icon + title, colored icon box

### Form UX
- Increase field spacing: `gutter={[16, 20]}`
- Labels: `12px`, `color: #6b7280`
- All dropdowns: `showSearch` enabled
- DatePicker: format `DD-MM-YYYY`, full width
- Numeric inputs: `text-align: right`

### Top Action Bar (`PurchaseRequisitionV2Page`)
- Sticky (`position: sticky, top: 56px`)
- Right-aligned buttons: `Cancel` · `Save Draft` · `Submit for Approval (primary)`
- Show PR No + status badge on the left

### Advanced Section
- Collapse panel (already using `<Collapse>`) — refine styling: add divider, icon, better spacing

---

## Phase 3 — Line Items Grid

**File**: `components/v2/PRLineItemsTable.tsx`

- **Zebra rows**: alternate row `background: #fafafe`
- **Row hover**: `background: #eff6ff`, subtle lift shadow
- **Row actions**: hidden by default, visible on `tr:hover`
- **Sticky header**: `position: sticky` on `thead`
- **Currency columns**: right-aligned (`text-align: right`)
- **Total row**: bold text, `background: #f8fafc`, top border
- Inline editing already implemented — refine edit row highlight color
- Empty state: icon + "Add first item" button

---

## Phase 4 — List Page

**Files**:
- `pages/PurchaseRequisitionListPage.tsx`
- `components/pr-list/PRFilterBar.tsx`
- `components/pr-list/PRDataTable.tsx`

### KPI Cards (add above filter bar)
Four stat cards in a `Row gutter={16}`:
| Card | Color | Icon |
|---|---|---|
| Total PRs | Blue | `FileTextOutlined` |
| Open / Draft | Orange | `ClockCircleOutlined` |
| Approved | Green | `CheckCircleOutlined` |
| Cancelled | Red | `CloseCircleOutlined` |
> Data: derive counts from current `total` + status breakdown (or show `—` if not available from paginated endpoint)

### Filter Bar
- Pill-style inputs: `border-radius: 20px` on search input
- Single horizontal bar, left-aligned search, filters to the right
- `New PR` button stays far right (primary)

### Table
- Status: already `<Tag>` — ensure consistent colors from `STATUS_TAG` config
- Actions: icon-only buttons, tooltip on hover, fade-in on row hover (already added in CSS)
- Row hover: `background: #f0f9ff` soft elevation

---

## Phase 5 — Sidebar

**File**: `src/shared/layouts/MainLayout.tsx` (or equivalent sidebar component)

- Already dark (`#0F172A`) — verify active item has pill highlight + subtle glow (`box-shadow: 0 0 0 3px rgba(22,119,255,0.2)`)
- Collapse to icon-only mode: verify `<Sider collapsible>` is wired
- Group labels: `PROCUREMENT`, `REPORTS` — uppercase, `10px`, muted

---

## Global Design System Checklist

| Token | Value | Applied via |
|---|---|---|
| Primary | `#1677FF` | `themeConfig.ts` ✅ |
| Success | `#22C55E` | update `colorSuccess` |
| Warning | `#F59E0B` | `themeConfig.ts` ✅ |
| Background | `#F5F7FA` | `index.css` ✅ |
| Card shadow | `0 1px 4px rgba(15,23,42,0.08)` | inline ✅ |
| Border radius | `10px` cards, `6px` buttons | `themeConfig.ts` ✅ |
| Font size body | `14px` | `themeConfig.ts` ✅ |
| Page title | `20–24px semi-bold` | per-page inline |
| Spacing grid | `8px base` | gutter / padding values |

---

## Execution Order

```
1. themeConfig.ts        → fix colorSuccess token
2. LoginPage.tsx         → glassmorphism redesign
3. PRHeaderCards.tsx     → card accent borders, spacing
4. PurchaseRequisitionV2Page.tsx → action bar, advanced panel
5. PRLineItemsTable.tsx  → zebra, hover, total row, sticky header
6. PurchaseRequisitionListPage.tsx → KPI cards
7. PRFilterBar.tsx       → pill inputs
8. PRDataTable.tsx       → row hover, action fade
9. index.css             → global hover/sticky/zebra CSS
10. MainLayout sidebar   → glow on active item
```

---

## Files NOT to touch
- All `*.ts` API files
- All store files (`useLookupStore`, `useAuthStore`, etc.)
- All hooks (`usePurchaseRequisitionList`, etc.)
- All backend code

# My Points
--------------------------------
FORM PAGE — VISUAL DEPTH & CONTRAST (CRITICAL)
--------------------------------

OBJECTIVE:
Improve visual hierarchy, depth, and contrast to achieve SaaS-grade ERP UI.
Avoid flat appearance. Maintain clean and professional look (not flashy).

--------------------------------
1. BACKGROUND LAYERING
--------------------------------
- Page background: #F5F7FA (neutral base)
- Cards must NOT blend with background

Add contrast:
- Card background: #FFFFFF
- Subtle border: 1px solid #E5E7EB

--------------------------------
2. CARD DEPTH SYSTEM
--------------------------------
Use multi-layer shadows (NOT flat shadow):

- Default:
  box-shadow: 0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.08)

- Hover:
  box-shadow: 0 4px 12px rgba(0,0,0,0.12)

- Border radius: 12px

Each section card must feel slightly elevated from background.

--------------------------------
3. SECTION CONTRAST (VERY IMPORTANT)
--------------------------------
Do NOT rely only on borders.

Add LEFT ACCENT BAR for each card:

- Basic Info → border-left: 4px solid #1677FF
- Department → border-left: 4px solid #7C3AED
- Financial → border-left: 4px solid #16A34A

Header:
- Slight tinted background:
  - Blue: rgba(22,119,255,0.05)
  - Purple: rgba(124,58,237,0.05)
  - Green: rgba(22,163,74,0.05)

--------------------------------
4. TYPOGRAPHY HIERARCHY
--------------------------------
- Page Title:
  22px, semi-bold, color: #111827

- Section Title:
  16px, medium, color: #1F2937

- Labels:
  12px, color: #6B7280

- Input text:
  14px–16px, color: #111827

--------------------------------
5. INPUT CONTRAST (CRITICAL FIX)
--------------------------------
Current issue: inputs look flat and blend.

Fix:

- Background: #F9FAFB (light grey fill)
- Border: 1px solid #E5E7EB
- Border radius: 8px

States:
- Hover:
  border-color: #1677FF

- Focus:
  border-color: #1677FF
  box-shadow: 0 0 0 2px rgba(22,119,255,0.15)

--------------------------------
6. SPACING SYSTEM (DEPTH THROUGH SPACE)
--------------------------------
- Card padding: 24px
- Gap between cards: 24px
- Field vertical spacing: 16–20px

Group related fields:
- Use internal spacing blocks (not continuous fields)

--------------------------------
7. DIVIDERS & GROUPING
--------------------------------
Inside each card:
- Use subtle divider:
  border-top: 1px solid #F1F5F9
- Add spacing before/after divider

Use grouping for:
- Dates
- Reference fields
- Cost-related fields

--------------------------------
8. ICON VISUAL ANCHOR
--------------------------------
Each section header:
- Add icon inside soft background

Example:
- Background: rgba(22,119,255,0.1)
- Border-radius: 8px
- Padding: 6px

--------------------------------
9. ACTION BAR CONTRAST
--------------------------------
Sticky action bar must stand out:

- Background: #FFFFFF
- Border-bottom: 1px solid #E5E7EB
- Subtle shadow

Primary button:
- Strong blue (#1677FF)
- Slight gradient or elevation on hover

--------------------------------
10. AVOID
--------------------------------
- No flat white-on-white sections
- No heavy borders everywhere
- No low-contrast grey text
- No excessive colors (keep controlled palette)

--------------------------------
EXPECTED RESULT
--------------------------------
- Clear separation between sections
- Strong visual hierarchy
- Better readability
- Professional SaaS ERP look
- Reduced cognitive load for users