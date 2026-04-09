-- AUTO GENERATED MERGED SCRIPT
-- DO NOT EDIT MANUALLY

-- ===================================== 
-- File: ksp_GetDepartments.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetDepartments
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT DEPCODE, DEPNAME
    FROM   in_dep
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY DEPNAME;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        DEPCODE, DEPNAME
    FROM   in_dep
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (DEPCODE LIKE @Term OR DEPNAME LIKE @Term)
    ORDER BY
        CASE WHEN DEPCODE LIKE @Term THEN 0 ELSE 1 END,
        DEPNAME;
END
GO
 
GO 
 
-- ===================================== 
-- File: ksp_GetEmployees.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetEmployees
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT empno, ename
    FROM   pr_emp
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY ename;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        empno, ename
    FROM   pr_emp
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (empno LIKE @Term OR ename LIKE @Term)
    ORDER BY
        CASE WHEN empno LIKE @Term THEN 0 ELSE 1 END,
        ename;
END
GO
 
GO 
 
-- ===================================== 
-- File: ksp_GetItems.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetItems
    @SearchTerm VARCHAR(100)
AS
SET NOCOUNT ON;

-- Items are company-wide (no division filter).
-- Require at least 2 characters to prevent full-table scans.
DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(@SearchTerm));

IF LEN(@Term) < 2
BEGIN
    SELECT TOP 0 ITEMCODE, ITEMNAME, UOM
    FROM in_item
    WHERE 1 = 0;
    RETURN;
END

SET @Term = @Term + '%';

SELECT TOP 20
    ITEMCODE,
    ITEMNAME,
    UOM
FROM   in_item
WHERE  IsItemActive = 1
  AND  (ITEMCODE LIKE @Term OR ITEMNAME LIKE @Term)
ORDER BY
    CASE WHEN ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
    ITEMNAME;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_GetMachines.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetMachines
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT MAC_NO, DESCRIPTION
    FROM   mm_macmas
    WHERE  DIVCODE = @DivCode
    ORDER BY DESCRIPTION;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        MAC_NO, DESCRIPTION
    FROM   mm_macmas
    WHERE  DIVCODE = @DivCode
      AND  (MAC_NO LIKE @Term OR DESCRIPTION LIKE @Term)
    ORDER BY
        CASE WHEN MAC_NO LIKE @Term THEN 0 ELSE 1 END,
        DESCRIPTION;
END
GO
 
GO 
 
-- ===================================== 
-- File: ksp_GetPOType.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetPOType
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT TYPE_CODE, TYPNAME
    FROM   po_type
    WHERE  active = 'Y'
    ORDER BY TYPNAME;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        TYPE_CODE, TYPNAME
    FROM   po_type
    WHERE  active = 'Y'
      AND  (TYPE_CODE LIKE @Term OR TYPNAME LIKE @Term)
    ORDER BY
        CASE WHEN TYPE_CODE LIKE @Term THEN 0 ELSE 1 END,
        TYPNAME;
END
GO
 
GO 
 
-- ===================================== 
-- File: ksp_GetSubCosts.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE ksp_GetSubCosts
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT SCCCODE, SCCNAME
    FROM   in_scc
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY SCCNAME;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        SCCCODE, SCCNAME
    FROM   in_scc
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (SCCCODE LIKE @Term OR SCCNAME LIKE @Term)
    ORDER BY
        CASE WHEN SCCCODE LIKE @Term THEN 0 ELSE 1 END,
        SCCNAME;
END
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_Delete.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_Delete
-- Soft deletes PR header and all its lines.
-- Called from PurchaseRequisitionService.DeleteAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Delete
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo;

    UPDATE dbo.po_prh
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_DeleteLine.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_DeleteLine
-- Soft deletes a specific PR line item.
-- Called from PurchaseRequisitionService.DeleteLineAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND PrSNo = @PrSNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_GenerateNumber.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_GenerateNumber
-- Generates next PR number for the financial year.
-- Pattern: YY + DivCode + Sequential 5-digit number
-- Called from PurchaseRequisitionService.GetNextPrNumberAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GenerateNumber
    @DivCode VARCHAR(10),
    @FinYear VARCHAR(9)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo INT;

    SELECT @NextNo = ISNULL(MAX(CAST(RIGHT(PrNo, 5) AS INT)), 0) + 1
    FROM dbo.po_prh
    WHERE DivCode = @DivCode
      AND PrNo LIKE '%' + @FinYear + '%'
      AND IsDeleted = 0;

    SELECT @NextNo AS NextNumber;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_GetAll.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_GetAll
-- Retrieves PR headers with line counts.
-- Called from PurchaseRequisitionService.GetAllAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetAll
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20) = NULL,
    @FromDate DATE = NULL,
    @ToDate DATE = NULL,
    @DepCode VARCHAR(10) = NULL,
    @Status VARCHAR(20) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PoGroupCode,
        h.ScopeCode,
        h.SaleOrderNo,
        h.SaleOrderDate,
        h.RequisitionType,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        h.ModifiedBy,
        h.ModifiedAt,
        COUNT(l.Id) AS LineCount
    FROM dbo.po_prh h
    LEFT JOIN dbo.po_prl l
        ON l.DivCode = h.DivCode
        AND l.PrNo = h.PrNo
        AND l.IsDeleted = 0
    WHERE h.DivCode = @DivCode
      AND h.IsDeleted = 0
      AND (@PrNo IS NULL OR h.PrNo LIKE '%' + @PrNo + '%')
      AND (@FromDate IS NULL OR h.PrDate >= @FromDate)
      AND (@ToDate IS NULL OR h.PrDate <= @ToDate)
      AND (@DepCode IS NULL OR h.DepCode = @DepCode)
      AND (@Status IS NULL OR h.PrStatus = @Status)
    GROUP BY
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PoGroupCode,
        h.ScopeCode,
        h.SaleOrderNo,
        h.SaleOrderDate,
        h.RequisitionType,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        h.ModifiedBy,
        h.ModifiedAt
    ORDER BY h.PrDate DESC, h.PrNo DESC;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_GetById.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_GetById
-- Retrieves PR header and all its line items.
-- Called from PurchaseRequisitionService.GetByIdAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetById
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PoGroupCode,
        h.ScopeCode,
        h.SaleOrderNo,
        h.SaleOrderDate,
        h.RequisitionType,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        h.ModifiedBy,
        h.ModifiedAt
    FROM dbo.po_prh h
    WHERE h.DivCode = @DivCode
      AND h.PrNo = @PrNo
      AND h.IsDeleted = 0;

    SELECT
        l.Id,
        l.DivCode,
        l.PrNo,
        l.PrSNo,
        l.ItemCode,
        l.ItemName,
        l.Uom,
        l.Rate,
        l.CurrentStock,
        l.QtyRequired,
        l.RequiredDate,
        l.Place,
        l.ApproxCost,
        l.Remarks,
        l.MachineNo,
        l.CostCentreCode,
        l.BudgetGroupCode,
        l.SubCostCode,
        l.LastPoRate,
        l.LastPoDate,
        l.LastPoSupplierCode,
        l.LastPoSupplierName,
        l.IsSample,
        l.Model,
        l.MaxCost,
        l.DirectApp
    FROM dbo.po_prl l
    WHERE l.DivCode = @DivCode
      AND l.PrNo = @PrNo
      AND l.IsDeleted = 0
    ORDER BY l.PrSNo;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_GetDeleteReasons.sql 
-- ===================================== 
-- =============================================
-- usp_PR_GetDeleteReasons
-- Returns active delete reason codes for the
-- PR delete reason lookup (po_txndelreason).
-- Equivalent to the VB6 delete-reason LookUp popup.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Delcode,
        Delreason
    FROM  dbo.po_txndelreason
    WHERE ISNULL(Active, 'Y') = 'Y'
    ORDER BY Delcode;
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_GetItemInfo.sql 
-- ===================================== 
-- =============================================
-- usp_PR_GetItemInfo
-- Called on item selection in the PR item entry form.
-- Returns in one round-trip:
--   - Effective rate  (in_item.Rate, overridden by last
--     GRN receipt from IN_TRNHEAD/IN_TRNTAIL TC=1 + SlCode)
--   - Current stock   (opening balance + period movements)
--   - Last PO details (rate, date, supplier code, name)
--
-- @YFDate  = first day of financial year (yfdate)
-- @PDate   = processing date             (pdate / today)
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemInfo
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(20),
    @YFDate   DATE,
    @PDate    DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- ── 1. Base rate from item master ────────────────────────────────────────
    DECLARE @BaseRate DECIMAL(18, 4) = 0;

    SELECT @BaseRate = ISNULL(Rate, 0)
    FROM dbo.in_item
    WHERE -- DivCode = @DivCode AND
	ItemCode = @ItemCode AND IsItemActive = 1;

    -- ── 2. Last GRN receipt rate override (TC=1, SlCode IS NOT NULL) ─────────
    DECLARE @ReceiptRate DECIMAL(18, 4) = NULL;

    SELECT TOP 1
        @ReceiptRate = T.Rate
    FROM dbo.IN_TRNTAIL T
    JOIN dbo.IN_TRNHEAD H
        ON  T.DivCode = H.DivCode
        AND T.DocNo   = H.DocNo
        AND T.TC      = H.TC
    WHERE T.DivCode  = @DivCode
      AND T.ItemCode = @ItemCode
      AND H.TC       = 1
      AND H.SlCode   IS NOT NULL
    ORDER BY H.DocDt DESC, H.DocNo DESC;

    DECLARE @EffectiveRate DECIMAL(18, 4) = ISNULL(@ReceiptRate, @BaseRate);

    -- ── 3. Current stock (opening + period movements) ────────────────────────
    -- Opening year-month key format: YYYY00  (e.g. '202600')
    DECLARE @OYM VARCHAR(6) = CAST(YEAR(@YFDate) AS VARCHAR(4)) + '00';

    DECLARE @OpeningQty DECIMAL(18, 4) = 0;
    SELECT  @OpeningQty = ISNULL(SUM(ISNULL(Quantity, 0)), 0)
    FROM    dbo.IN_IDET
    WHERE   DivCode   = @DivCode
      AND   ItemCode  = @ItemCode
      AND   TC        = 0
      AND   YearMonth = @OYM;

    DECLARE @PeriodQty DECIMAL(18, 4) = 0;
    SELECT  @PeriodQty = ISNULL(SUM(
        CASE
            WHEN TC_T.TcType IN (1, 3, 5, 7, 9)  THEN  ISNULL(T.Quantity, 0)
            WHEN TC_T.TcType IN (2, 4, 6, 8)      THEN -ABS(ISNULL(T.Quantity, 0))
            ELSE 0
        END
    ), 0)
    FROM    dbo.IN_TRNTAIL T
    JOIN    dbo.IN_TC TC_T ON T.TC = TC_T.TC
    WHERE   T.DivCode  = @DivCode
      AND   T.ItemCode = @ItemCode
      AND   T.DocDt   >= @YFDate
      AND   T.DocDt   <= @PDate;

    DECLARE @CurrentStock DECIMAL(18, 4) = @OpeningQty + @PeriodQty;

    -- ── 4. Last PO info ──────────────────────────────────────────────────────
    SELECT TOP 1
        @EffectiveRate           AS Rate,
        @CurrentStock            AS CurrentStock,
        L.Rate                   AS LastPoRate,
        --H.DocDt                  AS LastPoDate,
        H.SlCode                 AS LastPoSupplierCode,
        ISNULL(S.SlName, '')     AS LastPoSupplierName
    FROM  dbo.po_ordh H
    JOIN  dbo.po_ordl L
        ON  H.DivCode = L.DivCode 
		--AND H.DocNo = L.DocNo
    LEFT JOIN dbo.fa_slmas S
        ON  H.SlCode = S.SlCode
		--AND H.DivCode = S.DivCode
    WHERE H.DivCode  = @DivCode
      AND L.ItemCode = @ItemCode
      --AND ISNULL(H.CancelFlag, '') <> 'Y'
    

    -- No PO found — still return rate and stock
    IF @@ROWCOUNT = 0
        SELECT
            @EffectiveRate AS Rate,
            @CurrentStock  AS CurrentStock,
            NULL           AS LastPoRate,
            NULL           AS LastPoDate,
            NULL           AS LastPoSupplierCode,
            NULL           AS LastPoSupplierName;
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_GetMaxPrDate.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_GetMaxPrDate
-- Returns the maximum PR date already saved for
-- the given division and financial year.
-- Used for backdate validation (V4):
--   when in_para.backdate = 'N', the new PR date
--   must be >= max existing PR date for the year.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrDate
    @DivCode  VARCHAR(10),
    @YFDate   DATE,    -- first day of financial year
    @YLDate   DATE     -- last day of financial year
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(MAX(PrDate), @YFDate) AS MaxPrDate
    FROM dbo.po_prh
    WHERE DivCode = @DivCode
      AND PrDate >= @YFDate
      AND PrDate <= @YLDate;
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_Insert.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_Insert
-- Inserts PR header record.
-- Called from PurchaseRequisitionService.CreateAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Insert
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrDate DATE,
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @PoGroupCode VARCHAR(20) = NULL,
    @ScopeCode VARCHAR(20) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @RequisitionType VARCHAR(20) = NULL,
    @PrStatus VARCHAR(20),
    @CreatedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh
    (
        DivCode,
        PrNo,
        PrDate,
        DepCode,
        DepName,
        Section,
        SubCostCode,
        IType,
        ReqName,
        RefNo,
        PoGroupCode,
        ScopeCode,
        SaleOrderNo,
        SaleOrderDate,
        RequisitionType,
        PrStatus,
        CreatedBy
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @DepName,
        @Section,
        @SubCostCode,
        @IType,
        @ReqName,
        @RefNo,
        @PoGroupCode,
        @ScopeCode,
        @SaleOrderNo,
        @SaleOrderDate,
        @RequisitionType,
        @PrStatus,
        @CreatedBy
    );
END 
GO 
 
-- ===================================== 
-- File: ksp_PR_InsertAuditLog.sql 
-- ===================================== 
-- =============================================
-- usp_PR_InsertAuditLog
-- Inserts one row into LogDet_PO per PR line
-- on every Add, Modify, or Delete operation.
-- Mirrors the VB6 LogDet_PO audit trail exactly.
-- Called inside the same write transaction so the
-- audit insert is atomic with the business insert.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertAuditLog
    @DivCode      VARCHAR(10),
    @PrNo         VARCHAR(20),
    @PrDate       DATE,
    @DepCode      VARCHAR(10),
    @ReqName      VARCHAR(100) = NULL,
    @SubCost      VARCHAR(20)  = NULL,
    @UserId       VARCHAR(50),
    @UserName     VARCHAR(100),
    @PrSNo        INT,
    @ItemCode     VARCHAR(20),
    @MachineNo    VARCHAR(30)  = NULL,
    @Rate         DECIMAL(18, 4) = NULL,
    @Quantity     DECIMAL(18, 4),
    @TransMod     VARCHAR(10),       -- 'ADD', 'MODIFY', 'DELETE'
    @TransIPAddr  VARCHAR(50)  = NULL,
    @TransHost    VARCHAR(100) = NULL,
    @LastPoRate   DECIMAL(18, 4) = NULL,
    @LastPoDate   DATE             = NULL,
    @LastPoSlCode VARCHAR(20)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.LogDet_PO
    (
        DivCode,
        PrNo,
        PrDate,
        DepCode,
        ReqName,
        Trans_UserId,
        SubCost,
        PrSNo,
        ItemCode,
        MacNo,
        Rate,
        Quantity,
        UserName,
        Trans_Date,
        Trans_Name,
        Trans_Mod,
        --Trans_IPAddr,
        Trans_Host
		--,
  --      LastPoRate,
  --      LastPoDate,
  --      LastPoSlCode
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @ReqName,
        @UserId,
        @SubCost,
        @PrSNo,
        @ItemCode,
        @MachineNo,
        @Rate,
        @Quantity,
        @UserName,
        GETDATE(),
        'Purchase Requisition',
        @TransMod,
        --@TransIPAddr,
        @TransHost
		--,
        --@LastPoRate,
        --@LastPoDate,
        --@LastPoSlCode
    );
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_InsertLine.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_InsertLine
-- Inserts PR line item record.
-- Called from PurchaseRequisitionService.CreateAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT,
    @ItemCode VARCHAR(30),
    @ItemName VARCHAR(200) = NULL,
    @Uom VARCHAR(20) = NULL,
    @Rate DECIMAL(18,4) = NULL,
    @CurrentStock DECIMAL(18,4) = NULL,
    @QtyRequired DECIMAL(18,4),
    @RequiredDate DATE = NULL,
    @Place VARCHAR(100) = NULL,
    @ApproxCost DECIMAL(18,2) = NULL,
    @Remarks VARCHAR(500) = NULL,
    @MachineNo VARCHAR(30) = NULL,
    @CostCentreCode VARCHAR(20) = NULL,
    @BudgetGroupCode VARCHAR(20) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @LastPoRate DECIMAL(18,4) = NULL,
    @LastPoDate DATE = NULL,
    @LastPoSupplierCode VARCHAR(20) = NULL,
    @LastPoSupplierName VARCHAR(100) = NULL,
    @IsSample BIT,
    @Model VARCHAR(100) = NULL,
    @MaxCost DECIMAL(18,2) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prl
    (
        DivCode,
        PrNo,
        PrSNo,
        ItemCode,
        ItemName,
        Uom,
        Rate,
        CurrentStock,
        QtyRequired,
        RequiredDate,
        Place,
        ApproxCost,
        Remarks,
        MachineNo,
        CostCentreCode,
        BudgetGroupCode,
        SubCostCode,
        LastPoRate,
        LastPoDate,
        LastPoSupplierCode,
        LastPoSupplierName,
        IsSample,
        Model,
        MaxCost
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrSNo,
        @ItemCode,
        @ItemName,
        @Uom,
        @Rate,
        @CurrentStock,
        @QtyRequired,
        @RequiredDate,
        @Place,
        @ApproxCost,
        @Remarks,
        @MachineNo,
        @CostCentreCode,
        @BudgetGroupCode,
        @SubCostCode,
        @LastPoRate,
        @LastPoDate,
        @LastPoSupplierCode,
        @LastPoSupplierName,
        @IsSample,
        @Model,
        @MaxCost
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_PendingIndentCheck.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_PendingIndentCheck  (KSP_INDEDNT_CHECK)
-- Gated by po_para.PendingOrderPara = 'Y'.
-- Checks whether any open purchase order line
-- exists for the same item + dept + financial year
-- without a corresponding receipt, indicating a
-- pending indent that the user should be warned about.
--
-- SPINRISE change from VB6: this returns a WARNING
-- result set only.  The caller (service layer) surfaces
-- a non-blocking banner.  The VB6 End call that
-- terminated the application is NOT replicated here.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingIndentCheck
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(20),
    @DepCode  VARCHAR(10),
    @YFDate   DATE,
    @YLDate   DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Pending qty = total ordered qty not yet received for this item/dept/year
    DECLARE @PendingQty DECIMAL(18, 4) = 0;
	--select * from po_ordh
    SELECT @PendingQty = ISNULL(SUM(L.ORDQTY - ISNULL(L.RCVDQTY, 0)), 0)
    FROM dbo.po_ordh H
    JOIN dbo.po_ordl L
        ON H.DivCode = L.DivCode --AND H.DocNo = L.DocNo
    WHERE H.DivCode  = @DivCode
     -- AND H.DepCode  = @DepCode
      AND L.ItemCode = @ItemCode
      --AND H.DocDt   >= @YFDate
      --AND H.DocDt   <= @YLDate
      --AND ISNULL(H.CancelFlag, '') <> 'Y'
      AND L.ORDQTY > ISNULL(L.RCVDQTY, 0);

    SELECT
        CASE WHEN @PendingQty > 0 THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS HasPendingIndent,
        @PendingQty AS PendingQty;
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_PendingPRCheck.sql 
-- ===================================== 
-- =============================================
-- usp_PR_PendingPRCheck  (ksp_PendPR)
-- Checks whether any previous approved PR exists
-- for the same item in the same division where a
-- Purchase Order has NOT yet been raised.
--
-- VB6 behaviour: unconditional hard-block.
-- SPINRISE change: configurable via po_para.PendPRCheck.
-- Returns warning data; service decides block vs warn.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingPRCheck
    @DivCode  VARCHAR(10),
    @ItemCode VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Find the latest PR for this item that has no PO raised
    SELECT TOP 1
        CAST(1 AS BIT) AS HasPendingPR,
        H.PrNo         AS PendingPrNo,
        H.PrDate       AS PendingPrDate
    FROM dbo.po_prh H
    JOIN dbo.po_prl L
        ON H.DivCode = L.DivCode AND H.PrNo = L.PrNo
    WHERE H.DivCode  = @DivCode
      AND L.ItemCode = @ItemCode
      AND ISNULL(H.CancelFlag, '') <> 'Y'
      --AND ISNULL(H.AmdFlg,     '') <> 'Y'
      -- No PO raised: item not present in any po_ordl linked to this PR
      AND NOT EXISTS (
          SELECT 1
          FROM dbo.po_ordl OL
          JOIN dbo.po_ordh OH
             ON OL.DivCode = OH.DivCode 
			 -- AND OL.DocNo = OH.DocNo
          WHERE OL.DivCode  = @DivCode
            AND OL.ItemCode = @ItemCode
            --AND OH.PrNo     = H.PrNo
            --AND ISNULL(OH.CancelFlag, '') <> 'Y'
      )
    ORDER BY H.PrDate DESC, H.PrNo DESC;

    -- No pending PR found
    IF @@ROWCOUNT = 0
        SELECT
            CAST(0 AS BIT) AS HasPendingPR,
            NULL           AS PendingPrNo,
            NULL           AS PendingPrDate;
END;
GO
 
GO 
 
-- ===================================== 
-- File: ksp_PR_PreChecks.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_PreChecks
-- Called once on form load (New / Add button).
-- Returns setup flags (V1–V3) and all po_para
-- configuration flags in a single round-trip.
-- Eliminates the need for per-flag feature_flags
-- inline SQL calls in the service layer.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- ── Setup existence flags (V1, V2, V3) ──────────────────────────────────
    DECLARE
        @ItemMasterExists    BIT = 0,
        @DeptExists          BIT = 0,
        @DocNumberConfigured BIT = 0;

    IF EXISTS (
        SELECT 1 FROM dbo.in_item
        WHERE IsItemActive = 1
    )
        SET @ItemMasterExists = 1;

    IF EXISTS (
        SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode
    )
        SET @DeptExists = 1;

    IF EXISTS (
        SELECT 1 FROM dbo.po_doc_para
        WHERE TC = 'PURCHASE REQUISITION'
    )
        SET @DocNumberConfigured = 1;

    -- ── po_para configuration flags ──────────────────────────────────────────
    -- Defaults: all restrictive flags off; BackDate open.
    DECLARE
        @BackDate         CHAR(1) = 'Y',   -- in_para.backdate
        @BudgetQty        CHAR(1) = 'N',
        @PendingOrderPara CHAR(1) = 'N',
        @IndItemGrp       CHAR(1) = 'N',
        @PRApprovalStatus CHAR(1) = 'N',
        @ManualIndNo      CHAR(1) = 'N',
        @PenPoDetails     CHAR(1) = 'N',
        @RequireReqName   CHAR(1) = 'N',
        @RequireRefNo     CHAR(1) = 'N',
        @PendPRCheck      CHAR(1) = 'N';

    -- Read po_para (one row per division)
	--select * from po_para
    SELECT
        @BudgetQty        = ISNULL(BudgetQty,        'N'),
        @PendingOrderPara = ISNULL(PendingOrderPara, 'N'),
        @IndItemGrp       = ISNULL(IndItemGrp,       'N'),
        @PRApprovalStatus = ISNULL(PRApprovalStatus, 'N'),
        @ManualIndNo      = ISNULL(Manual_IndNo,     'N'),
        @PenPoDetails     = ISNULL(Penpodetails,     'N')
        --@RequireReqName   = ISNULL(RequireReqName,   'N'),
        --@RequireRefNo     = ISNULL(RequireRefNo,     'N'),
        --@PendPRCheck      = ISNULL(PendPRCheck,      'N')
    FROM dbo.po_para
    WHERE DivCode = @DivCode;

    -- Read in_para backdate flag (separate table)
    SELECT @BackDate = ISNULL(backdate, 'Y')
    FROM dbo.in_para
    

    -- ── Result set ───────────────────────────────────────────────────────────
    SELECT
        -- Setup checks
        @ItemMasterExists    AS ItemMasterExists,
        @DeptExists          AS DepartmentExists,
        @DocNumberConfigured AS DocNumberConfigured,
        -- Behaviour flags (po_para + in_para)
        CASE WHEN @BackDate         = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BackDateAllowed,
        CASE WHEN @BudgetQty        = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BudgetValidationEnabled,
        CASE WHEN @PendingOrderPara = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingIndentCheckEnabled,
        CASE WHEN @IndItemGrp       = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ItemGroupFilterEnabled,
        CASE WHEN @PRApprovalStatus = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ApprovalStatusVisible,
        CASE WHEN @ManualIndNo      = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ManualPrNumberEnabled,
        CASE WHEN @PenPoDetails     = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingPoDetailsEnabled,
        CASE WHEN @RequireReqName   = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS RequireRequesterName,
        CASE WHEN @RequireRefNo     = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS RequireRefNo,
        CASE WHEN @PendPRCheck      = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingPRCheckEnabled;
END;
GO

 
GO 
 
-- ===================================== 
-- File: ksp_PR_SoftDeleteLines.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_SoftDeleteLines
-- Soft deletes all lines for a PR (sets IsDeleted = 1).
-- Called from PurchaseRequisitionService.UpdateAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_SoftDeleteLines
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;
END; 
GO 
 
-- ===================================== 
-- File: ksp_PR_Update.sql 
-- ===================================== 
-- =============================================
-- ksp_PR_Update
-- Updates PR header record.
-- Called from PurchaseRequisitionService.UpdateAsync()
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Update
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @PoGroupCode VARCHAR(20) = NULL,
    @ScopeCode VARCHAR(20) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @RequisitionType VARCHAR(20) = NULL,
    @ModifiedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh
    SET DepCode = @DepCode,
        DepName = @DepName,
        Section = @Section,
        SubCostCode = @SubCostCode,
        IType = @IType,
        ReqName = @ReqName,
        RefNo = @RefNo,
        PoGroupCode = @PoGroupCode,
        ScopeCode = @ScopeCode,
        SaleOrderNo = @SaleOrderNo,
        SaleOrderDate = @SaleOrderDate,
        RequisitionType = @RequisitionType,
        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END; 
GO 
 
-- ===================================== 
-- File: ksp_Stock_GetCurrentStock.sql 
-- ===================================== 
-- =============================================
-- ksp_Stock_GetCurrentStock
--
-- Consolidates legacy stkchk1 / stkchk2 logic.
--
-- stkchk1 equivalent : @EndDate = pdate,  @IncludeType12 = 1, @IncludeType11 = 1
-- stkchk2 equivalent : @EndDate = yldate, @IncludeType12 = 0, @IncludeType11 = 0
--
-- @GodCode NULL  → aggregate across all godowns (original Purstock = '')
-- @GodCode value → filter to that godown   (original Purstock <> '')
--
-- Optimisation applied: the original 6-branch UNION ALL is collapsed to 4 branches
-- by merging the duplicate receipt pair (parts 2+4) and duplicate issue pair
-- (parts 3+5) into single branches that populate both ALLREC/REC and ALLISS/ISS
-- simultaneously, cutting IN_TRNTAIL reads in half.
-- =============================================
CREATE OR ALTER PROCEDURE dbo.ksp_Stock_GetCurrentStock
    @DivCode        VARCHAR(10),
    @ItemCode       VARCHAR(20),
    @YFDate         DATE,           -- fiscal year start  (yfdate)
    @EndDate        DATE,           -- cut-off date       (pdate or yldate)
    @OYM            VARCHAR(6),     -- opening year-month (YYYY00, e.g. '202600')
    @GodCode        VARCHAR(10) = NULL,
    @IncludeType12  BIT         = 1,  -- 1 for stkchk1, 0 for stkchk2
    @IncludeType11  BIT         = 1   -- 1 for stkchk1, 0 for stkchk2
AS
SET NOCOUNT ON;

-- -----------------------------------------------
-- Filtered godown path  (Purstock <> '')
-- -----------------------------------------------
IF @GodCode IS NOT NULL
BEGIN
    SELECT
        X.ITEMCODE,
        i.ITEMNAME,
        i.UOM,
        SUM(X.ALLREC  - X.ALLISS  - X.REC + X.ISS)                AS OPQTY,
        SUM(X.REC)                                                  AS RCDQTY,
        SUM(X.ISS)                                                  AS ISDQTY,
        SUM(X.ALLREC  - X.ALLISS)                                   AS BALQTY,
        SUM(X.ALLRECval - X.ALLISSval)                              AS VALUE,
        SUM(X.TOTQC)                                                AS QCSTK,
        SUM(X.ALLRECval - X.ALLISSval - X.RECval + X.ISSval)       AS OPVAL,
        SUM(X.RECval)                                               AS RCVAL,
        SUM(X.ISSval)                                               AS ISDVAL,
        SUM(X.TOTQCval)                                             AS QCVAL,
        X.GODCODE
    FROM
    (
        -- Branch 1: Opening balance from IN_IDET (TC=0, YEARMONTH = opening period)
        SELECT
            ITEMCODE,
            SUM(ISNULL(QUANTITY, 0))    AS ALLREC,
            0                           AS ALLISS,
            0                           AS TOTQC,
            0                           AS REC,
            0                           AS ISS,
            SUM(ISNULL(VALUE, 0))       AS ALLRECval,
            0                           AS ALLISSval,
            0                           AS TOTQCval,
            0                           AS RECval,
            0                           AS ISSval,
            GODCODE
        FROM IN_IDET
        WHERE DIVCODE   = @DivCode
          AND YEARMONTH = @OYM
          AND TC        = 0
        GROUP BY ITEMCODE, GODCODE

        UNION ALL

        -- Branch 2: Period receipts — merged duplicate (original branches 2 & 4)
        --   ALLREC = REC = same quantity; ALLRECval = RECval = same value
        SELECT
            A.ITEMCODE,
            SUM(ISNULL(A.QUANTITY, 0))  AS ALLREC,
            0                           AS ALLISS,
            0                           AS TOTQC,
            SUM(ISNULL(A.QUANTITY, 0))  AS REC,
            0                           AS ISS,
            SUM(ISNULL(A.VALUE, 0))     AS ALLRECval,
            0                           AS ALLISSval,
            0                           AS TOTQCval,
            SUM(ISNULL(A.VALUE, 0))     AS RECval,
            0                           AS ISSval,
            A.GODCODE
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
          AND (
                T.TCTYPE IN (1, 3, 5, 7, 9)
                OR (@IncludeType12 = 1 AND T.TCTYPE = 12)
              )
        GROUP BY A.ITEMCODE, A.GODCODE

        UNION ALL

        -- Branch 3: Period issues — merged duplicate (original branches 3 & 5)
        --   ALLISS = ISS = same quantity; ALLISSval = ISSval = same value
        SELECT
            A.ITEMCODE,
            0                                       AS ALLREC,
            SUM(ABS(ISNULL(A.QUANTITY, 0)))         AS ALLISS,
            0                                       AS TOTQC,
            0                                       AS REC,
            SUM(ABS(ISNULL(A.QUANTITY, 0)))         AS ISS,
            0                                       AS ALLRECval,
            SUM(ABS(ISNULL(A.VALUE, 0)))            AS ALLISSval,
            0                                       AS TOTQCval,
            0                                       AS RECval,
            SUM(ABS(ISNULL(A.VALUE, 0)))            AS ISSval,
            A.GODCODE
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
          AND (
                T.TCTYPE IN (2, 4, 6, 8)
                OR (@IncludeType11 = 1 AND T.TCTYPE = 11)
              )
        GROUP BY A.ITEMCODE, A.GODCODE

        UNION ALL

        -- Branch 4: QC stock (TCTYPE = 1 only)
        SELECT
            A.ITEMCODE,
            0                                                                                           AS ALLREC,
            0                                                                                           AS ALLISS,
            SUM(ABS(ISNULL(A.QCRECDQTY, 0))) - SUM(ABS(ISNULL(A.REJQTY, 0))) - SUM(ABS(ISNULL(A.QUANTITY, 0)))  AS TOTQC,
            0                                                                                           AS REC,
            0                                                                                           AS ISS,
            0                                                                                           AS ALLRECval,
            0                                                                                           AS ALLISSval,
            SUM(ABS(ISNULL(A.VALUE, 0)))                                                                AS TOTQCval,
            0                                                                                           AS RECval,
            0                                                                                           AS ISSval,
            A.GODCODE
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND T.TCTYPE  = 1
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
        GROUP BY A.ITEMCODE, A.GODCODE
    ) AS X
    JOIN in_item i ON X.ITEMCODE = i.ITEMCODE
    WHERE X.ITEMCODE = @ItemCode
      AND X.GODCODE  = @GodCode
    GROUP BY
        X.ITEMCODE,
        i.ITEMNAME,
        i.UOM,
        X.GODCODE
    HAVING
        SUM(X.ALLREC - X.ALLISS - X.REC + X.ISS) <> 0
        OR SUM(X.REC)  <> 0
        OR SUM(X.ISS)  <> 0
        OR SUM(X.ALLREC - X.ALLISS) <> 0
        OR SUM(X.TOTQC) < 0
    ORDER BY X.ITEMCODE;
END
ELSE
-- -----------------------------------------------
-- All-godowns path  (Purstock = '')
-- -----------------------------------------------
BEGIN
    SELECT
        X.ITEMCODE,
        i.ITEMNAME,
        i.UOM,
        SUM(X.ALLREC  - X.ALLISS  - X.REC + X.ISS)                AS OPQTY,
        SUM(X.REC)                                                  AS RCDQTY,
        SUM(X.ISS)                                                  AS ISDQTY,
        SUM(X.ALLREC  - X.ALLISS)                                   AS BALQTY,
        SUM(X.ALLRECval - X.ALLISSval)                              AS VALUE,
        SUM(X.TOTQC)                                                AS QCSTK,
        SUM(X.ALLRECval - X.ALLISSval - X.RECval + X.ISSval)       AS OPVAL,
        SUM(X.RECval)                                               AS RCVAL,
        SUM(X.ISSval)                                               AS ISDVAL,
        SUM(X.TOTQCval)                                             AS QCVAL
    FROM
    (
        -- Branch 1: Opening balance from IN_IDET
        SELECT
            ITEMCODE,
            SUM(ISNULL(QUANTITY, 0))    AS ALLREC,
            0                           AS ALLISS,
            0                           AS TOTQC,
            0                           AS REC,
            0                           AS ISS,
            SUM(ISNULL(VALUE, 0))       AS ALLRECval,
            0                           AS ALLISSval,
            0                           AS TOTQCval,
            0                           AS RECval,
            0                           AS ISSval
        FROM IN_IDET
        WHERE DIVCODE   = @DivCode
          AND YEARMONTH = @OYM
          AND TC        = 0
        GROUP BY ITEMCODE

        UNION ALL

        -- Branch 2: Period receipts (merged)
        SELECT
            A.ITEMCODE,
            SUM(ISNULL(A.QUANTITY, 0))  AS ALLREC,
            0                           AS ALLISS,
            0                           AS TOTQC,
            SUM(ISNULL(A.QUANTITY, 0))  AS REC,
            0                           AS ISS,
            SUM(ISNULL(A.VALUE, 0))     AS ALLRECval,
            0                           AS ALLISSval,
            0                           AS TOTQCval,
            SUM(ISNULL(A.VALUE, 0))     AS RECval,
            0                           AS ISSval
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
          AND (
                T.TCTYPE IN (1, 3, 5, 7, 9)
                OR (@IncludeType12 = 1 AND T.TCTYPE = 12)
              )
        GROUP BY A.ITEMCODE

        UNION ALL

        -- Branch 3: Period issues (merged)
        SELECT
            A.ITEMCODE,
            0                                       AS ALLREC,
            SUM(ABS(ISNULL(A.QUANTITY, 0)))         AS ALLISS,
            0                                       AS TOTQC,
            0                                       AS REC,
            SUM(ABS(ISNULL(A.QUANTITY, 0)))         AS ISS,
            0                                       AS ALLRECval,
            SUM(ABS(ISNULL(A.VALUE, 0)))            AS ALLISSval,
            0                                       AS TOTQCval,
            0                                       AS RECval,
            SUM(ABS(ISNULL(A.VALUE, 0)))            AS ISSval
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
          AND (
                T.TCTYPE IN (2, 4, 6, 8)
                OR (@IncludeType11 = 1 AND T.TCTYPE = 11)
              )
        GROUP BY A.ITEMCODE

        UNION ALL

        -- Branch 4: QC stock (TCTYPE = 1 only)
        SELECT
            A.ITEMCODE,
            0                                                                                           AS ALLREC,
            0                                                                                           AS ALLISS,
            SUM(ABS(ISNULL(A.QCRECDQTY, 0))) - SUM(ABS(ISNULL(A.REJQTY, 0))) - SUM(ABS(ISNULL(A.QUANTITY, 0)))  AS TOTQC,
            0                                                                                           AS REC,
            0                                                                                           AS ISS,
            0                                                                                           AS ALLRECval,
            0                                                                                           AS ALLISSval,
            SUM(ABS(ISNULL(A.VALUE, 0)))                                                                AS TOTQCval,
            0                                                                                           AS RECval,
            0                                                                                           AS ISSval
        FROM IN_TRNTAIL A
        JOIN IN_TC T ON A.TC = T.TC
        WHERE A.DIVCODE = @DivCode
          AND T.TCTYPE  = 1
          AND A.DOCDT  >= @YFDate
          AND A.DOCDT  <= @EndDate
        GROUP BY A.ITEMCODE
    ) AS X
    JOIN in_item i ON X.ITEMCODE = i.ITEMCODE
    WHERE X.ITEMCODE = @ItemCode
    GROUP BY
        X.ITEMCODE,
        i.ITEMNAME,
        i.UOM
    HAVING
        SUM(X.ALLREC - X.ALLISS - X.REC + X.ISS) <> 0
        OR SUM(X.REC)  <> 0
        OR SUM(X.ISS)  <> 0
        OR SUM(X.ALLREC - X.ALLISS) <> 0
        OR SUM(X.TOTQC) < 0
    ORDER BY X.ITEMCODE;
END
GO

-- =============================================
-- Recommended indexes (run once on target DB)
-- =============================================
--
-- CREATE NONCLUSTERED INDEX IX_IN_IDET_DivYMTC
--     ON IN_IDET (DIVCODE, YEARMONTH, TC)
--     INCLUDE (ITEMCODE, QUANTITY, VALUE, GODCODE);
--
-- CREATE NONCLUSTERED INDEX IX_IN_TRNTAIL_DivDocdt
--     ON IN_TRNTAIL (DIVCODE, DOCDT)
--     INCLUDE (TC, ITEMCODE, QUANTITY, VALUE, QCRECDQTY, REJQTY, GODCODE);
--
-- CREATE NONCLUSTERED INDEX IX_IN_TC_TCType
--     ON IN_TC (TC, TCTYPE);
 
GO 
 
