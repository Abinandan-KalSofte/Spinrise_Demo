---
name: Spinrise Migration Project — Current State
description: Migration from legacy VB6 ERP (Kalsofte); tables already live; current module and SP inventory as of 2026-04-20
type: project
originSessionId: deb4c723-50d1-48e4-b885-3342c48abbb6
---
Spinrise is a **migration** from a legacy VB6 ERP (Kalsofte) to ASP.NET Core 8 + React 18. The existing SQL Server database with all its tables is already live and populated.

**Why this matters:** Never plan or write table CREATE scripts as deliverables. DB work = stored procedures only.

**How to apply:** When planning database work, skip the "create tables" step entirely. The `Spinrise.DBScripts/Scripts/01 Tables/` scripts are reference artifacts from the design phase, not things to run. All SP scripts live in `Spinrise.DBScripts/Scripts/02 Stored Procedures/`.

---

## Implemented backend modules (as of 2026-04-20)

| Division | Module | Infrastructure folder |
|---|---|---|
| Administration | User | `Areas/Administration/User` |
| Administration | Department | `Areas/Administration/Department` |
| Administration | Section | `Areas/Administration/Section` |
| Administration | Stock | `Areas/Administration/Stock` |
| Purchase | PurchaseRequisition | `Areas/Purchase/PurchaseRequisition` |
| Purchase | Reports (QuestPDF) | `Areas/Purchase/Reports` |
| Security | Auth | `Authentication/` (Infrastructure), `Areas/Security/Auth` (Application) |
| Inventory | (structure exists) | `Areas/Inventory/Stock` |
| Common | Lookup | `Areas/Common/Lookup` |

## Implemented stored procedures

Auth:
- `ksp_Auth_ValidateUser`

Lookup / shared:
- `ksp_GetDepartments`, `ksp_GetDivisionDetails`, `ksp_GetEmployees`, `ksp_GetItems`, `ksp_GetMachines`, `ksp_GetPOType`, `ksp_GetSubCosts`, `ksp_Stock_GetCurrentStock`

Purchase Requisition:
- `ksp_PR_GetPaginated`, `ksp_PR_GetAll`, `ksp_PR_GetById`, `ksp_PR_Insert`, `ksp_PR_InsertLine`, `ksp_PR_Update`, `ksp_PR_Delete`, `ksp_PR_DeleteLine`, `ksp_PR_SoftDeleteLines`
- `ksp_PR_GenerateNumber`, `ksp_PR_ExistsChecks`, `ksp_PR_PreChecks`, `ksp_PR_PendingIndentCheck`, `ksp_PR_PendingPRCheck`
- `ksp_PR_GetDeleteReasons`, `ksp_PR_GetItemInfo`, `ksp_PR_GetMaxPrDate`, `ksp_PR_InsertAuditLog`

Purchase Reports:
- `ksp_PO_RequisitionReport_DateWise`

## Implemented frontend features

`src/features/`: `auth`, `dashboard`, `purchase-requisition`, `purchase-reports`

## Reports

- **PR PDF**: QuestPDF (`PurchaseRequisitionQuestDocument.cs`) — A4 Landscape, Calibri font, 12-column table with merged "Previous Purchase Details" header, machine sub-rows, signature footer.
- **PR Datewise Excel**: `BuildDatewiseExcel` in `QuestPdfPurchaseRequisitionService.cs` — 13 columns (LastCol=13): PR No, Item Code, Item Name (merged C:F), Unit, Department (merged H:I), Required Qty, Ordered Qty, Received Qty, Status. "Order Type" column was removed on 2026-04-20.
- `FastReportService.cs` also exists alongside QuestPDF in `Areas/Purchase/Reports/` (legacy, not actively used).

## Deployment (as of 2026-04-20)

Both projects are live on IIS at `172.16.16.40`:
- **API**: `http://172.16.16.40:5001` — IIS site `SpinriseAPI`, app pool `SpinriseAPI`, path `E:\Abinandan\SPINRISE\Server\Spinrise.API`
- **Frontend**: `http://172.16.16.40:3000` — IIS site `SpinriseWeb`, app pool `SpinriseWeb`, path `E:\Abinandan\SPINRISE\Server\spinrise-web`
- **DB**: `Server=172.16.16.52\sql2016;Database=SpinRiseSaranya`
