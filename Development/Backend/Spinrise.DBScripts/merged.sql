-- =============================================================
-- Spinrise ERP — Merged Stored Procedures
-- Auto-generated: 2026-04-20
-- DO NOT EDIT MANUALLY — edit individual files under
--   Scripts/02 Stored Procedures/ then re-run the merge.
-- Run against: SpinRiseSaranya
-- =============================================================

-- ─────────────────────────────────────────────────────────────
-- Security / Auth
-- ─────────────────────────────────────────────────────────────

-- ksp_Auth_ValidateUser
-- CREATE OR ALTER PROCEDURE dbo.ksp_Auth_ValidateUser
-- (
--     @DivCode  VARCHAR(2),
--     @UserId   VARCHAR(5),
--     @Password VARCHAR(10)
-- )
-- AS
-- BEGIN
--     SET NOCOUNT ON;

--     SELECT
--         p.divcode   AS DivCode,
--         p.user_id   AS UserId,
--         p.user_name AS UserName,
--         p.alevel    AS ALevel
--     FROM dbo.PP_PASSWD p
--     WHERE p.divcode  = @DivCode
--       AND p.user_id  = @UserId
--       AND p.password = @Password
--       AND UPPER(ISNULL(p.activeflg, 'N')) = 'Y';
-- END;
-- GO

-- ─────────────────────────────────────────────────────────────
-- Lookups / Shared
-- ─────────────────────────────────────────────────────────────

-- ksp_GetDepartments
CREATE OR ALTER PROCEDURE ksp_GetDepartments
    @DivCode    VARCHAR(10)
AS
SET NOCOUNT ON;

BEGIN
    SELECT DEPCODE, DEPNAME
    FROM   in_dep
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY DEPNAME;
END
GO

-- ksp_GetActiveDivisions
CREATE OR ALTER PROCEDURE dbo.ksp_GetActiveDivisions
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DivCode,
           DIVNAME AS DivName
    FROM   pp_divmas
    ORDER  BY DivCode;
END
GO

-- ksp_GetDivisionDetails
CREATE OR ALTER PROCEDURE dbo.ksp_GetDivisionDetails
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT  DIV_LOGO,
            DIV_PRINTNAME,
            DIV_UNITNAME,
            DIVISION_ADDR1,
            DIVISION_ADDR2,
            DIVISION_ADDR3,
            PINCODE,
            STATENAME,
            PHONE1,
            EMAIL
    FROM pp_divmas
    WHERE DivCode = @DivCode;
END
GO

-- ksp_GetEmployees
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

-- ksp_GetItems
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

-- ksp_GetItemsEnriched
CREATE OR ALTER PROCEDURE dbo.ksp_GetItemsEnriched
    @DivCode    VARCHAR(2),
    @SearchTerm VARCHAR(100),
    @DepCode    VARCHAR(5)  = NULL,
    @ItemGroup  VARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(@SearchTerm));

    IF LEN(@Term) < 2
    BEGIN
        SELECT TOP 0
            CAST('' AS VARCHAR(10))      AS ItemCode,
            CAST('' AS VARCHAR(70))      AS ItemName,
            CAST('' AS VARCHAR(3))       AS Uom,
            CAST(NULL AS DECIMAL(20,3))  AS CurrentStock,
            CAST(0   AS NUMERIC(12,3))   AS PendingPrQty,
            CAST(0   AS NUMERIC(12,3))   AS PendingPoQty,
            CAST(0   AS DECIMAL(12,3))   AS MinLevel,
            CAST('' AS VARCHAR(25))      AS DrawNo,
            CAST('' AS VARCHAR(25))      AS CatNo
        FROM dbo.in_item WHERE 1 = 0;
        RETURN;
    END

    SET @Term = @Term + '%';

    -- Build temp aggregates for pending PR and PO qty — single pass instead of N subqueries
    WITH PendingPr AS
    (
        SELECT
            prl.ITEMCODE,
            SUM(ISNULL(prl.QTYREQD, 0)) AS TotalPendingPr
        FROM   dbo.PO_PRL prl
        WHERE  prl.DIVCODE = @DivCode
          AND  ISNULL(prl.prstatus, ' ') NOT IN ('O', 'C')
          AND  ISNULL(prl.AmdFlg, '') <> 'Y'
        GROUP BY prl.ITEMCODE
    ),
    PendingPo AS
    (
        SELECT
            o.ITEMCODE,
            SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) AS TotalPendingPo
        FROM   dbo.PO_ORDL o
        INNER JOIN dbo.PO_ORDH h
            ON  h.DIVCODE = o.DIVCODE
            AND h.PORDNO  = o.PORDNO
            AND h.PORDDT  = o.PORDDT
            AND h.POGRP   = o.POGRP
        WHERE  o.DIVCODE = @DivCode
          AND  ISNULL(h.CANFLG, 'N') = 'N'
          AND  (ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) > 0
        GROUP BY o.ITEMCODE
    )
    SELECT  --TOP 20
        i.ITEMCODE                                  AS ItemCode,
        i.ITEMNAME                                  AS ItemName,
        i.UOM                                       AS Uom,
        i.CURSTK                                    AS CurrentStock,
        ISNULL(i.MINLEVEL, 0)                       AS MinLevel,
        ISNULL(pp.TotalPendingPr, 0)                AS PendingPrQty,
        ISNULL(po.TotalPendingPo, 0)                AS PendingPoQty,
        ISNULL(i.DRAWNO, '')                        AS DrawNo,
        ISNULL(ic.CATDESC, '')                      AS CatNo
    FROM   dbo.in_item i
    LEFT JOIN PendingPr pp ON pp.ITEMCODE = i.ITEMCODE
    LEFT JOIN PendingPo po ON po.ITEMCODE = i.ITEMCODE
    INNER JOIN dbo.in_cat ic ON ic.CATCODE = i.CATCODE
    WHERE  i.IsItemActive = 1
      AND  (i.ITEMCODE LIKE @Term OR i.ITEMNAME LIKE @Term)
    ORDER BY
        CASE WHEN i.ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
        i.ITEMNAME;
END;
GO

-- ksp_GetMachines
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

-- ksp_GetPOType
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

-- ksp_GetSubCosts
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

-- ─────────────────────────────────────────────────────────────
-- Purchase Requisition — Configuration & Existence Checks
-- ─────────────────────────────────────────────────────────────

-- ksp_PR_PreChecks
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PreChecks
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE
        @ItemMasterExists    BIT = 0,
        @DeptExists          BIT = 0,
        @DocNumberConfigured BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.in_item)
        SET @ItemMasterExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE divcode = @DivCode)
        SET @DeptExists = 1;

    IF EXISTS (
        SELECT 1 FROM dbo.po_doc_para
        WHERE TC = 'PURCHASE REQUISITION'
    )
        SET @DocNumberConfigured = 1;

    DECLARE
        @BackDate         VARCHAR(5) = 'Y',
        @BudgetQty        CHAR(1)    = 'N',
        @PendingOrderPara VARCHAR(5) = 'N',
        @IndItemGrp       CHAR(1)    = 'N',
        @PRApprovalStatus VARCHAR(5) = 'N',
        @ManualIndNo      CHAR(1)    = 'N',
        @PenPoDetails     VARCHAR(10)= 'N',
        @PurTypeFlg       VARCHAR(5) = 'N';

    SELECT
        @BudgetQty        = ISNULL(BudgetQty,        'N'),
        @PendingOrderPara = ISNULL(pendingorderpara,  'N'),
        @IndItemGrp       = ISNULL(InditemGrp,        'N'),
        @PRApprovalStatus = ISNULL(PRapprovalstatus,  'N'),
        @ManualIndNo      = ISNULL(Manual_IndNo,      'N'),
        @PenPoDetails     = ISNULL(Penpodetails,      'N'),
        @PurTypeFlg       = ISNULL(purtypeflg,        'N')
    FROM dbo.po_para
    WHERE divcode = @DivCode;

    SELECT @BackDate = ISNULL(backdate, 'Y')
    FROM   dbo.in_para;

    SELECT
        @ItemMasterExists                                                          AS ItemMasterExists,
        @DeptExists                                                                AS DepartmentExists,
        @DocNumberConfigured                                                       AS DocNumberConfigured,
        CASE WHEN @BackDate         = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BackDateAllowed,
        CASE WHEN @BudgetQty        = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BudgetValidationEnabled,
        CASE WHEN @PendingOrderPara = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingIndentCheckEnabled,
        CASE WHEN @IndItemGrp       = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ItemGroupFilterEnabled,
        CASE WHEN @PRApprovalStatus = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ApprovalStatusVisible,
        CASE WHEN @ManualIndNo      = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ManualPrNumberEnabled,
        CASE WHEN @PenPoDetails     = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingPoDetailsEnabled,
        CASE WHEN @PurTypeFlg       <> 'N' AND @PurTypeFlg <> '' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PurTypeFlgEnabled;
END;
GO

-- ksp_PR_ExistsChecks (Department, Item, CostCentre, BudgetGroup, Machine, DeleteReason, Category, Enquiry)
CREATE OR ALTER PROCEDURE dbo.ksp_PR_DepartmentExists
    @DivCode VARCHAR(2),
    @DepCode VARCHAR(3)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_dep
        WHERE divcode = @DivCode AND DEPCODE = @DepCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_ItemExists
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_item
        WHERE ITEMCODE = @ItemCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_CostCentreExists
    @DivCode        VARCHAR(2),
    @CostCentreCode VARCHAR(5)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_cc
        WHERE divcode = @DivCode AND CCCODE = @CostCentreCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_BudgetGroupExists
    @BudgetGroupCode VARCHAR(4)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_bgrp
        WHERE BGRPCODE = @BudgetGroupCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_MachineExists
    @DivCode   VARCHAR(2),
    @DepCode   VARCHAR(3),
    @MachineNo VARCHAR(5)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.mm_macmas
        WHERE DIVCODE  = @DivCode
          AND DEPCODE  = @DepCode
          AND MAC_NO   = @MachineNo
          AND MACFLAG  = 'M'
          AND ISNULL(salesflag, 'N') = 'N'
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteReasonExists
    @ReasonCode VARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.po_txndelreason
        WHERE Delcode = @ReasonCode AND ISNULL(active, 'Y') = 'Y'
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_CategoryExists
    @DivCode VARCHAR(2),
    @CatCode VARCHAR(1)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_cat
        WHERE CATCODE = @CatCode   -- in_cat is global; no DIVCODE column
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_SubCostExists
    @DivCode     VARCHAR(2),
    @SubCostCode NUMERIC(5,0)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_scc
        WHERE DIVCODE = @DivCode AND SCCCODE = @SubCostCode AND active = 'Y'
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

CREATE OR ALTER PROCEDURE dbo.ksp_PR_IsLinkedToEnquiry
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.po_enql
        WHERE divcode = @DivCode AND prno = @PrNo
    ) THEN 1 ELSE 0 END AS [Linked];
END;
GO

-- ─────────────────────────────────────────────────────────────
-- Purchase Requisition — Read
-- ─────────────────────────────────────────────────────────────

-- ksp_PR_GetMaxPrDate
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrDate
    @DivCode VARCHAR(2),
    @YFDate  DATE,
    @YLDate  DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(MAX(prdate), @YFDate) AS MaxPrDate
    FROM   dbo.po_prh
    WHERE  divcode             = @DivCode
      AND  prdate             >= @YFDate
      AND  prdate             <= @YLDate
      AND  ISNULL(cancelflag, '') <> 'Y';
END;
GO

-- ksp_PR_GenerateNumber
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GenerateNumber
    @DivCode VARCHAR(2),
    @FinYear VARCHAR(4)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo NUMERIC(6,0);

    SELECT @NextNo = ISNULL(MAX(prno), 0) + 1
    FROM   dbo.po_prh WITH (UPDLOCK, HOLDLOCK)
    WHERE  divcode = @DivCode
      AND  YEAR(prdate) = TRY_CAST(@FinYear AS INT)
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @NextNo AS NextNumber;
END;
GO

-- ksp_PR_GetAll
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetAll
    @DivCode  VARCHAR(2),
    @PrNo     VARCHAR(20)  = NULL,
    @FromDate DATE         = NULL,
    @ToDate   DATE         = NULL,
    @DepCode  VARCHAR(3)   = NULL,
    @Status   VARCHAR(20)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        0                                                               AS Id,
        h.divcode                                                       AS DivCode,
        h.prno                                                          AS PrNo,
        h.prdate                                                        AS PrDate,
        h.depcode                                                       AS DepCode,
        NULL                                                            AS DepName,
        h.planno                                                        AS PlanNo,
        h.refno                                                         AS RefNo,
        h.REQNAME                                                       AS ReqName,
        CASE
            WHEN ISNULL(h.cancelflag, '') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,     '') = 'Y' THEN 'CONVERTED'
            ELSE 'OPEN'
        END                                                             AS PrStatus,
        h.createdby                                                     AS CreatedBy,
        CASE
            WHEN ISDATE(h.createddt) = 1
            THEN CAST(h.createddt AS DATETIME)
            ELSE NULL
        END                                                             AS CreatedAt,
        COUNT(l.prsno)                                                  AS LineCount
    FROM dbo.po_prh h
    LEFT JOIN dbo.po_prl l
           ON l.divcode = h.divcode
          AND l.prno    = h.prno
          AND l.prdate  = h.prdate
          AND ISNULL(l.AmdFlg, '') <> 'Y'
    WHERE h.divcode = @DivCode
      AND (@PrNo     IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND (@FromDate IS NULL OR h.prdate >= @FromDate)
      AND (@ToDate   IS NULL OR h.prdate <= @ToDate)
      AND (@DepCode  IS NULL OR h.depcode = @DepCode)
      AND (
            @Status IS NULL
            OR (@Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y')
            OR (@Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                     AND ISNULL(h.cancelflag,'') <> 'Y')
            OR (@Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                     AND ISNULL(h.cancelflag,'') <> 'Y')
          )
    GROUP BY
        h.divcode, h.prno, h.prdate, h.depcode, h.REQNAME,
        h.planno, h.refno,
        h.cancelflag, h.APPFLG, h.createdby, h.createddt
    ORDER BY h.prdate DESC, h.prno DESC;
END;
GO

-- ksp_PR_GetPaginated
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetPaginated
    @DivCode    VARCHAR(2),
    @PrNo       VARCHAR(20)  = NULL,
    @StartDate  DATE         = NULL,
    @EndDate    DATE         = NULL,
    @DepCode    VARCHAR(3)   = NULL,
    @ReqName    VARCHAR(10)  = NULL,
    @Status     VARCHAR(20)  = NULL,
    @SearchText VARCHAR(100) = NULL,
    @Page       INT          = 1,
    @PageSize   INT          = 20
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FY_Start DATE, @FY_End DATE;
    DECLARE @Today DATE = CAST(GETDATE() AS DATE);

    IF MONTH(@Today) >= 4
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today),     4, 1),
               @FY_End   = DATEFROMPARTS(YEAR(@Today) + 1, 3, 31);
    ELSE
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today) - 1, 4, 1),
               @FY_End   = DATEFROMPARTS(YEAR(@Today),     3, 31);

    SET @StartDate = ISNULL(@StartDate, @FY_Start);
    SET @EndDate   = ISNULL(@EndDate,   @FY_End);

    SELECT COUNT(DISTINCT CAST(h.prno AS VARCHAR) + CAST(h.prdate AS VARCHAR))
    FROM   dbo.po_prh h
    WHERE  h.divcode = @DivCode
      AND  (@PrNo       IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND  h.prdate >= @StartDate
      AND  h.prdate <= @EndDate
      AND  (@DepCode    IS NULL OR h.depcode = @DepCode)
      AND  (@ReqName    IS NULL OR h.REQNAME = @ReqName)
      AND  (@SearchText IS NULL
            OR CAST(h.prno AS VARCHAR(20))  LIKE '%' + @SearchText + '%'
            OR ISNULL(h.refno,   '')        LIKE '%' + @SearchText + '%'
            OR ISNULL(h.REQNAME, '')        LIKE '%' + @SearchText + '%'
           )
      AND  (
               @Status IS NULL
               OR (@Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
           );

    SELECT
        0            AS Id,
        h.divcode    AS DivCode,
        h.prno       AS PrNo,
        h.prdate     AS PrDate,
        h.depcode    AS DepCode,
        NULL         AS DepName,
        h.planno     AS PlanNo,
        h.refno      AS RefNo,
        h.REQNAME    AS ReqName,
        CASE
            WHEN ISNULL(h.cancelflag,'') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,    '') = 'Y' THEN 'CONVERTED'
            ELSE                                     'OPEN'
        END          AS PrStatus,
        CASE WHEN ISNULL(h.cancelflag,'') = 'Y'
             THEN CAST(1 AS BIT)
             ELSE CAST(0 AS BIT)
        END          AS IsDeleted,
        h.createdby  AS CreatedBy,
        CASE
            WHEN ISDATE(MAX(h.createddt)) = 1 THEN CAST(MAX(h.createddt) AS DATETIME)
            ELSE NULL
        END          AS CreatedAt,
        COUNT(l.prsno) AS LineCount
    FROM   dbo.po_prh h
    LEFT JOIN dbo.po_prl l
           ON l.divcode = h.divcode
          AND l.prno    = h.prno
          AND l.prdate  = h.prdate
          AND ISNULL(l.AmdFlg,'') <> 'Y'
    WHERE  h.divcode = @DivCode
      AND  (@PrNo       IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND  h.prdate >= @StartDate
      AND  h.prdate <= @EndDate
      AND  (@DepCode    IS NULL OR h.depcode = @DepCode)
      AND  (@ReqName    IS NULL OR h.REQNAME = @ReqName)
      AND  (@SearchText IS NULL
            OR CAST(h.prno AS VARCHAR(20))  LIKE '%' + @SearchText + '%'
            OR ISNULL(h.refno,   '')        LIKE '%' + @SearchText + '%'
            OR ISNULL(h.REQNAME, '')        LIKE '%' + @SearchText + '%'
           )
      AND  (
               @Status IS NULL
               OR (@Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
           )
    GROUP BY
        h.divcode, h.prno, h.prdate, h.depcode, h.REQNAME,
        h.planno, h.refno, h.cancelflag, h.APPFLG, h.createdby
    ORDER BY h.prdate DESC, h.prno DESC
    OFFSET  (@Page - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO

-- ksp_PR_GetSummary
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetSummary
    @DivCode    VARCHAR(2),
    @PrNo       VARCHAR(20)  = NULL,
    @StartDate  DATE         = NULL,
    @EndDate    DATE         = NULL,
    @DepCode    VARCHAR(3)   = NULL,
    @ReqName    VARCHAR(10)  = NULL,
    @Status     VARCHAR(20)  = NULL,
    @SearchText VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FY_Start DATE, @FY_End DATE;
    DECLARE @Today DATE = CAST(GETDATE() AS DATE);

    IF MONTH(@Today) >= 4
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today),     4, 1),
               @FY_End   = DATEFROMPARTS(YEAR(@Today) + 1, 3, 31);
    ELSE
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today) - 1, 4, 1),
               @FY_End   = DATEFROMPARTS(YEAR(@Today),     3, 31);

    SET @StartDate = ISNULL(@StartDate, @FY_Start);
    SET @EndDate   = ISNULL(@EndDate,   @FY_End);

    SELECT
        COUNT(*)                                                                        AS TotalCount,
        SUM(CASE WHEN ISNULL(h.cancelflag,'') <> 'Y'
                  AND ISNULL(h.APPFLG,    '') <> 'Y' THEN 1 ELSE 0 END)               AS OpenCount,
        SUM(CASE WHEN ISNULL(h.APPFLG,    '') = 'Y'
                  AND ISNULL(h.cancelflag,'') <> 'Y' THEN 1 ELSE 0 END)               AS ApprovedCount,
        SUM(CASE WHEN ISNULL(h.cancelflag,'') = 'Y'  THEN 1 ELSE 0 END)               AS CancelledCount
    FROM   dbo.po_prh h
    WHERE  h.divcode = @DivCode
      AND  (@PrNo       IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND  h.prdate >= @StartDate
      AND  h.prdate <= @EndDate
      AND  (@DepCode    IS NULL OR h.depcode = @DepCode)
      AND  (@ReqName    IS NULL OR h.REQNAME = @ReqName)
      AND  (@SearchText IS NULL
            OR CAST(h.prno AS VARCHAR(20))  LIKE '%' + @SearchText + '%'
            OR ISNULL(h.refno,   '')        LIKE '%' + @SearchText + '%'
            OR ISNULL(h.REQNAME, '')        LIKE '%' + @SearchText + '%'
           )
      AND  (
               @Status IS NULL
               OR (@Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
           );
END;
GO

-- ksp_PR_GetById
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetById
(
    @DivCode   VARCHAR(2),
    @PrNo      NUMERIC(6,0) = NULL,
    @StartDate DATETIME     = NULL,
    @EndDate   DATETIME     = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        0                                   AS Id,
        h.divcode                           AS DivCode,
        h.prno                              AS PrNo,
        h.prdate                            AS PrDate,
        h.depcode                           AS DepCode,
        d.DEPNAME                           AS DepName,
        h.SECTION                           AS Section,
        CONVERT(VARCHAR(10), h.SubCost)     AS SubCost,
        h.ITYPE                             AS IType,
        ISNULL(e.ename, h.REQNAME)          AS ReqName,
        h.refno                             AS RefNo,
        h.PO_GRP                            AS PoGroupCode,
        h.scopecode                         AS ScopeCode,
        NULL                                AS RequisitionType,
        h.saleorderno                       AS SaleOrderNo,
        h.Saleorderdt                       AS SaleOrderDate,
        CASE
            WHEN ISNULL(h.cancelflag,'') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,'')     = 'Y' THEN 'CONVERTED'
            WHEN EXISTS (
                SELECT 1 FROM dbo.po_prl l2
                WHERE l2.divcode = h.divcode
                  AND l2.prno    = h.prno
                  AND l2.prdate  = h.prdate
                  AND (ISNULL(l2.FirstApp,'')  = 'Y'
                    OR ISNULL(l2.SecondApp,'') = 'Y'
                    OR ISNULL(l2.ThirdApp,'')  = 'Y')
            ) THEN 'APPROVED'
            WHEN NOT EXISTS (
                SELECT 1 FROM dbo.po_prl l3
                WHERE l3.divcode = h.divcode AND l3.prno = h.prno AND l3.prdate = h.prdate
                  AND ISNULL(l3.AmdFlg,'') <> 'Y'
                  AND ISNULL(l3.prstatus,'O') <> 'C'
            ) AND EXISTS (
                SELECT 1 FROM dbo.po_prl l3
                WHERE l3.divcode = h.divcode AND l3.prno = h.prno AND l3.prdate = h.prdate
                  AND ISNULL(l3.AmdFlg,'') <> 'Y'
            ) THEN 'RECEIVED'
            ELSE 'OPEN'
        END                                 AS PrStatus,
        ISNULL(u.user_name, h.createdby)    AS CreatedBy,
        CASE
            WHEN ISDATE(h.createddt) = 1
            THEN CAST(h.createddt AS DATETIME)
            ELSE NULL
        END                                 AS CreatedAt,
        NULL                                AS ModifiedBy,
        NULL                                AS ModifiedAt,
        h.budgetBALAMT                      AS BudgetBalAmt,
        CASE WHEN EXISTS (
            SELECT 1 FROM dbo.po_prl l2
            WHERE l2.divcode = h.divcode
              AND l2.prno    = h.prno
              AND l2.prdate  = h.prdate
              AND (ISNULL(l2.FirstApp,'')  = 'Y'
                OR ISNULL(l2.SecondApp,'') = 'Y'
                OR ISNULL(l2.ThirdApp,'')  = 'Y')
        ) THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS IsApprovalLocked,
        h.APP1                              AS FirstappUser,
        h.APP1DATE                          AS APP1DATE,
        h.APP2                              AS SecondAppUser,
        h.APP2DATE                          AS APP2DATE,
        h.APP3                              AS FinalAppUser,
        h.APP3DATE                          AS APP3DATE
    FROM dbo.po_prh h
    LEFT JOIN pr_emp e
        ON h.REQNAME = e.empno
       AND e.divcode = h.divcode
    LEFT JOIN in_dep d
        ON h.depcode = d.DEPCODE
       AND d.divcode = h.divcode
    LEFT JOIN dbo.PP_PASSWD u
        ON h.createdby = u.user_id
       AND u.divcode   = h.divcode
    WHERE h.divcode = @DivCode
      AND (@PrNo      IS NULL OR h.prno    =  @PrNo)
      AND (@StartDate IS NULL OR h.prdate >= @StartDate)
      AND (@EndDate   IS NULL OR h.prdate <  DATEADD(DAY, 1, @EndDate));

    SELECT
        0                                   AS Id,
        l.divcode                           AS DivCode,
        l.prno                              AS PrNo,
        l.prsno                             AS PrSNo,
        l.itemcode                          AS ItemCode,
        i.ITEMNAME                          AS ItemName,
        i.UOM                               AS Uom,
        l.RATE                              AS Rate,
        l.curstock                          AS CurrentStock,
        l.qtyreqd                           AS QtyRequired,
        l.reqddate                          AS RequiredDate,
        l.PLACE                             AS Place,
        l.APPCOST                           AS ApproxCost,
        l.remarks                           AS Remarks,
        l.macno                             AS MachineNo,
        CONVERT(VARCHAR(5), l.CCCODE)       AS CostCentreCode,
        l.BGRPCODE                          AS BudgetGroupCode,
        CONVERT(VARCHAR(10), l.SubCost)     AS SubCostCode,
        l.LPO_RATE                          AS LastPoRate,
        l.LPO_DATE                          AS LastPoDate,
        l.PUR_FROM                          AS LastPoSupplierCode,
        NULL                                AS LastPoSupplierName,
        i.DRAWNO                            AS DrawNo,
        i.CATLNO                            AS CatNo,
        l.CATCODE                           AS CategoryCode,
        CASE
            WHEN ISNULL(l.Sample,'N') = 'Y' THEN CAST(1 AS BIT)
            ELSE CAST(0 AS BIT)
        END                                 AS IsSample,
        l.DirectApp                         AS DirectApp,
        NULL                                AS Model,
        NULL                                AS MaxCost
    FROM dbo.po_prl l
    INNER JOIN in_item i
        ON l.itemcode = i.itemcode
    WHERE l.divcode = @DivCode
      AND (@PrNo      IS NULL OR l.prno    =  @PrNo)
      AND ISNULL(l.AmdFlg,'') <> 'Y'
      AND (@StartDate IS NULL OR l.prdate >= @StartDate)
      AND (@EndDate   IS NULL OR l.prdate <  DATEADD(DAY, 1, @EndDate))
    ORDER BY l.prno, l.prsno;
END;
GO

-- ksp_PR_GetDeleteReasons
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Delcode    AS ReasonCode,
        Delreason  AS ReasonDesc
    FROM  dbo.po_txndelreason
    WHERE ISNULL(active, 'Y') = 'Y'
    ORDER BY Delcode;
END;
GO

-- ksp_PR_GetItemInfo
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemInfo
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10),
    @YFDate   DATE,
    @PDate    DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BaseRate NUMERIC(15,5) = 0;

    SELECT @BaseRate = ISNULL(RATE, 0)
    FROM   dbo.in_item
    WHERE  ITEMCODE = @ItemCode;

    DECLARE @ReceiptRate NUMERIC(15,5) = NULL;

    SELECT TOP 1
        @ReceiptRate = T.RATE
    FROM dbo.IN_TRNTAIL T
    JOIN dbo.IN_TRNHEAD H
        ON  T.DIVCODE = H.DIVCODE
        AND T.TC      = H.TC
        AND T.DOCNO   = H.DOCNO
    WHERE T.DIVCODE  = @DivCode
      AND T.ITEMCODE = @ItemCode
      AND H.TC       = 1
      AND H.SLCODE   IS NOT NULL
    ORDER BY H.DOCDT DESC, H.DOCNO DESC;

    DECLARE @EffectiveRate NUMERIC(15,5) = ISNULL(@ReceiptRate, @BaseRate);

    DECLARE @OYM VARCHAR(6) = CAST(YEAR(@YFDate) AS VARCHAR(4)) + '00';

    DECLARE @OpeningQty NUMERIC(20,3) = 0;
    SELECT  @OpeningQty = ISNULL(SUM(ISNULL(Quantity, 0)), 0)
    FROM    dbo.IN_IDET
    WHERE   DivCode   = @DivCode
      AND   ItemCode  = @ItemCode
      AND   TC        = 0
      AND   YearMonth = @OYM;

    DECLARE @PeriodQty NUMERIC(20,3) = 0;
    SELECT  @PeriodQty = ISNULL(SUM(
        CASE
            WHEN TC_T.TcType IN (1, 3, 5, 7, 9) THEN  ISNULL(T.QUANTITY, 0)
            WHEN TC_T.TcType IN (2, 4, 6, 8)     THEN -ABS(ISNULL(T.QUANTITY, 0))
            ELSE 0
        END
    ), 0)
    FROM    dbo.IN_TRNTAIL T
    JOIN    dbo.IN_TC TC_T ON T.TC = TC_T.TC
    WHERE   T.DIVCODE  = @DivCode
      AND   T.ITEMCODE = @ItemCode
      AND   T.DOCDT   >= @YFDate
      AND   T.DOCDT   <= @PDate;

    DECLARE @CurrentStock NUMERIC(20,3) = @OpeningQty + @PeriodQty;

    SELECT TOP 1
        @EffectiveRate       AS Rate,
        @CurrentStock        AS CurrentStock,
        L.RATE               AS LastPoRate,
        H.PORDDT             AS LastPoDate,
        H.SLCODE             AS LastPoSupplierCode,
        ISNULL(S.slname, '') AS LastPoSupplierName
    FROM  dbo.po_ordh H
    JOIN  dbo.po_ordl L
        ON  H.DIVCODE = L.DIVCODE
        AND H.PORDNO  = L.PORDNO
        AND H.PORDDT  = L.PORDDT
        AND H.POGRP   = L.POGRP
    LEFT JOIN dbo.fa_slmas S
        ON  H.SLCODE = S.slcode
    WHERE H.DIVCODE  = @DivCode
      AND L.ITEMCODE = @ItemCode
      AND ISNULL(H.CANFLG, '') <> 'Y'
    ORDER BY H.PORDDT DESC, H.PORDNO DESC;

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

-- ksp_PR_GetItemMinLevel
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemMinLevel
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ISNULL(MINLEVEL, 0)
    FROM   dbo.IN_ITEM
    WHERE  ITEMCODE = @ItemCode;  -- IN_ITEM is global; no DIVCODE column
END;
GO

-- ksp_PR_GetItemHistory
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemHistory
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 20
        h.PORDNO                                        AS PoNo,
        h.PORDDT                                        AS PoDate,
        h.SLCODE                                        AS SupplierCode,
        sl.SLNAME                                       AS SupplierName,
        l.RATE                                          AS Rate,
        ISNULL(l.ORDQTY,  0)                            AS OrderQty,
        ISNULL(l.RCVDQTY, 0)                            AS ReceivedQty,
        ISNULL(l.ORDQTY,  0) - ISNULL(l.RCVDQTY, 0)   AS PendingQty
    FROM   dbo.PO_ORDH h
    INNER JOIN dbo.PO_ORDL l
        ON  l.DIVCODE = h.DIVCODE
        AND l.PORDNO  = h.PORDNO
        AND l.PORDDT  = h.PORDDT
        AND l.POGRP   = h.POGRP
    LEFT JOIN dbo.FA_SLMAS sl
        ON  sl.slcode = h.SLCODE
    WHERE  h.DIVCODE             = @DivCode
      AND  l.ITEMCODE            = @ItemCode
      AND  ISNULL(h.CANFLG, 'N') = 'N'
    ORDER BY h.PORDDT DESC;
END;
GO

-- ksp_PR_PendingIndentCheck
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingIndentCheck
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10),
    @DepCode  VARCHAR(3),
    @YFDate   DATE,
    @YLDate   DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PendingQty NUMERIC(12,3) = 0;

    SELECT @PendingQty = ISNULL(SUM(L.ORDQTY - ISNULL(L.RCVDQTY, 0)), 0)
    FROM   dbo.po_ordh H
    JOIN   dbo.po_ordl L
        ON  H.DIVCODE = L.DIVCODE
        AND H.PORDNO  = L.PORDNO
        AND H.PORDDT  = L.PORDDT
        AND H.POGRP   = L.POGRP
    WHERE  H.DIVCODE   = @DivCode
      AND  L.ITEMCODE  = @ItemCode
      AND  H.PORDDT   >= @YFDate
      AND  H.PORDDT   <= @YLDate
      AND  ISNULL(H.CANFLG, '') <> 'Y'
      AND  L.ORDQTY > ISNULL(L.RCVDQTY, 0);

    SELECT
        CASE WHEN @PendingQty > 0 THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS HasPendingIndent,
        @PendingQty AS PendingQty;
END;
GO

-- ksp_PR_PendingPRCheck
CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingPRCheck
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1
        CAST(1 AS BIT)  AS HasPendingPR,
        H.prno          AS PendingPrNo,
        H.prdate        AS PendingPrDate
    FROM dbo.po_prh H
    JOIN dbo.po_prl L
        ON  H.divcode = L.divcode
        AND H.prno    = L.prno
        AND H.prdate  = L.prdate
    WHERE H.divcode  = @DivCode
      AND L.itemcode = @ItemCode
      AND ISNULL(H.cancelflag, '') <> 'Y'
      AND ISNULL(H.APPFLG,     '') <> 'Y'
      AND ISNULL(L.AmdFlg,     '') <> 'Y'
      AND NOT EXISTS (
          SELECT 1
          FROM   dbo.po_ordl OL
          JOIN   dbo.po_ordh OH
              ON  OL.DIVCODE = OH.DIVCODE
              AND OL.PORDNO  = OH.PORDNO
              AND OL.PORDDT  = OH.PORDDT
              AND OL.POGRP   = OH.POGRP
          WHERE  OL.DIVCODE  = @DivCode
            AND  OL.ITEMCODE = @ItemCode
            AND  OL.PRNO     = H.prno
            AND  ISNULL(OH.CANFLG, '') <> 'Y'
      )
    ORDER BY H.prdate DESC, H.prno DESC;

    IF @@ROWCOUNT = 0
        SELECT
            CAST(0 AS BIT) AS HasPendingPR,
            NULL           AS PendingPrNo,
            NULL           AS PendingPrDate;
END;
GO

-- ─────────────────────────────────────────────────────────────
-- Purchase Requisition — Write
-- ─────────────────────────────────────────────────────────────

-- ksp_PR_Insert
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Insert
(
    @DivCode       VARCHAR(2),
    @PrNo          NUMERIC(6,0),
    @PrDate        DATETIME,
    @DepCode       VARCHAR(10),
    @Section       VARCHAR(20)  = NULL,
    @SubCost       NUMERIC(5,0) = NULL,
    @IType         VARCHAR(2)   = NULL,
    @ReqName       VARCHAR(10)  = NULL,
    @RefNo         VARCHAR(20)  = NULL,
    @PoGrp         VARCHAR(5)   = NULL,
    @ScopeCode     VARCHAR(2)   = NULL,
    @SaleOrderNo   VARCHAR(25)  = NULL,
    @SaleOrderDate DATETIME     = NULL,
    @CreatedBy     VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh
    (
        divcode, prno, prdate, depcode, SECTION, SubCost, ITYPE, REQNAME,
        refno, PO_GRP, scopecode, saleorderno, Saleorderdt,
        userId, createdby, createddt, Planno, amendno
    )
    VALUES
    (
        @DivCode, @PrNo, @PrDate, @DepCode, @Section, @SubCost, LEFT(@IType, 1), @ReqName,
        @RefNo, @PoGrp, @ScopeCode, @SaleOrderNo, @SaleOrderDate,
        @CreatedBy, @CreatedBy, CONVERT(VARCHAR(25), GETDATE(), 120), 0, 0
    );
END
GO

-- ksp_PR_InsertLine
CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertLine
    @DivCode          VARCHAR(2),
    @PrNo             NUMERIC(6,0),
    @PrSNo            NUMERIC(5,0),
    @ItemCode         VARCHAR(10),
    @ItemName         VARCHAR(200)  = NULL,
    @Uom              VARCHAR(3)    = NULL,
    @Rate             NUMERIC(13,4) = NULL,
    @CurrentStock     NUMERIC(12,3) = NULL,
    @QtyRequired      NUMERIC(12,3),
    @RequiredDate     DATETIME      = NULL,
    @Place            VARCHAR(40)   = NULL,
    @ApproxCost       NUMERIC(11,2) = NULL,
    @Remarks          VARCHAR(50)   = NULL,
    @MachineNo        VARCHAR(5)    = NULL,
    @CostCentreCode   VARCHAR(5)    = NULL,
    @BudgetGroupCode  VARCHAR(4)    = NULL,
    @SubCostCode      NUMERIC(5,0)  = NULL,
    @LastPoRate       NUMERIC(13,4) = NULL,
    @LastPoDate       DATETIME      = NULL,
    @LastPoSupplierCode VARCHAR(8)  = NULL,
    @LastPoSupplierName VARCHAR(100) = NULL,
    @IsSample         BIT,
    @Model            VARCHAR(100)  = NULL,
    @MaxCost          NUMERIC(11,2) = NULL,
    @CatCode          VARCHAR(1)    = NULL,
    @DrawNo           VARCHAR(25)   = NULL,   -- accepted but not stored (derived from IN_ITEM)
    @CatNo            VARCHAR(25)   = NULL    -- accepted but not stored (derived from IN_ITEM)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
    BEGIN
        RAISERROR('PR header not found for divcode=%s, prno=%d', 16, 1, @DivCode, @PrNo);
        RETURN;
    END;

    INSERT INTO dbo.po_prl
    (
        divcode, prno, prdate, prsno, itemcode, macno, qtyreqd, reqddate,
        prstatus, remarks, CCCODE, RATE, APPCOST, BGRPCODE, PLACE,
        curstock, LPO_RATE, LPO_DATE, PUR_FROM, Sample, SubCost, ITEMMEMO,
        CATCODE
    )
    VALUES
    (
        @DivCode, @PrNo, @PrDate, @PrSNo, @ItemCode, @MachineNo, @QtyRequired, @RequiredDate,
        'O', @Remarks, TRY_CAST(@CostCentreCode AS NUMERIC(4,0)), @Rate, @ApproxCost,
        @BudgetGroupCode, @Place, @CurrentStock, @LastPoRate, @LastPoDate,
        @LastPoSupplierCode, CASE WHEN @IsSample = 1 THEN 'Y' ELSE 'N' END,
        @SubCostCode, @ItemName, @CatCode
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
GO

-- ksp_PR_Update
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Update
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @DepCode      VARCHAR(3),
    @DepName      VARCHAR(30)  = NULL,
    @Section      VARCHAR(20)  = NULL,
    @SubCost      NUMERIC(5,0) = NULL,
    @IType        VARCHAR(2)   = NULL,
    @RequisitionType VARCHAR(20) = NULL,
    @ReqName      VARCHAR(10)  = NULL,
    @RefNo        VARCHAR(20)  = NULL,
    @PoGrp        VARCHAR(5)   = NULL,
    @ScopeCode    VARCHAR(2)   = NULL,
    @SaleOrderNo  VARCHAR(25)  = NULL,
    @SaleOrderDate DATETIME    = NULL,
    @ModifiedBy   VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh
    SET    depcode      = @DepCode,
           SECTION      = @Section,
           SubCost      = @SubCost,
           ITYPE        = LEFT(@IType, 1),
           REQNAME      = @ReqName,
           refno        = @RefNo,
           PO_GRP       = @PoGrp,
           scopecode    = @ScopeCode,
           saleorderno  = @SaleOrderNo,
           Saleorderdt  = @SaleOrderDate,
           userId       = @ModifiedBy
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
GO

-- ksp_PR_SoftDeleteLines
CREATE OR ALTER PROCEDURE dbo.ksp_PR_SoftDeleteLines
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
        RETURN;

    UPDATE dbo.po_prl
    SET    AmdFlg = 'Y'
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  ISNULL(AmdFlg, '') <> 'Y';
END;
GO

-- ksp_PR_GetMaxPrSNo
CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrSNo
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ISNULL(MAX(prsno), 0)
    FROM   dbo.po_prl
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;
END;
GO

-- ksp_PR_Delete
CREATE OR ALTER PROCEDURE dbo.ksp_PR_Delete
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @DeleteReason VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
    BEGIN
        SELECT 0;
        RETURN;
    END;

    UPDATE dbo.po_prl
    SET    AmdFlg = 'Y'
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  ISNULL(AmdFlg, '') <> 'Y';

    UPDATE dbo.po_prh
    SET    cancelflag = 'Y',
           canceldt   = GETDATE(),
           canreason  = @DeleteReason
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
GO

-- ksp_PR_DeleteLine
CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteLine
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrSNo        NUMERIC(5,0),
    @DeleteReason VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
    BEGIN
        SELECT 0;
        RETURN;
    END;

    UPDATE dbo.po_prl
    SET    AmdFlg       = 'Y',
           deletereason = @DeleteReason
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  prsno   = @PrSNo
      AND  ISNULL(AmdFlg, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
GO

-- ksp_PR_InsertAuditLog
CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertAuditLog
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrDate       DATE,
    @DepCode      VARCHAR(3),
    @ReqName      VARCHAR(100)   = NULL,
    @SubCost      NUMERIC(5,0)   = NULL,
    @UserId       VARCHAR(50),
    @UserName     VARCHAR(100),
    @PrSNo        NUMERIC(5,0),
    @ItemCode     VARCHAR(10),
    @MachineNo    VARCHAR(5)     = NULL,
    @Rate         NUMERIC(13,4)  = NULL,
    @Quantity     NUMERIC(12,3),
    @TransMod     VARCHAR(10),
    @TransIPAddr  VARCHAR(50)    = NULL,
    @TransHost    VARCHAR(100)   = NULL,
    @LastPoRate   NUMERIC(13,4)  = NULL,
    @LastPoDate   DATE           = NULL,
    @LastPoSlCode VARCHAR(8)     = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.LogDet_PO
    (
        DivCode, PrNo, PrDate, DepCode, ReqName, Trans_UserId, SubCost,
        PrSNo, ItemCode, MacNo, Rate, Quantity, UserName,
        Trans_Date, Trans_Name, Trans_Mod, Trans_Host
    )
    VALUES
    (
        @DivCode, @PrNo, @PrDate, @DepCode, @ReqName, @UserId, @SubCost,
        @PrSNo, @ItemCode, @MachineNo, @Rate, @Quantity, @UserName,
        GETDATE(), 'Purchase Requisition', @TransMod, @TransHost
    );
END;
GO

-- ─────────────────────────────────────────────────────────────
-- Purchase Reports
-- ─────────────────────────────────────────────────────────────

-- ksp_PO_RequisitionReport_DateWise
CREATE OR ALTER PROCEDURE dbo.ksp_PO_RequisitionReport_DateWise
(
    @DivCode   VARCHAR(2),
    @StartDate DATE,
    @EndDate   DATE
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.prdate                    AS PrDate,
        l.prno                      AS PrNo,
        l.itemcode                  AS ItemCode,
        i.ITEMNAME                  AS ItemName,
        i.UOM                       AS Uom,
        l.qtyreqd                   AS QtyRequired,
        l.qtyord                    AS QtyOrdered,
        l.qtyrec                    AS QtyReceived,
        l.prstatus                  AS PrStatus,
        d.DEPNAME                   AS DepName,
        dm.DIVNAME                  AS DivName,
        l.qtyind                    AS QtyIndented,
        dm.DIV_UNITNAME             AS DivUnitName,
        dm.DIV_PRINTNAME            AS DivPrintName,
        h.saleorderno               AS SaleOrderNo,
        h.saletype                  AS SaleType
    FROM       dbo.PO_PRH  h
    INNER JOIN dbo.PO_PRL  l   ON  h.divcode = l.divcode
                               AND h.prno    = l.prno
                               AND h.prdate  = l.prdate
    LEFT  JOIN dbo.IN_DEP  d   ON  h.depcode = d.DEPCODE
                               AND h.divcode = d.divcode
    INNER JOIN dbo.PP_DIVMAS dm ON h.divcode = dm.DIVCODE
    INNER JOIN dbo.IN_ITEM   i  ON l.itemcode = i.ITEMCODE
    WHERE h.divcode  = @DivCode
      AND h.prdate  >= @StartDate
      AND h.prdate  <= @EndDate
    ORDER BY h.prdate, l.prno, l.itemcode;
END;
GO

-- ─────────────────────────────────────────────────────────────
-- Inventory
-- ─────────────────────────────────────────────────────────────

-- ksp_Stock_GetCurrentStock
CREATE OR ALTER PROCEDURE dbo.ksp_Stock_GetCurrentStock
    @DivCode        VARCHAR(10),
    @ItemCode       VARCHAR(20),
    @YFDate         DATE,
    @EndDate        DATE,
    @OYM            VARCHAR(6),
    @GodCode        VARCHAR(10) = NULL,
    @IncludeType12  BIT         = 1,
    @IncludeType11  BIT         = 1
AS
SET NOCOUNT ON;

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
        SELECT ITEMCODE,
            SUM(ISNULL(QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC,
            0 AS REC, 0 AS ISS,
            SUM(ISNULL(VALUE,0)) AS ALLRECval, 0 AS ALLISSval,
            0 AS TOTQCval, 0 AS RECval, 0 AS ISSval, GODCODE
        FROM IN_IDET
        WHERE DIVCODE=@DivCode AND YEARMONTH=@OYM AND TC=0
        GROUP BY ITEMCODE, GODCODE
        UNION ALL
        SELECT A.ITEMCODE,
            SUM(ISNULL(A.QUANTITY,0)) AS ALLREC, 0, 0,
            SUM(ISNULL(A.QUANTITY,0)), 0,
            SUM(ISNULL(A.VALUE,0)), 0, 0, SUM(ISNULL(A.VALUE,0)), 0, A.GODCODE
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
          AND (T.TCTYPE IN (1,3,5,7,9) OR (@IncludeType12=1 AND T.TCTYPE=12))
        GROUP BY A.ITEMCODE, A.GODCODE
        UNION ALL
        SELECT A.ITEMCODE,
            0, SUM(ABS(ISNULL(A.QUANTITY,0))), 0,
            0, SUM(ABS(ISNULL(A.QUANTITY,0))),
            0, SUM(ABS(ISNULL(A.VALUE,0))), 0, 0, SUM(ABS(ISNULL(A.VALUE,0))), A.GODCODE
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
          AND (T.TCTYPE IN (2,4,6,8) OR (@IncludeType11=1 AND T.TCTYPE=11))
        GROUP BY A.ITEMCODE, A.GODCODE
        UNION ALL
        SELECT A.ITEMCODE,
            0, 0,
            SUM(ABS(ISNULL(A.QCRECDQTY,0)))-SUM(ABS(ISNULL(A.REJQTY,0)))-SUM(ABS(ISNULL(A.QUANTITY,0))),
            0, 0, 0, 0, SUM(ABS(ISNULL(A.VALUE,0))), 0, 0, A.GODCODE
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND T.TCTYPE=1 AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
        GROUP BY A.ITEMCODE, A.GODCODE
    ) AS X
    JOIN in_item i ON X.ITEMCODE=i.ITEMCODE
    WHERE X.ITEMCODE=@ItemCode AND X.GODCODE=@GodCode
    GROUP BY X.ITEMCODE, i.ITEMNAME, i.UOM, X.GODCODE
    HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS)<>0 OR SUM(X.REC)<>0
        OR SUM(X.ISS)<>0 OR SUM(X.ALLREC-X.ALLISS)<>0 OR SUM(X.TOTQC)<0
    ORDER BY X.ITEMCODE;
END
ELSE
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
        SELECT ITEMCODE,
            SUM(ISNULL(QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC,
            0 AS REC, 0 AS ISS,
            SUM(ISNULL(VALUE,0)) AS ALLRECval, 0 AS ALLISSval,
            0 AS TOTQCval, 0 AS RECval, 0 AS ISSval
        FROM IN_IDET
        WHERE DIVCODE=@DivCode AND YEARMONTH=@OYM AND TC=0
        GROUP BY ITEMCODE
        UNION ALL
        SELECT A.ITEMCODE,
            SUM(ISNULL(A.QUANTITY,0)), 0, 0,
            SUM(ISNULL(A.QUANTITY,0)), 0,
            SUM(ISNULL(A.VALUE,0)), 0, 0, SUM(ISNULL(A.VALUE,0)), 0
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
          AND (T.TCTYPE IN (1,3,5,7,9) OR (@IncludeType12=1 AND T.TCTYPE=12))
        GROUP BY A.ITEMCODE
        UNION ALL
        SELECT A.ITEMCODE,
            0, SUM(ABS(ISNULL(A.QUANTITY,0))), 0,
            0, SUM(ABS(ISNULL(A.QUANTITY,0))),
            0, SUM(ABS(ISNULL(A.VALUE,0))), 0, 0, SUM(ABS(ISNULL(A.VALUE,0)))
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
          AND (T.TCTYPE IN (2,4,6,8) OR (@IncludeType11=1 AND T.TCTYPE=11))
        GROUP BY A.ITEMCODE
        UNION ALL
        SELECT A.ITEMCODE,
            0, 0,
            SUM(ABS(ISNULL(A.QCRECDQTY,0)))-SUM(ABS(ISNULL(A.REJQTY,0)))-SUM(ABS(ISNULL(A.QUANTITY,0))),
            0, 0, 0, 0, SUM(ABS(ISNULL(A.VALUE,0))), 0, 0
        FROM IN_TRNTAIL A JOIN IN_TC T ON A.TC=T.TC
        WHERE A.DIVCODE=@DivCode AND T.TCTYPE=1 AND A.DOCDT>=@YFDate AND A.DOCDT<=@EndDate
        GROUP BY A.ITEMCODE
    ) AS X
    JOIN in_item i ON X.ITEMCODE=i.ITEMCODE
    WHERE X.ITEMCODE=@ItemCode
    GROUP BY X.ITEMCODE, i.ITEMNAME, i.UOM
    HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS)<>0 OR SUM(X.REC)<>0
        OR SUM(X.ISS)<>0 OR SUM(X.ALLREC-X.ALLISS)<>0 OR SUM(X.TOTQC)<0
    ORDER BY X.ITEMCODE;
END
GO

-- =============================================================
-- End of merged script — 34 stored procedures
-- =============================================================
GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_Delete.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Delete
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @DeleteReasonCode VARCHAR(4),
    @DeletedBy       VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Step 0: Block if first approval has commenced
    IF EXISTS (
        SELECT 1 FROM dbo.RM_CONT
        WHERE  CONTNO = @ContNo AND CONTDT = @ContDt AND DIVCODE = @DivCode
          AND  ISNULL(FIRST_APPFLG, 'N') = 'Y'
    )
    BEGIN
        SELECT -1 AS Result, 'PO cannot be deleted after approval has commenced.' AS Message;
        RETURN;
    END

    -- Step 1: Block if any arrival exists
    IF EXISTS (
        SELECT 1 FROM dbo.RM_ARRIVAL
        WHERE  CONTNO = @ContNo AND CONTDT = @ContDt AND DIVCODE = @DivCode
    )
    BEGIN
        SELECT -2 AS Result, 'Arrival started, Deletion not Allowed' AS Message;
        RETURN;
    END

    -- Step 2: Validate delete reason exists
    IF NOT EXISTS (SELECT 1 FROM dbo.RM_DelReason WHERE Code = @DeleteReasonCode)
    BEGIN
        SELECT -3 AS Result, 'Invalid delete reason code.' AS Message;
        RETURN;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Step 3: Audit log (write DelReason to RM_Trans_Log — IST-8 confirmed)
        INSERT INTO dbo.RM_Trans_Log
        (Divcode, Trans_Name, Trans_Mod, Trans_UserId, Trans_date, ContNo, Contdt, DelReason)
        SELECT
            @DivCode,
            'RMI Purchase Order',
            'DELETE',
            @DeletedBy,
            GETDATE(),
            TRY_CAST(@ContNo AS NUMERIC(10,0)),
            @ContDt,
            @DeleteReasonCode
        WHERE TRY_CAST(@ContNo AS NUMERIC(10,0)) IS NOT NULL;

        -- Step 4: Delete cascade
        DELETE FROM dbo.RM_CONT_SLOTNO
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;

        DELETE FROM dbo.rm_delsched
        WHERE  contno   = @ContNo
          AND  CONTDATE = @ContDt
          AND  Divcode  = @DivCode;

        DELETE FROM dbo.RM_ContDiscntRate
        WHERE  ContNo  = TRY_CAST(@ContNo AS NUMERIC)
          AND  Contdt  = @ContDt
          AND  Divcode = @DivCode;

        DELETE FROM dbo.RM_CONT
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;

        COMMIT TRANSACTION;

        SELECT 1 AS Result, 'Record(s) Deleted' AS Message;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        SELECT -99 AS Result, ERROR_MESSAGE() AS Message;
    END CATCH
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_FilterPRLines.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_FilterPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT       = 1,
    @SupplierCode VARCHAR(10)   = NULL,
    @Plant        VARCHAR(8)    = NULL,
    @Indent       VARCHAR(20)   = NULL,
    @ItemCode     VARCHAR(10)   = NULL,
    @ItemName     VARCHAR(250)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MasterEntryFlg VARCHAR(1);
    SELECT @MasterEntryFlg = ISNULL(MasterEntryFlg, 'N') FROM dbo.RM_PARAM;

    SELECT
        l.prno                                      AS PrNo,
        l.prdate                                    AS PrDate,
        l.varcode                                   AS VarCode,
        v.VARNAME                                   AS VarName,
        ISNULL(l.Packtype, '')                      AS PackType,
        ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) AS BalanceQty,
        ISNULL(l.qtyindKG,0) - ISNULL(l.qtyordKG,0) AS BalanceKgs,
        l.prsno                                     AS PrSNo,
        ISNULL(e.ename, '')                         AS RequisitionerName,
        ms.docno                                    AS MasterDocNo,
        ms.DocSno                                   AS MasterDocSno,
        ISNULL(ms.CandyRate, 0)                     AS CandyRate
    FROM dbo.Rm_PRL l
    INNER JOIN dbo.RM_prh h  ON h.divcode = l.divcode
                             AND h.prno    = l.prno
                             AND h.prdate  = l.prdate
    INNER JOIN dbo.rm_var v  ON v.VARCODE  = l.varcode
    LEFT JOIN  dbo.pr_emp e  ON e.empno    = h.REQNAME
                             AND e.divcode  = l.divcode
    LEFT JOIN  dbo.RM_FibreRate ms
                             ON ms.Supcd   = @SupplierCode
                             AND ms.varcode = l.varcode
                             AND ISNULL(@Plant,'') <> '' AND ms.plant = @Plant
                             AND ISNULL(ms.appflg,'N') = 'Y'
                             AND ms.Effdate = (
                                 SELECT MAX(r.Effdate)
                                 FROM   dbo.RM_FibreRate r
                                 WHERE  r.Supcd   = @SupplierCode
                                   AND  r.varcode  = l.varcode
                                   AND  ISNULL(@Plant,'') <> '' AND r.plant = @Plant
                                   AND  ISNULL(r.appflg,'N') = 'Y'
                             )
    WHERE l.divcode = @DivCode
      AND l.prdate  <= @ContDt
      AND ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) > 0
      AND ISNULL(l.qtyord,  0) - ISNULL(l.qtyrec, 0) >= 0
      AND (@Indent   IS NULL OR CAST(l.prno AS VARCHAR) LIKE '%' + @Indent   + '%')
      AND (@ItemCode IS NULL OR l.varcode               LIKE '%' + @ItemCode + '%')
      AND (@ItemName IS NULL OR v.VARNAME               LIKE '%' + @ItemName + '%')
      AND (
          (@MasterEntryFlg = 'Y' AND ms.varcode IS NOT NULL)
          OR
          (@MasterEntryFlg <> 'Y' AND ms.varcode IS NULL)
          OR
          (@SupplierCode IS NULL)
      )
    ORDER BY
        CASE WHEN @SortBy = 2 THEN l.varcode ELSE '' END,
        l.prno,
        l.prdate,
        l.prsno;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GenerateNumber.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GenerateNumber
    @DivCode          VARCHAR(2),
    @FYStart          DATE,
    @FYEnd            DATE,
    @CentralizedOrder VARCHAR(1) = 'N'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo   NUMERIC(5,0);
    DECLARE @MaxNo    NUMERIC(5,0);
    DECLARE @MaxStr   VARCHAR(10);

    IF ISNULL(@CentralizedOrder, 'N') = 'Y'
    BEGIN
        -- Global sequence across all divisions (prefix 'C')
        SELECT @MaxStr = MAX(
            CASE WHEN ISNUMERIC(REPLACE(REPLACE(CONTNO,'C',''),'-','')) = 1
                 THEN REPLACE(REPLACE(CONTNO,'C',''),'-','')
                 ELSE '0' END)
        FROM dbo.RM_CONT WITH (UPDLOCK, HOLDLOCK)
        WHERE CONTDT >= @FYStart
          AND CONTDT <= @FYEnd;
    END
    ELSE
    BEGIN
        -- Per-division sequence
        SELECT @MaxStr = MAX(
            CASE WHEN ISNUMERIC(CONTNO) = 1 THEN CONTNO ELSE '0' END)
        FROM dbo.RM_CONT WITH (UPDLOCK, HOLDLOCK)
        WHERE DIVCODE = @DivCode
          AND CONTDT  >= @FYStart
          AND CONTDT  <= @FYEnd;
    END

    SET @NextNo = ISNULL(TRY_CAST(@MaxStr AS NUMERIC(5,0)), 0) + 1;

    SELECT @NextNo AS NextContNo;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetApprovalStatus.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetApprovalStatus
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- PO approval flags
    SELECT DISTINCT
        ISNULL(c.FIRST_APPFLG, 'N') AS FirstAppFlg,
        ISNULL(c.APPFLG,       'N') AS AppFlg,
        ISNULL(c.fappflg,      'N') AS FinalAppFlg,
        c.APPUSERID                  AS AppUserId,
        c.APPDATE                    AS AppDate,
        c.FIRST_APPUSERID            AS FirstAppUserId,
        c.FIRST_APPDATE              AS FirstAppDate
    FROM dbo.RM_CONT c
    WHERE c.CONTNO  = @ContNo
      AND c.CONTDT  = @ContDt
      AND c.DIVCODE = @DivCode;

    -- Approval config for this division
    SELECT
        p.AppSno,
        p.AppLevelId,
        p.AppLevelName,
        p.AppUserId,
        p.AppUserName,
        p.AppUserPrintName,
        p.AppDesignation,
        p.AppLevel,
        p.AppActiveFlg,
        p.imagePath
    FROM dbo.PO_ParaPOApproval p
    WHERE p.divcode = @DivCode
      AND ISNULL(p.AppActiveFlg, 'Y') = 'Y'
    ORDER BY p.AppSno;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetById.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetById
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Result 1: PO variety lines (all RM_CONT rows for this PO)
    SELECT
        c.CONTNO         AS ContNo,
        c.CONTDT         AS ContDt,
        c.DIVCODE        AS DivCode,
        c.SUPCD          AS SupplierCode,
        s.slname         AS SupplierName,
        c.BRKCD          AS AgentCode,
        c.AREACODE       AS AreaCode,
        a.AREANAME       AS AreaName,
        a.STATION        AS Station,
        a.STATE          AS State,
        c.VARCODE        AS VarCode,
        v.VARNAME        AS VarName,
        c.CNTCODE        AS CountryCode,
        c.BBFLAG         AS BBFlag,
        c.ORDQTY         AS OrdQty,
        c.ORDKGS         AS OrdKgs,
        c.CANDYRATE      AS CandyRate,
        c.RATEKG         AS RateKg,
        c.PAYMODE        AS PayMode,
        c.DLYTYPE        AS DlyType,
        c.im_ind         AS ImInd,
        c.arrivaltype    AS ArrivalType,
        c.duedate        AS DueDate,
        c.CROPYEAR       AS CropYear,
        c.acceptance     AS Acceptance,
        c.PTY_CONTNO     AS PtyContNo,
        c.PLOTNO         AS PlotNo,
        c.Prno           AS WosamplePrNo,
        c.pressmarkno    AS PressMarkNo,
        c.rateunit       AS RateUnit,
        c.remarks        AS Remarks,
        c.deladd         AS DeliveryAddCode,
        c.billadd        AS BillingAddCode,
        c.contperson     AS ContactPerson,
        c.SEASON         AS Season,
        c.MILLREFNO      AS MillRefNo,
        c.CASHDISPER     AS CashDisPer,
        c.TRADEDISPER    AS TradeDisPer,
        c.CESSPER        AS CessPer,
        c.INSPER         AS InsPer,
        c.TAX_CODE       AS TaxCode,
        c.TAX_CHOICE     AS TaxChoice,
        c.CREDITDAYS     AS CreditDays,
        c.INTERESTPER    AS InterestPer,
        c.SUPPLIERLOTNOFROM AS SupplierLotFrom,
        c.SUPPLIERLOTNOTO   AS SupplierLotTo,
        c.FinalWeighment AS FinalWeighment,
        c.NONRECIEVELOT  AS NonRecieveLot,
        c.SAMPLEFLG      AS SampleFlg,
        c.CommPer        AS CommPer,
        c.Terms1         AS Terms1,
        c.Terms1Days     AS Terms1Days,
        c.Terms2         AS Terms2,
        c.Terms2Days     AS Terms2Days,
        c.TransPort      AS Transport,
        c.IPRNO          AS IPrNo,
        c.PRDATE         AS PrDate,
        c.PRSNO          AS PrSNo,
        c.FIRST_APPFLG   AS FirstAppFlg,
        c.APPFLG         AS AppFlg,
        c.APPUSERID      AS AppUserId,
        c.APPDATE        AS AppDate,
        c.CurrCode       AS CurrCode,
        c.DeliveryTerms  AS DeliveryTerms,
        c.HSN            AS HSN,
        c.cgstper        AS CgstPer,
        c.sgstper        AS SgstPer,
        c.igstper        AS IgstPer,
        c.FTAmt          AS FTAmt,
        c.FTFlg          AS FTFlg,
        c.prepDate       AS PrepDate,
        c.SusCatType     AS SusCatType,
        c.paycode        AS PayCode,
        c.Line_No        AS LineNo,
        c.PlCode         AS PlCode,
        c.SupFileName    AS SupFileName,
        c.TCS_PER        AS TcsPer,
        c.Grade          AS Grade,
        c.STAPLE         AS Staple,
        c.MIC            AS Micronaire,
        c.Strength       AS Strength,
        c.Moisture       AS Moisture,
        c.Trash          AS Trash,
        c.No_of_Load     AS NoOfLoad,
        c.MSDocno        AS MSDocNo,
        c.MSDocsno       AS MSDocSno,
        c.freightperbale AS FreightPerBale,
        c.Prepared_by    AS PreparedBy,
        c.CancelFlg      AS CancelFlg,
        c.CANCELDT       AS CancelDt,
        c.Mod_dt         AS ModDt,
        c.Mod_UserId     AS ModUserId,
        c.Amdnos         AS AmdNos
    FROM   dbo.RM_CONT c
    LEFT JOIN dbo.fa_slmas s ON c.SUPCD = s.slcode
    LEFT JOIN dbo.rm_area  a ON c.AREACODE = a.AREACODE
    LEFT JOIN dbo.rm_var   v ON c.VARCODE  = v.VARCODE
    WHERE  c.CONTNO  = @ContNo
      AND  c.CONTDT  = @ContDt
      AND  c.DIVCODE = @DivCode
    ORDER BY c.VARCODE;

    -- Result 2: Delivery schedule
    SELECT
        d.contno    AS ContNo,
        d.CONTDATE  AS ContDt,
        d.Divcode   AS DivCode,
        d.deldate   AS DelDate,
        d.qty       AS Qty,
        d.DELADD    AS DelAdd,
        d.VARCODE   AS VarCode,
        d.INSTRUCTION AS Instruction
    FROM   dbo.rm_delsched d
    WHERE  d.contno   = @ContNo
      AND  d.CONTDATE = @ContDt
      AND  d.Divcode  = @DivCode
    ORDER BY d.deldate;

    -- Result 3: Discount rates
    SELECT
        r.ContNo    AS ContNo,
        r.Contdt    AS ContDt,
        r.Divcode   AS DivCode,
        r.Varcode   AS VarCode,
        r.DType     AS DType,
        r.DRate     AS DRate,
        r.Docno     AS Docno,
        r.DocSno    AS DocSno
    FROM   dbo.RM_ContDiscntRate r
    WHERE  r.ContNo  = CAST(@ContNo AS NUMERIC)
      AND  r.Contdt  = @ContDt
      AND  r.Divcode = @DivCode
    ORDER BY r.DType;

    -- Result 4: Approval status from PO_ParaPOApproval config
    SELECT
        p.AppSno,
        p.AppLevelId,
        p.AppLevelName,
        p.AppUserId,
        p.AppUserName,
        p.AppUserPrintName,
        p.AppDesignation,
        p.AppLevel,
        p.AppActiveFlg,
        p.imagePath
    FROM   dbo.PO_ParaPOApproval p
    WHERE  p.divcode = @DivCode
      AND  ISNULL(p.AppActiveFlg,'Y') = 'Y'
    ORDER BY p.AppSno;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetDefaultCurrency.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDefaultCurrency
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(CurrCode, '') AS CurrCode
    FROM   dbo.PO_PARA
    WHERE  divcode = @DivCode;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetDeleteReasons.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Code, Description
    FROM   dbo.RM_DelReason
    ORDER  BY Code;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetGSTConfig.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetGSTConfig
    @SupplierCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        s.slcode                             AS SupplierCode,
        s.slname                             AS SupplierName,
        ISNULL(s.gststatecode, '0')          AS GSTStateCode,
        ISNULL(s.gstinno,      '0')          AS GSTINNO,
        ISNULL(s.supptype,     'R')          AS SuppType,
        -- Foreign supplier: supptype = 'F'; same/different state determines CGST vs IGST
        CASE
            WHEN ISNULL(s.supptype, 'R') = 'F' THEN 'FOREIGN'
            WHEN ISNULL(s.gststatecode,'0') = '0' THEN 'UNREGISTERED'
            ELSE 'REGISTERED'
        END                                  AS SupplierCategory
    FROM dbo.fa_slmas s
    WHERE s.slcode = @SupplierCode;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetPaginated.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPaginated
    @DivCode      VARCHAR(2),
    @Page         INT           = 1,
    @PageSize     INT           = 20,
    @SearchText   VARCHAR(100)  = NULL,
    @FromDate     DATE          = NULL,
    @ToDate       DATE          = NULL,
    @SupplierCode VARCHAR(10)   = NULL,
    @FYStart      DATE          = NULL,
    @FYEnd        DATE          = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Default to current financial year when not supplied
    DECLARE @Today DATE = CAST(GETDATE() AS DATE);
    IF @FYStart IS NULL OR @FYEnd IS NULL
    BEGIN
        IF MONTH(@Today) >= 4
        BEGIN
            SET @FYStart = DATEFROMPARTS(YEAR(@Today),     4, 1);
            SET @FYEnd   = DATEFROMPARTS(YEAR(@Today) + 1, 3, 31);
        END
        ELSE
        BEGIN
            SET @FYStart = DATEFROMPARTS(YEAR(@Today) - 1, 4, 1);
            SET @FYEnd   = DATEFROMPARTS(YEAR(@Today),     3, 31);
        END
    END

    SET @FromDate = ISNULL(@FromDate, @FYStart);
    SET @ToDate   = ISNULL(@ToDate,   @FYEnd);

    -- Result 1: total count (distinct POs — contno+contdt uniquely identify a PO)
    SELECT COUNT(DISTINCT c.CONTNO + CONVERT(VARCHAR(10), c.CONTDT, 120))
    FROM   dbo.RM_CONT c
    WHERE  c.DIVCODE = @DivCode
      AND  c.CONTDT  >= @FromDate
      AND  c.CONTDT  <= @ToDate
      AND  (@SupplierCode IS NULL OR c.SUPCD = @SupplierCode)
      AND  (@SearchText IS NULL
            OR c.CONTNO LIKE '%' + @SearchText + '%'
            OR ISNULL(c.SUPCD,'') LIKE '%' + @SearchText + '%');

    -- Result 2: paged rows (one row per unique PO)
    WITH POHeaders AS
    (
        SELECT
            c.CONTNO,
            c.CONTDT,
            c.DIVCODE,
            MIN(c.SUPCD)          AS SupplierCode,
            MIN(s.slname)         AS SupplierName,
            COUNT(c.VARCODE)      AS VarietyCount,
            MIN(c.FIRST_APPFLG)   AS FirstAppFlg,
            MIN(c.APPFLG)         AS AppFlg,
            MIN(c.CancelFlg)      AS CancelFlg,
            MIN(c.PAYMODE)        AS PayMode,
            MIN(c.CurrCode)       AS CurrCode,
            MIN(c.arrivaltype)    AS ArrivalType,
            MIN(c.Prepared_by)    AS PreparedBy,
            MIN(c.prepDate)       AS PrepDate,
            MIN(c.IPRNO)          AS IprNo,
            ROW_NUMBER() OVER (ORDER BY c.CONTDT DESC, c.CONTNO DESC) AS RowNum
        FROM   dbo.RM_CONT c
        LEFT JOIN dbo.fa_slmas s ON c.SUPCD = s.slcode
        WHERE  c.DIVCODE = @DivCode
          AND  c.CONTDT  >= @FromDate
          AND  c.CONTDT  <= @ToDate
          AND  (@SupplierCode IS NULL OR c.SUPCD = @SupplierCode)
          AND  (@SearchText IS NULL
                OR c.CONTNO LIKE '%' + @SearchText + '%'
                OR ISNULL(c.SUPCD,'') LIKE '%' + @SearchText + '%')
        GROUP BY c.CONTNO, c.CONTDT, c.DIVCODE
    )
    SELECT
        CONTNO          AS ContNo,
        CONTDT          AS ContDt,
        DIVCODE         AS DivCode,
        SupplierCode,
        SupplierName,
        VarietyCount,
        CASE
            WHEN ISNULL(CancelFlg,'') = 'Y'  THEN 'CANCELLED'
            WHEN ISNULL(AppFlg,'')    = 'Y'  THEN 'APPROVED'
            WHEN ISNULL(FirstAppFlg,'') = 'Y' THEN 'PARTAPPROVED'
            ELSE 'PENDING'
        END             AS POStatus,
        ISNULL(FirstAppFlg, 'N') AS FirstAppFlg,
        ISNULL(AppFlg,      'N') AS AppFlg,
        ISNULL(CancelFlg,   'N') AS CancelFlg,
        PayMode,
        CurrCode,
        ArrivalType,
        PreparedBy,
        PrepDate,
        CASE WHEN ISNULL(IprNo, 0) > 0 THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS IsPRBased
    FROM POHeaders
    WHERE RowNum > (@Page - 1) * @PageSize
      AND RowNum <= @Page * @PageSize
    ORDER BY RowNum;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetParam.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetParam
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ISNULL(SuppLotNoReqArrival, 'N') AS SuppLotNoReqArrival,
        ISNULL(CentralizedOrder,    'N') AS CentralizedOrder,
        ISNULL(SeasonCalcReq,       'N') AS SeasonCalcReq,
        ISNULL(MasterEntryFlg,      'N') AS MasterEntryFlg,
        ISNULL(PRBased,             'Y') AS PRBased,
        ISNULL(PO_Approval,         'Y') AS POApproval,
        ISNULL(AddTaxRequired,      'N') AS AddTaxRequired,
        ISNULL(FTAmt,                0)  AS DefaultFTAmt
    FROM dbo.RM_PARAM;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_GetPendingPRLines.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPendingPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT       = 1,   -- 1=By Indent No/Date, 2=By Variety
    @SupplierCode VARCHAR(10)   = NULL,
    @Plant        VARCHAR(8)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MasterEntryFlg VARCHAR(1);
    SELECT @MasterEntryFlg = ISNULL(MasterEntryFlg, 'N') FROM dbo.RM_PARAM;

    IF @SortBy = 1
    BEGIN
        SELECT
            l.prno                                      AS PrNo,
            l.prdate                                    AS PrDate,
            l.varcode                                   AS VarCode,
            v.VARNAME                                   AS VarName,
            ISNULL(l.Packtype, '')                      AS PackType,
            ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) AS BalanceQty,
            ISNULL(l.qtyindKG,0) - ISNULL(l.qtyordKG,0) AS BalanceKgs,
            l.prsno                                     AS PrSNo,
            ISNULL(e.ename, '')                         AS RequisitionerName,
            ms.docno                                    AS MasterDocNo,
            ms.DocSno                                   AS MasterDocSno,
            ISNULL(ms.CandyRate, 0)                     AS CandyRate
        FROM dbo.Rm_PRL l
        INNER JOIN dbo.RM_prh h  ON h.divcode = l.divcode
                                 AND h.prno    = l.prno
                                 AND h.prdate  = l.prdate
        INNER JOIN dbo.rm_var v  ON v.VARCODE  = l.varcode
        LEFT JOIN  dbo.pr_emp e  ON e.empno    = h.REQNAME
                                 AND e.divcode  = l.divcode
        LEFT JOIN  dbo.RM_FibreRate ms
                                 ON ms.Supcd   = @SupplierCode
                                 AND ms.varcode = l.varcode
                                 AND ISNULL(@Plant,'') <> '' AND ms.plant = @Plant
                                 AND ISNULL(ms.appflg,'N') = 'Y'
                                 AND ms.Effdate = (
                                     SELECT MAX(r.Effdate)
                                     FROM   dbo.RM_FibreRate r
                                     WHERE  r.Supcd   = @SupplierCode
                                       AND  r.varcode  = l.varcode
                                       AND  ISNULL(@Plant,'') <> '' AND r.plant = @Plant
                                       AND  ISNULL(r.appflg,'N') = 'Y'
                                 )
        WHERE l.divcode = @DivCode
          AND l.prdate  <= @ContDt
          AND ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) > 0
          AND ISNULL(l.qtyord,  0) - ISNULL(l.qtyrec, 0) >= 0
          AND (
              (@MasterEntryFlg = 'Y' AND ms.varcode IS NOT NULL)
              OR
              (@MasterEntryFlg <> 'Y' AND ms.varcode IS NULL)
              OR
              (@SupplierCode IS NULL)
          )
        ORDER BY l.prno, l.prdate, l.prsno;
    END
    ELSE
    BEGIN
        SELECT
            l.prno                                      AS PrNo,
            l.prdate                                    AS PrDate,
            l.varcode                                   AS VarCode,
            v.VARNAME                                   AS VarName,
            ISNULL(l.Packtype, '')                      AS PackType,
            ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) AS BalanceQty,
            ISNULL(l.qtyindKG,0) - ISNULL(l.qtyordKG,0) AS BalanceKgs,
            l.prsno                                     AS PrSNo,
            ''                                          AS RequisitionerName,
            ms.docno                                    AS MasterDocNo,
            ms.DocSno                                   AS MasterDocSno,
            ISNULL(ms.CandyRate, 0)                     AS CandyRate
        FROM dbo.Rm_PRL l
        INNER JOIN dbo.RM_prh h  ON h.divcode = l.divcode
                                 AND h.prno    = l.prno
                                 AND h.prdate  = l.prdate
        INNER JOIN dbo.rm_var v  ON v.VARCODE  = l.varcode
        LEFT JOIN  dbo.RM_FibreRate ms
                                 ON ms.Supcd   = @SupplierCode
                                 AND ms.varcode = l.varcode
                                 AND ISNULL(@Plant,'') <> '' AND ms.plant = @Plant
                                 AND ISNULL(ms.appflg,'N') = 'Y'
                                 AND ms.Effdate = (
                                     SELECT MAX(r.Effdate)
                                     FROM   dbo.RM_FibreRate r
                                     WHERE  r.Supcd   = @SupplierCode
                                       AND  r.varcode  = l.varcode
                                       AND  ISNULL(@Plant,'') <> '' AND r.plant = @Plant
                                       AND  ISNULL(r.appflg,'N') = 'Y'
                                 )
        WHERE l.divcode = @DivCode
          AND l.prdate  <= @ContDt
          AND ISNULL(l.qtyind,  0) - ISNULL(l.qtyord, 0) > 0
          AND ISNULL(l.qtyord,  0) - ISNULL(l.qtyrec, 0) >= 0
          AND (
              (@MasterEntryFlg = 'Y' AND ms.varcode IS NOT NULL)
              OR
              (@MasterEntryFlg <> 'Y' AND ms.varcode IS NULL)
              OR
              (@SupplierCode IS NULL)
          )
        ORDER BY l.varcode, l.prno, l.prdate, l.prsno;
    END
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_InsertAuditLog.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertAuditLog
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @SupCd           VARCHAR(10)   = NULL,
    @VarCode         VARCHAR(10)   = NULL,
    @ArrivalType     VARCHAR(1)    = NULL,
    @OrdQty          NUMERIC(10,0) = 0,
    @OrdKgs          NUMERIC(15,3) = 0,
    @CandyRate       NUMERIC(15,7) = 0,
    @RateKg          NUMERIC(15,7) = 0,
    @CurrCode        VARCHAR(5)    = NULL,
    @HSN             VARCHAR(9)    = NULL,
    @TaxCode         VARCHAR(9)    = NULL,
    @CgstPer         NUMERIC(9,2)  = 0,
    @SgstPer         NUMERIC(9,2)  = 0,
    @IgstPer         NUMERIC(9,2)  = 0,
    @TransMod        VARCHAR(5),     -- ADD / MODIFY / DELETE
    @TransUserId     VARCHAR(12)   = NULL,
    @TransIPAddr     VARCHAR(18)   = NULL,
    @TransHost       VARCHAR(18)   = NULL,
    @DeleteReasonCode VARCHAR(4)   = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_Trans_Log
    (
        Divcode, Trans_Name, Trans_Mod, Trans_UserId, Trans_date,
        ContNo, Contdt, Slcode, Varcode, ArrivalType,
        ordqty, ordkgs, RateCY, RateKg, currency,
        HSN, TaxCode, Cgstper, Sgstper, Igstper,
        Trans_Host, Trans_IPADD, DelReason
    )
    VALUES
    (
        @DivCode, 'RMI Purchase Order', @TransMod, @TransUserId, GETDATE(),
        TRY_CAST(@ContNo AS NUMERIC(10,0)), @ContDt, @SupCd, @VarCode, @ArrivalType,
        @OrdQty, @OrdKgs, @CandyRate, @RateKg, @CurrCode,
        @HSN, @TaxCode, @CgstPer, @SgstPer, @IgstPer,
        @TransHost, @TransIPAddr, @DeleteReasonCode
    );
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_InsertDeliverySchedule.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDeliverySchedule
    @ContNo      VARCHAR(10),
    @ContDt      DATETIME,
    @DivCode     VARCHAR(2),
    @DelDate     DATETIME,
    @Qty         DECIMAL(10,2),
    @DelAdd      VARCHAR(30)  = NULL,
    @VarCode     VARCHAR(10)  = NULL,
    @Instruction VARCHAR(50)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.rm_delsched (contno, CONTDATE, Divcode, deldate, qty, DELADD, VARCODE, INSTRUCTION)
    VALUES (@ContNo, @ContDt, @DivCode, @DelDate, @Qty, @DelAdd, @VarCode, @Instruction);
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_InsertDiscountRate.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDiscountRate
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @SupCd   VARCHAR(8),
    @VarCode VARCHAR(10),
    @Docno   NUMERIC(9,0),
    @DocSno  NUMERIC(3,0),
    @DType   VARCHAR(4),
    @DRate   NUMERIC(9,2) = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_ContDiscntRate
    (Divcode, ContNo, Contdt, Docno, Docdate, DocSno, SUPCD, Varcode, DType, DRate)
    VALUES
    (@DivCode, CAST(@ContNo AS NUMERIC), @ContDt, @Docno, @ContDt, @DocSno, @SupCd, @VarCode, @DType, @DRate);
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_InsertLine.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertLine
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @SupCd           VARCHAR(10)   = NULL,
    @BrkCd           VARCHAR(10)   = NULL,
    @AreaCode        VARCHAR(4)    = NULL,
    @VarCode         VARCHAR(10),
    @CntCode         VARCHAR(5)    = NULL,
    @BBFlag          CHAR(1)       = 'B',
    @OrdQty          DECIMAL(10,2) = 0,
    @OrdKgs          NUMERIC(18,3) = 0,
    @CandyRate       DECIMAL(9,4)  = 0,
    @RateKg          DECIMAL(9,4)  = 0,
    @PayMode         CHAR(2),
    @DlyType         CHAR(1),
    @ImInd           CHAR(1)       = 'L',
    @ArrivalType     VARCHAR(1)    = 'P',
    @DueDate         DATETIME      = NULL,
    @CropYear        VARCHAR(20)   = NULL,
    @Acceptance      VARCHAR(30)   = NULL,
    @PtyContNo       VARCHAR(20)   = NULL,
    @PlotNo          VARCHAR(10)   = NULL,
    @WosamplePrNo    VARCHAR(10)   = NULL,
    @PressMarkNo     VARCHAR(15)   = NULL,
    @RateUnit        VARCHAR(20)   = NULL,
    @Remarks         NVARCHAR(255) = NULL,
    @DeliveryAddCode VARCHAR(10)   = NULL,
    @BillingAddCode  VARCHAR(10)   = NULL,
    @ContactPerson   VARCHAR(50)   = NULL,
    @Season          VARCHAR(25)   = NULL,
    @MillRefNo       VARCHAR(20)   = NULL,
    @CashDisPer      NUMERIC(5,2)  = 0,
    @TradeDisPer     NUMERIC(5,2)  = 0,
    @CessPer         NUMERIC(5,2)  = 0,
    @InsPer          NUMERIC(6,3)  = 0,
    @TaxCode         VARCHAR(3)    = NULL,
    @TaxChoice       VARCHAR(10)   = 'SINGLE',
    @CreditDays      NUMERIC(9,2)  = 0,
    @InterestPer     NUMERIC(9,2)  = 0,
    @LotFrom         NUMERIC(12,0) = 0,
    @LotTo           NUMERIC(12,0) = 0,
    @FinalWeighment  VARCHAR(1)    = 'S',
    @SampleFlg       VARCHAR(1)    = 'N',
    @CommPer         NUMERIC(5,2)  = 0,
    @Terms1          VARCHAR(50)   = NULL,
    @Terms1Days      NUMERIC(5,0)  = 0,
    @Terms2          VARCHAR(50)   = NULL,
    @Terms2Days      NUMERIC(5,0)  = 0,
    @Transport       VARCHAR(50)   = NULL,
    @IPrNo           NUMERIC(5,0)  = NULL,
    @IPrDate         DATETIME      = NULL,
    @IPrSNo          NUMERIC(5,0)  = NULL,
    @CurrCode        VARCHAR(3)    = NULL,
    @DeliveryTerms   VARCHAR(200)  = NULL,
    @HSN             VARCHAR(8)    = NULL,
    @CgstPer         NUMERIC(5,2)  = 0,
    @SgstPer         NUMERIC(5,2)  = 0,
    @IgstPer         NUMERIC(10,2) = 0,
    @FTAmt           NUMERIC(6,2)  = 0,
    @FTFlg           VARCHAR(1)    = 'N',
    @PrepDate        DATETIME      = NULL,
    @SusCatType      VARCHAR(10)   = NULL,
    @PayCode         VARCHAR(5)    = NULL,
    @LineNo          VARCHAR(18)   = NULL,
    @PlCode          VARCHAR(5)    = NULL,
    @SupFileName     VARCHAR(80)   = NULL,
    @TcsPer          NUMERIC(9,3)  = 0,
    @Grade           VARCHAR(25)   = NULL,
    @Staple          VARCHAR(25)   = NULL,
    @Micronaire      VARCHAR(25)   = NULL,
    @Strength        VARCHAR(25)   = NULL,
    @Moisture        VARCHAR(25)   = NULL,
    @Trash           VARCHAR(25)   = NULL,
    @NoOfLoad        NUMERIC(2,0)  = 0,
    @MSDocNo         NUMERIC(8,0)  = NULL,
    @MSDocSno        NUMERIC(3,0)  = NULL,
    @FreightPerBale  NUMERIC(9,2)  = 0,
    @PreparedBy      VARCHAR(5)    = NULL,
    @Prefix          VARCHAR(2)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_CONT
    (
        CONTNO, CONTDT, DIVCODE, SUPCD, BRKCD, AREACODE, VARCODE, CNTCODE,
        BBFLAG, ORDQTY, ORDKGS, CANDYRATE, RATEKG, PAYMODE, DLYTYPE, im_ind,
        arrivaltype, duedate, weignment, CROPYEAR, acceptance, PTY_CONTNO,
        PLOTNO, Prno, pressmarkno, rateunit, remarks, deladd, billadd,
        contperson, SEASON, MILLREFNO, CASHDISPER, TRADEDISPER, CESSPER,
        INSPER, TAX_CODE, TAX_CHOICE, CREDITDAYS, INTERESTPER,
        SUPPLIERLOTNOFROM, SUPPLIERLOTNOTO, FinalWeighment, SAMPLEFLG,
        CommPer, Terms1, Terms1Days, Terms2, Terms2Days, TransPort,
        IPRNO, PRDATE, PRSNO, CurrCode, DeliveryTerms, HSN,
        cgstper, sgstper, igstper, FTAmt, FTFlg, prepDate, SusCatType,
        paycode, Line_No, PlCode, SupFileName, TCS_PER, Grade, STAPLE,
        MIC, Strength, Moisture, Trash, No_of_Load, MSDocno, MSDocsno,
        freightperbale, Prepared_by, prefix, APPFLG, FIRST_APPFLG
    )
    VALUES
    (
        @ContNo, @ContDt, @DivCode, @SupCd, @BrkCd, @AreaCode, @VarCode, @CntCode,
        @BBFlag, @OrdQty, @OrdKgs, @CandyRate, @RateKg, @PayMode, @DlyType, @ImInd,
        @ArrivalType, @DueDate, '',  -- weignment always '' (CD-1 fix)
        @CropYear, @Acceptance, @PtyContNo,
        @PlotNo, @WosamplePrNo, @PressMarkNo, @RateUnit, @Remarks, @DeliveryAddCode, @BillingAddCode,
        @ContactPerson, @Season, @MillRefNo, @CashDisPer, @TradeDisPer, @CessPer,
        @InsPer, @TaxCode, @TaxChoice, @CreditDays, @InterestPer,
        @LotFrom, @LotTo, @FinalWeighment, @SampleFlg,
        @CommPer, @Terms1, @Terms1Days, @Terms2, @Terms2Days, @Transport,
        @IPrNo, @IPrDate, @IPrSNo, @CurrCode, @DeliveryTerms, @HSN,
        @CgstPer, @SgstPer, @IgstPer, @FTAmt, @FTFlg, ISNULL(@PrepDate, GETDATE()),
        @SusCatType, @PayCode, @LineNo, @PlCode, @SupFileName, @TcsPer,
        @Grade, @Staple, @Micronaire, @Strength, @Moisture, @Trash,
        @NoOfLoad, @MSDocNo, @MSDocSno, @FreightPerBale, @PreparedBy,
        @Prefix, 'N', 'N'
    );
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_InsertSlotNo.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertSlotNo
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @LotFrom NUMERIC(12,0),
    @LotTo   NUMERIC(12,0)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete existing lot rows for this PO (refresh on save)
    DELETE FROM dbo.RM_CONT_SLOTNO
    WHERE  CONTNO  = @ContNo
      AND  CONTDT  = @ContDt
      AND  DIVCODE = @DivCode;

    DECLARE @LotList VARCHAR(500) = '';
    DECLARE @Curr    NUMERIC(20,0) = @LotFrom;

    IF @LotFrom = @LotTo OR @LotFrom = 0
    BEGIN
        -- Single lot
        IF @LotFrom > 0
        BEGIN
            INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO, RECFLG)
            VALUES (@DivCode, @ContNo, @ContDt, @LotFrom, 'N');

            SET @LotList = CAST(@LotFrom AS VARCHAR);
        END
    END
    ELSE
    BEGIN
        -- Range of lots
        WHILE @Curr <= @LotTo
        BEGIN
            INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO, RECFLG)
            VALUES (@DivCode, @ContNo, @ContDt, @Curr, 'N');

            IF @LotList <> '' SET @LotList = @LotList + ',';
            SET @LotList = @LotList + CAST(@Curr AS VARCHAR);
            SET @Curr = @Curr + 1;
        END
    END

    -- Update NONRECIEVELOT on RM_CONT with comma-separated list
    IF @LotList <> ''
    BEGIN
        UPDATE dbo.RM_CONT
        SET    NONRECIEVELOT = @LotList
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;
    END
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_PreChecks.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_PreChecks
    @DivCode VARCHAR(2),
    @FYStart DATE,
    @FYEnd   DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- PA-1: Financial year validity (RM_LOT equivalent — check if any PO exists or FY is open)
    DECLARE @FYOpen BIT = 1;
    IF NOT EXISTS (SELECT 1 FROM dbo.RM_CONT WHERE DIVCODE = @DivCode AND CONTDT >= @FYStart AND CONTDT <= @FYEnd)
        AND CAST(GETDATE() AS DATE) > @FYEnd
        SET @FYOpen = 0;

    -- PA-2: Supplier master not empty
    DECLARE @SupplierOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_slmas) THEN 1 ELSE 0 END;

    -- PA-3: Area master not empty
    DECLARE @AreaOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_area) THEN 1 ELSE 0 END;

    -- PA-4: Variety master not empty
    DECLARE @VarOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_var) THEN 1 ELSE 0 END;

    -- PA-5: Rate unit master not empty
    DECLARE @RateUnitOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_rateunit) THEN 1 ELSE 0 END;

    -- PA-6: Payment mode master not empty
    DECLARE @PayModeOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_pmode) THEN 1 ELSE 0 END;

    -- PA-7: Delete reason master not empty (warn; not hard stop for add)
    DECLARE @DelReasonOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.RM_DelReason) THEN 1 ELSE 0 END;

    SELECT
        @FYOpen       AS FinYearOpen,
        @SupplierOk   AS SupplierMasterExists,
        @AreaOk       AS AreaMasterExists,
        @VarOk        AS VarietyMasterExists,
        @RateUnitOk   AS RateUnitMasterExists,
        @PayModeOk    AS PayModeMasterExists,
        @DelReasonOk  AS DelReasonMasterExists,
        CASE WHEN @FYOpen=1 AND @SupplierOk=1 AND @AreaOk=1
                  AND @VarOk=1 AND @RateUnitOk=1 AND @PayModeOk=1
             THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT)
        END           AS AllPassed;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_UpdateApproval.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdateApproval
    @ContNo    VARCHAR(10),
    @ContDt    DATETIME,
    @DivCode   VARCHAR(2),
    @Level     TINYINT,       -- 1=First, 2=Second, 3=Final
    @Action    VARCHAR(10),   -- 'APPROVE' or 'REJECT'
    @AppUserId VARCHAR(10),
    @AppIPAddr VARCHAR(15)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @Action = 'APPROVE'
    BEGIN
        IF @Level = 1
        BEGIN
            UPDATE dbo.RM_CONT
            SET    FIRST_APPFLG    = 'Y',
                   FIRST_APPUSERID = @AppUserId,
                   FIRST_APPIP     = @AppIPAddr,
                   FIRST_APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
        ELSE IF @Level = 2
        BEGIN
            UPDATE dbo.RM_CONT
            SET    fappflg   = 'Y',
                   APPUSERID = @AppUserId,
                   APPIP     = @AppIPAddr,
                   APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
        ELSE IF @Level = 3
        BEGIN
            UPDATE dbo.RM_CONT
            SET    APPFLG    = 'Y',
                   APPUSERID = @AppUserId,
                   APPIP     = @AppIPAddr,
                   APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
    END
    ELSE IF @Action = 'REJECT'
    BEGIN
        -- Reset all approval flags
        UPDATE dbo.RM_CONT
        SET    FIRST_APPFLG    = 'N',
               FIRST_APPUSERID = NULL,
               FIRST_APPDATE   = NULL,
               fappflg         = 'N',
               APPFLG          = 'N',
               APPUSERID       = NULL,
               APPDATE         = NULL
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;
    END

    SELECT @@ROWCOUNT AS AffectedRows;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_UpdateLine.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdateLine
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @VarCode         VARCHAR(10),
    @OrdQty          DECIMAL(10,2) = 0,
    @OrdKgs          NUMERIC(18,3) = 0,
    @CandyRate       DECIMAL(9,4)  = 0,
    @RateKg          DECIMAL(9,4)  = 0,
    @BBFlag          CHAR(1)       = 'B',
    @DueDate         DATETIME      = NULL,
    @CropYear        VARCHAR(20)   = NULL,
    @Acceptance      VARCHAR(30)   = NULL,
    @Remarks         NVARCHAR(255) = NULL,
    @Season          VARCHAR(25)   = NULL,
    @MillRefNo       VARCHAR(20)   = NULL,
    @CashDisPer      NUMERIC(5,2)  = 0,
    @TradeDisPer     NUMERIC(5,2)  = 0,
    @CessPer         NUMERIC(5,2)  = 0,
    @InsPer          NUMERIC(6,3)  = 0,
    @TaxCode         VARCHAR(3)    = NULL,
    @TaxChoice       VARCHAR(10)   = 'SINGLE',
    @CreditDays      NUMERIC(9,2)  = 0,
    @InterestPer     NUMERIC(9,2)  = 0,
    @LotFrom         NUMERIC(12,0) = 0,
    @LotTo           NUMERIC(12,0) = 0,
    @CommPer         NUMERIC(5,2)  = 0,
    @Terms1          VARCHAR(50)   = NULL,
    @Terms1Days      NUMERIC(5,0)  = 0,
    @Terms2          VARCHAR(50)   = NULL,
    @Terms2Days      NUMERIC(5,0)  = 0,
    @Transport       VARCHAR(50)   = NULL,
    @CurrCode        VARCHAR(3)    = NULL,
    @DeliveryTerms   VARCHAR(200)  = NULL,
    @HSN             VARCHAR(8)    = NULL,
    @CgstPer         NUMERIC(5,2)  = 0,
    @SgstPer         NUMERIC(5,2)  = 0,
    @IgstPer         NUMERIC(10,2) = 0,
    @FTAmt           NUMERIC(6,2)  = 0,
    @FTFlg           VARCHAR(1)    = 'N',
    @SusCatType      VARCHAR(10)   = NULL,
    @PayCode         VARCHAR(5)    = NULL,
    @LineNo          VARCHAR(18)   = NULL,
    @PlCode          VARCHAR(5)    = NULL,
    @SupFileName     VARCHAR(80)   = NULL,
    @TcsPer          NUMERIC(9,3)  = 0,
    @Grade           VARCHAR(25)   = NULL,
    @Staple          VARCHAR(25)   = NULL,
    @Micronaire      VARCHAR(25)   = NULL,
    @Strength        VARCHAR(25)   = NULL,
    @Moisture        VARCHAR(25)   = NULL,
    @Trash           VARCHAR(25)   = NULL,
    @NoOfLoad        NUMERIC(2,0)  = 0,
    @FreightPerBale  NUMERIC(9,2)  = 0,
    @ModUserId       VARCHAR(5)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.RM_CONT
    SET
        ORDQTY         = @OrdQty,
        ORDKGS         = @OrdKgs,
        CANDYRATE      = @CandyRate,
        RATEKG         = @RateKg,
        BBFLAG         = @BBFlag,
        duedate        = @DueDate,
        CROPYEAR       = @CropYear,
        acceptance     = @Acceptance,
        remarks        = @Remarks,
        SEASON         = @Season,
        MILLREFNO      = @MillRefNo,
        CASHDISPER     = @CashDisPer,
        TRADEDISPER    = @TradeDisPer,
        CESSPER        = @CessPer,
        INSPER         = @InsPer,
        TAX_CODE       = @TaxCode,
        TAX_CHOICE     = @TaxChoice,
        CREDITDAYS     = @CreditDays,
        INTERESTPER    = @InterestPer,
        SUPPLIERLOTNOFROM = @LotFrom,
        SUPPLIERLOTNOTO   = @LotTo,
        CommPer        = @CommPer,
        Terms1         = @Terms1,
        Terms1Days     = @Terms1Days,
        Terms2         = @Terms2,
        Terms2Days     = @Terms2Days,
        TransPort      = @Transport,
        CurrCode       = @CurrCode,
        DeliveryTerms  = @DeliveryTerms,
        HSN            = @HSN,
        cgstper        = @CgstPer,
        sgstper        = @SgstPer,
        igstper        = @IgstPer,
        FTAmt          = @FTAmt,
        FTFlg          = @FTFlg,
        SusCatType     = @SusCatType,
        paycode        = @PayCode,
        Line_No        = @LineNo,
        PlCode         = @PlCode,
        SupFileName    = @SupFileName,
        TCS_PER        = @TcsPer,
        Grade          = @Grade,
        STAPLE         = @Staple,
        MIC            = @Micronaire,
        Strength       = @Strength,
        Moisture       = @Moisture,
        Trash          = @Trash,
        No_of_Load     = @NoOfLoad,
        freightperbale = @FreightPerBale,
        Mod_dt         = GETDATE(),
        Mod_UserId     = @ModUserId,
        Amdnos         = ISNULL(Amdnos, 0) + 1
    WHERE CONTNO  = @ContNo
      AND CONTDT  = @ContDt
      AND DIVCODE = @DivCode
      AND VARCODE = @VarCode;
END;

GO
-- Scripts/02 Stored Procedures/ksp_RMI_PO_UpdatePRBalance.sql
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdatePRBalance
    @DivCode  VARCHAR(2),
    @PrNo     NUMERIC(6,0),
    @PrDate   DATETIME,
    @PrSNo    NUMERIC(5,0),
    @QtyOrd   NUMERIC(12,3),
    @QtyOrdKG NUMERIC(12,3) = 0
AS
BEGIN
    SET NOCOUNT ON;

    -- CD-3 fix: UPDLOCK prevents concurrent PO saves from over-committing the same PR line
    UPDATE dbo.Rm_PRL WITH (UPDLOCK)
    SET    qtyord   = ISNULL(qtyord,   0) + @QtyOrd,
           qtyordKG = ISNULL(qtyordKG, 0) + @QtyOrdKG
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  prsno   = @PrSNo;
END;

