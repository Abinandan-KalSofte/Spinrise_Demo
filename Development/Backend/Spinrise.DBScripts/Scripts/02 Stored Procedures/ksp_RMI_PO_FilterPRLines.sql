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
