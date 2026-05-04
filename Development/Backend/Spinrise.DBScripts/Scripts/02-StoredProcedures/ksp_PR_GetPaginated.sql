CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetPaginated
    @DivCode    VARCHAR(2),
    @PrNo       VARCHAR(20)  = NULL,
    @StartDate  DATE         = NULL,
    @EndDate    DATE         = NULL,
    @DepCode    VARCHAR(3)   = NULL,
    @ReqName    VARCHAR(10)  = NULL,
    @Status     VARCHAR(20)  = NULL,
    @SearchText VARCHAR(100) = NULL,
    @Page           INT          = 1,
    @PageSize       INT          = 20,
    @ExcludeAmended BIT          = 1
AS
BEGIN
    SET NOCOUNT ON;

    -- Default to current financial year when not supplied
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

    -- Result 1: total matching rows (for pagination)
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
               OR (@Status = 'CANCELLED'      AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'FINAL_APPROVED' AND ISNULL(h.APP3,'')      <> ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L2_APPROVED'    AND ISNULL(h.APP2,'')      <> ''  AND ISNULL(h.APP3,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L1_APPROVED'    AND ISNULL(h.APP1,'')      <> ''  AND ISNULL(h.APP2,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'           AND ISNULL(h.APP1,'')       = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
           )
      AND  (@ExcludeAmended = 0 OR ISNULL(h.amendno, 0) = 0);

    -- Result 2: paged data rows
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
            WHEN ISNULL(h.APP3,      '') <> '' THEN 'FINAL_APPROVED'
            WHEN ISNULL(h.APP2,      '') <> '' THEN 'L2_APPROVED'
            WHEN ISNULL(h.APP1,      '') <> '' THEN 'L1_APPROVED'
            ELSE                                    'OPEN'
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
               OR (@Status = 'CANCELLED'      AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'FINAL_APPROVED' AND ISNULL(h.APP3,'')      <> ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L2_APPROVED'    AND ISNULL(h.APP2,'')      <> ''  AND ISNULL(h.APP3,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L1_APPROVED'    AND ISNULL(h.APP1,'')      <> ''  AND ISNULL(h.APP2,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'           AND ISNULL(h.APP1,'')       = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
           )
      AND  (@ExcludeAmended = 0 OR ISNULL(h.amendno, 0) = 0)
    GROUP BY
        h.divcode, h.prno, h.prdate, h.depcode, h.REQNAME,
        h.planno, h.refno, h.cancelflag, h.APP1, h.APP2, h.APP3, h.createdby
    ORDER BY h.prdate DESC, h.prno DESC
    OFFSET  (@Page - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
