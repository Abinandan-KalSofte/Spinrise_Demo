-- Arrival Entry full Insert. All 14 save steps in one atomic transaction.
-- CD-1 fix: ARRNO generated with UPDLOCK+HOLDLOCK on RM_ARRIVAL (prevents concurrent MAX+1 race).
-- CD-2 fix: RM_CONT update uses WITH (UPDLOCK) to prevent concurrent over-receipt.
-- CD-6 fix: SLOTNO+NONRECIEVELOT updates brought inside transaction.
-- Lines passed as JSON array via @LinesJson (OPENJSON).
-- JSON line element shape:
--   { ContNo, ContDt, VarCode, CntCode, ArrivalType, BbFlag, PlotNo, PrNo, PrMark,
--     Quantity, GrossWt, TareWt, NetWt, RateCy, FullTruckWgt, EmptyTruckWgt,
--     TrashPer, MoisturePer, MoistureEt, CommrWt, DPDocno, DPDocDate,
--     GinCode, LotNoVal, IsCentralised }
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_Insert
    -- Header params
    @DivCode        VARCHAR(2),
    @ArrDate        DATETIME,
    @SupCd          VARCHAR(10),
    @BrkCd          VARCHAR(10)   = NULL,
    @AreaCode       VARCHAR(4),
    @CatCd          CHAR(1),
    @CarCode        VARCHAR(10),
    @LorryNos       VARCHAR(50)   = NULL,
    @Freight        DECIMAL(9,2)  = 0,
    @GcNo           VARCHAR(40)   = NULL,
    @LrNo           VARCHAR(20)   = NULL,
    @Godown         VARCHAR(2)    = NULL,
    @InwardNo       NUMERIC(9,0)  = NULL,
    @InwardDate     DATETIME      = NULL,
    @PlCode         VARCHAR(5)    = NULL,
    @LineNo         VARCHAR(18)   = NULL,
    @Weignment      VARCHAR(15)   = NULL,
    @LR_InDt        DATETIME      = NULL,
    @LR_InTime      DATETIME      = NULL,
    @LR_OutDt       DATETIME      = NULL,
    @LR_OutTime     DATETIME      = NULL,
    @GlobalDiv      VARCHAR(10)   = NULL,
    @PreparedBy     VARCHAR(50)   = NULL,
    @YfDate         DATETIME,
    @YlDate         DATETIME,
    -- Line items JSON array
    @LinesJson      NVARCHAR(MAX),
    -- Output
    @ArrNo          INT           = NULL OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;

    BEGIN TRY
        -- Step 1: Generate ARRNO within transaction with UPDLOCK+HOLDLOCK (CD-1 fix)
        SELECT @ArrNo = ISNULL(MAX(ARRNO), 0) + 1
        FROM   dbo.RM_ARRIVAL WITH (UPDLOCK, HOLDLOCK)
        WHERE  DIVCODE = @DivCode
          AND  ARRDATE BETWEEN @YfDate AND @YlDate;

        -- Step 2: Parse line items from JSON and insert into RM_ARRIVAL
        INSERT INTO dbo.RM_ARRIVAL
            (DIVCODE, ARRNO, ARRDATE, CONTNO, CONTDT, SUPCD, BRKCD, AREACODE, VARCODE,
             CNTCODE, CATCD, PLOTNO, PRNO, PRMARK, GCNO, CARCODE, LORRYNOS, FREIGHT,
             BBFLAG, RATECY, QUANTITY, GROSSWT, TAREWT, NETWT, weignment, GODOWN, LRNO,
             inwardno, inwarddate, FullTruckWgt, EmptyTruckWgt, Trashper, moisture_per,
             moisture_et, GINCODE, LR_InDt, LR_InTime, LR_OutDt, LR_OutTime,
             Line_No, PlCode, Globaldiv, DPDocno, DPDocDate, Commr_Wt,
             lotno, lotdt, lottype, Arrivaltype)
        SELECT
            @DivCode,
            @ArrNo,
            @ArrDate,
            j.ContNo,
            CAST(j.ContDt AS DATETIME),
            @SupCd,
            @BrkCd,
            @AreaCode,
            j.VarCode,
            j.CntCode,
            @CatCd,
            j.PlotNo,
            j.PrNo,
            j.PrMark,
            ISNULL(@GcNo, '0'),
            @CarCode,
            @LorryNos,
            @Freight,
            j.BbFlag,
            j.RateCy,
            j.Quantity,
            j.GrossWt,
            j.TareWt,
            j.NetWt,
            @Weignment,
            @Godown,
            ISNULL(@LrNo, '0'),
            @InwardNo,
            @InwardDate,
            j.FullTruckWgt,
            j.EmptyTruckWgt,
            j.TrashPer,
            j.MoisturePer,
            j.MoistureEt,
            j.GinCode,
            @LR_InDt,
            @LR_InTime,
            @LR_OutDt,
            @LR_OutTime,
            @LineNo,
            @PlCode,
            ISNULL(@GlobalDiv, @DivCode),
            j.DPDocno,
            j.DPDocDate,
            j.CommrWt,
            NULL,   -- lotno: set by downstream Lot/Bale module
            NULL,   -- lotdt: set by downstream Lot/Bale module
            'a',    -- lottype: initial value on arrival entry
            j.ArrivalType
        FROM OPENJSON(@LinesJson)
        WITH (
            ContNo       VARCHAR(10)   '$.ContNo',
            ContDt       VARCHAR(20)   '$.ContDt',
            VarCode      VARCHAR(10)   '$.VarCode',
            CntCode      VARCHAR(10)   '$.CntCode',
            ArrivalType  CHAR(1)       '$.ArrivalType',
            BbFlag       CHAR(1)       '$.BbFlag',
            PlotNo       VARCHAR(20)   '$.PlotNo',
            PrNo         VARCHAR(20)   '$.PrNo',
            PrMark       VARCHAR(15)   '$.PrMark',
            Quantity     NUMERIC(5,0)  '$.Quantity',
            GrossWt      DECIMAL(10,3) '$.GrossWt',
            TareWt       DECIMAL(8,3)  '$.TareWt',
            NetWt        DECIMAL(10,3) '$.NetWt',
            RateCy       DECIMAL(9,2)  '$.RateCy',
            FullTruckWgt NUMERIC(9,3)  '$.FullTruckWgt',
            EmptyTruckWgt NUMERIC(9,3) '$.EmptyTruckWgt',
            TrashPer     NUMERIC(5,2)  '$.TrashPer',
            MoisturePer  NUMERIC(10,3) '$.MoisturePer',
            MoistureEt   NUMERIC(10,3) '$.MoistureEt',
            CommrWt      NUMERIC(14,3) '$.CommrWt',
            DPDocno      NUMERIC(8,0)  '$.DPDocno',
            DPDocDate    DATETIME      '$.DPDocDate',
            GinCode      VARCHAR(7)    '$.GinCode',
            LotNoVal     NUMERIC(9,0)  '$.LotNoVal',
            IsCentralised CHAR(1)      '$.IsCentralised'
        ) AS j;

        -- Step 3: Update ReceivedNo on RM_ARRIVAL (comma-separated PO numbers)
        UPDATE dbo.RM_ARRIVAL
        SET    ReceivedNo = (
                   SELECT STRING_AGG(CAST(CONTNO AS VARCHAR(10)), ',')
                   FROM   dbo.RM_ARRIVAL
                   WHERE  ARRNO    = @ArrNo
                     AND  ARRDATE  = @ArrDate
                     AND  DIVCODE  = @DivCode
               )
        WHERE  ARRNO   = @ArrNo
          AND  ARRDATE = @ArrDate
          AND  DIVCODE = @DivCode;

        -- Step 4: Update RM_CONT balances (CD-2 fix: UPDLOCK prevents concurrent over-receipt)
        -- PackWise: update recqty
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RECQTY = ISNULL(rc.RECQTY, 0) + j.Quantity
        FROM   dbo.RM_CONT rc
        JOIN   OPENJSON(@LinesJson)
               WITH (
                   ContNo      VARCHAR(10) '$.ContNo',
                   ContDt      VARCHAR(20) '$.ContDt',
                   VarCode     VARCHAR(10) '$.VarCode',
                   ArrivalType CHAR(1)     '$.ArrivalType',
                   Quantity    NUMERIC(5,0)'$.Quantity',
                   IsCentralised CHAR(1)   '$.IsCentralised'
               ) AS j
               ON  rc.CONTNO  = j.ContNo
               AND rc.CONTDT  = CAST(j.ContDt AS DATETIME)
               AND rc.VARCODE = j.VarCode
               AND (j.IsCentralised = 'Y' OR rc.DIVCODE = @DivCode)
        WHERE  j.ArrivalType = 'P';

        -- KGSWise: update RCDKGS
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RCDKGS = ISNULL(rc.RCDKGS, 0) + j.NetWt
        FROM   dbo.RM_CONT rc
        JOIN   OPENJSON(@LinesJson)
               WITH (
                   ContNo      VARCHAR(10)   '$.ContNo',
                   ContDt      VARCHAR(20)   '$.ContDt',
                   VarCode     VARCHAR(10)   '$.VarCode',
                   ArrivalType CHAR(1)       '$.ArrivalType',
                   NetWt       DECIMAL(10,3) '$.NetWt',
                   IsCentralised CHAR(1)     '$.IsCentralised'
               ) AS j
               ON  rc.CONTNO  = j.ContNo
               AND rc.CONTDT  = CAST(j.ContDt AS DATETIME)
               AND rc.VARCODE = j.VarCode
               AND (j.IsCentralised = 'Y' OR rc.DIVCODE = @DivCode)
        WHERE  j.ArrivalType = 'K';

        -- Step 5: Update RM_DespatchDT when DPDocno is populated
        UPDATE ddt
        SET    ddt.RVDQTY = ISNULL(ddt.RVDQTY, 0) + j.Quantity,
               ddt.RVDKGS = ISNULL(ddt.RVDKGS, 0) + j.NetWt
        FROM   dbo.RM_DespatchDT ddt
        JOIN   OPENJSON(@LinesJson)
               WITH (
                   ContNo    VARCHAR(10)   '$.ContNo',
                   ContDt    VARCHAR(20)   '$.ContDt',
                   VarCode   VARCHAR(10)   '$.VarCode',
                   DPDocno   NUMERIC(8,0)  '$.DPDocno',
                   DPDocDate DATETIME      '$.DPDocDate',
                   Quantity  NUMERIC(5,0)  '$.Quantity',
                   NetWt     DECIMAL(10,3) '$.NetWt'
               ) AS j
               ON  ddt.DivCode = @DivCode
               AND ddt.DocNo   = j.DPDocno
               AND ddt.DocDate = j.DPDocDate
               AND ddt.VarCode = j.VarCode
        WHERE  j.DPDocno IS NOT NULL;

        -- Step 6: Audit log entry to RM_Trans_Log
        INSERT INTO dbo.RM_Trans_Log
            (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId)
        SELECT
            j.ContNo,
            CAST(j.ContDt AS DATETIME),
            @DivCode,
            'Add',
            GETDATE(),
            @PreparedBy
        FROM OPENJSON(@LinesJson)
        WITH (
            ContNo VARCHAR(10) '$.ContNo',
            ContDt VARCHAR(20) '$.ContDt'
        ) AS j;

        -- Step 7: Mark supplier lot numbers as received in RM_CONT_SLOTNO (CD-6 fix: inside transaction)
        UPDATE cs
        SET    cs.RECFLG = 'Y'
        FROM   dbo.RM_CONT_SLOTNO cs
        JOIN   OPENJSON(@LinesJson)
               WITH (
                   ContNo      VARCHAR(10)  '$.ContNo',
                   ContDt      VARCHAR(20)  '$.ContDt',
                   LotNoVal    NUMERIC(9,0) '$.LotNoVal',
                   IsCentralised CHAR(1)    '$.IsCentralised'
               ) AS j
               ON  cs.CONTNO = j.ContNo
               AND cs.CONTDT = CAST(j.ContDt AS DATETIME)
               AND cs.SLOTNO = j.LotNoVal
               AND (j.IsCentralised = 'Y' OR cs.DIVCODE = @DivCode)
        WHERE  j.LotNoVal IS NOT NULL;

        -- Step 8: Rebuild NONRECIEVELOT string on RM_CONT (CD-6 fix: inside transaction)
        -- Updates each unique PO line with remaining unreceived slots
        UPDATE rc
        SET    rc.NONRECIEVELOT = (
                   SELECT ISNULL(STRING_AGG(CAST(cs2.SLOTNO AS VARCHAR(20)), ','), '')
                   FROM   dbo.RM_CONT_SLOTNO cs2
                   WHERE  cs2.CONTNO  = rc.CONTNO
                     AND  cs2.CONTDT  = rc.CONTDT
                     AND  cs2.DIVCODE = rc.DIVCODE
                     AND  ISNULL(cs2.RECFLG, 'N') <> 'Y'
               )
        FROM   dbo.RM_CONT rc
        JOIN   OPENJSON(@LinesJson)
               WITH (
                   ContNo      VARCHAR(10) '$.ContNo',
                   ContDt      VARCHAR(20) '$.ContDt',
                   IsCentralised CHAR(1)   '$.IsCentralised'
               ) AS j
               ON  rc.CONTNO = j.ContNo
               AND rc.CONTDT = CAST(j.ContDt AS DATETIME)
               AND (j.IsCentralised = 'Y' OR rc.DIVCODE = @DivCode);

        -- Step 9: Link gate inward record (best-effort; io_materialInward may not exist for all arrivals)
        IF @InwardNo IS NOT NULL AND @InwardDate IS NOT NULL
        BEGIN
            UPDATE dbo.io_materialInward
            SET    po_flg = 'Y'
            WHERE  divcode = @DivCode
              AND  sno     = @InwardNo
              AND  date1   = @InwardDate;
        END;

        COMMIT TRANSACTION;

        SELECT @ArrNo AS ArrNo, 'SUCCESS' AS Status;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
