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
            CAST(0   AS DECIMAL(12,3))   AS MinLevel
        FROM dbo.in_item WHERE 1 = 0;
        RETURN;
    END

    SET @Term = @Term + '%';

    SELECT TOP 20
        i.ITEMCODE                          AS ItemCode,
        i.ITEMNAME                          AS ItemName,
        i.UOM                               AS Uom,
        i.CURSTK                            AS CurrentStock,
        ISNULL(i.MINLEVEL, 0)               AS MinLevel,
        (
            SELECT ISNULL(SUM(prl.QTYREQD), 0)
            FROM   dbo.PO_PRL prl
            WHERE  prl.ITEMCODE              = i.ITEMCODE
              AND  prl.DIVCODE               = @DivCode
              AND  ISNULL(prl.prstatus, ' ')  NOT IN ('O', 'C')
              AND  ISNULL(prl.AmdFlg,   '')   <>  'Y'
        )                                   AS PendingPrQty,
        (
            SELECT ISNULL(SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)), 0)
            FROM   dbo.PO_ORDL o
            JOIN   dbo.PO_ORDH h
                ON  h.DIVCODE = o.DIVCODE
                AND h.PORDNO  = o.PORDNO
                AND h.PORDDT  = o.PORDDT
                AND h.POGRP   = o.POGRP
            WHERE  o.ITEMCODE              = i.ITEMCODE
              AND  o.DIVCODE               = @DivCode
              AND  ISNULL(h.CANFLG, 'N')   = 'N'
              AND  (ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) > 0
        )                                   AS PendingPoQty
    FROM   dbo.in_item i
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
            WHEN ISDATE(h.createddt) = 1 THEN CAST(h.createddt AS DATETIME)
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
        h.planno, h.refno, h.cancelflag, h.APPFLG, h.createdby, h.createddt
    ORDER BY h.prdate DESC, h.prno DESC
    OFFSET  (@Page - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
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
