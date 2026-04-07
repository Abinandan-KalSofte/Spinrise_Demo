-- AUTO GENERATED MERGED SCRIPT
-- DO NOT EDIT MANUALLY

-- ===================================== 
-- File: 07_usp_PR_PreChecks.sql 
-- ===================================== 

 CREATE OR ALTER PROCEDURE dbo.usp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE 
            @DeptExists BIT = 0

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode)
        SET @DeptExists = 1;

    SELECT
        
        @DeptExists AS DepartmentExists
END; 
GO 
 
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
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100)
AS
SET NOCOUNT ON;

-- Require at least 2 characters to prevent full-table scans
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
  AND  DIVCODE      = @DivCode
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
-- File: ksp_Stock_GetCurrentStock.sql 
-- ===================================== 
-- =============================================
-- usp_Stock_GetCurrentStock
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
CREATE OR ALTER PROCEDURE usp_Stock_GetCurrentStock
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
 
