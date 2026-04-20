CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetPaginated
    @DivCode   VARCHAR(2),
    @PrNo      VARCHAR(20)  = NULL,
    @StartDate DATE         = NULL,
    @EndDate   DATE         = NULL,
    @DepCode   VARCHAR(3)   = NULL,
    @ReqName   VARCHAR(10)  = NULL,
    @Status    VARCHAR(20)  = NULL,
    @Page      INT          = 1,
    @PageSize  INT          = 20
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
      AND  (@PrNo    IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND  h.prdate >= @StartDate
      AND  h.prdate <= @EndDate
      AND  (@DepCode  IS NULL OR h.depcode = @DepCode)
      AND  (@ReqName  IS NULL OR h.REQNAME = @ReqName)
      AND  (
               @Status IS NULL
               OR (@Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                         AND ISNULL(h.cancelflag,'') <> 'Y')
           );

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
            WHEN ISNULL(h.APPFLG,    '') = 'Y' THEN 'CONVERTED'
            ELSE                                     'OPEN'
        END          AS PrStatus,
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
      AND  (@PrNo    IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND  h.prdate >= @StartDate
      AND  h.prdate <= @EndDate
      AND  (@DepCode  IS NULL OR h.depcode = @DepCode)
      AND  (@ReqName  IS NULL OR h.REQNAME = @ReqName)
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
