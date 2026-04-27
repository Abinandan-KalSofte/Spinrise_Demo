# Session: Theme System — CSS Variables + Light/Dark Toggle
**Date**: 2026-04-25  
**Topic**: Remove all hardcoded colors, CSS custom properties, light/dark mode toggle

---

## Summary

Full theme architecture refactor following user escalation: "remove all hardcoded css colors use colors from theme only and then add light and dark modes."

---

## Changes Made

### New Files
- `src/shared/store/useThemeStore.ts` — Zustand store, persists `isDark` boolean to localStorage, exposes `toggle()`

### Modified Files

**`src/shared/theme/themeConfig.ts`**
- Refactored from static export to `buildThemeConfig(isDark: boolean)` function
- Returns dark or light Ant Design algorithm + matching token set
- Kept default export `buildThemeConfig(true)` for backward compatibility

**`src/App.tsx`**
- Subscribes to `useThemeStore` for `isDark`
- Calls `buildThemeConfig(isDark)` to feed ConfigProvider dynamically
- `useEffect` syncs `data-theme="dark"|"light"` on `document.documentElement` for CSS variables to respond

**`src/shared/layouts/AppHeader.tsx`**
- Added `SunOutlined` / `MoonOutlined` icon toggle button in topbar right section
- Button switches between dark/light with Tooltip indicating the other mode
- Reads/writes `useThemeStore`

**`src/index.css`** — Full rewrite
- Added `:root` block with CSS custom properties (dark defaults):
  `--bg-base`, `--bg-surface`, `--bg-elevated`, `--bg-input`, `--border`, `--border-input`, `--border-subtle`, `--text`, `--text-secondary`, `--text-muted`, `--shadow-card`, `--shadow-topbar`
- Added `html[data-theme="light"]` block with light overrides for all variables
- Replaced all hardcoded color hex values throughout CSS with `var(--*)` references
- Added `-webkit-autofill` override to prevent browser from injecting white backgrounds into login inputs
- Moved `.pr-header-form` scoped input styles from PRHeaderCards inline `<style>` tag into the global CSS (now theme-aware)

**`src/features/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`**
- KPI cards: `background: '#ffffff'` → `var(--bg-surface)`, `border: '#e5e7eb'` → `var(--border)`, shadow → `var(--shadow-card)`
- KPI value text `color: '#0f172a'` → `var(--text)`, label `color: '#6b7280'` → `var(--text-secondary)`
- Page header divider `borderBottom: '#f1f5f9'` → `var(--border)`
- Delete modal header border + paragraph color → CSS vars

**`src/features/purchase-requisition/components/pr-list/PRViewModal.tsx`**
- `Descriptions` `labelStyle` `background: '#fafafa'` → `var(--bg-elevated)`, added `color: var(--text-secondary)`

**`src/features/auth/pages/LoginPage.tsx`**
- All dark text colors (`#111827`, `#6b7280`, `#9ca3af`) → CSS variable equivalents
- "Spinrise ERP" title, "Welcome back" heading, form labels, footer text — all use `var(--text)` / `var(--text-secondary)` / `var(--text-muted)`

**`src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`**
- Removed inline `<style>` block (moved to index.css as `.pr-header-form` rules)
- Container `background`, `border`, `boxShadow` → CSS variables
- `LABEL` constant color → `var(--text-secondary)`
- Budget balance label → `var(--text-secondary)`
- Section title → `var(--text)`

---

## Result

- Theme toggle button in topbar (sun = switch to light, moon = switch to dark)
- Preference persisted in localStorage across page refreshes
- No more white KPI cards, white Descriptions labels, or dark text on dark background in login
- Browser autofill no longer injects white into login inputs
- TypeScript check: 0 errors
