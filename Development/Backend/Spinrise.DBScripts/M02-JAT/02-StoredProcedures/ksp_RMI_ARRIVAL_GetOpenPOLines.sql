-- Returns open PO lines (positive balance) for a given supplier + division.
-- UNION ALL across PackWise (P), KGSWise (K), and Centralised import POs.
-- CD-2 context: caller uses result for display only; actual balance check with UPDLOCK happens in Insert SP.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetOpenPOLines
    @DivCode        VARCHAR(2),
    @SupCode        VARCHAR(10),
    @CatCode        CHAR(1)       = NULL,    -- filter by category if provided
    @IsCentralised  CHAR(1)       = 'N',     -- Y = also include import division POs
    @ImportDivCode  VARCHAR(10)   = NULL,    -- poimportdivision value from RM_PARAM
    @YfDate         DATETIME      = NULL,
    @YlDate         DATETIME      = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- PackWise open POs (balance = ordqty - ISNULL(recqty,0) - ISNULL(CancelBales,0))
    SELECT
        rc.CONTNO,
        rc.CONTDT,
        rc.DIVCODE,
        rc.SUPCD,
        rc.VARCODE,
        v.VARNAME,
        rc.CNTCODE,
        ISNULL(mg.mixgrpname, '') AS MixGrpName,
        rc.BBFLAG,
        rc.CANDYRATE,
        rc.ORDQTY,
        ISNULL(rc.RECQTY,      0) AS RecQty,
        ISNULL(rc.CancelBales, 0) AS CancelBales,
        rc.ORDQTY - ISNULL(rc.RECQTY, 0) - ISNULL(rc.CancelBales, 0) AS BalanceQty,
        rc.ORDKGS,
        ISNULL(rc.RCDKGS, 0) AS RcdKgs,
        rc.ORDKGS - ISNULL(rc.RCDKGS, 0) - ISNULL(rc.cancelkgs, 0)   AS BalanceKgs,
        rc.arrivaltype,
        rc.SUPPLIERLOTNOFROM,
        rc.SUPPLIERLOTNOTO,
        ISNULL(rc.NONRECIEVELOT, '') AS NonRecieveLot,
        rc.prefix,
        'OWN' AS PoSource
    FROM   dbo.RM_CONT rc
    INNER JOIN dbo.rm_var v   ON v.VARCODE   = rc.VARCODE
    LEFT  JOIN dbo.rm_mixgrp mg ON mg.CNTCODE = rc.CNTCODE
    WHERE  rc.SUPCD        = @SupCode
      AND  rc.DIVCODE       = @DivCode
      AND  ISNULL(rc.CancelFlg, 'N') <> 'Y'
      AND  rc.arrivaltype   = 'P'
      AND  (rc.ORDQTY - ISNULL(rc.RECQTY, 0) - ISNULL(rc.CancelBales, 0)) > 0
      AND  (@CatCode IS NULL OR rc.VARCODE IN (
                SELECT rv.VARCODE FROM dbo.RM_VAR rv WHERE rv.CATCD = @CatCode))
      AND  (@YfDate IS NULL OR rc.CONTDT >= @YfDate)
      AND  (@YlDate IS NULL OR rc.CONTDT <= @YlDate)

    UNION ALL

    -- KGSWise open POs (balance = ordkgs - rcdkgs - cancelkgs)
    SELECT
        rc.CONTNO,
        rc.CONTDT,
        rc.DIVCODE,
        rc.SUPCD,
        rc.VARCODE,
        v.VARNAME,
        rc.CNTCODE,
        ISNULL(mg.mixgrpname, '') AS MixGrpName,
        rc.BBFLAG,
        rc.CANDYRATE,
        rc.ORDQTY,
        ISNULL(rc.RECQTY,      0) AS RecQty,
        ISNULL(rc.CancelBales, 0) AS CancelBales,
        rc.ORDQTY - ISNULL(rc.RECQTY, 0) - ISNULL(rc.CancelBales, 0) AS BalanceQty,
        rc.ORDKGS,
        ISNULL(rc.RCDKGS, 0) AS RcdKgs,
        rc.ORDKGS - ISNULL(rc.RCDKGS, 0) - ISNULL(rc.cancelkgs, 0)   AS BalanceKgs,
        rc.arrivaltype,
        rc.SUPPLIERLOTNOFROM,
        rc.SUPPLIERLOTNOTO,
        ISNULL(rc.NONRECIEVELOT, '') AS NonRecieveLot,
        rc.prefix,
        'OWN' AS PoSource
    FROM   dbo.RM_CONT rc
    INNER JOIN dbo.rm_var v   ON v.VARCODE   = rc.VARCODE
    LEFT  JOIN dbo.rm_mixgrp mg ON mg.CNTCODE = rc.CNTCODE
    WHERE  rc.SUPCD        = @SupCode
      AND  rc.DIVCODE       = @DivCode
      AND  ISNULL(rc.CancelFlg, 'N') <> 'Y'
      AND  rc.arrivaltype   = 'K'
      AND  (rc.ORDKGS - ISNULL(rc.RCDKGS, 0) - ISNULL(rc.cancelkgs, 0)) > 0
      AND  (@CatCode IS NULL OR rc.VARCODE IN (
                SELECT rv.VARCODE FROM dbo.RM_VAR rv WHERE rv.CATCD = @CatCode))
      AND  (@YfDate IS NULL OR rc.CONTDT >= @YfDate)
      AND  (@YlDate IS NULL OR rc.CONTDT <= @YlDate)

    UNION ALL

    -- Centralised import POs (prefix='C'; DIVCODE filter omitted for the import division)
    SELECT
        rc.CONTNO,
        rc.CONTDT,
        rc.DIVCODE,
        rc.SUPCD,
        rc.VARCODE,
        v.VARNAME,
        rc.CNTCODE,
        ISNULL(mg.mixgrpname, '') AS MixGrpName,
        rc.BBFLAG,
        rc.CANDYRATE,
        rc.ORDQTY,
        ISNULL(rc.RECQTY,      0) AS RecQty,
        ISNULL(rc.CancelBales, 0) AS CancelBales,
        rc.ORDQTY - ISNULL(rc.RECQTY, 0) - ISNULL(rc.CancelBales, 0) AS BalanceQty,
        rc.ORDKGS,
        ISNULL(rc.RCDKGS, 0) AS RcdKgs,
        rc.ORDKGS - ISNULL(rc.RCDKGS, 0) - ISNULL(rc.cancelkgs, 0)   AS BalanceKgs,
        rc.arrivaltype,
        rc.SUPPLIERLOTNOFROM,
        rc.SUPPLIERLOTNOTO,
        ISNULL(rc.NONRECIEVELOT, '') AS NonRecieveLot,
        rc.prefix,
        'IMPORT' AS PoSource
    FROM   dbo.RM_CONT rc
    INNER JOIN dbo.rm_var v   ON v.VARCODE   = rc.VARCODE
    LEFT  JOIN dbo.rm_mixgrp mg ON mg.CNTCODE = rc.CNTCODE
    WHERE  @IsCentralised  = 'Y'
      AND  rc.SUPCD         = @SupCode
      AND  rc.prefix        = 'C'
      AND  ISNULL(rc.CancelFlg, 'N') <> 'Y'
      AND  (
               (rc.arrivaltype = 'P' AND (rc.ORDQTY - ISNULL(rc.RECQTY, 0) - ISNULL(rc.CancelBales, 0)) > 0)
            OR (rc.arrivaltype = 'K' AND (rc.ORDKGS  - ISNULL(rc.RCDKGS, 0) - ISNULL(rc.cancelkgs, 0))   > 0)
           )
      AND  (@CatCode IS NULL OR rc.VARCODE IN (
                SELECT rv.VARCODE FROM dbo.RM_VAR rv WHERE rv.CATCD = @CatCode))

    ORDER BY CONTDT DESC, CONTNO, VARCODE;
END;
GO
