-- Paginated arrival list with filters. Returns TotalCount in every row for client-side paging.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetPaginated
    @DivCode     VARCHAR(2),
    @Page        INT           = 1,
    @PageSize    INT           = 20,
    @SearchText  NVARCHAR(100) = NULL,   -- matches ARRNO, SUPCD, supplier name, CONTNO
    @FromDate    DATETIME      = NULL,
    @ToDate      DATETIME      = NULL,
    @SupCode     VARCHAR(10)   = NULL,
    @CatCode     CHAR(1)       = NULL,
    @YfDate      DATETIME      = NULL,
    @YlDate      DATETIME      = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@Page - 1) * @PageSize;

    WITH ArrivalCTE AS (
        SELECT
            a.ARRNO,
            a.ARRDATE,
            a.DIVCODE,
            a.SUPCD,
            ISNULL(sl.slname, '')      AS SupplierName,
            a.CATCD,
            ISNULL(c.CATNAME, '')      AS CatName,
            a.CARCODE,
            ISNULL(car.CARNAME, '')    AS CarrierName,
            a.LORRYNOS,
            a.FREIGHT,
            a.CARCODE                  AS CarCode,
            SUM(a.QUANTITY)  OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS TotalQty,
            SUM(a.GROSSWT)   OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS TotalGrossWt,
            SUM(a.NETWT)     OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS TotalNetWt,
            COUNT(*)         OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS LineCount,
            MAX(CASE WHEN a.lotno IS NOT NULL THEN 1 ELSE 0 END)
                             OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS HasLot,
            MAX(CASE WHEN a.PASSED IS NOT NULL THEN 1 ELSE 0 END)
                             OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE) AS HasInspection,
            ROW_NUMBER()     OVER (PARTITION BY a.ARRNO, a.ARRDATE, a.DIVCODE ORDER BY a.VARCODE) AS Rn
        FROM   dbo.RM_ARRIVAL a
        LEFT JOIN dbo.FA_SLMAS sl  ON sl.slcode  = a.SUPCD
        LEFT JOIN dbo.RM_CAT   c   ON c.CATCD    = a.CATCD
        LEFT JOIN dbo.PO_CAR   car ON car.CARCODE = a.CARCODE
        WHERE  a.DIVCODE = @DivCode
          AND  (@YfDate IS NULL OR a.ARRDATE >= @YfDate)
          AND  (@YlDate IS NULL OR a.ARRDATE <= @YlDate)
          AND  (@FromDate IS NULL OR a.ARRDATE >= @FromDate)
          AND  (@ToDate   IS NULL OR a.ARRDATE <= @ToDate)
          AND  (@SupCode  IS NULL OR a.SUPCD   = @SupCode)
          AND  (@CatCode  IS NULL OR a.CATCD   = @CatCode)
          AND  (@SearchText IS NULL OR
                CAST(a.ARRNO AS VARCHAR) LIKE '%' + @SearchText + '%'  OR
                a.SUPCD                  LIKE '%' + @SearchText + '%'  OR
                sl.slname                LIKE '%' + @SearchText + '%'  OR
                a.CONTNO                 LIKE '%' + @SearchText + '%'  OR
                a.LORRYNOS               LIKE '%' + @SearchText + '%')
    ),
    UniqueArrivals AS (
        SELECT *,
               COUNT(*) OVER () AS TotalCount
        FROM   ArrivalCTE
        WHERE  Rn = 1  -- one row per ARRNO
    )
    SELECT
        ARRNO,
        ARRDATE,
        DIVCODE,
        SUPCD,
        SupplierName,
        CatName,
        CarrierName,
        LORRYNOS,
        FREIGHT,
        TotalQty,
        TotalGrossWt,
        TotalNetWt,
        LineCount,
        HasLot,
        HasInspection,
        TotalCount
    FROM   UniqueArrivals
    ORDER BY ARRDATE DESC, ARRNO DESC
    OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;
END;
GO
