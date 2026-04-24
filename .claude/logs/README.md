# Session Logs Index

| Date | File | Summary |
|---|---|---|
| 2026-04-21 | [2026-04-21_session_Delete_Action.md](2026-04-21_session_Delete_Action.md) | PR List delete action: IsDeleted SP column, confirmation modal with reason select, toast, refresh |
| 2026-04-21 | [2026-04-21_session_GlobalSearch.md](2026-04-21_session_GlobalSearch.md) | Global search: @SearchText SP param (LIKE on prno/refno/reqname), Input.Search field, Enter-key trigger, IsDeleted DTO fix |
| 2026-04-21 | [session_UI_PRFixes.md](2026-04-21_session_UI_PRFixes.md) | iType fix, SubCost removal, list page bugs (BUG-1/2/3), Edit page, UI layout redesign |
| 2026-04-21 | [2026-04-21_session_DarkMode_CSS.md](2026-04-21_session_DarkMode_CSS.md) | Complete dark mode CSS variable pass — all hardcoded colors replaced with var() tokens |
| 2026-04-21 | [2026-04-21_session_PRPrint_Fix.md](2026-04-21_session_PRPrint_Fix.md) | PR print: Added Created By field, fixed Requested By footer (dynamic), fixed App Cost blank (0m fallback) |
| 2026-04-21 | [2026-04-21_session_ListPage_ViewDownload_Fix.md](2026-04-21_session_ListPage_ViewDownload_Fix.md) | List page: Download always used record.id=0 (→ 400); View Details: INNER JOIN pr_emp/in_dep excluded many PRs (→ LEFT JOIN) |
| 2026-04-21 | [2026-04-21_session_PRList_Zoho_Redesign.md](2026-04-21_session_PRList_Zoho_Redesign.md) | PR List page Zoho ERP redesign: PRFilterBar (inline), Zoho table density, Amount column placeholder |
| 2026-04-22 | [2026-04-22_session_PR_UI_SaaS_Redesign.md](2026-04-22_session_PR_UI_SaaS_Redesign.md) | Full PR UI SaaS redesign: 3-section PRHeader cards, PRActionBar accent bar, PRItemGrid self-contained card, muted cancelled rows, uppercase table headers |
| 2026-04-24 | [2026-04-24_session_FSD_Analysis_Planner.md](2026-04-24_session_FSD_Analysis_Planner.md) | Deep analysis of all M01 FSD docs + emails; created M01_PR_Master_Planner.md; CEO UI review (2026-04-24) captured — 1 Critical (RM→₹), 4 High (entry fields), 4 Medium gaps |
| 2026-04-24 | [2026-04-24_session_Codebase_Cleanup.md](2026-04-24_session_Codebase_Cleanup.md) | Deep codebase clean: deleted 5 backend files (3×Class1.cs, FastReportService, AuthUserStore), 15 frontend files (V1 flow, orphaned V2 components, shared/ui wrappers); fixed 5 imports; removed console.error; cleaned Constants.cs — 0 build errors |
| 2026-04-24 | [2026-04-24_session_P01_CurrencyFix.md](2026-04-24_session_P01_CurrencyFix.md) | P01 CRITICAL: RM → ₹, en-MY → en-IN across 3 files (PRLineItemsTable, PRRateHistoryModal, V2Page) — 12 occurrences, 0 TS errors |
| 2026-04-24 | [2026-04-24_session_P02_P03.md](2026-04-24_session_P02_P03.md) | P02: Workflow step "PO Created"→"Converted"; P03: MachineNo+DrawNo+CatNo moved from Advanced Drawer to main entry form — 0 TS errors |
| 2026-04-24 | [2026-04-24_session_P04.md](2026-04-24_session_P04.md) | P04: Place (Input) + isSample (Checkbox) added to entry form Row 4; EntryFormValues extended; startEdit + both handleAddOrUpdate branches wired — 0 TS errors |
| 2026-04-24 | [2026-04-24_session_P05_P25.md](2026-04-24_session_P05_P25.md) | P05–P25 batch: approxCost auto-calc, ViewModal DrawNo+Approx Cost, approval display, Edit page v2 migration, SubCost drawer, budget balance, per-line delete, scopeCode field, DTO fixes, SubCostCode backend validation (P17) — clean build |
