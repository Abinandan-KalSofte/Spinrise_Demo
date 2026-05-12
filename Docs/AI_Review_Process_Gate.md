# AI (Claude) Review Process Gate
## Spinrise ERP — Backend (ASP.NET Core + SQL Server) & Frontend (React JS)

**Document Version:** 1.0  
**Prepared by:** Abinandan N, Fullstack Developer  
**Company:** Kalpatharu Software Ltd  
**Date:** 2026-05-12  
**Status:** Draft — Pending CEO Review & Approval

---

## Table of Contents

1. [Purpose & Scope](#1-purpose--scope)
2. [Review Gate Overview](#2-review-gate-overview)
3. [When to Trigger a Review](#3-when-to-trigger-a-review)
4. [Review Dimensions](#4-review-dimensions)
5. [Backend Review Process — ASP.NET Core + SQL Server](#5-backend-review-process--aspnet-core--sql-server)
6. [Frontend Review Process — React JS + TypeScript](#6-frontend-review-process--react-js--typescript)
7. [UI Design Visual Review Standards](#7-ui-design-visual-review-standards)
8. [Cross-Cutting Review Areas](#8-cross-cutting-review-areas)
9. [AI Review Execution Steps](#9-ai-review-execution-steps)
10. [Gate Criteria & Scoring](#10-gate-criteria--scoring)
11. [Review Output Format](#11-review-output-format)
12. [Review Workflow — Who Does What](#12-review-workflow--who-does-what)
13. [Escalation & Override Policy](#13-escalation--override-policy)
14. [Review Prompt Templates](#14-review-prompt-templates)
15. [Appendix — Spinrise Quality Standards](#15-appendix--spinrise-quality-standards)

---

## 1. Purpose & Scope

This document defines the **AI-assisted code review process gate** for the Spinrise ERP project. It establishes a structured, repeatable process for using Claude (Anthropic) to validate code before it progresses from one stage to the next in the development pipeline.

### 1.1 Objectives

| Objective | Description |
|---|---|
| **Business Rule Integrity** | Ensure all implemented logic matches approved FSD (Functional Specification Document) |
| **Validation Completeness** | Confirm all inputs are validated at the correct layer — no bypass possible |
| **Performance Compliance** | Verify API response < 500ms, UI render < 200ms, no N+1 queries |
| **Security Baseline** | Enforce OWASP Top 10 compliance before any code reaches production |
| **Blueprint Compliance** | Confirm UI matches the approved Web Form Blueprint v1.1 |
| **Code Consistency** | Ensure all new code follows established patterns from the reference User module |

### 1.2 Scope

- **In Scope:** All new modules, all bug fixes, all stored procedure changes, all UI component additions
- **Out of Scope:** Third-party library updates, infrastructure/IIS configuration, `.env` file changes
- **Applies to Databases:** `SpinRiseSaranya` (M01) and `JAT` (M02) — reviewed separately

---

## 2. Review Gate Overview

The Spinrise development pipeline has **five gates**. AI review is mandatory at Gates 2, 3, and 4.

```
┌───────────┐    ┌──────────────┐    ┌──────────────┐    ┌──────────────┐    ┌──────────────┐
│  Gate 1   │    │   Gate 2     │    │   Gate 3     │    │   Gate 4     │    │   Gate 5     │
│           │    │  ★ AI Review │    │  ★ AI Review │    │  ★ AI Review │    │              │
│  Dev Self │───▶│  Backend     │───▶│  Frontend    │───▶│  Integration │───▶│  CEO / PM    │
│  Check    │    │  Code Review │    │  Code Review │    │  End-to-End  │    │  Sign-off    │
│           │    │              │    │              │    │  Review      │    │              │
└───────────┘    └──────────────┘    └──────────────┘    └──────────────┘    └──────────────┘
     Dev              Dev                  Dev               TL-IST              PM → CEO
```

| Gate | Trigger | AI Review Type | Reviewer Role |
|---|---|---|---|
| Gate 1 | Dev completes feature branch | Self-check (manual) | Developer |
| **Gate 2** | PR raised to `dev` branch | **Backend AI Review** | TL-Dev (Sasi) |
| **Gate 3** | UI component complete | **Frontend AI Review** | TL-Dev (Sasi) |
| **Gate 4** | Feature deployed to staging | **Integration AI Review** | TL-IST (Palanivel) |
| Gate 5 | IST sign-off complete | Human final review | PM (Saravanan) → CEO |

---

## 3. When to Trigger a Review

### 3.1 Mandatory Triggers

A review **must** be triggered before the following actions:

| Event | Gate | Review Type |
|---|---|---|
| New stored procedure added | Gate 2 | Backend SQL Review |
| Existing SP modified | Gate 2 | Backend SQL Review |
| New API controller/endpoint added | Gate 2 | Backend Full Review |
| Business logic change in Service layer | Gate 2 | Business Rules Review |
| New React component or page added | Gate 3 | Frontend Full Review |
| Zustand store modified | Gate 3 | State Management Review |
| Form validation logic changed | Gate 3 | Validation Review |
| Feature complete, ready for IST | Gate 4 | Integration Review |

### 3.2 Discretionary Triggers

| Event | Recommendation |
|---|---|
| Hotfix / urgent bug fix | Run Backend or Frontend review depending on area |
| Refactor (no logic change) | Run Architecture Consistency Review |
| New QuestPDF / EPPlus report | Run Report Output Review |

---

## 4. Review Dimensions

Every AI review covers three primary dimensions:

```
┌─────────────────────────────────────────────────────────────┐
│                    THREE REVIEW DIMENSIONS                   │
├──────────────────┬──────────────────┬────────────────────────┤
│  BUSINESS RULES  │   VALIDATION     │    PERFORMANCE         │
│                  │                  │                        │
│ • FSD compliance │ • Input guards   │ • Query efficiency     │
│ • Calculation    │ • Data type      │ • API response time    │
│   accuracy       │   enforcement    │ • Render performance   │
│ • Workflow logic │ • Error messages │ • Bundle size          │
│ • Status machine │ • Server + UI    │ • Memory usage         │
│ • Decimal rules  │   layer coverage │ • Pagination           │
└──────────────────┴──────────────────┴────────────────────────┘
```

---

## 5. Backend Review Process — ASP.NET Core + SQL Server

### 5.1 Architecture Layer Compliance

**Prompt the AI to check:**

```
Layer Flow: Controller → Service → Repository → Stored Procedure → SQL Server
```

| Check | Rule | Severity |
|---|---|---|
| Controller inheritance | Must extend `BaseApiController` | HIGH |
| Response wrapping | All responses must use `ApiResponse<T>` or `ApiResponse` | HIGH |
| No direct DB calls in Controller | Controllers must only call Service methods | HIGH |
| No domain entity in API response | Always map to DTO before returning | HIGH |
| Async/await chain | Every method in the call chain must be `async Task<>` | MEDIUM |
| Correlation ID propagation | All log entries must carry correlation ID | MEDIUM |
| No raw SQL strings | All data access via parameterized SPs only | CRITICAL |
| DI registration in Program.cs | All new services and repositories registered | MEDIUM |

### 5.2 Business Rules Validation

**AI must verify against the approved FSD:**

| Area | What to Check |
|---|---|
| **Status machine** | PR statuses: Requested → Pending → Approved / Rejected → PO Raised → Closed / Cancelled. No invalid transitions allowed. |
| **Decimal precision** | Quantity = 3dp, Rate = 4dp, Value = 2dp. Enforce in SP calculations and DTO mapping. |
| **Financial Year** | Apr–Mar cycle. If month ≥ 4, FY = year/(year+1); else FY = (year-1)/year. |
| **Approx Cost** | Always = Qty × Rate (4dp). Never store without validation. |
| **PO from PR** | PO can only be raised against an Approved PR. Blocked status must prevent PO creation. |
| **Duplicate PR lines** | Same item code + UOM must not appear twice in the same PR. |
| **Pagination** | All list endpoints must implement `PageNumber` + `PageSize` with total count. |
| **Soft delete** | No hard deletes on master data. Use `IsActive = 0` or status transitions. |

**Business Rule Review Checklist:**

```
□ All status transition rules enforced in Service layer (not just UI)
□ Decimal precision matches Kalsofte standard (Qty 3dp, Rate 4dp, Value 2dp)
□ Financial year computed correctly (Apr-Mar cycle)
□ No business rule is enforced only in the stored procedure with no service-layer guard
□ Calculated fields (ApproxCost, TotalValue) are computed, not accepted from client
□ Concurrency-sensitive operations use UPDLOCK hints (per CD-2 fix pattern)
□ All date comparisons use parameterized date, not GETDATE() manipulation
```

### 5.3 Input Validation

| Layer | What AI Checks |
|---|---|
| **DTO level** | `[Required]`, `[MaxLength]`, `[Range]`, `[RegularExpression]` annotations present where needed |
| **Service level** | Business rule validation (status, amount, duplicate check) before DB call |
| **SP level** | SP must check for NULL params, validate FK existence, check for logical contradictions |
| **API level** | ModelState validation middleware active; 400 returned for invalid input |

**Validation Checklist:**

```
□ Required fields have [Required] on DTO
□ String fields have [MaxLength] matching DB column definition
□ Numeric ranges validated with [Range] (no negative quantities, no zero rates on required fields)
□ FK references validated (item code exists, supplier exists) before insert
□ Inputs from external systems (API callers) never trusted without re-validation
□ Error messages are user-facing (not internal exceptions exposed to client)
□ SQL injection: all SP calls use SqlParameter — grep confirms no string concatenation
```

### 5.4 Performance Review — Backend

| Metric | Target | How AI Checks |
|---|---|---|
| API response time | < 500ms p95 | Check for N+1 query patterns, missing indexes in SP |
| Pagination | All list endpoints | Verify `OFFSET...FETCH NEXT` pattern in SP |
| No SELECT * | Explicit column list | Grep SP files for `SELECT *` |
| Index coverage | Critical filters indexed | Check WHERE columns in SP match available indexes |
| Connection management | No long-held connections | Verify `using` pattern around UnitOfWork |
| Async all the way | No `.Result` or `.Wait()` | Grep for `.Result` and `.Wait()` calls in async context |

**Performance Checklist:**

```
□ No SELECT * in any stored procedure
□ All list SPs use OFFSET...FETCH NEXT pagination
□ JOIN conditions use indexed columns
□ No cursor usage — use SET-based operations
□ No nested SELECT in WHERE clause that executes per row
□ UnitOfWork disposed correctly (using block or try/finally)
□ No .Result / .Wait() calls in async methods (deadlock risk)
□ Large result sets use streaming or pagination — never load all rows in memory
```

### 5.5 Security Review — Backend

```
□ No raw SQL string concatenation anywhere (CRITICAL)
□ No sensitive data (passwords, keys, connection strings) in source code
□ JWT validation active on all protected endpoints
□ CORS restricted to approved origins only (no wildcard *)
□ Exception middleware catches all unhandled exceptions (no stack traces to client)
□ Authorization checks present on all write endpoints
□ Input length limits prevent buffer-style attacks
□ Logs do not contain PII or sensitive business data
```

### 5.6 SQL Stored Procedure Review

| Check | Rule |
|---|---|
| Naming convention | `ksp_PR_*` for M01, `ksp_RMI_PO_*` for M02 |
| CREATE OR ALTER | Never `DROP + CREATE` |
| Parameterized | All params as `@ParamName TYPE` — no concatenation |
| SET NOCOUNT ON | Must be first statement in every SP |
| Error handling | `BEGIN TRY / BEGIN CATCH` with RAISERROR or THROW |
| Transaction scope | Multi-table writes wrapped in explicit `BEGIN TRAN / COMMIT / ROLLBACK` |
| Merged file | Every SP change must be reflected in `merged.sql` or `merged_jat.sql` |

---

## 6. Frontend Review Process — React JS + TypeScript

### 6.1 Architecture Compliance

| Check | Rule | Severity |
|---|---|---|
| Feature module structure | `api/ components/ pages/ store/ services/ types.ts` present | MEDIUM |
| No `any` type | Strict TypeScript — zero `any` usages in new code | HIGH |
| Ant Design via wrapper | Components use shared UI wrapper, not raw antd imports | MEDIUM |
| Route lazy loading | All page-level components use `React.lazy()` | MEDIUM |
| Centralized error handling | Axios errors via shared error handler, not local catch blocks | HIGH |
| No direct `localStorage` manipulation | Auth state via Zustand store only | MEDIUM |

### 6.2 Business Rules — Frontend

**AI must verify form logic matches approved FSD:**

| Area | Check |
|---|---|
| **Calculated fields** | ApproxCost = Qty × Rate (computed, not user-entered); Total Value = sum of all line costs |
| **Read-only computed fields** | Fields like ApproxCost, Total Value must be `readOnly` / `disabled` — not editable |
| **Conditional visibility** | Fields shown/hidden based on status transitions must match FSD |
| **Status badge colors** | Must match `StatusBadge` component colors exactly — no local overrides |
| **KPI strip** | In Add Mode: show only Total Lines + Approx Budget. After first save: show all 5 KPIs |
| **Financial Year display** | `FY YYYY–YY` format computed from `processingDate` using Apr-Mar rule |
| **Decimal display** | Qty = 3dp, Rate = 4dp, Value/Cost = 4dp (Approx Cost matches Rate) |

**Business Rules Checklist:**

```
□ ApproxCost rendered as read-only — no InputNumber for this field
□ Total Value in footer is sum of all approxCost values across lines
□ Status badge uses canonical StatusBadge component with approved colors
□ KPI cards in Add mode show only the approved 2 cards (hidden prop on others)
□ Date display uses DD/MM/YY format in grid, DD/MM/YYYY in date pickers
□ Financial year text computed correctly from processingDate
□ All currency fields prefixed with ₹ and correct decimal places
□ Decimal precision: fmtQty(3dp), fmtRate(4dp), fmtValue/fmtCost(4dp)
```

### 6.3 Validation Review — Frontend

| Layer | What AI Checks |
|---|---|
| **Required field guards** | All required fields show validation message before submit |
| **Numeric range** | Qty > 0, Rate ≥ 0, required fields not left blank |
| **Date guards** | Required Date cannot be in the past (unless overridden by authorized role) |
| **Form submit block** | Submit button disabled / form blocked when validation fails |
| **Server error display** | API validation errors (400 responses) shown to user — not swallowed silently |
| **No client-side bypass** | Validation must also exist on backend — frontend-only validation is insufficient |

**Validation Checklist:**

```
□ All required fields validated before API call
□ Numeric fields reject negative values and empty strings
□ Submit action disabled when form has errors
□ API error responses surface to user via notification or inline field error
□ Rate = 0 on non-sample items triggers warning (not hard block)
□ Duplicate item code + UOM in PR lines triggers inline error
□ Line item deletion requires confirmation when row has data
□ Date picker restricts to valid business dates where required by FSD
```

### 6.4 Performance Review — Frontend

| Metric | Target | How AI Checks |
|---|---|---|
| Component re-renders | Minimal | Check for missing `memo`, `useCallback`, `useMemo` on expensive components |
| Initial load | < 3s on LAN | Check route lazy-loading, no eager large imports |
| Table rendering | Virtualised for > 50 rows | Check for `react-window` or Ant Design Virtual Table |
| Zustand store scope | Scoped selectors | No `useStore()` without selector — causes full re-render on any state change |
| Image/asset size | Compressed | No uncompressed assets in `public/` |
| API calls | Debounced search | Search/autocomplete inputs must debounce at ≥ 300ms |

**Performance Checklist:**

```
□ Table components with > 50 rows use virtual rendering
□ Lookup dropdowns debounce API search calls (≥ 300ms)
□ React.memo applied to row renderers in editable grids
□ Zustand selectors are specific (not selecting entire store object)
□ useCallback wraps event handlers passed as props to memoized children
□ useMemo used for expensive computations (total calculations in line items)
□ No useEffect with missing dependencies (exhaustive-deps lint rule passing)
□ API calls in useEffect have cleanup / abort controller for navigation safety
```

### 6.5 Blueprint v1.1 UI Compliance

| Area | Specification |
|---|---|
| **Typography** | Body 13px, Labels 12px/600, Headings 16px/600 |
| **Spacing** | 4px base unit — padding/margin in multiples of 4 |
| **Colors** | Only blueprint palette — no off-palette hex codes |
| **Field height** | Input/Select/DatePicker = 32px standard, 28px compact |
| **Border radius** | 6px for inputs, 8px for cards, 4px for badges |
| **KPI card height** | Max 72px |
| **Status badges** | Pill shape (border-radius 9999px), 11px/600 |
| **Labels** | Title Case, not ALL CAPS |
| **Grid row height** | 32px (compact density) |

**Blueprint Compliance Checklist:**

```
□ No ALL-CAPS labels anywhere — all labels use Title Case
□ No inline style={{ color }} for non-dynamic colors — use CSS module or CSS variable
□ StatusBadge component used for all status renders — no raw <Tag> with manual colors
□ FieldLabel component used for all form field labels
□ KPI card max-height does not exceed 72px
□ Form sections use 24px gaps, field rows use 16px gaps
□ No Ant Design <Form.Item> label props still using old uppercase text
□ Blue primary color = #185FA5 only — no #1890ff or other legacy blues
□ Page background = #F5F5F3, card/surface background = #ffffff
□ All icons use Lucide React — no @ant-design/icons except where legacy
```

---

## 7. UI Design Visual Review Standards

This section defines the visual layout standards Claude must verify against Blueprint v1.1. ASCII mockups show the exact required layout for each screen type.

---

### 7.1 Application Shell Layout

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  TOPBAR  (height: 48px, background: #ffffff, border-bottom: 1px solid #E2E2E2)   │
│                                                                                    │
│  [≡] [S] Kalpatharu Software Ltd          [Branch ▼]  FY 2025–26   [📅] [🔔] [👤]│
│          Purchase Division                                                         │
├──────────────────────────────────────────────────────────────────────────────────┤
│         │                                                                          │
│ SIDEBAR │                    MAIN CONTENT AREA                                     │
│ (220px) │           (background: #F5F5F3, max-width: 1280px)                      │
│         │                                                                          │
│ [🛒]   │                                                                          │
│ Purchase│                                                                          │
│         │                                                                          │
│  ├ PR   │                                                                          │
│  ├ PO   │                                                                          │
│  └ GRN  │                                                                          │
│         │                                                                          │
│ [📊]   │                                                                          │
│ Reports │                                                                          │
│         │                                                                          │
└─────────┴──────────────────────────────────────────────────────────────────────┘

SIDEBAR COLLAPSED (60px):
┌──────┬──────────────────────────────────────────────────────────────────────────┐
│      │                    MAIN CONTENT AREA                                      │
│ [🛒] │                                                                            │
│ [📊] │                                                                            │
└──────┴──────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ Topbar height exactly 48px (not 56px or 64px)
□ Sidebar width 220px expanded, 60px collapsed
□ No shadow on sidebar — only 1px right border #E2E2E2
□ No dark/navy sidebar — background must be #ffffff
□ Brand text "Kalpatharu Software Ltd" in 13px/600 — NOT all caps
□ Division name below brand in 11px/#4A4A4A
□ Active menu item has left border 3px solid #0C447C + bg #E6F1FB
□ Menu icon size: 18px; menu item height: 36px
```

---

### 7.2 Page Header Layout

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  PAGE HEADER  (background: #ffffff, border-bottom: 1px solid #E2E2E2, px:24 py:12)│
│                                                                                    │
│  Purchase Requisition                    [+ New PR]  [⬇ Export]  [🖨 Print]       │
│  PR-2025-00123 · Requested                                                         │
│                                                                                    │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐           │
│  │ 📋       │  │ ₹        │  │ ✓        │  │ ⏳       │  │ ×        │           │
│  │ 12       │  │ 4,82,500 │  │ 8        │  │ 3        │  │ 1        │           │
│  │ Total    │  │ Approx   │  │ Approved │  │ Pending  │  │ Rejected │           │
│  │ Lines    │  │ Budget   │  │ Lines    │  │ Lines    │  │ Lines    │           │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────┘           │
│    max-height: 72px per card, flex: 1, gap: 16px                                  │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**KPI Strip — Add Mode (before first save):**
```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  ┌──────────┐  ┌──────────┐                                                       │
│  │ 📋       │  │ ₹        │   ← Only 2 cards visible in Add Mode                 │
│  │ 0        │  │ 0.0000   │                                                       │
│  │ Total    │  │ Approx   │                                                       │
│  │ Lines    │  │ Budget   │                                                       │
│  └──────────┘  └──────────┘                                                       │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ KPI cards: max-height 72px, flex 1 (equal width), gap 16px
□ KPI value: font-size 20px, font-weight 700, color from card's color prop
□ KPI label: font-size 11px, font-weight 500, color #4A4A4A
□ KPI icon box: 36px × 36px, border-radius 6px, color tint background
□ In Add Mode: exactly 2 KPI cards (Total Lines + Approx Budget) — 3 others hidden
□ KPI value overflow: ellipsis, not wrap
□ No loading spinners inside KPI cards — show "—" dash while loading
```

---

### 7.3 Form Layout — PR Header

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  FORM SECTION: Request Details                                                     │
│  ─────────────────────────────────────────────────────────────────────────────── │
│                                                                                    │
│  PR Number *         Processing Date *    Status                                   │
│  ┌─────────────┐    ┌─────────────────┐  ┌──────────────────┐                    │
│  │ PR-2025-001 │    │  12/05/2026     │  │  ● Requested     │                    │
│  └─────────────┘    └─────────────────┘  └──────────────────┘                    │
│                                                                                    │
│  Request By *        Department          Division                                  │
│  ┌─────────────┐    ┌─────────────────┐  ┌──────────────────┐                    │
│  │ Select  ▼   │    │ Select      ▼   │  │ Select       ▼   │                    │
│  └─────────────┘    └─────────────────┘  └──────────────────┘                    │
│                                                                                    │
│  Remarks                                                                           │
│  ┌─────────────────────────────────────────────────────────────────────────────┐  │
│  │                                                                             │  │
│  └─────────────────────────────────────────────────────────────────────────────┘  │
│                                                                                    │
│  GRID LAYOUT: 3 columns @ 24px gap, label above field                             │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ Form labels use FieldLabel component (12px/600, color #1A1A1A)
□ Required asterisk (*) in #A32D2D, displayed BEFORE label text
□ Input/Select/DatePicker height: 32px standard
□ Grid: 3 equal columns, 24px column gap, 16px row gap
□ Full-width fields (Remarks, Description) span all 3 columns
□ Readonly fields: background #F5F5F3, no border change — still looks like a field
□ Status rendered as StatusBadge component, not plain text or raw Tag
□ No ALL-CAPS label text anywhere
□ Section heading: 13px/600/#1A1A1A with 1px bottom border #E2E2E2
```

---

### 7.4 Line Items Grid Layout

```
┌──────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  LINE ITEMS  (background: #ffffff, border: 1px solid #E2E2E2, border-radius: 8px)                     │
│                                                                                                        │
│ ┌────┬──────────┬────────────────────────┬─────┬────────┬────────────┬──────────┬─────┬──────┬───┐   │
│ │ #  │ Item Code│ Item Name / Group      │ UOM │  Qty   │    Rate    │ Approx   │ Req │ Mach.│ ✎ │   │
│ │    │          │                        │     │        │            │ Cost     │ Date│      │   │   │
│ ├────┼──────────┼────────────────────────┼─────┼────────┼────────────┼──────────┼─────┼──────┼───┤   │
│ │ 1  │ RM-00145 │ Cotton Yarn 32s        │ KG  │  50.000│  ₹125.4500 │₹6,272.50 │12/06│ M-01 │ 👁 │   │
│ ├────┼──────────┼────────────────────────┼─────┼────────┼────────────┼──────────┼─────┼──────┼───┤   │
│ │ 2  │ RM-00201 │ Polyester Fibre 1.4D   │ KG  │  25.000│  ₹ 98.2500 │₹2,456.25 │15/06│ M-02 │ 👁 │   │
│ ├────┼──────────┼────────────────────────┼─────┼────────┼────────────┼──────────┼─────┼──────┼───┤   │
│ │ ▸  │[+ Add Item]                      │     │        │            │          │     │      │   │   │
│ └────┴──────────┴────────────────────────┴─────┴────────┴────────────┴──────────┴─────┴──────┴───┘   │
│                                                                                                        │
│  STICKY FOOTER (position: sticky, bottom: 0, background: #ffffff, border-top: 2px solid #E2E2E2)      │
│  ┌───────────────────────────────────────────────────────────────────────────────────────────────┐    │
│  │  12 Lines    Total Qty: 1,250.000    Total Approx Cost: ₹ 48,250.0000    [Save Draft] [Submit]│    │
│  └───────────────────────────────────────────────────────────────────────────────────────────────┘    │
└──────────────────────────────────────────────────────────────────────────────────────────────────────┘

Row height: 32px    Header row: background #F5F5F3, color #1A1A1A, font-weight 600
```

**Visual checks:**
```
□ Table header: background #F5F5F3, not white; text #1A1A1A, font-weight 600
□ Row height: 32px (compact density)
□ Row hover: background #E6F1FB
□ Qty display: 3 decimal places (e.g., 50.000)
□ Rate display: 4 decimal places with ₹ prefix (e.g., ₹ 125.4500)
□ Approx Cost display: 4 decimal places with ₹ prefix (e.g., ₹ 6,272.5000)
□ Numbers: right-aligned, font-variant-numeric tabular-nums
□ Sticky footer: always visible at bottom of viewport during scroll
□ Footer totals match sum of grid values
□ "Add Item" row visually distinct (lighter, smaller text)
□ Action icons (eye, edit, delete): 12px, using Lucide or mapped antd icon
□ Selected/editing row: highlighted border or background tint #E6F1FB
```

---

### 7.5 Status Badge Visual Standards

```
Status rendering — ALL must use <StatusBadge> component:

  ┌────────────────┐  ┌────────────────┐  ┌────────────────┐
  │  ● Requested   │  │  ● Pending     │  │  ● Approved    │
  │  bg:#E6F1FB    │  │  bg:#FAEEDA    │  │  bg:#EAF3DE    │
  │  text:#185FA5  │  │  text:#BA7517  │  │  text:#3B6D11  │
  └────────────────┘  └────────────────┘  └────────────────┘

  ┌────────────────┐  ┌────────────────┐  ┌────────────────┐
  │  ● Rejected    │  │  ● PO Raised   │  │  ● Cancelled   │
  │  bg:#FCEBEB    │  │  bg:#F0E6FB    │  │  bg:#F5F5F3    │
  │  text:#A32D2D  │  │  text:#722ED1  │  │  text:#4A4A4A  │
  └────────────────┘  └────────────────┘  └────────────────┘

  Shape: border-radius 9999px (pill)
  Font:  11px / weight 600
  Size:  min-width 72px, padding 2px 10px
  Role:  role="status" aria-label="{status}"
```

**Visual checks:**
```
□ All status values use StatusBadge — no raw <Tag color="..."> or plain text spans
□ Pill shape (fully rounded, not 4px or 6px radius)
□ Color pairs match the table above exactly — no approximations
□ Minimum width 72px so badges align in list columns
□ size="small" variant used inside grid cells (10px, min-width 60px)
□ size="default" used in form headers and detail views
□ "Partial" uses same colors as "Pending" (#FAEEDA / #BA7517)
□ "Closed" uses neutral (#E8E8E8 / #4A4A4A)
```

---

### 7.6 List / Grid Screen Layout

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  PAGE TITLE: Purchase Requisitions                    [+ New PR]  [⬇ Export]      │
│  ─────────────────────────────────────────────────────────────────────────────── │
│                                                                                    │
│  FILTER BAR (background: #ffffff, padding: 12px 16px, border-radius: 8px)         │
│  ┌──────────────────┐ ┌──────────────────┐ ┌──────────────────┐ ┌──────────────┐ │
│  │ PR Number    🔍  │ │ Status       ▼   │ │ Date Range   📅  │ │  [Search]    │ │
│  └──────────────────┘ └──────────────────┘ └──────────────────┘ └──────────────┘ │
│                                                                                    │
│  ┌─────┬────────────┬────────────────────┬──────────┬────────────┬──────────────┐ │
│  │  #  │ PR Number  │ Request By         │   Date   │  Status    │   Actions    │ │
│  ├─────┼────────────┼────────────────────┼──────────┼────────────┼──────────────┤ │
│  │  1  │ PR-25-0001 │ Rajan / Purchase   │ 12/05/26 │ ●Approved  │ [👁][✎][🗑] │ │
│  │  2  │ PR-25-0002 │ Kumar / Admin      │ 11/05/26 │ ●Pending   │ [👁][✎][🗑] │ │
│  │  3  │ PR-25-0003 │ Devi / Production  │ 10/05/26 │ ●Requested │ [👁]         │ │
│  ├─────┼────────────┼────────────────────┼──────────┼────────────┼──────────────┤ │
│  │                                                                               │ │
│  │  PAGINATION: Showing 1–20 of 143    [◀] [1] [2] [3] ... [8] [▶]   20/page ▼ │ │
│  └───────────────────────────────────────────────────────────────────────────────┘ │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ Filter bar in white card (#ffffff), separated from page bg (#F5F5F3)
□ Filter inputs height 32px, same as form inputs
□ Table header background: #F5F5F3
□ Row hover background: #E6F1FB
□ Status column uses StatusBadge (small size) — never plain text
□ Action buttons: icon-only, text size, no visible border unless hovered
□ Pagination shows total count and current range
□ Page size selector (20/50/100) in bottom right
□ Empty state: centered illustration or message — not blank white space
□ Loading state: skeleton rows — not spinner blocking the whole table
```

---

### 7.7 Typography Hierarchy

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  TYPOGRAPHY REFERENCE                                                              │
│                                                                                    │
│  Purchase Requisition                         ← Page Title  16px / 600 / #1A1A1A │
│                                                                                    │
│  Request Details                              ← Section Heading  13px / 600       │
│  ─────────────────────────────────────────                                        │
│                                                                                    │
│  Processing Date *                            ← Field Label  12px / 600 / #1A1A1A │
│  ┌───────────────────┐                                                             │
│  │  12/05/2026       │                        ← Input Value  13px / 400           │
│  └───────────────────┘                                                             │
│                                                                                    │
│  Use 32s Cotton Yarn for Warping Machine      ← Body Text  13px / 400 / #1A1A1A  │
│                                                                                    │
│  Last updated: 12 May 2026                    ← Muted Text  12px / 400 / #4A4A4A │
│                                                                                    │
│  RM-00145                                     ← Mono/Code  13px / 700 monospace  │
│                                                                                    │
│  * Required                                   ← Required indicator  #A32D2D       │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ Font family: Inter → Segoe UI → system-ui → sans-serif (in that priority order)
□ Page titles: 16px / 600 — not 18px or 20px
□ Section headings: 13px / 600 — not bold h3 tags
□ Field labels: 12px / 600 / #1A1A1A — rendered via FieldLabel component
□ Input values: 13px / 400 — normal weight, not bold
□ Secondary text: 12px / 400 / #4A4A4A
□ Item codes / reference numbers: monospace font, 700 weight
□ No text smaller than 11px anywhere (11px = minimum for badge labels)
□ Line height: 1.4 for body text, 1.1 for KPI values
```

---

### 7.8 Spacing & Density Reference

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│  SPACING SYSTEM (4px base unit)                                                    │
│                                                                                    │
│  SP-1 = 4px   → Icon padding, badge padding inner                                 │
│  SP-2 = 8px   → Compact gaps, icon-to-text gap                                    │
│  SP-3 = 12px  → Card internal padding (tight), topbar vertical padding            │
│  SP-4 = 16px  → Standard field gap, card padding standard                         │
│  SP-6 = 24px  → Section gap, column gap in form grid                              │
│  SP-8 = 32px  → Page padding horizontal                                           │
│                                                                                    │
│  BORDER RADIUS                                                                     │
│  Input / Select / DatePicker : 6px                                                 │
│  Card / Panel                : 8px                                                 │
│  Button                      : 6px                                                 │
│  Badge / Status pill         : 9999px (full pill)                                  │
│  Icon box (KPI card)         : 6px                                                 │
│                                                                                    │
│  SHADOWS                                                                           │
│  Card default  : 0 1px 4px rgba(0,0,0,0.06)                                       │
│  Modal         : 0 8px 32px rgba(0,0,0,0.12)                                      │
│  Dropdown      : 0 4px 16px rgba(0,0,0,0.10)                                      │
│  Sidebar       : none (border only)                                                │
└──────────────────────────────────────────────────────────────────────────────────┘
```

**Visual checks:**
```
□ Page horizontal padding: 32px (not 24px or 16px)
□ Form column gap: 24px
□ Form row gap: 16px
□ Card padding: 12px 16px (tight) or 16px 24px (standard)
□ No arbitrary pixel values not on the 4px grid (e.g., no padding: 10px or 14px)
□ Card border-radius: 8px — not 4px or 12px
□ Input border-radius: 6px
□ Sidebar has NO box-shadow — only 1px right border
□ Modals use 8px border-radius and standard shadow
```

---

### 7.9 UI Design Visual Review Checklist

```
□ Layout shell matches Section 7.1 (topbar 48px, sidebar 220px/60px, white bg)
□ KPI strip matches Section 7.2 (72px max-height, 5 cards, Add-mode suppression)
□ Form header layout matches Section 7.3 (3-column grid, FieldLabel, 32px inputs)
□ Line items grid matches Section 7.4 (32px rows, sticky footer, correct decimals)
□ All status values use StatusBadge with exact Blueprint v1.1 colors (Section 7.5)
□ List/grid screens match Section 7.6 (filter bar, pagination, actions)
□ Typography matches Section 7.7 (no oversized headings, correct label weight)
□ Spacing follows Section 7.8 (4px grid, correct border-radius per element type)
□ No inline style={{}} for static colors — CSS module or CSS variable required
□ Dark mode: CSS variables switch correctly via [data-theme="dark"] attribute
□ No off-palette colors — all hex values must be in the approved palette (Section 15.3)
□ Responsive: no horizontal scroll at 1280px viewport width
□ Focus indicators visible on all interactive elements (keyboard navigation)
```

---

## 8. Cross-Cutting Review Areas

### 7.1 Dual-Database Boundary

```
□ M01 code (SpinRiseSaranya) uses IUnitOfWork only
□ M02 code (JAT) uses IJATUnitOfWork only
□ No M01 repository crosses into JAT database
□ SP names follow correct prefix: ksp_PR_* (M01) vs ksp_RMI_PO_* (M02)
□ Merged file updated: merged.sql for M01, merged_jat.sql for M02
□ Never run merged_jat.sql against SpinRiseSaranya
```

### 7.2 Report Output Review (QuestPDF + EPPlus)

```
□ All PDF generation uses QuestPDF only — no FastReports, no iTextSharp
□ All Excel/CSV exports use EPPlus only
□ Print layout: A4 Landscape for all purchase documents
□ Decimal format in print: Qty 3dp, Rate 4dp, Value 2dp
□ Print font: consistent with screen (Inter or Segoe UI fallback)
□ FastReportService.cs not referenced or instantiated anywhere
```

### 7.3 Error Handling Review

```
□ ExceptionHandlingMiddleware catches all unhandled backend exceptions
□ Structured error response always uses ApiResponse format (never raw exception)
□ Frontend shows user-friendly error message — never raw "500 Internal Server Error"
□ Failed API calls in list pages show empty state — not blank page
□ Form submission failures restore form state (user does not lose input)
```

---

## 9. AI Review Execution Steps

### Step 1 — Prepare the Review Context

Provide Claude with the following at the start of every review session:

```
1. The FSD section relevant to the feature being reviewed
2. The files changed (list of file paths and brief description of change)
3. The review type (Backend / Frontend / Integration)
4. Any known constraints or exceptions approved by PM/CEO
```

### Step 2 — Run the Appropriate Review Prompt

Use the prompt templates in [Section 14](#14-review-prompt-templates).

### Step 3 — Interpret the Output

Claude will return a structured report with:
- **PASS / FAIL / WARNING** status per section
- Severity classification per finding: `CRITICAL / HIGH / MEDIUM / LOW`
- Exact file + line reference for each finding
- Recommended fix for each finding

### Step 4 — Act on Findings

| Severity | Required Action | Timeline |
|---|---|---|
| CRITICAL | Must fix before gate can pass | Same session |
| HIGH | Must fix before gate can pass | Same day |
| MEDIUM | Fix before next gate | Within sprint |
| LOW | Log as tech debt | Next cleanup sprint |
| WARNING | Review with TL — fix or accept with documented reason | 48 hours |

### Step 5 — Re-run Review After Fixes

After fixing CRITICAL and HIGH issues, re-run the AI review on the changed files only. The gate does not pass until a clean re-run with zero CRITICAL/HIGH findings.

### Step 6 — Record the Gate Outcome

Log the gate result in the session log at `E:\Abinandan\SPINRISE\.claude\logs\` with:
- Date, module, gate number
- Number of findings by severity
- Final gate status (PASS / FAIL / CONDITIONAL PASS)
- Reviewer name and next gate target

---

## 10. Gate Criteria & Scoring

### 9.1 Gate Pass / Fail Thresholds

| Gate | CRITICAL | HIGH | MEDIUM | LOW | Result |
|---|---|---|---|---|---|
| **PASS** | 0 | 0 | Any | Any | Gate clears |
| **CONDITIONAL PASS** | 0 | 0–2 (waived by TL) | Any | Any | Passes with logged waiver |
| **FAIL** | ≥ 1 | ≥ 3 | — | — | Must fix and re-review |

### 9.2 Severity Definitions

| Severity | Definition | Examples |
|---|---|---|
| **CRITICAL** | Functional break, security hole, or data corruption risk | Raw SQL concatenation, no auth on write endpoint, wrong status transition allowed |
| **HIGH** | Business rule violation or incorrect calculation | Wrong decimal precision, calculated field is user-editable, missing required validation |
| **MEDIUM** | Structural violation or performance concern | Missing pagination, no `memo` on grid row, wrong icon library used |
| **LOW** | Style/convention deviation | Inline color that should be a CSS variable, missing `aria-label`, comment style |

---

## 11. Review Output Format

Claude must return every review in the following structured format:

```markdown
## AI Code Review Report
**Module:** [Module Name]
**Gate:** [Gate Number and Type]
**Reviewed Files:** [List of files]
**Review Date:** [Date]
**Reviewed By:** Claude (claude-sonnet-4-6)

---

### Overall Result: [PASS / CONDITIONAL PASS / FAIL]

---

### Section Results

| Section | Status | Findings Count |
|---|---|---|
| Business Rules | PASS / FAIL | n |
| Validation | PASS / FAIL | n |
| Performance | PASS / FAIL | n |
| Security | PASS / FAIL | n |
| Architecture | PASS / FAIL | n |
| Blueprint Compliance | PASS / FAIL | n |

---

### Findings

#### [F-001] [CRITICAL / HIGH / MEDIUM / LOW] — [Short title]
- **File:** `path/to/file.ts` line XX
- **Issue:** [What is wrong]
- **Rule violated:** [Which checklist item]
- **Fix:** [Exact recommended change]

#### [F-002] ...

---

### What Passed
- [List of areas that were clean]

---

### Next Steps
- [Fix F-001 and F-002 before re-review]
- [F-003 to be logged as tech debt in sprint backlog]
```

---

## 12. Review Workflow — Who Does What

```
Developer (Abinandan)
    │
    ├─► Completes feature / fix
    ├─► Runs self-check (Gate 1): TypeScript clean, lint clean, build succeeds
    ├─► Runs AI review using prompts from Section 13
    ├─► Fixes all CRITICAL + HIGH findings
    ├─► Sends review report + fixed code to TL-Dev (Sasi)
    │
TL-Dev (Sasi)
    │
    ├─► Reviews AI report
    ├─► Accepts or overrides MEDIUM/LOW findings with documented reason
    ├─► Approves Gate 2 (Backend) or Gate 3 (Frontend)
    ├─► Forwards to IST team for Gate 4
    │
TL-IST (Palanivel)
    │
    ├─► Runs functional IST against staging
    ├─► Runs AI Integration Review (Gate 4) for end-to-end business flows
    ├─► Signs off or raises defects back to Developer
    │
PM (Saravanan)
    │
    ├─► Reviews Gate 4 sign-off
    ├─► Prepares Gate 5 package for CEO
    │
CEO (T. Mani)
    │
    └─► Final sign-off → Production deploy authorized
```

---

## 13. Escalation & Override Policy

### 12.1 When TL-Dev May Override a Finding

A TL-Dev may mark a finding as "Accepted Risk" (not requiring fix) **only when**:
- The finding is MEDIUM or LOW severity
- A documented reason is provided in the session log
- The override is time-bounded (next sprint or a specific date)

TL-Dev may **not** override CRITICAL or HIGH findings without PM approval.

### 12.2 When PM May Override a Finding

PM may override a HIGH finding **only when**:
- Business urgency (demo deadline, client commitment) requires it
- A compensating control exists (e.g., UI-only HIGH finding when backend blocks the same action)
- The override is logged in the sprint tracker with a remediation ticket

### 12.3 Zero Tolerance — Never Override

| Finding Type | Reason |
|---|---|
| Raw SQL string concatenation | SQL injection — cannot ship |
| No authentication on write endpoint | Security — cannot ship |
| Status machine bypass | Data integrity — cannot ship |
| Wrong database connection (M01 vs M02 cross) | Data corruption — cannot ship |

---

## 14. Review Prompt Templates

### Template A — Full Backend Review

```
You are reviewing a backend module for the Spinrise ERP system built on ASP.NET Core 8 + Dapper + SQL Server.

**Module:** [Module Name]
**Files to review:** [List file paths]
**FSD Reference:** [Attach or describe the relevant FSD section]

Perform a structured review against these dimensions:
1. Architecture layer compliance (Controller → Service → Repository → SP flow)
2. Business rule accuracy against the FSD
3. Input validation completeness (DTO annotations + Service guards + SP checks)
4. Performance patterns (pagination, no SELECT *, no N+1, async/await correct)
5. Security (parameterized SP only, no raw SQL, JWT auth, CORS)
6. SQL stored procedure quality (naming, CREATE OR ALTER, error handling, transactions)

For each finding, provide:
- Severity: CRITICAL / HIGH / MEDIUM / LOW
- File and line number
- What is wrong and why
- Exact recommended fix

Return the report in the standard Spinrise AI Review format.
```

### Template B — Full Frontend Review

```
You are reviewing a frontend module for the Spinrise ERP system built on React 18 + TypeScript + Ant Design 5.

**Module:** [Module Name]
**Files to review:** [List file paths]
**Blueprint Version:** v1.1 (approved 09 May 2026)
**FSD Reference:** [Attach or describe the relevant FSD section]

Perform a structured review against these dimensions:
1. TypeScript strict compliance (no `any`, correct types)
2. Business rule accuracy (calculated fields, status machine, decimal precision)
3. Validation completeness (required fields, numeric ranges, submit guards)
4. Performance (memo, useCallback, lazy loading, debounced search)
5. Blueprint v1.1 compliance (colors, spacing, typography, label case)
6. Component reuse (StatusBadge, FieldLabel, KpiCard, formatters used correctly)

For each finding, provide:
- Severity: CRITICAL / HIGH / MEDIUM / LOW
- File and line number
- What is wrong and which Blueprint/FSD rule it violates
- Exact recommended fix

Return the report in the standard Spinrise AI Review format.
```

### Template C — Business Rules Deep Review

```
You are performing a focused business rules review for [Module Name] in the Spinrise ERP system.

**FSD Section:** [Paste the relevant FSD rules here]
**Backend Service file:** [Paste or reference the file]
**Frontend form/page file:** [Paste or reference the file]

Verify:
1. Every business rule in the FSD has a corresponding guard in the Service layer
2. No rule exists only as a UI check (client-side bypass possible)
3. Calculated fields (ApproxCost, TotalValue) are computed server-side or in a read-only expression — not accepted from user input
4. Status transitions are enforced: list all allowed and disallowed transitions from the FSD and verify the code matches
5. Decimal precision: Qty=3dp, Rate=4dp, Value/Cost=4dp — flag any deviation
6. Financial year computation uses Apr-Mar cycle correctly

Return findings with severity and exact fix instructions.
```

### Template D — Integration End-to-End Review (Gate 4)

```
You are reviewing the full end-to-end flow for [Feature/Workflow Name] in Spinrise ERP.

**User journey:** [Describe the full flow: e.g., Create PR → Approve PR → Raise PO → Receive goods]
**Files involved:** [List all frontend + backend files in the flow]

Verify:
1. The entire workflow from UI input to DB write is correct and consistent
2. Status transitions are enforced at every hop (UI → API → SP)
3. Data passed from frontend matches DTO schema expected by backend
4. Error states from backend surface correctly on frontend
5. No step in the workflow allows skipping a mandatory step
6. Audit fields (CreatedBy, CreatedOn, ModifiedBy, ModifiedOn) are populated correctly
7. The user cannot produce invalid data by calling APIs out of sequence

Return findings with severity classification.
```

---

## 15. Appendix — Spinrise Quality Standards

### 14.1 Decimal Standard (Kalsofte Standard)

| Field Type | Display Precision | DB Storage |
|---|---|---|
| Quantity | 3 decimal places | DECIMAL(18,3) |
| Rate | 4 decimal places | DECIMAL(18,4) |
| Value / Cost | 4 decimal places (screen), 2dp (printed documents) | DECIMAL(18,4) |
| Percentage | 2 decimal places | DECIMAL(5,2) |

### 14.2 API Response Standard

```json
{
  "success": true,
  "message": "Operation completed successfully",
  "data": { ... },
  "errors": null,
  "correlationId": "abc-123"
}
```

### 14.3 Approved Color Palette (Blueprint v1.1)

| Token | Hex | Usage |
|---|---|---|
| Primary | `#185FA5` | Buttons, links, active state |
| Primary Dark | `#0C447C` | Hover state |
| Primary Light | `#E6F1FB` | Selected row, hover background |
| Background | `#F5F5F3` | Page background |
| Border | `#E2E2E2` | All dividers and input borders |
| Text 900 | `#1A1A1A` | Primary text |
| Text 600 | `#4A4A4A` | Secondary text, labels |
| Text 400 | `#888888` | Placeholder, muted |
| Success | `#3B6D11` / `#EAF3DE` | Approved status |
| Warning | `#BA7517` / `#FAEEDA` | Pending / Partial status |
| Error | `#A32D2D` / `#FCEBEB` | Rejected status |
| Purple | `#722ED1` / `#F0E6FB` | PO Raised status |

### 14.4 Environment Reference

| Layer | URL |
|---|---|
| Frontend | `http://172.16.16.40:3000` |
| Backend API | `http://172.16.16.40:5001` |
| SQL Server | `172.16.16.52\sql2016` |
| M01 Database | `SpinRiseSaranya` |
| M02 Database | `JAT` |

### 14.5 Review Cycle (CEO-Confirmed)

```
Developer → IST → TL-IST → PM → CEO
```

No code skips a stage. Review at each stage uses the appropriate gate template from Section 13.

---

*Document prepared by Abinandan N — Kalpatharu Software Ltd*  
*For CEO approval and inclusion in the Spinrise Project Quality Framework*  
*Next review: after first 3 modules complete IST (target: June 2026)*
