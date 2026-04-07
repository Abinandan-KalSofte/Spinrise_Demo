# Purchase Requisition — Stored Procedure Requirements
> Derived from: `PR_Form_CriticalAnalysis_CORRECTED.md` (VB6 `tmpPOINDENT` form analysis)  
> Target stack: SQL Server · Dapper · ASP.NET Core 8  
> Rule: **No ALTER TABLE on existing tables. All SPs use `CREATE OR ALTER PROCEDURE`.**

---

## Status Map: Existing vs. Required

### Already Exists (do not recreate)

| SP Name | File | Covers |
|---------|------|--------|
| `usp_PR_GetAll` | `01_usp_PR_GetAll.sql` | List PRs with filters |
| `usp_PR_GetById` | `02_usp_PR_GetById.sql` | Header + lines (multi-result) |
| `usp_PR_Insert` | `03_usp_PR_Insert.sql` | Insert PR header |
| `usp_PR_Update` | `04_usp_PR_Update.sql` | Update PR header |
| `usp_PR_Delete` | `05_usp_PR_Delete.sql` | Soft-delete PR |
| `usp_PR_DeleteLine` | `06_usp_PR_DeleteLine.sql` | Soft-delete single line |
| `usp_PR_PreChecks` | `07_usp_PR_PreChecks.sql` | Validate item/dept/doc setup |
| `usp_PR_GenerateNumber` | `08_usp_PR_GenerateNumber.sql` | Auto PR number |
| `usp_PR_SoftDeleteLines` | *(in repo, no sql file)* | Soft-delete all lines of a PR |
| `usp_PR_InsertLine` | *(in repo, no sql file)* | Insert single PR line |

### Inline SQL in Repository (acceptable, no change needed)

| Purpose | Table | Location |
|---------|-------|----------|
| Department exists check | `in_dep` | `PurchaseRequisitionRepository.DepartmentExistsAsync` |
| Item exists check | `in_item` | `PurchaseRequisitionRepository.ItemExistsAsync` |
| Cost centre exists check | `in_cc` | `PurchaseRequisitionRepository.CostCentreExistsAsync` |
| Budget group exists check | `in_bgrp` | `PurchaseRequisitionRepository.BudgetGroupExistsAsync` |
| Machine exists check | `mm_macmas` | `PurchaseRequisitionRepository.MachineExistsAsync` |
| Feature flag check | `feature_flags` | `PurchaseRequisitionRepository.GetFeatureFlagAsync` |

---

## New SPs Required

Grouped by functional purpose. File naming follows `NN_usp_<Module>_<Action>.sql`.

---

### Group A — Lookups (Dropdown / Search Popups)

These power all lookup/autocomplete fields in the PR form.

---

#### A1. `usp_Lookup_GetDepartments`

**Triggered by:** Department field (`txtfields(5)`) — user types or presses lookup key  
**Source table:** `dbo.in_dep`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetDepartments
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL    -- partial depcode or depname filter
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        DepCode,
        DepName
    FROM dbo.in_dep
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR DepCode LIKE '%' + @SearchTerm + '%'
           OR DepName LIKE '%' + @SearchTerm + '%')
    ORDER BY DepCode;
END;
GO
```

**Returns:** `DepCode`, `DepName`  
**Auto-fills on select:** `DepName` (Text2)

---

#### A2. `usp_Lookup_GetItems`

**Triggered by:** Item Code field (`ItemCodeTextBox`) — lookup popup  
**Source tables:** `dbo.in_item`  
**Filters:** `IsActive = 1`; optionally by `ItemGroupCode` when `po_para.InditemGrp = 'Y'`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetItems
    @DivCode       VARCHAR(10),
    @SearchTerm    VARCHAR(100) = NULL,
    @ItemGroupCode VARCHAR(20)  = NULL    -- only filter when InditemGrp flag is ON
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ItemCode,
        ItemName,
        Uom,
        Rate
    FROM dbo.in_item
    WHERE DivCode = @DivCode
      AND IsActive = 1
      AND (@ItemGroupCode IS NULL OR ItemGroupCode = @ItemGroupCode)
      AND (@SearchTerm IS NULL
           OR ItemCode LIKE '%' + @SearchTerm + '%'
           OR ItemName LIKE '%' + @SearchTerm + '%')
    ORDER BY ItemCode;
END;
GO
```

**Returns:** `ItemCode`, `ItemName`, `Uom`, `Rate`  
**Note:** Full item details (rate, stock, last PO) are fetched separately via `usp_Item_GetDetails` (see Group B).

---

#### A3. `usp_Lookup_GetMachines`

**Triggered by:** Machine No. field (`MachineTextBox`) — lookup popup  
**Source table:** `dbo.mm_macmas`  
**Filters:** `MACFLAG = 'M'`, `SalesFlag = 'N'`, filtered by `DepCode`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetMachines
    @DivCode    VARCHAR(10),
    @DepCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        MachineNo,
        Model,
        Description
    FROM dbo.mm_macmas
    WHERE DivCode = @DivCode
      AND DepCode = @DepCode
      AND MacFlag = 'M'
      AND SalesFlag = 'N'
      AND (@SearchTerm IS NULL
           OR MachineNo LIKE '%' + @SearchTerm + '%'
           OR Description LIKE '%' + @SearchTerm + '%')
    ORDER BY MachineNo;
END;
GO
```

**Returns:** `MachineNo`, `Model`, `Description`  
**Auto-fills on select:** `Model` (TxtMacModel), `Description` (Text6)

---

#### A4. `usp_Lookup_GetCostCentres`

**Triggered by:** Cost Centre column in line-items grid (col 11)  
**Source table:** `dbo.in_cc`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetCostCentres
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CostCentreCode,
        CostCentreName
    FROM dbo.in_cc
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR CostCentreCode LIKE '%' + @SearchTerm + '%'
           OR CostCentreName LIKE '%' + @SearchTerm + '%')
    ORDER BY CostCentreCode;
END;
GO
```

**Returns:** `CostCentreCode`, `CostCentreName`

---

#### A5. `usp_Lookup_GetBudgetGroups`

**Triggered by:** Budget Group column in line-items grid (col 12)  
**Source table:** `dbo.in_bgrp`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetBudgetGroups
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        BudgetGroupCode,
        BudgetGroupName
    FROM dbo.in_bgrp
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR BudgetGroupCode LIKE '%' + @SearchTerm + '%'
           OR BudgetGroupName LIKE '%' + @SearchTerm + '%')
    ORDER BY BudgetGroupCode;
END;
GO
```

**Returns:** `BudgetGroupCode`, `BudgetGroupName`

---

#### A6. `usp_Lookup_GetPurchaseTypes`

**Triggered by:** PO Group / Purchase Type field (`txtfields(7)`)  
**Source table:** `dbo.po_type`  
**VB6 note:** Legacy used `tempPurType{IP}` session temp table to filter by user. Replace with `UserId` parameter — filter from a user-permission table if one exists, else return all for the division.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetPurchaseTypes
    @DivCode    VARCHAR(10),
    @UserId     VARCHAR(50)  = NULL,    -- future: filter by user permissions
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        PoGrpCode,
        PoGrpName
    FROM dbo.po_type
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR PoGrpCode LIKE '%' + @SearchTerm + '%'
           OR PoGrpName LIKE '%' + @SearchTerm + '%')
    ORDER BY PoGrpCode;
END;
GO
```

**Returns:** `PoGrpCode`, `PoGrpName`  
**Auto-fills on select:** PO Group Name (Text11)

---

#### A7. `usp_Lookup_GetItemGroups`

**Triggered by:** Item Group Code field (`txtItemgrpcode`) — only active when `po_para.InditemGrp = 'Y'`  
**Source table:** `dbo.in_grp`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetItemGroups
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        GroupCode,
        GroupName
    FROM dbo.in_grp
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR GroupCode LIKE '%' + @SearchTerm + '%'
           OR GroupName LIKE '%' + @SearchTerm + '%')
    ORDER BY GroupCode;
END;
GO
```

**Returns:** `GroupCode`, `GroupName`  
**Auto-fills on select:** Item Group Name (`txtItemgrpName`)

---

#### A8. `usp_Lookup_GetSubCostCentres`

**Triggered by:** Sub Cost Centre field (`txtfields(4)`) — only active when `po_para.BudgetQty = 'Y'`  
**Source table:** `dbo.in_scc`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetSubCostCentres
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        SccCode,
        SccName
    FROM dbo.in_scc
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR SccCode LIKE '%' + @SearchTerm + '%'
           OR SccName LIKE '%' + @SearchTerm + '%')
    ORDER BY SccCode;
END;
GO
```

**Returns:** `SccCode`, `SccName`

---

#### A9. `usp_Lookup_GetDeleteReasons`

**Triggered by:** Delete (Button 2) and Line Delete (Button 12) — must select a reason before confirm  
**Source table:** `dbo.po_txndelreason`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetDeleteReasons
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ReasonCode,
        ReasonDesc
    FROM dbo.po_txndelreason
    WHERE DivCode = @DivCode
    ORDER BY ReasonCode;
END;
GO
```

**Returns:** `ReasonCode`, `ReasonDesc`  
**Usage:** Frontend shows modal with reason list; selected code is passed to `usp_PR_Delete` / `usp_PR_DeleteLine`.

---

#### A10. `usp_Lookup_GetRequesters`

**Triggered by:** Requester Code field (`txtfields(1)`)  
**Source table:** `dbo.pr_emp`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Lookup_GetRequesters
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        EmpCode,
        EmpName,
        Designation
    FROM dbo.pr_emp
    WHERE DivCode = @DivCode
      AND (@SearchTerm IS NULL
           OR EmpCode LIKE '%' + @SearchTerm + '%'
           OR EmpName LIKE '%' + @SearchTerm + '%')
    ORDER BY EmpCode;
END;
GO
```

**Returns:** `EmpCode`, `EmpName`, `Designation`  
**Auto-fills on select:** Requester Name (Text4)

---

### Group B — Auto-fill (Called on Field Selection)

These return enriched data when the user selects a code — no user search, just a direct lookup by code.

---

#### B1. `usp_Item_GetDetails`

**Triggered by:** After item code is confirmed (lookup selection or direct entry + Tab)  
**Source tables:** `in_item`, `IN_TRNHEAD`/`IN_TRNTAIL` (last receipt rate), `po_ordh`/`po_ordl` (last PO info), `fa_slmas` (supplier name)

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Item_GetDetails
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    -- Base item info
    SELECT
        i.ItemCode,
        i.ItemName,
        i.Uom,
        i.Rate                          AS BaseRate,

        -- Last receipt rate (TC=1, SLCODE IS NOT NULL)
        ISNULL((
            SELECT TOP 1 t.Rate
            FROM dbo.IN_TRNTAIL t
            INNER JOIN dbo.IN_TRNHEAD h ON h.DivCode = t.DivCode AND h.TrnNo = t.TrnNo
            WHERE t.DivCode = @DivCode
              AND t.ItemCode = @ItemCode
              AND h.TC = 1
              AND h.SlCode IS NOT NULL
            ORDER BY h.TrnDate DESC
        ), i.Rate)                      AS LastReceiptRate,

        -- Current stock
        ISNULL((
            SELECT SUM(QtyIn - QtyOut)
            FROM dbo.in_stock
            WHERE DivCode = @DivCode AND ItemCode = @ItemCode
        ), 0)                           AS CurrentStock,

        -- Last PO info
        (SELECT TOP 1 ol.Rate
         FROM dbo.po_ordl ol
         INNER JOIN dbo.po_ordh oh ON oh.DivCode = ol.DivCode AND oh.OrdNo = ol.OrdNo
         WHERE ol.DivCode = @DivCode AND ol.ItemCode = @ItemCode
         ORDER BY oh.OrdDate DESC)      AS LastPoRate,

        (SELECT TOP 1 oh.OrdDate
         FROM dbo.po_ordh oh
         INNER JOIN dbo.po_ordl ol ON ol.DivCode = oh.DivCode AND ol.OrdNo = oh.OrdNo
         WHERE ol.DivCode = @DivCode AND ol.ItemCode = @ItemCode
         ORDER BY oh.OrdDate DESC)      AS LastPoDate,

        (SELECT TOP 1 oh.SlCode
         FROM dbo.po_ordh oh
         INNER JOIN dbo.po_ordl ol ON ol.DivCode = oh.DivCode AND ol.OrdNo = oh.OrdNo
         WHERE ol.DivCode = @DivCode AND ol.ItemCode = @ItemCode
         ORDER BY oh.OrdDate DESC)      AS LastPoSupplierCode,

        (SELECT TOP 1 s.SlName
         FROM dbo.po_ordh oh
         INNER JOIN dbo.po_ordl ol ON ol.DivCode = oh.DivCode AND ol.OrdNo = oh.OrdNo
         INNER JOIN dbo.fa_slmas s ON s.SlCode = oh.SlCode
         WHERE ol.DivCode = @DivCode AND ol.ItemCode = @ItemCode
         ORDER BY oh.OrdDate DESC)      AS LastPoSupplierName

    FROM dbo.in_item i
    WHERE i.DivCode = @DivCode
      AND i.ItemCode = @ItemCode
      AND i.IsActive = 1;
END;
GO
```

**Returns (single row):** `ItemCode`, `ItemName`, `Uom`, `BaseRate`, `LastReceiptRate`, `CurrentStock`, `LastPoRate`, `LastPoDate`, `LastPoSupplierCode`, `LastPoSupplierName`  
**Auto-fills:** Item Name, UOM, Rate (uses `LastReceiptRate`), Current Stock, Last PO columns in grid

> **Note:** Verify actual column names against live `saranya` DB before running. The subquery table names (`in_stock`, `po_ordh`, `po_ordl`, `fa_slmas`) are inferred from the VB6 analysis — confirm they exist.

---

#### B2. `usp_Item_GetStock`

**Triggered by:** Stock summary popup (`RecFrame`) — called after item selection when multi-division mode is active. Also used to refresh stock display.  
**Replaces:** Legacy `SP_GetStock`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Item_GetStock
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @DivCode    AS DivCode,
        @ItemCode   AS ItemCode,
        ISNULL(SUM(QtyIn - QtyOut), 0) AS CurrentStock
    FROM dbo.in_stock
    WHERE DivCode = @DivCode
      AND ItemCode = @ItemCode;
END;
GO
```

**Returns:** `DivCode`, `ItemCode`, `CurrentStock`

---

#### B3. `usp_Machine_GetDetails`

**Triggered by:** After machine code confirmed (from `MachineTextBox` or grid col 13)  
**Source table:** `dbo.mm_macmas`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_Machine_GetDetails
    @DivCode   VARCHAR(10),
    @MachineNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        MachineNo,
        Model,
        Description
    FROM dbo.mm_macmas
    WHERE DivCode = @DivCode
      AND MachineNo = @MachineNo
      AND MacFlag = 'M'
      AND SalesFlag = 'N';
END;
GO
```

**Returns:** `MachineNo`, `Model`, `Description`  
**Auto-fills:** Machine Model (TxtMacModel), Machine Description (Text6)

---

### Group C — Configuration

#### C1. `usp_PR_GetConfig`

**Triggered by:** Page load — before rendering the PR form, load all feature flags  
**Source tables:** `dbo.po_para`, `dbo.in_para`, `dbo.po_doc_para`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_GetConfig
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- po_para flags (one row per divcode)
    SELECT
        ISNULL(BudgetQty,          'N') AS BudgetQtyRequired,
        ISNULL(Manual_IndNo,       'N') AS ManualPrNumber,
        ISNULL(PRapprovalstatus,   'N') AS ShowApprovalStatus,
        ISNULL(Penpodetails,       'N') AS ShowPendingPoDetails,
        ISNULL(PendingOrderPara,   'N') AS CheckPendingIndent,
        ISNULL(InditemGrp,         'N') AS FilterByItemGroup
    FROM dbo.po_para
    WHERE DivCode = @DivCode;

    -- in_para flags (backdate control)
    SELECT
        ISNULL(BackDate, 'Y') AS AllowBackDate
    FROM dbo.in_para
    WHERE DivCode = @DivCode;

    -- Requisition types for Order Type dropdown (Combo2)
    SELECT
        DocType     AS ReqTypeCode,
        DocTypeName AS ReqTypeName
    FROM dbo.po_doc_para
    WHERE DivCode = @DivCode
      AND TC = 'PURCHASE REQUISITION'
    ORDER BY DocType;
END;
GO
```

**Returns (3 result sets):**
1. `po_para` flags row
2. `in_para` backdate flag row
3. Requisition type list for Order Type dropdown

**Usage:** Called once on form mount. All conditional field visibility and validation rules are driven by these flags.

---

### Group D — Business Validations (Non-Blocking)

These replace the VB6 stored procedures `KSP_INDEDNT_CHECK` and `ksp_PendPR`. **Critical difference:** they return data only — the frontend decides how to display it. No application termination.

---

#### D1. `usp_PR_CheckPendingIndent`

**Replaces:** `KSP_INDEDNT_CHECK`  
**Triggered by:** After item code entry/selection — only when `po_para.CheckPendingIndent = 'Y'`  
**Source tables:** `po_prl`, `po_prh` (pending indents without PO for same item/dept/year)

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_CheckPendingIndent
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(30),
    @DepCode  VARCHAR(10),
    @FinYear  VARCHAR(10)       -- e.g. '2425'
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CAST(CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END AS BIT)  AS HasPendingIndent,
        ISNULL(SUM(l.QtyRequired - ISNULL(l.QtyOrdered, 0)), 0) AS PendingQty
    FROM dbo.po_prl l
    INNER JOIN dbo.po_prh h ON h.DivCode = l.DivCode AND h.PrNo = l.PrNo
    WHERE l.DivCode  = @DivCode
      AND l.ItemCode = @ItemCode
      AND h.DepCode  = @DepCode
      AND h.FinYear  = @FinYear
      AND l.IsDeleted = 0
      AND h.IsDeleted = 0
      AND ISNULL(l.QtyOrdered, 0) < l.QtyRequired;
END;
GO
```

**Returns:** `HasPendingIndent` (bit), `PendingQty`  
**Frontend behaviour:** If `HasPendingIndent = 1`, show an **informational banner** ("Pending indent qty: X") — do not block the form. User can proceed.

> **VB6 defect fixed:** The original used `End` to terminate the entire application on "Yes". SPINRISE must never do this.

---

#### D2. `usp_PR_CheckPendingPO`

**Replaces:** `ksp_PendPR`  
**Triggered by:** After every item selection — when `po_para.CheckPendingIndent = 'Y'` (make configurable — see recommendation in analysis)  
**Checks:** Whether a previous PR exists for the same item without a PO being raised

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_CheckPendingPO
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1
        CAST(1 AS BIT)  AS HasPendingPR,
        h.PrNo          AS PendingPrNo,
        h.PrDate        AS PendingPrDate
    FROM dbo.po_prl l
    INNER JOIN dbo.po_prh h ON h.DivCode = l.DivCode AND h.PrNo = l.PrNo
    WHERE l.DivCode   = @DivCode
      AND l.ItemCode  = @ItemCode
      AND l.IsDeleted = 0
      AND h.IsDeleted = 0
      AND ISNULL(l.QtyOrdered, 0) = 0   -- no PO raised against this line
      AND h.PrStatus NOT IN ('O', 'C')  -- not ordered, not cancelled
    ORDER BY h.PrDate DESC;

    -- If no row found, return "no pending"
    IF @@ROWCOUNT = 0
        SELECT
            CAST(0 AS BIT) AS HasPendingPR,
            NULL           AS PendingPrNo,
            NULL           AS PendingPrDate;
END;
GO
```

**Returns:** `HasPendingPR` (bit), `PendingPrNo`, `PendingPrDate`  
**Frontend behaviour:** If `HasPendingPR = 1`, show **warning** ("PO not raised for PR No. X dated Y"). User can override and still add the item.

> **VB6 defect fixed:** Original hard-blocked with no override. SPINRISE must make this a soft warning, configurable per division via `po_para`.

---

### Group E — Enhancement to Existing SP

#### E1. `usp_PR_GetAll` — Add `StatusDisplay` column

The current SP returns raw `PrStatus` code. The PR list page should show a human-readable status label.

**Enhancement:** Add a `StatusDisplay` computed column using a CASE expression derived from the VB6 form's status logic. This requires additional columns (`FirstApp`, `SecondApp`, `ThirdApp`, `DirectApp`, `QtyOrd`, `CancelFlag`) to exist on `po_prh`.

> **Verify first:** Check if these columns exist in the live `saranya.po_prh` table. If they do, apply the enhancement below. If not, return raw `PrStatus` and let the frontend map codes to labels.

```sql
-- Add to SELECT in usp_PR_GetAll:
CASE
    WHEN h.PrStatus IS NULL AND h.FirstApp IS NULL        THEN 'Requested'
    WHEN h.PrStatus IS NULL AND h.QtyRequired = 0         THEN 'Cancelled'
    WHEN h.PrStatus = 'F'  OR h.FirstApp  = 'Y'          THEN 'L1 Approved'
    WHEN h.PrStatus = 'S'  OR h.SecondApp = 'Y'          THEN 'L2 Approved'
    WHEN h.PrStatus = 'T'  OR h.ThirdApp  = 'Y'          THEN 'L3 Approved'
    WHEN h.PrStatus = 'D'  OR h.DirectApp = 'Y'          THEN 'Final Approved'
    WHEN h.PrStatus = 'O'  AND ISNULL(h.QtyOrd, 0) > 0   THEN 'Ordered'
    WHEN h.PrStatus = 'O'  AND ISNULL(h.QtyOrd, 0) = 0   THEN 'Order Cancelled'
    WHEN h.PrStatus = 'E'                                  THEN 'Enquired'
    WHEN h.PrStatus = 'C'                                  THEN 'Received'
    ELSE 'Requested'
END AS StatusDisplay
```

---

## Complete SP Checklist

| # | SP Name | Group | Status | File to Create |
|---|---------|-------|--------|----------------|
| 1 | `usp_PR_GetAll` | Display | ✅ Exists | — (enhance only) |
| 2 | `usp_PR_GetById` | Display | ✅ Exists | — |
| 3 | `usp_PR_Insert` | CRUD | ✅ Exists | — |
| 4 | `usp_PR_InsertLine` | CRUD | ✅ Exists | — |
| 5 | `usp_PR_Update` | CRUD | ✅ Exists | — |
| 6 | `usp_PR_Delete` | CRUD | ✅ Exists | — |
| 7 | `usp_PR_DeleteLine` | CRUD | ✅ Exists | — |
| 8 | `usp_PR_SoftDeleteLines` | CRUD | ✅ Exists | — |
| 9 | `usp_PR_PreChecks` | Validation | ✅ Exists | — |
| 10 | `usp_PR_GenerateNumber` | CRUD | ✅ Exists | — |
| 11 | `usp_Lookup_GetDepartments` | Lookup | 🔴 **New** | `09_usp_Lookup_GetDepartments.sql` |
| 12 | `usp_Lookup_GetItems` | Lookup | 🔴 **New** | `10_usp_Lookup_GetItems.sql` |
| 13 | `usp_Lookup_GetMachines` | Lookup | 🔴 **New** | `11_usp_Lookup_GetMachines.sql` |
| 14 | `usp_Lookup_GetCostCentres` | Lookup | 🔴 **New** | `12_usp_Lookup_GetCostCentres.sql` |
| 15 | `usp_Lookup_GetBudgetGroups` | Lookup | 🔴 **New** | `13_usp_Lookup_GetBudgetGroups.sql` |
| 16 | `usp_Lookup_GetPurchaseTypes` | Lookup | 🔴 **New** | `14_usp_Lookup_GetPurchaseTypes.sql` |
| 17 | `usp_Lookup_GetItemGroups` | Lookup | 🔴 **New** | `15_usp_Lookup_GetItemGroups.sql` |
| 18 | `usp_Lookup_GetSubCostCentres` | Lookup | 🔴 **New** | `16_usp_Lookup_GetSubCostCentres.sql` |
| 19 | `usp_Lookup_GetDeleteReasons` | Lookup | 🔴 **New** | `17_usp_Lookup_GetDeleteReasons.sql` |
| 20 | `usp_Lookup_GetRequesters` | Lookup | 🔴 **New** | `18_usp_Lookup_GetRequesters.sql` |
| 21 | `usp_Item_GetDetails` | Auto-fill | 🔴 **New** | `19_usp_Item_GetDetails.sql` |
| 22 | `usp_Item_GetStock` | Auto-fill | 🔴 **New** | `20_usp_Item_GetStock.sql` |
| 23 | `usp_Machine_GetDetails` | Auto-fill | 🔴 **New** | `21_usp_Machine_GetDetails.sql` |
| 24 | `usp_PR_GetConfig` | Config | 🔴 **New** | `22_usp_PR_GetConfig.sql` |
| 25 | `usp_PR_CheckPendingIndent` | Validation | 🔴 **New** | `23_usp_PR_CheckPendingIndent.sql` |
| 26 | `usp_PR_CheckPendingPO` | Validation | 🔴 **New** | `24_usp_PR_CheckPendingPO.sql` |

**Summary:** 10 existing · 16 new SPs required

---

## Before Running Any New SP

Verify these table and column names against the live `saranya` DB:

| Table | Columns to confirm |
|-------|--------------------|
| `dbo.mm_macmas` | `MacFlag`, `SalesFlag`, `Model`, `Description`, `DepCode` |
| `dbo.in_scc` | `SccCode`, `SccName` |
| `dbo.in_grp` | `GroupCode`, `GroupName` |
| `dbo.po_type` | `PoGrpCode`, `PoGrpName` |
| `dbo.pr_emp` | `EmpCode`, `EmpName`, `Designation` |
| `dbo.po_txndelreason` | `ReasonCode`, `ReasonDesc` |
| `dbo.po_para` | `BudgetQty`, `Manual_IndNo`, `PRapprovalstatus`, `Penpodetails`, `PendingOrderPara`, `InditemGrp` |
| `dbo.in_para` | `BackDate` |
| `dbo.po_doc_para` | `TC`, `DocType`, `DocTypeName` |
| `dbo.fa_slmas` | `SlCode`, `SlName` |
| `dbo.IN_TRNHEAD` | `TC`, `SlCode`, `TrnDate` |
| `dbo.IN_TRNTAIL` | `ItemCode`, `Rate` |
| `dbo.in_stock` | `QtyIn`, `QtyOut` (or is stock a view/SP?) |
| `dbo.po_prh` | `FirstApp`, `SecondApp`, `ThirdApp`, `DirectApp`, `QtyOrd`, `FinYear` |

> Run `SELECT TOP 0 * FROM dbo.<table>` in SSMS against `saranya` for each table to confirm columns before writing the SP body.

---

## API Endpoints to Create (Paired with SPs)

| Endpoint | SP | Notes |
|----------|----|-------|
| `GET /api/v1/lookups/departments?divCode=&search=` | A1 | |
| `GET /api/v1/lookups/items?divCode=&search=&groupCode=` | A2 | |
| `GET /api/v1/lookups/machines?divCode=&depCode=&search=` | A3 | |
| `GET /api/v1/lookups/cost-centres?divCode=&search=` | A4 | |
| `GET /api/v1/lookups/budget-groups?divCode=&search=` | A5 | |
| `GET /api/v1/lookups/purchase-types?divCode=&search=` | A6 | |
| `GET /api/v1/lookups/item-groups?divCode=` | A7 | |
| `GET /api/v1/lookups/sub-cost-centres?divCode=&search=` | A8 | |
| `GET /api/v1/lookups/delete-reasons?divCode=` | A9 | |
| `GET /api/v1/lookups/requesters?divCode=&search=` | A10 | |
| `GET /api/v1/items/{itemCode}/details?divCode=` | B1 | |
| `GET /api/v1/items/{itemCode}/stock?divCode=` | B2 | |
| `GET /api/v1/machines/{machineNo}/details?divCode=&depCode=` | B3 | |
| `GET /api/v1/purchase-requisitions/config?divCode=` | C1 | |
| `GET /api/v1/purchase-requisitions/check-pending-indent?divCode=&itemCode=&depCode=&finYear=` | D1 | |
| `GET /api/v1/purchase-requisitions/check-pending-po?divCode=&itemCode=` | D2 | |

---

*Document derived from `PR_Form_CriticalAnalysis_CORRECTED.md`.*  
*Verify all table/column names against live `saranya` DB before implementing.*  
*All SPs use `CREATE OR ALTER PROCEDURE` — safe to run on live DB without dropping existing objects.*
