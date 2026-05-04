CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_FilterPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT      = 1,
    @SupplierCode VARCHAR(10)  = NULL,
    @Plant        VARCHAR(8)   = NULL,
    @Indent       VARCHAR(20)  = NULL,
    @ItemCode     VARCHAR(10)  = NULL,
    @ItemName     VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MasterEntryFlg CHAR(1) = 'N';
    SELECT @MasterEntryFlg = ISNULL(MasterEntryFlg, 'N') FROM dbo.RM_PARAM WHERE divcode = @DivCode;

    SELECT
        l.PRNO                                               AS PrNo,
        h.prdate                                             AS PrDate,
        l.varcode                                            AS VarCode,
        ISNULL(v.VARNAME, '')                                AS VarName,
        ISNULL(l.PACKTYPE, '')                               AS PackType,
        (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0))    AS BalanceQty,
        l.PRSNO                                              AS PrSno,
        ISNULL(e.ename, '')                                  AS RequisitionerName,
        ISNULL(rm.MSDOCNO,   0)                              AS MasterDocNo,
        ISNULL(rm.MSDOCSNO,  0)                              AS MasterDocSno,
        ISNULL(rm.CANDYRATE, 0)                              AS CandyRate
    FROM   dbo.Rm_PRL l
    INNER JOIN dbo.RM_PRH  h  ON h.divcode = l.DIVCODE AND h.PRNO = l.PRNO AND h.prdate = l.PRDATE
    INNER JOIN dbo.rm_var  v  ON v.VARCODE = l.varcode
    LEFT JOIN  dbo.pr_emp  e  ON e.empno   = h.REQNAME AND @SortBy = 1
    LEFT JOIN  dbo.VW_rm_SupplierVariety rm
           ON rm.varcode = l.varcode
          AND (@SupplierCode IS NULL OR rm.supcd = @SupplierCode)
          AND (@Plant        IS NULL OR rm.plant = @Plant)
    WHERE  l.DIVCODE = @DivCode
      AND  (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)) > 0
      AND  CAST(h.prdate AS DATE) <= @ContDt
      AND  (@Indent   IS NULL OR CAST(l.PRNO AS VARCHAR(20)) LIKE '%' + @Indent   + '%')
      AND  (@ItemCode IS NULL OR l.varcode               LIKE '%' + @ItemCode  + '%')
      AND  (@ItemName IS NULL OR ISNULL(v.VARNAME, '')   LIKE '%' + @ItemName  + '%')
      AND (
           (@MasterEntryFlg = 'Y' AND rm.varcode IS NOT NULL)
        OR (@MasterEntryFlg = 'N' AND rm.varcode IS NULL)
        OR  @MasterEntryFlg NOT IN ('Y','N')
      )
    ORDER BY
        CASE WHEN @SortBy = 1 THEN l.PRNO    END ASC,
        CASE WHEN @SortBy = 1 THEN h.prdate  END ASC,
        CASE WHEN @SortBy = 2 THEN l.varcode END ASC;
END;
