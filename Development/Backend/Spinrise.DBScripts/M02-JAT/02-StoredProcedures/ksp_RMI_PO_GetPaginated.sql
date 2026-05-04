CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPaginated
    @DivCode      VARCHAR(2),
    @Page         INT           = 1,
    @PageSize     INT           = 20,
    @SearchText   NVARCHAR(100) = NULL,
    @FromDate     DATE          = NULL,
    @ToDate       DATE          = NULL,
    @SupplierCode VARCHAR(10)   = NULL,
    @Status       VARCHAR(20)   = NULL
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

    SET @FromDate = ISNULL(@FromDate, @FY_Start);
    SET @ToDate   = ISNULL(@ToDate,   @FY_End);

    -- CTE: one row per distinct PO (CONTNO+CONTDT) aggregating variety lines
    WITH POs AS (
        SELECT
            c.CONTNO,
            c.CONTDT,
            c.DIVCODE,
            c.SUPCD,
            MAX(ISNULL(s.slname, ''))         AS SupplierName,
            COUNT(c.VARCODE)                  AS VarietyCount,
            MAX(ISNULL(c.FIRST_APPFLG, ''))   AS FirstAppFlg,
            MAX(ISNULL(c.fappflg,      ''))   AS FAppFlg,
            MAX(ISNULL(c.Appflg,       ''))   AS AppFlg,
            MAX(ISNULL(c.CancelFlg,    ''))   AS CancelFlag,
            MAX(ISNULL(c.Prepared_by,  ''))   AS CreatedBy
        FROM   dbo.RM_CONT c
        LEFT JOIN dbo.fa_slmas s ON s.slcode = c.SUPCD
        WHERE  c.DIVCODE = @DivCode
          AND  CAST(c.CONTDT AS DATE) >= @FromDate
          AND  CAST(c.CONTDT AS DATE) <= @ToDate
          AND  (@SupplierCode IS NULL OR c.SUPCD = @SupplierCode)
          AND  (@SearchText   IS NULL
                OR CAST(c.CONTNO AS VARCHAR(20)) LIKE '%' + @SearchText + '%'
                OR ISNULL(s.slname, '') LIKE '%' + @SearchText + '%')
          AND  (
                @Status IS NULL
                OR (@Status = 'CANCELLED' AND ISNULL(c.CancelFlg, '') = 'Y')
                OR (@Status = 'APPROVED'  AND ISNULL(c.Appflg,    '') = 'Y'
                                          AND ISNULL(c.CancelFlg, '') <> 'Y')
                OR (@Status = 'PENDING'   AND ISNULL(c.Appflg,    '') <> 'Y'
                                          AND ISNULL(c.CancelFlg, '') <> 'Y')
               )
        GROUP BY c.CONTNO, c.CONTDT, c.DIVCODE, c.SUPCD
    )
    SELECT
        CONTNO, CONTDT, DIVCODE, SUPCD, SupplierName, VarietyCount,
        FirstAppFlg, FAppFlg, AppFlg, CancelFlag, CreatedBy,
        COUNT(*) OVER () AS TotalCount
    FROM  POs
    ORDER BY CONTDT DESC, CONTNO DESC
    OFFSET  (@Page - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
