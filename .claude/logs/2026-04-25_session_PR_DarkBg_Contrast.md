# Session Log — 2026-04-25 — PR Dark Background & Contrast Round 4

## Summary

Round 4 visual polish: dark page background, stronger shadows, darker borders,
near-black labels, and simplified flat-white form fills.

---

## Changes

### 1. Page Background — `src/index.css`

Changed from `#F1F5F9` (light slate) to `#1a2535` (deep navy) in:
- `body { background }`
- `.page-shell { background }` (login page)
- `.main-content.ant-layout-content { background }`

Effect: white cards now float on a dark surface, matching the sidebar (`#0f172a`) family.

### 2. Global Input Borders — `src/index.css`

- Default border: `#E2E8F0` → `#94A3B8` (slate-400; clearly visible on white)
- Disabled border: `#E2E8F0` → `#CBD5E1` (lighter, preserves disabled muted feel)
- Hover/focus borders unchanged: `#4f46e5` indigo accent

### 3. Requisition Header Card — `PRHeaderV2.tsx`

| Property | Before | After |
|---|---|---|
| Panel content background | `#F8FAFC` | `#ffffff` (removed inner tint) |
| Header border-bottom | `#E2E8F0` | `#CBD5E1` |
| Card outer border | `1px solid #E2E8F0` | `1px solid #CBD5E1` |
| Card shadow | `0 4px 12px rgba(0,0,0,0.04)` | `0 8px 24px rgba(0,0,0,0.22), 0 2px 6px rgba(0,0,0,0.14)` |
| Input borders | `#E2E8F0` | `#94A3B8` |
| Label color | `#374151` | `#0F172A` |
| Label font-weight | 600 | 700 |

### 4. Item Entry Form & Grid — `PRLineItemsTable.tsx`

**Constants:**
- `INPUT_STYLE.border`: `#E2E8F0` → `#94A3B8`
- `LABEL_STYLE.color`: `#374151` → `#0F172A`
- `LABEL_STYLE.fontWeight`: 600 → 700

**CSS block:**
- Input `border`: `#E2E8F0` → `#94A3B8`
- Label color: `#374151` → `#0F172A`, font-weight 600 → 700
- Non-primary button border: `#E2E8F0` → `#94A3B8`, text `#374151` → `#0F172A`

**Entry form container:**
- Border: `1px solid #E2E8F0` → `1px solid #CBD5E1`
- Shadow: weak → `0 8px 24px rgba(0,0,0,0.22), 0 2px 6px rgba(0,0,0,0.14)`
- Card header border-bottom: `#E2E8F0` → `#CBD5E1`
- Card header label text: `#374151` → `#0F172A`
- Form body inner background: `#F8FAFC` → `#ffffff` (simplified, removed tinted layer)

**Grid container:**
- Border: `1px solid #E2E8F0` → `1px solid #CBD5E1`
- Shadow: weak → `0 8px 24px rgba(0,0,0,0.22), 0 2px 6px rgba(0,0,0,0.14)`
- Grid header border-bottom: `#E2E8F0` → `#CBD5E1`
- Grid header background: `#F8FAFC` → `#ffffff`
- "Added Items" label: `#374151` → `#0F172A`

---

## Build Status

TypeScript: 0 errors
