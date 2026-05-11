CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPendingPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT     = 1,   -- 1=By Indent No/Date  2=By Variety
    @SupplierCode VARCHAR(10) = NULL,
    @Plant        VARCHAR(8)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- MasterEntryFlg from RM_PARAM: Y = only lines with approved rate; N = only lines without
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
        -- NOTE: VW_rm_SupplierVariety column names need verification on live DB
        ISNULL(rm.MSDOCNO,    0)                             AS MasterDocNo,
        ISNULL(rm.MSDOCSNO,   0)                             AS MasterDocSno,
        ISNULL(rm.CANDYRATE,  0)                             AS CandyRate,
        ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)      AS BalanceKgs
    FROM   dbo.Rm_PRL l
    INNER JOIN dbo.RM_PRH  h  ON h.divcode = l.DIVCODE AND h.PRNO = l.PRNO AND h.prdate = l.PRDATE
    INNER JOIN dbo.rm_var  v  ON v.VARCODE = l.varcode
    LEFT JOIN  dbo.pr_emp  e  ON e.empno   = h.REQNAME AND @SortBy = 1
    -- Rate master join (LEFT JOIN so non-master lines still appear; filter applied below)
    LEFT JOIN  dbo.VW_rm_SupplierVariety rm
           ON rm.varcode = l.varcode
          AND (@SupplierCode IS NULL OR rm.supcd = @SupplierCode)
          AND (@Plant        IS NULL OR rm.plant = @Plant)
    WHERE  l.DIVCODE = @DivCode
      AND  (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)) > 0   -- positive balance
      AND  CAST(h.prdate AS DATE) <= @ContDt                        -- PR date <= PO date
      -- MasterEntryFlg filter
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
GO
