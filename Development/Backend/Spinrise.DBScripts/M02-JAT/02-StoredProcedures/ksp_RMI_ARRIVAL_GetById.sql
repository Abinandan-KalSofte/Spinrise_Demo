-- Returns full arrival detail: header fields + all line rows for a given ARRNO.
-- Result set 1: header (one row). Result set 2: lines (N rows, one per variety).
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetById
    @DivCode VARCHAR(2),
    @ArrNo   INT,
    @ArrDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Header (first row represents the shared header fields)
    SELECT TOP 1
        a.ARRNO,
        a.ARRDATE,
        a.DIVCODE,
        a.SUPCD,
        ISNULL(sl.slname, '')    AS SupplierName,
        a.BRKCD,
        ISNULL(sl2.slname, '')   AS BrokerName,
        a.AREACODE,
        ISNULL(ar.AREANAME, '')  AS AreaName,
        a.CATCD,
        ISNULL(c.CATNAME, '')    AS CatName,
        a.CARCODE,
        ISNULL(car.CARNAME, '')  AS CarrierName,
        a.LORRYNOS,
        a.FREIGHT,
        a.GCNO,
        a.LRNO,
        a.GODOWN,
        a.inwardno,
        a.inwarddate,
        a.PlCode,
        a.Line_No,
        a.weignment,
        a.LR_InDt,
        a.LR_InTime,
        a.LR_OutDt,
        a.LR_OutTime,
        a.Globaldiv,
        a.ReceivedNo,
        pp.emp_name              AS EnteredBy,
        a.ARRDATE                AS EntryDate
    FROM   dbo.RM_ARRIVAL a
    LEFT JOIN dbo.FA_SLMAS sl   ON sl.slcode   = a.SUPCD
    LEFT JOIN dbo.FA_SLMAS sl2  ON sl2.slcode  = a.BRKCD
    LEFT JOIN dbo.RM_AREA  ar   ON ar.AREACODE = a.AREACODE
    LEFT JOIN dbo.RM_CAT   c    ON c.CATCD     = a.CATCD
    LEFT JOIN dbo.PO_CAR   car  ON car.CARCODE  = a.CARCODE
    LEFT JOIN dbo.PP_PASSWD pp  ON pp.divcode   = a.DIVCODE AND pp.module = 6
    WHERE  a.ARRNO   = @ArrNo
      AND  a.ARRDATE = @ArrDate
      AND  a.DIVCODE = @DivCode
    ORDER BY a.ARRNO;

    -- Lines
    SELECT
        a.ARRNO,
        a.ARRDATE,
        a.DIVCODE,
        a.CONTNO,
        a.CONTDT,
        a.VARCODE,
        ISNULL(v.VARNAME, '')                                      AS VarName,
        a.CNTCODE,
        ISNULL(mg.mixgrpname, '')                                  AS MixGrpName,
        a.CATCD,
        a.PLOTNO                                                   AS SupplierLotNo,
        a.PRNO,
        a.PRMARK,
        a.BBFLAG,
        a.RATECY,
        a.QUANTITY,
        a.GROSSWT,
        a.TAREWT,
        a.NETWT,
        a.FullTruckWgt,
        a.EmptyTruckWgt,
        a.Trashper,
        a.moisture_per  AS MoisturePer,
        a.moisture_et   AS MoistureEt,
        a.Commr_Wt,
        a.DPDocno,
        a.DPDocDate,
        a.GINCODE,
        a.Arrivaltype,
        a.lotno,
        a.lotdt,
        a.lottype,
        a.PASSED,
        a.PASSDT
    FROM   dbo.RM_ARRIVAL a
    LEFT JOIN dbo.rm_var   v  ON v.VARCODE  = a.VARCODE
    LEFT JOIN dbo.rm_mixgrp mg ON mg.CNTCODE = a.CNTCODE
    WHERE  a.ARRNO   = @ArrNo
      AND  a.ARRDATE = @ArrDate
      AND  a.DIVCODE = @DivCode
    ORDER BY a.CONTNO, a.VARCODE;
END;
GO
