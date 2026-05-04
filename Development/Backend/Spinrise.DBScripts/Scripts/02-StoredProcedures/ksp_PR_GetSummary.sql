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
               OR (@Status = 'CANCELLED'      AND ISNULL(h.cancelflag,'') = 'Y')
               OR (@Status = 'FINAL_APPROVED' AND ISNULL(h.APP3,'')      <> ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L2_APPROVED'    AND ISNULL(h.APP2,'')      <> ''  AND ISNULL(h.APP3,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'L1_APPROVED'    AND ISNULL(h.APP1,'')      <> ''  AND ISNULL(h.APP2,'')        = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
               OR (@Status = 'OPEN'           AND ISNULL(h.APP1,'')       = ''  AND ISNULL(h.cancelflag,'') <> 'Y')
           );
END;
GO
