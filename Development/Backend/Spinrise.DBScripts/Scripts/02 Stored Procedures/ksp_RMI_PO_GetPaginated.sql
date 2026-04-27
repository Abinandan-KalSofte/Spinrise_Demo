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
