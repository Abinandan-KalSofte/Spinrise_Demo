# SpinRise Frontend — Blueprint v1.1 Implementation Prompts

**Blueprint source**: `C:\Users\Admin\Downloads\SPINRISE_UIDesign_Blueprint_v1.1_Revised_09May2026.md`
**Project root**: `D:\Spinrise\Development\spinrise-web\`
**Date**: 09 May 2026 | Prepared by: Abinandan N

---

## How to Use This File

Copy each prompt block and paste it directly into Claude Code.
Every prompt is self-contained — it carries all the context Claude needs.
Run them in sprint order. Later prompts assume earlier ones are complete.

---

## Global Rules (Apply to Every Prompt)

These rules govern every implementation task in this project. They are not repeated inside each prompt but are always in force:

**CSS Strategy (two-layer rule)**
- `src/index.css` — global CSS ONLY: base reset, CSS custom properties (variables), and `.ant-*` Ant Design overrides. Nothing else goes here.
- New component-specific styles → create a `.module.css` file beside the component. Import with `import styles from './ComponentName.module.css'` and apply with `className={styles.foo}`.
- Inline `style={{}}` — ONLY for values that are computed at runtime from state or props (e.g., dynamic width from a variable, color from an API response). Never for static values.
- When editing an existing component for any blueprint task, extract its static inline styles into a `.module.css` at the same time.

**Blueprint compliance**
- All colors must come from the token values listed in Sprint 1. No hex values outside the blueprint palette.
- All label text must be Title Case. No ALL CAPS, no abbreviations, no hyphens in labels.
- All fields: height 32px compact, 28px small (grid cells). Never taller.

**No new libraries** beyond what Sprint 1 installs (lucide-react, react-hook-form, zod, @hookform/resolvers).

---

## SPRINT 1 — Foundation: Tokens, Theme, CSS Variables, Libraries

### Prompt S1-1: Rewrite Design Tokens

```
Rewrite `src/shared/styles/tokens.ts` in the SpinRise frontend project at
D:\Spinrise\Development\spinrise-web.

Replace ALL existing content with blueprint-exact values. The current file uses
wrong colors (#1677ff, #111827, etc.) and missing tokens. The approved palette
and sizes come from Blueprint v1.1 §2.1, §2.2, and §2.3.

New token file must export these exact constants:

COLOR PALETTE (Blueprint §2.1):
  COLOR_PRIMARY        = '#185FA5'   // Primary buttons, links, active menu
  COLOR_PRIMARY_DARK   = '#0C447C'   // Headings, hover state, active sidebar border
  COLOR_PRIMARY_LIGHT  = '#E6F1FB'   // Selected row highlight, active input border tint
  COLOR_BG             = '#F5F5F3'   // App/page background
  COLOR_SURFACE_ALT    = '#FAFAF8'   // Section header bands, alternate table rows
  COLOR_BORDER         = '#E2E2E2'   // Field borders, table separators, dividers
  COLOR_TEXT_900       = '#1A1A1A'   // Primary body text, labels, data
  COLOR_TEXT_600       = '#4A4A4A'   // Secondary labels, helper text
  COLOR_TEXT_400       = '#888888'   // Placeholder text, metadata
  COLOR_SUCCESS        = '#3B6D11'   // Approved status, positive values
  COLOR_SUCCESS_LIGHT  = '#EAF3DE'   // Success badge background
  COLOR_WARNING        = '#BA7517'   // Warning alerts, attention states
  COLOR_WARNING_LIGHT  = '#FAEEDA'   // Warning badge background, note boxes
  COLOR_ERROR          = '#A32D2D'   // Validation errors, rejected status
  COLOR_ERROR_LIGHT    = '#FCEBEB'   // Error badge background, error field tint
  COLOR_PURPLE         = '#722ED1'   // PO Raised status badge
  COLOR_PURPLE_LIGHT   = '#F0E6FB'   // PO Raised badge background

SPACING (Blueprint §2.3 — 4px base unit):
  SP_1 = 4     // Icon padding, tight badge padding
  SP_2 = 8     // Field internal padding top/bottom, inline gap
  SP_3 = 12    // Label-to-field gap, small section gap
  SP_4 = 16    // Field horizontal padding, card padding
  SP_6 = 24    // Section body padding, major content gap
  SP_8 = 32    // Between form sections, card gap

FIELD & LAYOUT SIZES (Blueprint §2.3):
  FIELD_HEIGHT         = 32    // Standard ERP input, date picker, select (compact)
  FIELD_HEIGHT_SMALL   = 28    // Grid cell inputs, compact toolbar controls
  ROW_HEIGHT_GRID      = 32    // Transaction line item grid rows
  TOP_NAV_HEIGHT       = 48    // Fixed application header bar
  SIDEBAR_EXPANDED     = 220   // Default sidebar width
  SIDEBAR_COLLAPSED    = 60    // Collapsed icon-only width
  PAGE_MAX_WIDTH       = 1280  // Maximum layout width on wide screens

TYPOGRAPHY (Blueprint §2.2):
  FONT_PAGE_TITLE  = { size: 22, weight: 800 }   // H1 — Page Title
  FONT_H2          = { size: 16, weight: 700 }   // Section Heading
  FONT_H3          = { size: 14, weight: 600 }   // Sub-heading
  FONT_BODY        = { size: 13, weight: 400 }   // Body text
  FONT_LABEL       = { size: 12, weight: 600 }   // Field labels — weight 600 not 500
  FONT_CAPTION     = { size: 11, weight: 400 }   // Caption / metadata
  FONT_TABLE_HDR   = { size: 11, weight: 600 }   // Table header cells
  FONT_TABLE_DATA  = { size: 12, weight: 400 }   // Table data cells
  FONT_MONO        = { size: 11, weight: 500 }   // Reference numbers (JetBrains Mono)
  FONT_BADGE       = { size: 11, weight: 600 }   // Status badges

CARD (keep for backward compat, update values):
  CARD_SHADOW        = '0 1px 4px rgba(0,0,0,0.06)'   // shadow-sm
  CARD_BORDER_RADIUS = 8
  CARD_BORDER        = '1px solid #E2E2E2'             // use COLOR_BORDER value

KPI CARD (Blueprint §4.1):
  KPI_CARD_MAX_HEIGHT  = 72     // Cards must not exceed this
  KPI_CARD_PADDING     = '12px 16px'
  KPI_ICON_BOX_SIZE    = 36
  KPI_ICON_BOX_RADIUS  = 6

Remove the old color constants (COLOR_BRAND, COLOR_DANGER, COLOR_TEXT_PRIMARY,
COLOR_TEXT_SECONDARY, COLOR_TEXT_MUTED, ACCENT_BAR_COLOR, DOC_NUMBER_COLOR,
SECTION_TITLE_COLOR, TITLE_BAR_BG, TITLE_BAR_HEIGHT, etc.) entirely.

TypeScript: export each constant individually with `export const`. No default export.
No comments beyond inline usage hints on one line max.
```

---

### Prompt S1-2: Add CSS Custom Properties to index.css

```
Edit `src/index.css` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web.

Insert a `:root` block at the very top of the file (before the BASE RESET section)
that declares CSS custom properties for every blueprint token.
These variables make token values available in .module.css files without importing
tokens.ts into CSS-in-JS.

Add this block exactly:

:root {
  /* Colors — Blueprint §2.1 */
  --color-primary:        #185FA5;
  --color-primary-dark:   #0C447C;
  --color-primary-light:  #E6F1FB;
  --color-bg:             #F5F5F3;
  --color-surface-alt:    #FAFAF8;
  --color-border:         #E2E2E2;
  --color-text-900:       #1A1A1A;
  --color-text-600:       #4A4A4A;
  --color-text-400:       #888888;
  --color-success:        #3B6D11;
  --color-success-light:  #EAF3DE;
  --color-warning:        #BA7517;
  --color-warning-light:  #FAEEDA;
  --color-error:          #A32D2D;
  --color-error-light:    #FCEBEB;
  --color-purple:         #722ED1;
  --color-purple-light:   #F0E6FB;

  /* Spacing — Blueprint §2.3 */
  --sp-1: 4px;
  --sp-2: 8px;
  --sp-3: 12px;
  --sp-4: 16px;
  --sp-6: 24px;
  --sp-8: 32px;

  /* Field & layout sizes */
  --field-height:       32px;
  --field-height-sm:    28px;
  --row-height-grid:    32px;
  --top-nav-height:     48px;
  --sidebar-expanded:   220px;
  --sidebar-collapsed:  60px;
  --page-max-width:     1280px;

  /* Typography */
  --font-label-size:    12px;
  --font-label-weight:  600;
  --font-body-size:     13px;
  --font-caption-size:  11px;
  --font-badge-size:    11px;
  --font-mono:          'JetBrains Mono', 'Cascadia Code', 'Consolas', monospace;
}

Also update the body font-family in the BASE RESET section to:
  font-family: Inter, 'Segoe UI', system-ui, -apple-system, sans-serif;

Update .main-content.ant-layout-content:
  background: var(--color-bg);
  min-height: calc(100vh - var(--top-nav-height));

Update .topbar.ant-layout-header:
  height: var(--top-nav-height);   /* was 56px — change to 48px */
  line-height: normal;

Do not change any other existing CSS rules in this pass.
```

---

### Prompt S1-3: Rewrite Ant Design Theme Config

```
Rewrite `src/shared/theme/themeConfig.ts` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web.

This file configures the Ant Design 5 ConfigProvider theme. It must now use
Blueprint v1.1 §2.1 colors and §2.3 sizes exactly.

New content:

import type { ThemeConfig } from 'antd'

const themeConfig: ThemeConfig = {
  token: {
    colorPrimary:           '#185FA5',
    colorPrimaryHover:      '#0C447C',
    colorBgLayout:          '#F5F5F3',
    colorBgContainer:       '#ffffff',
    colorBorder:            '#E2E2E2',
    colorText:              '#1A1A1A',
    colorTextSecondary:     '#4A4A4A',
    colorTextPlaceholder:   '#888888',
    colorError:             '#A32D2D',
    colorSuccess:           '#3B6D11',
    colorWarning:           '#BA7517',
    colorLink:              '#185FA5',
    fontFamily:             "Inter, 'Segoe UI', system-ui, -apple-system, sans-serif",
    fontSize:               13,
    fontSizeSM:             12,
    borderRadius:           6,
    borderRadiusSM:         4,
    borderRadiusLG:         8,
    controlHeight:          32,    // field height compact standard
    controlHeightSM:        28,    // field height small
    controlHeightLG:        40,    // only for login form buttons
    boxShadow:              '0 1px 4px rgba(0,0,0,0.06)',
    boxShadowSecondary:     '0 1px 2px rgba(0,0,0,0.04)',
    lineWidth:              1,
    motionDurationSlow:     '0.15s',
    motionDurationMid:      '0.1s',
    motionDurationFast:     '0.08s',
  },
  components: {
    Layout: {
      headerBg:    '#ffffff',
      bodyBg:      '#F5F5F3',
      siderBg:     '#ffffff',
    },
    Menu: {
      itemBg:             'transparent',
      itemSelectedBg:     '#185FA5',
      itemSelectedColor:  '#ffffff',
      itemHoverBg:        '#E6F1FB',
      itemColor:          '#4A4A4A',
      itemHeight:         36,
      iconSize:           18,
    },
    Button: {
      borderRadius:        6,
      controlHeight:       32,
      contentFontSize:     13,
      contentFontSizeSM:   12,
    },
    Input: {
      borderRadius:        6,
      controlHeight:       32,
      activeBorderColor:   '#185FA5',
      activeShadow:        '0 0 0 2px rgba(24,95,165,0.15)',
      errorActiveShadow:   '0 0 0 2px rgba(163,45,45,0.15)',
    },
    Select: {
      borderRadius:        6,
      controlHeight:       32,
      optionSelectedBg:    '#E6F1FB',
    },
    DatePicker: {
      borderRadius:        6,
      controlHeight:       32,
      activeBorderColor:   '#185FA5',
    },
    Table: {
      headerBg:            '#F5F5F3',
      headerColor:         '#1A1A1A',
      headerSortActiveBg:  '#E6F1FB',
      rowHoverBg:          '#E6F1FB',
      cellPaddingBlock:    8,
      cellPaddingInline:   12,
      fontSize:            12,
      headerSplitColor:    '#E2E2E2',
    },
    Card: {
      borderRadius:        8,
      paddingLG:           16,
    },
    Modal: {
      borderRadius:        8,
    },
    Tag: {
      borderRadius:        9999,
      fontSizeSM:          11,
    },
    Tooltip: {
      borderRadius:        6,
    },
    Badge: {
      borderRadius:        9999,
    },
  },
}

export default themeConfig
export function buildThemeConfig() { return themeConfig }
```

---

### Prompt S1-4: Install Missing Libraries

```
In the SpinRise frontend project at D:\Spinrise\Development\spinrise-web,
install three libraries that Blueprint v1.1 §13 adds to the stack:

Run: npm install lucide-react react-hook-form zod @hookform/resolvers

After install, verify the packages appear in package.json dependencies.

Do NOT install ag-grid-enterprise — that is pending CEO licence decision.
Do NOT modify any source files in this prompt. Installation only.
```

---

## SPRINT 2 — Layout: Top Bar and Sidebar

### Prompt S2-1: Rebuild AppHeader (Top Navigation Bar)

```
Rebuild `src/shared/layouts/AppHeader.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web to match Blueprint v1.1 §3.1 exactly.

BLUEPRINT SPEC §3.1:
- Height: 48px (var(--top-nav-height)). Currently 56px — must change.
- Background: #ffffff. Border-bottom: 1px solid var(--color-border). shadow-sm.
- Sticky: position sticky, top 0, z-index 200.
- Three zones: Left | Centre | Right.

LEFT ZONE:
  - Sidebar collapse toggle button (icon only, 32px, Lucide PanelLeft icon)
  - SpinRise logo mark (24px height)
  - Company name: "Kalpatharu Software Ltd" — 13px, font-weight 600, color #1A1A1A
  - Division name: shown below company name — 11px, color #4A4A4A (from auth store user.divCode label)

CENTRE ZONE:
  - Branch selector: Ant Design Select, 28px height (field-height-sm), 12px font,
    min-width 160px. Read branches from auth store for now (can be static placeholder
    showing current division until API is wired).
  - Financial year display: plain text, 12px, color #4A4A4A.
    Format: "FY 2025–26". Derive from processingDate in auth store
    (Apr–Mar financial year: if month >= 4, FY = year/year+1 else year-1/year).

RIGHT ZONE (left to right):
  - Notification bell: Ant Design Badge + Bell icon (Lucide Bell, 18px).
    Count sourced from existing notification logic already in the file.
  - User profile chip: Avatar (32px, initials) + employee name (12px, weight 600)
    + dropdown (Settings, Logout). Same dropdown logic as existing file.
  - Theme toggle: compact icon button (Lucide Sun / Moon, 16px). Wire to useThemeStore.
  - Logout icon button: Lucide LogOut, 16px, tooltip "Logout".

CSS RULES:
  - Create `src/shared/layouts/AppHeader.module.css`.
  - Move ALL static inline styles from this file into the module.
  - Update .topbar.ant-layout-header in index.css: height must be 48px not 56px.
  - Remove the search bar (topbar__center search input) entirely — not in blueprint.
  - Remove the module-switcher button from the header — it now lives in the sidebar.
  - Keep existing Ant Design imports. Replace Ant Design Icons with Lucide equivalents
    (PanelLeft, Bell, Sun, Moon, LogOut, ChevronDown from lucide-react).

IMPORTANT: Do not change auth store or routing logic. Only the visual component.
After editing, also update .main-content.ant-layout-content in index.css:
  min-height: calc(100vh - 48px);   /* was 56px */
```

---

### Prompt S2-2: Rebuild Sidebar (MainLayout.tsx)

```
Rebuild the sidebar section of `src/shared/layouts/MainLayout.tsx` in the
SpinRise frontend at D:\Spinrise\Development\spinrise-web to match
Blueprint v1.1 §3.2 exactly.

BLUEPRINT SPEC §3.2:
- Width: 220px expanded (var(--sidebar-expanded)), 60px collapsed (var(--sidebar-collapsed)).
- Background: #ffffff (light sidebar — currently dark #0f172a, must change).
- Active menu item: background #185FA5, text white, left border 3px solid #0C447C.
- Hover menu item: background #E6F1FB.
- Inactive text: color #4A4A4A.
- Icon size: 18px.
- Border-right: 1px solid var(--color-border).
- No box-shadow on sidebar.

MODULE GROUP ICONS — Replace all Ant Design Icons with Lucide equivalents:
  Purchase     → ShoppingCart
  Inventory    → Package
  Sales        → TrendingUp
  Finance      → DollarSign
  HR           → Users
  Admin        → Settings
  MRP          → GitBranch
  Production   → Cog
  Budget       → BarChart2

CSS RULES:
  - Create `src/shared/layouts/MainLayout.module.css`.
  - In index.css, update .main-sider.ant-layout-sider:
      background: #ffffff !important;
      border-right: 1px solid var(--color-border);
      box-shadow: none;
  - Remove all rgba(255,255,255,*) dark-sidebar colors from index.css sidebar section.
  - Update .sidebar__menu .ant-menu-item:
      color: var(--color-text-600) !important;
      height: 36px;
      line-height: 36px;
  - Update .sidebar__menu .ant-menu-item:hover:
      background: var(--color-primary-light) !important;
      color: var(--color-text-900) !important;
  - Update .sidebar__menu .ant-menu-item-selected:
      background: var(--color-primary) !important;
      color: #ffffff !important;
      border-left: 3px solid var(--color-primary-dark);

BRAND SECTION: Update sidebar brand text to show
  "Kalpatharu Software Ltd" (13px, Semi Bold 600, color #1A1A1A)
  with "SpinRise ERP" below it (11px, color #4A4A4A).
  Remove the dark glassmorphism brand mark style.

Keep existing module registry, menu items, collapse logic, and mobile drawer.
Only change visual styling and icon library.
```

---

### Prompt S2-3: Fix Layout Shell

```
Update layout shell in `src/shared/layouts/MainLayout.tsx` and `src/index.css`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web.

CHANGES NEEDED:

1. App background — in index.css update:
   .main-content.ant-layout-content {
     background: var(--color-bg);   /* #F5F5F3 */
     padding: 24px;
     min-height: calc(100vh - var(--top-nav-height));
   }

2. Page max-width — in MainLayout.tsx add a wrapper div around <Outlet />:
   <div style={{ maxWidth: 'var(--page-max-width)', width: '100%', margin: '0 auto' }}>
     <Outlet />
   </div>
   Use CSS variable — do not hardcode 1280px inline.

3. PR/PO form override — update the :has(.pr-page) rule in index.css:
   .main-content.ant-layout-content:has(.pr-page) {
     padding: 0;
     height: calc(100vh - var(--top-nav-height));   /* was hardcoded 56px */
     overflow: hidden;
   }

4. .pr-page background — update in index.css:
   .pr-page { background: var(--color-bg); }

5. Sider width — in MainLayout.tsx Sider component props:
   width={220}         /* matches var(--sidebar-expanded) */
   collapsedWidth={60} /* matches var(--sidebar-collapsed) */

Do not change any routing, store, or business logic.
```

---

## SPRINT 3 — Shared Components Library

### Prompt S3-1: Rewrite FieldLabel Component

```
Rewrite `src/shared/components/FieldLabel.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web to match Blueprint v1.1 §5.2 exactly.

BLUEPRINT SPEC §5.2:
- Font size: 12px. Font weight: 600 (Semi Bold) — currently 500, must change.
- Color: #1A1A1A (COLOR_TEXT_900).
- Mandatory indicator: red asterisk (*) before the label text, color #A32D2D.
- Position: always rendered above the field (the parent form item handles layout).
- No ALL CAPS text — label text must be Title Case (enforced by the caller, not this component).
- No hyphens in label text (enforced by caller).

COMPONENT API (update props):
  interface FieldLabelProps {
    text: string
    required?: boolean
    htmlFor?: string   // links label to input for accessibility
  }

IMPLEMENTATION:
- Render as <label> element (not <span>) when htmlFor is provided, else <span>.
- Use htmlFor to set the `for` attribute — improves a11y (Blueprint §12).
- Required asterisk color: #A32D2D (var(--color-error)).
- Asterisk position: before text with 4px gap (margin-right: 4px).

CSS:
- Create `src/shared/components/FieldLabel.module.css`.
- Move all static styles (font-size, font-weight, color) into the module.
- No inline styles remaining in the component.

Module CSS content:
  .label {
    font-size: var(--font-label-size);      /* 12px */
    font-weight: var(--font-label-weight);  /* 600 */
    color: var(--color-text-900);
    line-height: 1.35;
    display: inline-block;
  }
  .required {
    color: var(--color-error);
    margin-right: 4px;
  }
```

---

### Prompt S3-2: Create StatusBadge Component

```
Create a new component `src/shared/components/StatusBadge.tsx` and its module CSS
`src/shared/components/StatusBadge.module.css` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web.

This replaces ALL scattered Ant Design Tag status renders across PR and PO modules.
Blueprint v1.1 §10 defines exact colors — these are CEO-confirmed.

STATUS COLOR MAP (use exact hex — do not use tokens.ts variables as fallback):
  'Requested' → bg #E6F1FB, text #185FA5
  'Pending'   → bg #FAEEDA, text #BA7517
  'Approved'  → bg #EAF3DE, text #3B6D11
  'Rejected'  → bg #FCEBEB, text #A32D2D
  'PO Raised' → bg #F0E6FB, text #722ED1
  'Cancelled' → bg #F5F5F3, text #4A4A4A
  'Partial'   → bg #FAEEDA, text #BA7517
  'Closed'    → bg #E8E8E8, text #4A4A4A

COMPONENT API:
  type StatusKey = 'Requested' | 'Pending' | 'Approved' | 'Rejected'
                 | 'PO Raised' | 'Cancelled' | 'Partial' | 'Closed'

  interface StatusBadgeProps {
    status: StatusKey | string   // string fallback for unknown statuses
    size?: 'default' | 'small'  // small = for grid cells
  }

STYLE SPEC (Blueprint §10):
  font-size: 11px
  font-weight: 600
  border-radius: 9999px   (pill shape)
  padding: 2px 8px
  min-width: 72px
  text-align: center
  display: inline-block
  line-height: 1.4

  For size='small': font-size 10px, padding 1px 6px, min-width 60px.

ACCESSIBILITY (Blueprint §12):
  - Text label MUST always be present — never rely on color alone.
  - Add role="status" aria-label={status} to the element.

MODULE CSS:
  .badge {
    font-size: 11px;
    font-weight: 600;
    border-radius: 9999px;
    padding: 2px 8px;
    min-width: 72px;
    text-align: center;
    display: inline-block;
    line-height: 1.4;
    white-space: nowrap;
  }
  .badge--small {
    font-size: 10px;
    padding: 1px 6px;
    min-width: 60px;
  }

Apply bg and text color as inline style (they are dynamic — from the status map).
Export the STATUS_COLORS map so other components can use the colors directly.
```

---

### Prompt S3-3: Rewrite KpiCard Component

```
Rewrite `src/shared/components/KpiCard.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web to match Blueprint v1.1 §4.1.

BLUEPRINT SPEC §4.1:
- Max height: 72px (KPI_CARD_MAX_HEIGHT). Current component is too tall.
- Background: white. Border: 1px solid #E2E2E2. Border-radius: 8px. Shadow: shadow-sm.
- NO animation on load — static render. Remove Skeleton loading animation.
- Show a simple text placeholder ("—") while loading instead of Skeleton.
- KPI strip: single horizontal row, all cards equal width via flex: 1.

UPDATED PROPS:
  interface KpiCardProps {
    label:    string
    value:    number | string | React.ReactNode  // ReactNode for multi-UOM display
    icon?:    React.ReactNode
    color?:   string    // left border accent color
    loading?: boolean
    hidden?:  boolean   // for Add Mode Suppression (Blueprint §5.1.1)
  }

When hidden=true: render nothing (return null). This drives Add Mode Suppression
where cards 3–5 are hidden until first save.

When loading=true: show the card shell with value "—" (em dash), no Skeleton.

CSS:
- Create `src/shared/components/KpiCard.module.css`.
- Extract ALL inline styles from the current component into the module.
- Only the dynamic `borderLeft` color stays as inline style (it comes from the color prop).

Module CSS:
  .card {
    background: #ffffff;
    border: 1px solid var(--color-border);
    border-radius: 8px;
    box-shadow: 0 1px 4px rgba(0,0,0,0.06);
    padding: 12px 16px;
    display: flex;
    align-items: center;
    gap: 12px;
    max-height: 72px;
    flex: 1;
    min-width: 0;
    overflow: hidden;
  }
  .iconBox {
    width: 36px;
    height: 36px;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    font-size: 16px;
  }
  .body { min-width: 0; overflow: hidden; }
  .value {
    font-size: 20px;
    font-weight: 700;
    line-height: 1.1;
    font-variant-numeric: tabular-nums;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .label {
    font-size: 11px;
    font-weight: 500;
    color: var(--color-text-600);
    margin-top: 2px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
```

---

### Prompt S3-4: Replace Ant Design Icons with Lucide Icons in Shared Components

```
In the SpinRise frontend at D:\Spinrise\Development\spinrise-web, replace
Ant Design Icons with Lucide React icons in the following shared files:

Files to update:
  src/shared/layouts/AppHeader.tsx
  src/shared/layouts/MainLayout.tsx
  src/shared/components/KpiCard.tsx
  src/shared/components/PageTitleBar.tsx
  src/shared/components/SectionCard.tsx

REPLACEMENT MAP:
  ShoppingCartOutlined  → ShoppingCart
  InboxOutlined         → Package
  ShoppingOutlined      → TrendingUp
  AccountBookOutlined   → DollarSign
  BarChartOutlined      → BarChart2
  ApartmentOutlined     → GitBranch
  BuildOutlined         → Cog
  TeamOutlined          → Users
  SettingOutlined       → Settings
  FileTextOutlined      → FileText
  SearchOutlined        → Search
  BellOutlined          → Bell
  UserOutlined          → User
  LogoutOutlined        → LogOut
  MenuOutlined          → Menu
  MenuFoldOutlined      → PanelLeftClose
  MenuUnfoldOutlined    → PanelLeft
  DownOutlined          → ChevronDown
  PlusOutlined          → Plus
  EditOutlined          → Pencil
  DeleteOutlined        → Trash2
  EyeOutlined           → Eye
  PrinterOutlined       → Printer
  CheckOutlined         → Check
  CloseOutlined         → X
  SunOutlined           → Sun
  MoonOutlined          → Moon

Import all Lucide icons from 'lucide-react'.
Set size={18} on all sidebar icons (Blueprint §3.2 icon size: 18px).
Set size={16} on all header action icons.
Remove @ant-design/icons imports from these files after replacement.
Keep @ant-design/icons import ONLY if the file uses an icon not in the map above
— list any that remain.
```

---

### Prompt S3-5: Notification System — Remove browser dialogs

```
Audit all files in src/ in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web for uses of:
  window.alert(
  window.confirm(
  window.prompt(
  alert(
  confirm(

Replace every occurrence with the correct Ant Design alternative
per Blueprint v1.1 §9:

  window.alert(msg)          → message.info(msg) or notification.info(...)
  window.confirm(msg)        → Modal.confirm({ title, content, onOk })
  window.confirm for delete  → Modal.confirm({ title: 'Confirm Delete', content: msg,
                                okText: 'Delete', okButtonProps: { danger: true }, onOk })

Toast notification specs (§9):
  Success  → message.success(text)   auto-dismiss 3s   — for save/submit/approve
  Info     → message.info(text)      auto-dismiss 5s
  Warning  → message.warning(text)   auto-dismiss 8s
  Error    → message.error(text)     no auto-dismiss   — always manual close

Import { Modal, message } from 'antd' where needed.
Do not change any business logic — only the dialog/notification calls.
List every file changed.
```

---

## SPRINT 4 — PR Form: Core Blueprint Compliance

### Prompt S4-1: PR Form — Single-Screen Architecture

```
Update the PR form page shell in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web to enforce Blueprint v1.1 §5.1
single-screen architecture. Target: zero scroll at 1366×768.

Files: src/features/purchase-requisition/pages/PurchaseRequisitionNewPage.tsx
       src/features/purchase-requisition/pages/PurchaseRequisitionEditPage.tsx
       (apply same changes to both)

LAYOUT RULES (Blueprint §5.1):
  KPI Strip      → compact single-line horizontal strip, max-height 72px, flex row
  Form Header    → max 2 rows of fields, 3–4 column grid layout, no vertical expansion
  Line Item Grid → virtualized, 8–12 rows visible, scrolls WITHIN its container ONLY
  Approval Band  → compact read-only strip below header, NOT a full-width multi-node block
  Action Buttons → sticky bottom bar (Save, Submit, Print, Cancel), always visible

LAYOUT STRUCTURE (top to bottom, no page-level scroll):
  ┌─────────────────────────────────────┐  ← fixed top (48px, .topbar)
  ├─────────────────────────────────────┤  ← sticky title bar (PageTitleBar)
  ├─────────────────────────────────────┤  ← KPI strip (max 72px)
  ├─────────────────────────────────────┤  ← form header (2 rows, 3-4 cols)
  ├─────────────────────────────────────┤  ← approval pipeline band (compact, read-only)
  ├────────────────────────(flex: 1)───┤  ← line item grid (fills remaining height)
  ├─────────────────────────────────────┤  ← sticky action bar (Save/Submit/Print/Cancel)
  └─────────────────────────────────────┘

Outer page container: display flex, flex-direction column, height calc(100vh - 48px),
overflow hidden. Use className="pr-page" (already in index.css).

Action buttons bar: position sticky, bottom 0, background #ffffff,
border-top 1px solid var(--color-border), padding 8px 16px, z-index 10.
Buttons: Save (primary), Submit (default), Print (default), Cancel (default/danger).

Grid container: flex 1, overflow hidden, display flex, flex-direction column.
The grid itself scrolls within this container only — the page does not scroll.

Create `src/features/purchase-requisition/pages/PurchaseRequisitionNewPage.module.css`
and extract all static inline styles from the page file into it.
```

---

### Prompt S4-2: PR KPI Strip — Add Mode Suppression

```
Update `src/features/purchase-requisition/components/pr-form/PRKPIStrip.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web to implement
Blueprint v1.1 §5.1.1 Add Mode Display Rule (CEO Decision 06 May 2026 — Finding #29).

RULE:
  In Add mode (new document, not yet saved):
    → Show ONLY: Total Lines, Approx. Budget
    → Hide: Created By, Approval Status, Approval Pipeline

  In Edit/View mode (document has a PR number):
    → Show ALL 5 cards

All 5 card definitions:
  1. Total Lines      — COUNT(line items)         — List icon        — always visible
  2. Total Quantity   — SUM per UOM group          — Package icon     — always visible
     Display: "Nos: 241 | Mtr: 42 | Kg: 18" (pipe-separated, multi-UOM)
  3. Approx. Budget   — SUM(approxCost) ₹          — DollarSign icon  — always visible
  4. Created By       — employee name + date        — User icon        — hidden in Add mode
  5. Approval Status  — <StatusBadge /> component   — CheckCircle icon — hidden in Add mode

UPDATED PROPS:
  interface PRKPIStripProps {
    mode:         'new' | 'edit' | 'view'
    prNo?:        string
    lines:        PRLineFormItem[]
    createdBy?:   string
    createdDate?: string
    approvalStatus?: string
  }

Use the KpiCard component (now updated in S3-3) with hidden prop:
  <KpiCard hidden={isAddMode} ... />   where isAddMode = mode === 'new' && !prNo

For Total Quantity multi-UOM display:
  Group lines by uom, sum qty per group, render as ReactNode:
  <span>Nos: 241 <span style={{color:'#E2E2E2'}}>|</span> Mtr: 42</span>
  Pass this ReactNode as the value prop to KpiCard.

For Approx. Budget: format as ₹ with Indian number format, 2dp.
  Example: ₹ 2,45,800.00

Strip layout: display flex, flex-direction row, gap 12px, padding 8px 16px,
background #ffffff, border-bottom 1px solid var(--color-border).

Create `src/features/purchase-requisition/components/pr-form/PRKPIStrip.module.css`.
Extract all static inline styles into the module.
```

---

### Prompt S4-3: PR Form — Label Audit and Fix

```
Audit and fix ALL form field labels in the PR module of the SpinRise frontend
at D:\Spinrise\Development\spinrise-web per Blueprint v1.1 §5.2.

Files to audit and fix:
  src/features/purchase-requisition/components/pr-form/PRHeaderCards.tsx
  src/features/purchase-requisition/components/pr-form/PRHeaderV1.tsx
  src/features/purchase-requisition/components/pr-form/PRHeaderV2.tsx
  src/features/purchase-requisition/components/pr-form/PRHeaderV3.tsx
  src/features/purchase-requisition/components/pr-form/PRLineItemsTable.tsx
  src/features/purchase-requisition/components/pr-form/PRKPIStrip.tsx
  src/features/purchase-requisition/components/pr-list/PRDataTable.tsx
  src/features/purchase-requisition/components/pr-list/PRFilterBar.tsx
  src/features/purchase-requisition/components/pr-list/PRViewModal.tsx

LABEL CORRECTION TABLE (apply every instance):
  Current (wrong)            → Correct (Blueprint standard)
  ─────────────────────────────────────────────────────────
  PR NO / PR No.             → Purchase Requisition Number
  PO NO / PO No.             → Purchase Order Number
  REQ DATE / Req. Date       → Required Date
  PR DATE / PR Date          → Requisition Date
  APPROX COST / Appr. Cost   → Approximate Cost
  DEPT / Dept.               → Department
  DEP CODE / Dep Code        → Department Code
  UOM / U.O.M / UOM          → Unit of Measure
  QTY / Qty                  → Quantity
  REQ QTY / Req Qty          → Required Quantity
  RATE / Rate                → Unit Price
  ITEM CODE / Item code      → Item Code   (Title Case is fine — only fix ALLCAPS)
  ITEM DESC / Item Desc      → Item Description
  REMARKS / Rmks             → Remarks
  SAMPLE / Spl               → Sample
  COST CENTRE / Cost Ctr     → Cost Centre
  MACHINE NO / Mach No       → Machine Number
  BUDGET GRP / Budget Grp    → Budget Group
  SUB COST / Sub Cost        → Sub Cost Code
  APPROVAL STATUS            → Approval Status   (fix ALLCAPS)
  CREATED BY                 → Created By        (fix ALLCAPS)
  STATUS                     → Status            (Title Case)

RULES:
  - No ALL CAPS anywhere in labels.
  - No abbreviations (no dots after shortened words).
  - No hyphens in label text.
  - Mandatory fields get FieldLabel with required={true}.
  - Replace any raw <span> or plain string labels with <FieldLabel text="..." required={...} />.

Do not change field names (state keys, API field names) — only the displayed label text.
```

---

### Prompt S4-4: PR Form — Decimal Precision Standards

```
Fix decimal precision across all PR form components in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web per Blueprint v1.1 §5.4.

KALSOFTE STANDARD (applies to all SpinRise modules):
  Quantity  → 3 decimal places  — display: "241.500"
  Rate      → 4 decimal places  — display: "₹ 125.7500"
  Value     → 2 decimal places  — display: "₹ 30,368.25"
  Percentage→ 2 decimal places  — display: "12.50 %"
  Cost      → 2 decimal places  — display: "₹ 30,750.00"

FILES TO UPDATE:
  src/features/purchase-requisition/components/pr-form/PRLineItemsTable.tsx
  src/features/purchase-requisition/components/pr-form/PRKPIStrip.tsx
  src/features/purchase-requisition/components/pr-form/PRHeaderCards.tsx
  src/features/purchase-requisition/components/pr-list/PRDataTable.tsx
  src/features/purchase-requisition/components/pr-list/PRViewModal.tsx

HELPER FUNCTIONS (add to `src/shared/lib/formatters.ts` — create this file):

  export function fmtQty(v: number | null | undefined): string {
    if (v == null) return '—'
    return v.toLocaleString('en-IN', { minimumFractionDigits: 3, maximumFractionDigits: 3 })
  }

  export function fmtRate(v: number | null | undefined): string {
    if (v == null) return '—'
    return '₹ ' + v.toLocaleString('en-IN', { minimumFractionDigits: 4, maximumFractionDigits: 4 })
  }

  export function fmtValue(v: number | null | undefined): string {
    if (v == null) return '—'
    return '₹ ' + v.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })
  }

  export function fmtPct(v: number | null | undefined): string {
    if (v == null) return '—'
    return v.toFixed(2) + ' %'
  }

ALSO FIX: Remove the double currency symbol bug on the Unit Price / Rate field.
Search for any field that renders "₹₹" or "₹ ₹" and remove the duplicate.

Apply fmtQty(), fmtRate(), fmtValue() in every display/render context for these fields.
Input fields: set step="0.001" for qty, step="0.0001" for rate, step="0.01" for value.
Input fields: on blur, format to correct dp using toFixed and re-set the field value.
```

---

### Prompt S4-5: PR Line Grid — Tab Sequence and Keyboard Navigation

```
Implement tab sequence standards in `src/features/purchase-requisition/components/
pr-form/PRLineItemsTable.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web per Blueprint v1.1 §5.5.

RULES TO IMPLEMENT:

1. MANDATORY FIELD GUARD
   When user presses Tab on a mandatory empty field:
   - Do NOT advance cursor to next field.
   - Set field border to 1px solid #A32D2D (var(--color-error)).
   - Show inline error message below field: "This field is required".
   - Keep cursor in current field.
   Mandatory grid fields: Item Code, Unit of Measure, Required Quantity, Required Date.

2. AUTO-ADVANCE ON TAB FROM LAST FIELD OF ROW
   When user presses Tab on the last editable field of a row:
   - Auto-create a new blank row.
   - Move cursor to Item Code of the new row.
   Last field in row = Remarks (or the last visible editable column).

3. NEW DOCUMENT INITIALIZATION
   When form opens in Add mode:
   - First item row must be auto-created and present immediately.
   - Cursor auto-focuses on Item Code of row 1.
   - Do not wait for user to click "Add Line".

4. SKIP READ-ONLY FIELDS
   All display-only columns (S.No, Value, line total) must have tabIndex={-1}.
   Only editable columns participate in tab sequence.

5. ADD MULTIPLE BUTTON
   Implement two modes on the "Add Multiple" button:
   MODE 1 — Multi-Select Item Lookup:
     Opens ItemPickerModal with checkbox column enabled.
     On confirm: each selected item creates one individual line row.
     Map item fields: itemCode, itemName, uom from item master.

   MODE 2 — Quick Row Count Input:
     Show a small inline Ant Design InputNumber popover/popconfirm.
     User enters N (integer, 1–50).
     On confirm: insert N blank rows.
     Cursor lands on Item Code of the first new row.
     Named requirement: Pallvaa Mills, SKS (Finding #15 and #16, R2.0).

   Use a split button (Ant Design Button.Group or Dropdown.Button) to offer both modes.
```

---

## SPRINT 5 — PR Grid, Footer, and Lookup Modal

### Prompt S5-1: PR Grid — Visual Standards

```
Update `src/features/purchase-requisition/components/pr-form/PRLineItemsTable.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web to match
Blueprint v1.1 §7.3 grid design standards.

GRID PROPERTY STANDARDS:
  Row height:           32px  (var(--row-height-grid))
  Header height:        36px  — sticky, always visible regardless of grid scroll
  Frozen columns:       Item Code + Item Description — always visible on horizontal scroll
  Inline editing:       click or Tab into cell → edit mode; validate on blur
  Required Date column: minimum width 90px (CEO confirmed)
  Selection column:     checkbox, 40px wide, frozen left

COLUMN ALIGNMENT RULES (Blueprint §5.3):
  Item Code, Description, Vendor Name, Remarks → LEFT align (text)
  Date fields → LEFT align
  Dropdowns (UOM, Dept, Section) → LEFT align
  Quantity → RIGHT align, font-variant-numeric: tabular-nums
  Rate, Unit Price, Value, Cost → RIGHT align, font-variant-numeric: tabular-nums
  Status badges → CENTER align

ROW VISUAL STATES:
  Default:    background #ffffff
  Hover:      background #E6F1FB
  Even rows (alternate shading): background #F0F5FF
  Error row:  background #FCEBEB + left border 3px solid #A32D2D
  Selected:   background #E6F1FB + checkbox checked

HEADER STYLE (Blueprint §7.3):
  Background: #F5F5F3 (not dark navy — current index.css overrides must be updated)
  Color: #1A1A1A
  Font size: 11px, font-weight 600
  Text: Title Case (NOT uppercase — remove text-transform: uppercase from grid header CSS)
  Height: 36px, sticky

Update index.css — change .spinrise-ag-grid .ag-header-cell:
  Remove: text-transform: uppercase
  Add: font-size: 11px; font-weight: 600; color: var(--color-text-900);

GRID FOOTER (Blueprint §7.4):
  Add a sticky summary footer bar below the grid (not inside it):
    position: sticky, bottom: (action bar height), background: #F5F5F3,
    border-top: 2px solid #185FA5, padding: 6px 16px, display flex, gap 24px.

  Footer cells (right-aligned values):
    Total Lines:      COUNT(rows) — integer
    Total Quantity:   SUM grouped by UOM — "Nos: 241 | Mtr: 42 | Kg: 18"
    Total Value:      SUM(qty × rate) — fmtValue()
    Total Approx Cost:SUM(approxCost) — fmtValue()

Create `src/features/purchase-requisition/components/pr-form/PRLineItemsTable.module.css`.
Extract all static inline styles. Only dynamic row-state styles (hover, error colors)
may use inline style or data attributes.
```

---

### Prompt S5-2: Item Picker Modal Upgrade

```
Upgrade `src/features/purchase-requisition/components/pr-form/ItemPickerModal.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web to match
Blueprint v1.1 §6 lookup modal standard.

MODAL SPECS (Blueprint §6):
  Size:           720 × 480px, centered overlay, dark semi-transparent backdrop
  Search bar:     auto-focused on modal open; 300ms debounce
                  searches item code, description, AND alias simultaneously
  Filter chips:   Category filter | UOM filter | Active/All toggle
                  compact chips above the result grid
  Result columns: S.No | Item Code | Description | UOM | Rate | Image (thumbnail) | Stock
  Row height:     36px when image column visible, 32px when no image
  Pagination:     virtual scroll preferred; fallback 50 items per page
  Performance:    results must appear within 300ms for up to 10,000 items

MULTI-SELECT (for "Add Multiple" Mode 1, Blueprint §5.5):
  - Checkbox column (40px, frozen left) when multiSelect prop is true.
  - "Add Selected (N)" button at bottom — shows count of checked items.
  - Each selected item creates one individual line row on confirm.

QUICK PREVIEW (Blueprint §6):
  - Hover on any row → show floating tooltip with enlarged item image (120×120px)
    + full item spec (description, UOM, stock, last PO rate).
  - Tooltip appears after 300ms hover delay. Disappears on mouse leave.

KEYBOARD NAVIGATION (Blueprint §6):
  Arrow Up/Down → navigate rows
  Enter         → select row (single) or toggle checkbox (multi)
  Escape        → close modal
  Tab           → move between search bar and filter chips

ITEM IMAGE (Blueprint §5.8):
  Thumbnail in result grid: 36×36px, object-fit: cover, border-radius 4px.
  Fallback: grey placeholder box with item initials if no image.

KEYBOARD SHORTCUT (Blueprint §6, §12):
  Triggered by Alt+Down OR Ctrl+Space on the Item Code input field.
  Do NOT override or mention F1 — it is browser-reserved.
  Add a small tooltip on the Item Code field: "Alt+↓ or Ctrl+Space to search"

PROPS UPDATE:
  interface ItemPickerModalProps {
    open:        boolean
    onClose:     () => void
    onSelect:    (item: ItemLookupRow) => void       // single select
    onSelectMany:(items: ItemLookupRow[]) => void    // multi-select
    multiSelect?: boolean
  }

Create `src/features/purchase-requisition/components/pr-form/ItemPickerModal.module.css`.
Extract all static inline styles.
```

---

### Prompt S5-3: PR List Screen — Blueprint Compliance

```
Update `src/features/purchase-requisition/components/pr-list/PRDataTable.tsx`
and `src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web to meet
Blueprint v1.1 §5.9 and §7.3.

CHANGES:

1. STATUS BADGE COLUMN
   Replace any raw text or Ant Tag status renders with <StatusBadge /> component.
   Status column: centred, 100px min-width.

2. COLUMN ALIGNMENT
   Apply §5.3 alignment rules to every column:
   - PR Number, Department, Created By, Remarks → LEFT
   - Quantity, Line Count → RIGHT + tabular-nums
   - Value, Budget → RIGHT + tabular-nums + fmtValue()
   - Date columns → LEFT
   - Status → CENTRE (StatusBadge)

3. TABLE HEADER
   - Background: var(--color-surface-alt) = #F5F5F3  (NOT dark navy #1e293b)
   - Color: var(--color-text-900) = #1A1A1A
   - Font: 11px, weight 600
   - Update index.css: remove the .ant-table-wrapper .ant-table-thead dark styles,
     replace with light-themed header matching blueprint tokens.

4. ROW HOVER
   Row hover background: #E6F1FB (var(--color-primary-light)).
   Add to index.css or themeConfig Table.rowHoverBg.

5. FILTER BAR
   Update PRFilterBar.tsx:
   - Status filter dropdown: options must use exact status keys:
     Requested | Pending | Approved | Rejected | PO Raised | Cancelled | Partial | Closed
   - Field labels: Title Case, no abbreviations.
   - All filter inputs: height 32px.

6. PAGINATION
   Confirm pagination is present. Page size options: [20, 50, 100].
   Show total: "Showing 1–20 of 347 records".

Create PRDataTable.module.css. Extract static inline styles.
```

---

## SPRINT 6 — PO Module Blueprint Compliance

### Prompt S6-1: PO Module — Label and Alignment Fix

```
Apply Blueprint v1.1 §5.2 label standards and §5.3 alignment rules to the
PO module in the SpinRise frontend at D:\Spinrise\Development\spinrise-web.

Files:
  src/features/purchase-order/components/po-form/POHeaderForm.tsx
  src/features/purchase-order/components/po-form/POLineItemsTable.tsx
  src/features/purchase-order/components/po-form/PODeliveryTable.tsx
  src/features/purchase-order/components/po-list/PODataTable.tsx
  src/features/purchase-order/components/po-list/POFilterBar.tsx

LABEL CORRECTIONS (same rules as PR — Title Case, no abbreviations):
  CONT NO / Cont No    → Contract Number
  SUPP / Supplier      → Supplier Name  (fix if abbreviated)
  PYMT MODE            → Payment Mode
  CURR                 → Currency
  DEL ADDR             → Delivery Address
  BILL ADDR            → Billing Address
  VARIETY / Var        → Variety
  QTY / Qty            → Quantity
  RATE                 → Unit Price
  DISC %               → Discount %
  GST %                → GST Rate
  DEL DATE             → Delivery Date
  TERMS                → Payment Terms

ALIGNMENT RULES:
  Quantity, Rate, Value, Discount, Tax → RIGHT align + tabular-nums
  Supplier Name, Variety, Remarks → LEFT
  Dates → LEFT
  Status → CENTRE (StatusBadge)

DECIMAL PRECISION (same as PR):
  Import fmtQty, fmtRate, fmtValue from src/shared/lib/formatters.ts.
  Apply to all display contexts in PO line items.

STATUS BADGES in PODataTable:
  Replace Ant Tag with <StatusBadge /> component.
  Map existing PO status strings to the StatusBadge StatusKey type.

TABLE HEADER in PODataTable:
  Background: #F5F5F3. Color: #1A1A1A. Font: 11px weight 600.
  (Same header fix as PR list — remove dark navy header).

Create .module.css for each file. Extract all static inline styles.
```

---

### Prompt S6-2: PO KPI Cards Alignment

```
Update `src/features/purchase-order/pages/PurchaseOrderListPage.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web
to align KPI cards with Blueprint v1.1 §4.1 standards.

CHANGES:
1. Use the updated KpiCard component (from Sprint 3).
2. Card max-height: 72px. Padding: 12px 16px.
3. Colors must use blueprint palette (COLOR_PRIMARY, COLOR_SUCCESS, etc.) not #1677ff.
4. All card icons: switch to Lucide (ShoppingCart, CheckCircle, XCircle, Clock).
5. No Skeleton animation — static "—" placeholder during loading.
6. Layout: single horizontal flex row, all cards equal width, gap 12px.

Create PurchaseOrderListPage.module.css. Extract all static inline styles.
```

---

## SPRINT 7 — Dashboard Rebuild

### Prompt S7-1: Dashboard — KPI Strip

```
Replace the current dashboard KPI section in
`src/features/dashboard/pages/DashboardPage.tsx` and
`src/features/dashboard/components/StatCard.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web with Blueprint v1.1 §4.1 KPI strip.

CEO-CONFIRMED 5-CARD STRIP (Blueprint §4.1):
  Card 1: Total Lines      — COUNT(PR lines today)      — Lucide List icon
  Card 2: Total Quantity   — Multi-UOM grouped           — Lucide Package icon
  Card 3: Approx. Budget   — ₹ total (2dp, Indian fmt)  — Lucide DollarSign icon
  Card 4: Created By       — Logged-in user name + date — Lucide User icon
  Card 5: Approval Status  — <StatusBadge />             — Lucide CheckCircle icon

Use the updated <KpiCard> component for all 5 cards.
Data for cards 1-3: aggregate from dashboard API (connect to useDashboard hook).
Data for card 4: from useAuthStore (user.eName + current date).
Data for card 5: summary count badge ("12 Pending") or primary status.

Strip layout: single horizontal flex row, gap 12px, padding 0 0 16px 0.
No animation. No Skeleton. Use loading prop for static "—" state.

Keep the existing StatCard component file but mark it as DEPRECATED with a comment.
Do not delete it yet — other pages may reference it.
```

---

### Prompt S7-2: Dashboard — Operational Panels

```
Replace the chart-heavy dashboard layout in
`src/features/dashboard/pages/DashboardPage.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web with the five operational panels defined
in Blueprint v1.1 §4.2.

PANEL LAYOUT (2-column grid below the KPI strip):
  Left column (60% width):
    - Approval Queue panel (Priority: High)
    - Pending PRs panel (Priority: Medium)

  Right column (40% width):
    - Quick Actions panel (Priority: High)
    - Activity Timeline panel (Priority: Medium)
    - Notification Feed panel (Priority: Medium)

PANEL SPECS:

1. APPROVAL QUEUE — documents pending logged-in user's action, sorted by urgency
   - Ant Design Table, compact size.
   - Columns: Document No | Type | Requester | Date | Days Pending | Action button.
   - Empty state: "No documents pending your approval."
   - Data source: existing approval queue from purchaseRequisitionApi or create
     a placeholder with mock structure.

2. QUICK ACTIONS — large tap-friendly buttons
   - 3 buttons: New PR (ShoppingCart icon), New PO (FileText icon), View PR List (List icon).
   - Button height: 48px. Font: 14px, weight 600.
   - Colors: primary blue (#185FA5) for New PR, outlined for others.
   - Navigate via react-router useNavigate on click.

3. PENDING PRs — PRs awaiting conversion to PO
   - Count badge + compact table list.
   - Columns: PR Number | Department | Lines | Budget | Date.

4. ACTIVITY TIMELINE — last 10 transactions by logged-in user
   - Ant Design Timeline component.
   - Each entry: document type + number + action + time ago.
   - Placeholder data if API not ready.

5. NOTIFICATION FEED — system alerts, approvals received, rejections
   - List of notification items with icon + message + time.
   - Unread items have left border 3px solid #185FA5.
   - Read items: muted text.

Card wrapper for each panel: white background, border 1px solid #E2E2E2,
border-radius 8px, shadow-sm. Use SectionCard component.

Create DashboardPage.module.css. Extract all static inline styles.
Remove TrendChart and StatusChart imports — charts are replaced by operational panels.
```

---

## SPRINT 8 — Form Library Migration (React Hook Form + Zod)

### Prompt S8-1: PR Header Form — Migrate to React Hook Form + Zod

```
Migrate the PR header form in `src/features/purchase-requisition/components/
pr-form/PRHeaderCards.tsx` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web from Ant Design Form + useState to
React Hook Form + Zod per Blueprint v1.1 §13.2.

RATIONALE (Blueprint §13.2):
  ERP forms have 30-50+ fields. Manual useState re-renders on every keystroke.
  React Hook Form uses uncontrolled inputs = 60-70% fewer re-renders.
  Zod schema = single source of truth for all validation rules.

ZOD SCHEMA — create `src/features/purchase-requisition/prSchema.ts`:

  import { z } from 'zod'

  export const prHeaderSchema = z.object({
    prDate:        z.string().min(1, 'Requisition Date is required'),
    depCode:       z.string().min(1, 'Department is required'),
    section:       z.string().optional(),
    iType:         z.string().min(1, 'Requisition Type is required'),
    reqName:       z.string().min(1, 'Requester Name is required'),
    refNo:         z.string().optional(),
    poGroupCode:   z.string().optional(),
    scopeCode:     z.string().optional(),
    saleOrderNo:   z.string().optional(),
    saleOrderDate: z.string().optional(),
  })

  export type PRHeaderFormValues = z.infer<typeof prHeaderSchema>

MIGRATION STEPS:
1. Import { useForm } from 'react-hook-form' and { zodResolver } from '@hookform/resolvers/zod'.
2. Replace Form.useForm() with useForm<PRHeaderFormValues>({ resolver: zodResolver(prHeaderSchema) }).
3. Replace each Ant Design Form.Item with Controller from RHF:
   <Controller
     name="depCode"
     control={control}
     render={({ field, fieldState }) => (
       <Select {...field} status={fieldState.error ? 'error' : undefined} />
     )}
   />
4. Replace form.validateFields() in submit with handleSubmit(onValid, onInvalid).
5. Use formState.isSubmitting for the Save button loading state.
6. Use formState.errors for inline error display below each field.

Error display format (Blueprint §8):
  When fieldState.error exists, show below the input:
  <span style={{ color: '#A32D2D', fontSize: 11 }}>{fieldState.error.message}</span>

Keep existing PRHeaderCards prop interface unchanged — only internal implementation changes.
Keep existing API call logic in usePRFormCore — RHF only manages form state.
```

---

### Prompt S8-2: PO Header Form — Migrate to React Hook Form + Zod

```
Migrate `src/features/purchase-order/components/po-form/POHeaderForm.tsx`
in the SpinRise frontend at D:\Spinrise\Development\spinrise-web from
Ant Design Form to React Hook Form + Zod. Same approach as S8-1.

Create `src/features/purchase-order/poSchema.ts` with Zod schema for all PO
header fields: contractDate, supplierCode, paymentMode, currency, deliveryAddress,
billingAddress, terms, remarks. Mark mandatory fields with .min(1, 'Field is required').

Apply same Controller pattern as S8-1.
Use formState.isSubmitting for Save button.
Inline error messages below each field in error state.
```

---

## SPRINT 9 — Accessibility and Keyboard Standards

### Prompt S9-1: Focus Indicators and ARIA

```
Implement Blueprint v1.1 §12 accessibility standards across the SpinRise frontend
at D:\Spinrise\Development\spinrise-web.

1. FOCUS INDICATOR (Blueprint §12)
   In index.css, add global focus style:
   *:focus-visible {
     outline: 2px solid var(--color-primary) !important;
     outline-offset: 2px;
     border-radius: 4px;
   }
   This must never be hidden. Remove any `outline: none` or `outline: 0` from
   the codebase UNLESS it is accompanied by a custom visible focus style.

   Search for "outline: none" and "outline: 0" across all files in src/.
   For each occurrence: either add a custom visible focus style, or remove the rule.

2. ARIA ATTRIBUTES — Validation Errors (Blueprint §12)
   In every form field that can show a validation error:
   - Add aria-describedby={fieldId + '-error'} on the input.
   - Add id={fieldId + '-error'} on the error message element.
   - Add aria-invalid={!!error} on the input when an error is present.

   Apply this pattern to:
     src/features/purchase-requisition/components/pr-form/PRHeaderCards.tsx
     src/features/purchase-requisition/components/pr-form/PRLineItemsTable.tsx
     src/features/purchase-order/components/po-form/POHeaderForm.tsx

3. LABEL ASSOCIATION
   Every form input must have an associated label.
   - For Ant Design Form.Item: use the `htmlFor` prop on FieldLabel and `id` on the input.
   - For RHF Controller fields: pass id to the inner input element.

4. COLOUR-ONLY INFORMATION (Blueprint §12)
   Verify StatusBadge always renders text label alongside color.
   Verify no place in the app conveys status/meaning through color alone without text.

5. KEYBOARD ITEM LOOKUP (Blueprint §12)
   In PRLineItemsTable.tsx: on the Item Code input, add keydown handler:
     Alt+ArrowDown → open ItemPickerModal (single mode)
     Ctrl+Space    → open ItemPickerModal (single mode)
   Add a Tooltip on the Item Code field: "Press Alt+↓ or Ctrl+Space to search items"
   Do NOT handle F1 — document explicitly that F1 is browser-reserved (Blueprint §12).

6. CONTRAST
   Verify all blueprint token colors meet WCAG 2.1 AA (4.5:1 body, 3:1 large text).
   The tokens.ts palette is pre-verified. Any custom color added outside the palette
   must be checked manually.
```

---

### Prompt S9-2: Tab Sequence Audit

```
Audit tab sequence across PR and PO forms in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web per Blueprint v1.1 §5.5 and §12.

TAB SEQUENCE ORDER (Blueprint §5.5):
  Header fields → Line item grid → Approval status (read-only) → Action buttons.

RULES:
  1. Tab must follow visual reading order: left-to-right, top-to-bottom.
  2. Read-only/display-only elements must have tabIndex={-1}.
     Files to check: PRHeaderCards.tsx, PRLineItemsTable.tsx, POHeaderForm.tsx, POLineItemsTable.tsx.
     Display-only elements: PR Number (auto-generated), Total Value, S.No column,
     status badges, KPI strip, approval pipeline.

  3. All interactive elements (buttons, inputs, selects, checkboxes) must be reachable
     by Tab. Verify no interactive element has tabIndex={-1} incorrectly.

  4. Action buttons in the sticky footer (Save, Submit, Print, Cancel) must be last
     in tab order after the grid.

  5. Modal dialogs (ItemPickerModal, PRRateHistoryModal): when open, Tab must be
     trapped within the modal. When closed, focus returns to the triggering element.
     Ant Design Modal handles focus trap natively — verify it is working.

For each file changed: list which elements had tabIndex added/removed and why.
```

---

## SPRINT 10 — CSS Cleanup and Module Migration

### Prompt S10-1: CSS Module Migration — Remaining Files

```
Complete CSS module migration for remaining high-priority files in the SpinRise
frontend at D:\Spinrise\Development\spinrise-web.

Files that still have static inline styles needing extraction
(run the sprint after all other sprints are complete):

  src/features/purchase-requisition/pages/RequisitionV1PrintPreviewPage.tsx  (58 inline styles)
  src/features/purchase-order/pages/PurchaseOrderEditPage.tsx                 (25 inline styles)
  src/features/purchase-order/components/po-form/POHeaderForm.tsx             (79 inline styles)
  src/shared/components/SectionCard.tsx
  src/shared/components/PageTitleBar.tsx
  src/shared/components/ErrorPage.tsx

For each file:
1. Read the file completely.
2. Identify all style={{}} objects where the values are STATIC (not from state/props).
3. Create a .module.css file beside the component.
4. Move static styles to the module using descriptive class names.
5. Replace style={{...}} with className={styles.className}.
6. Keep inline style={{}} ONLY for values derived from props or state at runtime.

CSS MODULE NAMING CONVENTION:
  Use camelCase class names (React CSS modules requirement).
  Name classes by role, not visual appearance:
    .container, .header, .body, .footer, .title, .label, .value, .row, .cell
  Avoid: .blueText, .bigFont, .mt16 — these describe appearance not role.
```

---

### Prompt S10-2: index.css Cleanup

```
Clean up `src/index.css` in the SpinRise frontend at
D:\Spinrise\Development\spinrise-web after all sprint work is complete.

RULES for index.css (it must contain ONLY these categories):

KEEP:
  :root { CSS custom properties }
  BASE RESET (*, html, body, #root)
  .ant-* overrides (Ant Design component class overrides — these MUST be global)
  .main-sider, .topbar, .pr-page, .main-content layout shells
    (these are referenced across multiple components, so they stay global)
  @media responsive rules for the layout shell
  @keyframes animations (if any are referenced by name in .module.css files)

REMOVE from index.css:
  Any style that is now covered by a .module.css file
  Any .ant-card:hover overrides that conflict with themeConfig (resolve the conflict)
  Any hardcoded color hex values that are now covered by CSS variables
    — replace the hex with var(--color-*)
  Any height/size values that are now CSS variables
    — replace e.g. 56px with var(--top-nav-height)

After cleanup, replace ALL hardcoded blueprint hex values in index.css with their
CSS variable equivalents:
  #185FA5  → var(--color-primary)
  #0C447C  → var(--color-primary-dark)
  #E6F1FB  → var(--color-primary-light)
  #F5F5F3  → var(--color-bg)
  #E2E2E2  → var(--color-border)
  #1A1A1A  → var(--color-text-900)
  #4A4A4A  → var(--color-text-600)
  #888888  → var(--color-text-400)
  #A32D2D  → var(--color-error)
  #3B6D11  → var(--color-success)
  #BA7517  → var(--color-warning)

Remove the dark sidebar CSS block entirely (lines covering .sidebar__brand,
rgba(255,255,255,*) patterns) — these are superseded by Sprint 2 work.

Target final index.css: under 250 lines. If it exceeds 250 lines, something
that should be in a .module.css is still there — find and move it.
```

---

## DECISION-GATED PROMPTS (Run Only After Decisions Are Confirmed)

### Prompt DG-1: Budget Category Field (Pending Sasi/CEO)

```
[BLOCKED: Requires CEO approval of Division_Flag architecture]

Implement the Budget Category conditional field in the PR form per
Blueprint v1.1 §5.4.1.

VISIBILITY RULE (final — Blueprint §5.4.1):
  Visible AND mandatory when: PR Type = Capital (iType = 'C')
                         AND: Division_Flag IN ('P', 'C', 'D', 'T')
  Hidden for:                 Division_Flag IN ('S', 'V', 'O')

  Division_Flag values:
    P = Paper Unit           → Budget Category visible
    C = Paper Cone Unit      → Budget Category visible
    D = Paper Duplex Unit    → Budget Category visible
    T = Paper Tube & Core    → Budget Category visible
    S = Spinning Unit        → Budget Category hidden
    V = Vortex Unit          → Budget Category hidden
    O = Open End Unit        → Budget Category hidden

IMPLEMENTATION in PRHeaderCards.tsx / PRLineItemsTable.tsx:
  1. Get divisionFlag from useAuthStore (user.divCode → map to Division_Flag via divmas).
     OR pass as prop from the parent page — whichever is already available.
  2. Compute: const showBudgetCategory = iType === 'C' && ['P','C','D','T'].includes(divisionFlag)
  3. Render the Budget Category dropdown field conditionally: {showBudgetCategory && <BudgetCategoryField />}
  4. In Zod schema (prHeaderSchema.ts): use .superRefine() to add mandatory validation
     only when showBudgetCategory is true.

Do not create a separate configuration table — Division_Flag from pp_divmas is the
single source of truth (Blueprint §5.4.1 architecture note).
```

---

### Prompt DG-2: Rate Selection Logic (Pending Mariyaiya FSD Amendment)

```
[BLOCKED: Requires FSD amendment approval by CEO]

Implement Rate / Unit Price selection logic in PRLineItemsTable.tsx per
Blueprint v1.1 §5.4 once FSD amendment is approved.

Three modes (to be confirmed in FSD):
  MODE 1 — Last PO Rate:   auto-populate rate from last purchase order for this item.
                           Read from getItemInfo API response (lastPoRate field).
  MODE 2 — Average Rate:   auto-populate from average of last N PO rates.
                           Add avgRate field to getItemInfo response.
  MODE 3 — Manual Entry:   user types rate manually.
                           When manual: show a mandatory "Justification" text field
                           beside the Rate field.

UI: Three-option toggle button group (Last PO | Average | Manual) on the line item row.
    Default mode: set per customer/division profile (Blueprint §14 smart defaults).
    Manual entry: rate field becomes editable, Justification field appears.

Value field (Qty × Rate): auto-calculated when mode is Last PO or Average.
  When manual: editable by user, shows calculated value as default but allows override.
```

---

## Reference: File-to-Module CSS Map

Quick reference for which `.module.css` files to create per sprint:

| Component File | Module CSS File |
|---|---|
| `AppHeader.tsx` | `AppHeader.module.css` |
| `MainLayout.tsx` | `MainLayout.module.css` |
| `FieldLabel.tsx` | `FieldLabel.module.css` |
| `StatusBadge.tsx` | `StatusBadge.module.css` |
| `KpiCard.tsx` | `KpiCard.module.css` |
| `PageTitleBar.tsx` | `PageTitleBar.module.css` |
| `SectionCard.tsx` | `SectionCard.module.css` |
| `PRKPIStrip.tsx` | `PRKPIStrip.module.css` |
| `PRLineItemsTable.tsx` | `PRLineItemsTable.module.css` |
| `ItemPickerModal.tsx` | `ItemPickerModal.module.css` |
| `PRDataTable.tsx` | `PRDataTable.module.css` |
| `POHeaderForm.tsx` | `POHeaderForm.module.css` |
| `POLineItemsTable.tsx` | `POLineItemsTable.module.css` |
| `PODataTable.tsx` | `PODataTable.module.css` |
| `DashboardPage.tsx` | `DashboardPage.module.css` |
| `PurchaseRequisitionNewPage.tsx` | `PurchaseRequisitionNewPage.module.css` |
| `PurchaseOrderListPage.tsx` | `PurchaseOrderListPage.module.css` |

---

*Document End — SpinRise Blueprint v1.1 Implementation Prompts*
*Kalpatharu Software Ltd | Confidential | 12 May 2026*
