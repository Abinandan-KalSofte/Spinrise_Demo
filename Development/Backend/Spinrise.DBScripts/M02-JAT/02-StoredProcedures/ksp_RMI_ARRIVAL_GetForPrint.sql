-- Data source for QuestPDF arrival receipt (replaces kSP_RM_ARRIVAL text-batch print).
-- Mirrors the original VB6 SP join structure; NULL lot fields handled gracefully.
-- Result set 1: Division master (header block). Result set 2: Arrival lines with supplier/PO/lot detail.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetForPrint
    @DivCode  VARCHAR(2),
    @ArrDate  DATETIME,
    @ArrNoFrom INT,
    @ArrNoTo   INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Division header block
    SELECT
        d.DIVCODE,
        d.DIVNAME,
        ISNULL(d.div_printname, d.DIVNAME) AS PrintName,
        ISNULL(d.div_unitname,  '')         AS UnitName,
        ISNULL(d.ADD1,          '')         AS Add1,
        ISNULL(d.ADD2,          '')         AS Add2,
        ISNULL(d.ADD3,          '')         AS Add3,
        ISNULL(d.GSTINNO,       '')         AS GstInNo
    FROM   dbo.PP_DIVMAS d
    WHERE  d.DIVCODE = @DivCode;

    -- Arrival lines with all lookup joins
    SELECT
        a.ARRNO,
        a.ARRDATE,
        a.DIVCODE,
        a.CONTNO,
        a.CONTDT,
        a.SUPCD,
        ISNULL(sl.slname,  '')              AS SupplierName,
        ISNULL(sl.add1,    '')              AS SupAdd1,
        ISNULL(sl.add2,    '')              AS SupAdd2,
        ISNULL(sl.gstinno, '')              AS SupGstInNo,
        ISNULL(sl.gststatecode, '')         AS SupGstState,
        a.BRKCD,
        ISNULL(sl2.slname, '')              AS BrokerName,
        a.AREACODE,
        ISNULL(ar.AREANAME, '')             AS AreaName,
        a.CATCD,
        ISNULL(rc.CATNAME, '')             AS CatName,
        a.VARCODE,
        ISNULL(v.VARNAME, '') +
            CASE WHEN st.Description IS NOT NULL THEN ' - ' + st.Description ELSE '' END AS VarName,
        a.CNTCODE,
        ISNULL(mg.mixgrpname, '')           AS MixGrpName,
        a.PLOTNO                            AS SupplierLotNo,
        a.PRNO,
        a.PRMARK,
        a.BBFLAG,
        a.RATECY,
        a.QUANTITY,
        a.GROSSWT,
        a.TAREWT,
        a.NETWT,
        a.moisture_per                      AS MoisturePer,
        a.moisture_et                       AS MoistureEt,
        a.Trashper                          AS TrashPer,
        a.CARCODE,
        ISNULL(car.CARNAME, '')             AS CarrierName,
        a.LORRYNOS,
        a.FREIGHT,
        a.LRNO,
        a.weignment,
        ISNULL(wt.weightype, '')            AS WeighmentName,
        a.LR_InDt,
        a.LR_OutDt,
        a.GODOWN,
        a.Commr_Wt,
        a.DPDocno,
        a.DPDocDate,
        a.GINCODE,
        a.Arrivaltype,
        -- Downstream lot fields (NULL until Lot/Bale module processes this arrival)
        l.lotno                             AS LotNo,
        l.PNETWT                            AS LotNetWt,
        l.Comm_Wt                           AS LotCommWt,
        l.Inspect_user,
        l.Inspect_date,
        l.ADDDATE                           AS LotAddDate,
        ISNULL(pp.emp_name, '')             AS EnteredBy
    FROM   dbo.RM_ARRIVAL a
    LEFT JOIN dbo.FA_SLMAS  sl   ON sl.slcode    = a.SUPCD
    LEFT JOIN dbo.FA_SLMAS  sl2  ON sl2.slcode   = a.BRKCD
    LEFT JOIN dbo.RM_AREA   ar   ON ar.AREACODE  = a.AREACODE
    LEFT JOIN dbo.RM_CAT    rc   ON rc.CATCD     = a.CATCD
    LEFT JOIN dbo.rm_var    v    ON v.VARCODE    = a.VARCODE
    LEFT JOIN dbo.rm_mixgrp mg   ON mg.CNTCODE   = a.CNTCODE
    LEFT JOIN dbo.PO_CAR    car  ON car.CARCODE  = a.CARCODE
    LEFT JOIN dbo.rm_weighnment wt ON wt.code    = a.weignment
    LEFT JOIN dbo.RM_LOT    l    ON l.arrno      = a.ARRNO
                                 AND l.Divcode   = a.DIVCODE
                                 AND l.lottype   = 'A'
    LEFT JOIN dbo.rm_sustainrmtype st ON st.Code = (
                    SELECT TOP 1 rc2.SusCatType FROM dbo.RM_CONT rc2
                    WHERE rc2.CONTNO = a.CONTNO AND rc2.CONTDT = a.CONTDT AND rc2.VARCODE = a.VARCODE)
    LEFT JOIN dbo.PP_PASSWD pp ON pp.divcode = a.DIVCODE AND pp.module = 6
    WHERE  a.DIVCODE = @DivCode
      AND  a.ARRDATE = @ArrDate
      AND  a.ARRNO   BETWEEN @ArrNoFrom AND @ArrNoTo
    ORDER BY a.ARRNO ASC, l.lotno ASC;
END;
GO
