# Session Log — CEO Pilot Plan Status & Implementation Progress
**Date:** 2026-05-12  
**Topic:** CEO Pilot Roadmap, Dual-DB SP Status, PR Form UX Overhaul, Login Redesign  
**Branch:** master  

---

## 1. CEO Pilot Plan — Context

**Launch declared by CEO T. Mani on 25 March 2026.**  
SPINRISE is a migration of Kalsofte ERP (VB6, 2004) to a modern web-native ERP stack. It is NOT a rebuild — existing customer data and workflows are preserved.

### Delivery Roadmap (current)
| Phase | Period | Goal |
|---|---|---|
| Phase 0 | April 2026 | Infrastructure, auth, base modules |
| **Phase 1** | **May – Sep 2026** | **M01–M04 live; IST + CEO review cycles** |
| Phase 2 | Oct – Dec 2026 | New customers onboarded to SPINRISE |
| Phase 3 | Jan – Mar 2027 | Full platform stability, reporting, analytics |

### Key CEO Directives (from MOM 05 May + Email 06 May 2026)
- **Company name**: Kalpatharu Software Ltd (not "Kalsofte")
- **Label standard**: Title Case — NOT all-caps (VB6 pattern)
- **Design standard**: Modern web-native — NOT a VB6 copy
- **Blueprint**: Web Form Blueprint B1–B3 due — currently at v1.1 Revised (09 May 2026)
- **Value = Qty × Rate** (not Qty × Last PO Rate)
- **Cost = Rate + Tax**
- **Review cycle**: Dev → IST → TL-IST → PM → CEO
- **Max 2 versions** rule per module — no unlimited iteration

### Module Pipeline (as of today)
| Module | DB | Status |
|---|---|---|
| M01 — Purchase Requisition | SpinRiseSaranya | Live / CEO review cycle |
| M02 — RMI Purchase Order | JAT | In development (SPs done, UI in progress) |
| M02 — RMI Arrival Entry | JAT | In development (SPs done, UI started) |
| M03 — Domestic Sales | SpinRiseSaranya | FSD in review, not build-cleared |
| M04 — HR Shift Schedule | SpinRiseSaranya | FSD pipeline, CEO approval pending |

---

## 2. Dual-Database Architecture — SP Status

### Architecture
Two SQL Server databases on the same host (`172.16.16.52\sql2016`):

| | M01 — Purchase Requisition | M02 — RMI Purchase Order / Arrival |
|---|---|---|
| **Database** | `SpinRiseSaranya` | `JAT` |
| **UnitOfWork** | `IUnitOfWork` | `IJATUnitOfWork` |
| **Deploy file** | `merged.sql` | `merged_jat.sql` |
| **SP prefix** | `ksp_PR_*` / `ksp_Auth_*` / `ksp_Get*` | `ksp_RMI_PO_*` / `ksp_RMI_ARRIVAL_*` / `ksp_RMI_Get*` |

---

### M01 — SpinRiseSaranya Database (36 SPs deployed)

| Category | Stored Procedures |
|---|---|
| Auth | `ksp_Auth_ValidateUser`, `ksp_GetActiveDivisions`, `ksp_GetDivisionDetails` |
| Lookup | `ksp_GetDepartments`, `ksp_GetEmployees`, `ksp_GetMachines`, `ksp_GetItems`, `ksp_GetItemsEnriched`, `ksp_GetItemsPaginated`, `ksp_GetSubCosts`, `ksp_GetPOType` |
| PR Core | `ksp_PR_Insert`, `ksp_PR_Update`, `ksp_PR_Delete`, `ksp_PR_GetById`, `ksp_PR_GetAll`, `ksp_PR_GetPaginated`, `ksp_PR_GetSummary`, `ksp_PR_GetLastRecord` |
| PR Lines | `ksp_PR_InsertLine`, `ksp_PR_DeleteLine`, `ksp_PR_SoftDeleteLines`, `ksp_PR_GetMaxPrSNo` |
| PR Navigation | `ksp_PR_Navigate`, `ksp_PR_GenerateNumber`, `ksp_PR_GetMaxPrDate` |
| PR Validation | `ksp_PR_PreChecks`, `ksp_PR_ExistsChecks`, `ksp_PR_PendingIndentCheck`, `ksp_PR_PendingPRCheck`, `ksp_PR_GetItemMinLevel` |
| PR Lookups | `ksp_PR_GetItemInfo`, `ksp_PR_GetItemHistory`, `ksp_PR_GetDeleteReasons` |
| PR Audit | `ksp_PR_InsertAuditLog` |
| Stock | `ksp_Stock_GetCurrentStock` |
| Reports | `ksp_PO_RequisitionReport_DateWise` |

**Status:** All 36 SPs deployed to production via `merged.sql`. PR Form is live and in CEO review cycle.

---

### M02 — JAT Database (42 SPs — IN PROGRESS)

#### PO Module (26 SPs)
| Category | Stored Procedures |
|---|---|
| PO Core | `ksp_RMI_PO_Insert`, `ksp_RMI_PO_GetById`, `ksp_RMI_PO_GetPaginated`, `ksp_RMI_PO_GetSummary`, `ksp_RMI_PO_Delete` |
| PO Number | `ksp_RMI_PO_GenerateNumber`, `ksp_RMI_PO_GetParam` |
| PO Lines | `ksp_RMI_PO_GetPendingPRLines`, `ksp_RMI_PO_FilterPRLines`, `ksp_RMI_PO_InsertDeliverySchedule`, `ksp_RMI_PO_InsertDiscountRate`, `ksp_RMI_PO_InsertSlotNo`, `ksp_RMI_PO_DeleteLinesForUpdate` |
| PO Approval | `ksp_RMI_PO_UpdateApproval`, `ksp_RMI_PO_GetApprovalStatus`, `ksp_RMI_PO_UpdatePRBalance` |
| PO Config | `ksp_RMI_PO_PreChecks`, `ksp_RMI_PO_GetGSTConfig`, `ksp_RMI_PO_GetDefaultCurrency`, `ksp_RMI_PO_GetDeleteReasons` |
| PO Audit | `ksp_RMI_PO_InsertAuditLog` |

#### Arrival Entry Module (11 SPs)
| Category | Stored Procedures |
|---|---|
| Arrival Core | `ksp_RMI_ARRIVAL_Insert`, `ksp_RMI_ARRIVAL_Update`, `ksp_RMI_ARRIVAL_Delete`, `ksp_RMI_ARRIVAL_GetById`, `ksp_RMI_ARRIVAL_GetPaginated` |
| Arrival PO Link | `ksp_RMI_ARRIVAL_GetOpenPOLines`, `ksp_RMI_ARRIVAL_FreightOnlyUpdate` |
| Arrival Print | `ksp_RMI_ARRIVAL_GetForPrint` |
| Arrival Config | `ksp_RMI_ARRIVAL_GetParam`, `ksp_RMI_ARRIVAL_GetCategories`, `ksp_RMI_ARRIVAL_ValidateLotRange` |

#### JAT Shared Lookups (5 SPs)
`ksp_RMI_GetSuppliers`, `ksp_RMI_GetVarieties`, `ksp_RMI_GetPaymentModes`, `ksp_RMI_GetCurrencies`, `ksp_RMI_GetWeighments`, `ksp_RMI_GetRateUnits`, `ksp_RMI_GetAreas`, `ksp_RMI_GetActiveTaxCodes`, `ksp_RMI_SearchAgents`, `ksp_RMI_SearchEmployees`

**Status:** All JAT SPs written and deployed to `merged_jat.sql`. PO form backend complete. Arrival Entry backend complete. **Frontend UI for both modules is in progress.** Deploy via `merged_jat.sql` against `JAT` database only — never against SpinRiseSaranya.

---

## 3. PR Form UX Overhaul — Completed Today

Full implementation of 28-issue audit report across 3 phases. Key changes:

### Phase 1 — Critical (P0)
- Status "Open" → **"Requested"** (Blueprint vocabulary, CEO directive)
- Save button: green → **Blueprint blue #185FA5**
- Column headers: **Title Case** throughout (Unit, Required Qty, Approx. Cost, Required Date, Cost Centre)
- Date format: **DD-MMM-YYYY** universally across all PR screens, V2, dashboard
- Approx. Cost precision: 4dp → **2dp** (Blueprint: Value = 2dp)
- Zebra striping: `#fafafa` → **#F0F5FF** (Blueprint accent row colour)

### Phase 2 — High Priority (P1)
- Toolbar: **VB6-style navigation arrows removed** (CEO: modern web-native, not VB6 copy)
- Modify / Cancel / Delete moved to **overflow dropdown** (cleaner primary toolbar)
- KPI strip repositioned: **above item grid** (was at bottom — usability fix)
- Days Open threshold: `<5 green, 5–14 amber, >14 red`

### Phase 3 — Polish
- Duplicate status display removed from header band (KPI pipeline bar is authoritative)
- **Row hover** state: `#EBF3FC` on PR item grid rows
- List table headers: dark `#1e293b` style (consistent with item grid)
- `fmtDate()` utility added to `shared/lib/dateUtils.ts`

**Files modified:** 24 files, 959 insertions, 461 deletions.

---

## 4. Login Form Redesign — Completed (Blueprint v1.1)

Redesigned login page from scratch to match Blueprint v1.1 and `login3.html` reference design.

### What changed
| Element | Before | After |
|---|---|---|
| Layout | Centered single card | Split-card: dark left panel + white form right |
| Background | Solid colour | `bg.jpg` with dark overlay (`rgba(4,12,24,0.58)`) |
| Logo | SVG SpinRise text | Actual Kalsofte tree PNG (`kalsofte-logo.png`) |
| Left panel | n/a | Dark blue gradient, logo, company name, "Licensed Portal" status |
| Company name | "Kalsofte ERP" | **"Kalpatharu Software Ltd"** (CEO directive) |
| Date format | DD-MM-YYYY | **DD-MMM-YYYY** |
| Division field | Input text | Dropdown from `/auth/active-divisions` API; falls back to text input on error |
| Credentials divider | n/a | Added "Credentials" section divider |
| Button text | "Login" | **"Log In"** |
| Live clock | Ant Design icon | Green pulse dot + JetBrains Mono time chip |
| Colour palette | Mixed | Blueprint v1.1: Primary `#185FA5`, Dark `#0C447C` |

### CSS architecture
- `.login-root` → fixed full-viewport with `bg.jpg` background
- `.login-canvas` → flex column (header + stage)
- `.login-header` → 56px semi-transparent top bar with logo + live datetime
- `.login-card` → 780px max-width split card, `border-radius: 12px`
- `.login-card__left` → 268px, `linear-gradient(160deg, #050E1C 0%, #0C447C 55%, #050E1C 100%)`
- `mix-blend-mode: screen` on logo PNG → makes black background transparent on dark panels
- Focus states: `border-color #185FA5`, `box-shadow 0 0 0 2px rgba(24,95,165,0.12)`

---

## 5. TypeScript Error Sweep

After implementation, `tsc --noEmit` surfaced **29 pre-existing errors** — all fixed:
- `tokens.ts`: 19 missing exports added (title bar, accent bar, section card, doc number tokens)
- `AppHeader.tsx`: unused `Select`, `Moon`, `Sun` imports and `useThemeStore` call removed
- `PRDocBand`: unused `prStatus` param prefixed `_prStatus`
- `RequisitionV2 / V3NewPage`: stale `createdBy` prop removed from `PRKPIStrip` calls

**Final build: 0 TypeScript errors.**

---

## 6. Pending / Next Steps

| Item | Owner | Target |
|---|---|---|
| Deploy frontend build to `172.16.16.40:3000` | Abinandan | EOD 12 May |
| Deploy `merged.sql` to SpinRiseSaranya | Abinandan | EOD 12 May |
| Deploy `merged_jat.sql` to JAT (PO + Arrival SPs) | Abinandan | EOD 12 May |
| PR List Screen — new KPI strip + filter bar | Abinandan | Sprint this week |
| M02 PO Form frontend — complete UI | Abinandan | This sprint |
| M02 Arrival Entry frontend — complete UI | Abinandan | Next sprint |
| Web Form Blueprint B1–B3 | Sasi (review) | In progress |
| M03 FSD approval | CEO T. Mani | Pending |
| M04 Shift Schedule FSD | Sathish | Pipeline |
