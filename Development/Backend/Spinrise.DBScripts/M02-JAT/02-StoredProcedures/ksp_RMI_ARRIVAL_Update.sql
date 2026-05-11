-- Standard Arrival Modify. Only allowed when lotno IS NULL (no downstream lot assignment).
-- Reverses old balance, applies new balance within one transaction.
-- Lines passed as JSON array; same shape as Insert.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_Update
    @DivCode        VARCHAR(2),
    @ArrNo          INT,
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
    @LinesJson      NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;

    BEGIN TRY
        -- Guard: block modify if lot assignment exists downstream
        IF EXISTS (
            SELECT 1 FROM dbo.RM_ARRIVAL
            WHERE  ARRNO   = @ArrNo
              AND  ARRDATE = @ArrDate
              AND  DIVCODE = @DivCode
              AND  lotno   IS NOT NULL
        )
        BEGIN
            ROLLBACK TRANSACTION;
            SELECT -1 AS ArrNo, 'LOT_ASSIGNED' AS Status;
            RETURN;
        END;

        -- Step 1: Reverse old RM_CONT PackWise balances
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RECQTY = ISNULL(rc.RECQTY, 0) - a.QUANTITY
        FROM   dbo.RM_CONT rc
        JOIN   dbo.RM_ARRIVAL a ON a.CONTNO  = rc.CONTNO
                                AND a.CONTDT  = rc.CONTDT
                                AND a.VARCODE = rc.VARCODE
        WHERE  a.ARRNO   = @ArrNo
          AND  a.ARRDATE = @ArrDate
          AND  a.DIVCODE = @DivCode
          AND  a.Arrivaltype = 'P';

        -- Step 2: Reverse old RM_CONT KGSWise balances
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RCDKGS = ISNULL(rc.RCDKGS, 0) - a.NETWT
        FROM   dbo.RM_CONT rc
        JOIN   dbo.RM_ARRIVAL a ON a.CONTNO  = rc.CONTNO
                                AND a.CONTDT  = rc.CONTDT
                                AND a.VARCODE = rc.VARCODE
        WHERE  a.ARRNO   = @ArrNo
          AND  a.ARRDATE = @ArrDate
          AND  a.DIVCODE = @DivCode
          AND  a.Arrivaltype = 'K';

        -- Step 3: Delete existing arrival lines
        DELETE FROM dbo.RM_ARRIVAL
        WHERE  ARRNO   = @ArrNo
          AND  ARRDATE = @ArrDate
          AND  DIVCODE = @DivCode;

        -- Step 4: Re-insert updated lines (same as Insert pattern)
        INSERT INTO dbo.RM_ARRIVAL
            (DIVCODE, ARRNO, ARRDATE, CONTNO, CONTDT, SUPCD, BRKCD, AREACODE, VARCODE,
             CNTCODE, CATCD, PLOTNO, PRNO, PRMARK, GCNO, CARCODE, LORRYNOS, FREIGHT,
             BBFLAG, RATECY, QUANTITY, GROSSWT, TAREWT, NETWT, weignment, GODOWN, LRNO,
             inwardno, inwarddate, FullTruckWgt, EmptyTruckWgt, Trashper, moisture_per,
             moisture_et, GINCODE, LR_InDt, LR_InTime, LR_OutDt, LR_OutTime,
             Line_No, PlCode, Globaldiv, DPDocno, DPDocDate, Commr_Wt,
             lotno, lotdt, lottype, Arrivaltype)
        SELECT
            @DivCode, @ArrNo, @ArrDate,
            j.ContNo, CAST(j.ContDt AS DATETIME),
            @SupCd, @BrkCd, @AreaCode, j.VarCode, j.CntCode, @CatCd,
            j.PlotNo, j.PrNo, j.PrMark,
            ISNULL(@GcNo, '0'), @CarCode, @LorryNos, @Freight,
            j.BbFlag, j.RateCy, j.Quantity, j.GrossWt, j.TareWt, j.NetWt,
            @Weignment, @Godown, ISNULL(@LrNo, '0'),
            @InwardNo, @InwardDate,
            j.FullTruckWgt, j.EmptyTruckWgt, j.TrashPer, j.MoisturePer, j.MoistureEt,
            j.GinCode, @LR_InDt, @LR_InTime, @LR_OutDt, @LR_OutTime,
            @LineNo, @PlCode, ISNULL(@GlobalDiv, @DivCode),
            j.DPDocno, j.DPDocDate, j.CommrWt,
            NULL, NULL, 'a', j.ArrivalType
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

        -- Step 5: Update ReceivedNo
        UPDATE dbo.RM_ARRIVAL
        SET    ReceivedNo = (
                   SELECT STRING_AGG(CAST(CONTNO AS VARCHAR(10)), ',')
                   FROM   dbo.RM_ARRIVAL
                   WHERE  ARRNO   = @ArrNo AND ARRDATE = @ArrDate AND DIVCODE = @DivCode
               )
        WHERE  ARRNO = @ArrNo AND ARRDATE = @ArrDate AND DIVCODE = @DivCode;

        -- Step 6: Apply new RM_CONT PackWise balances (UPDLOCK)
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RECQTY = ISNULL(rc.RECQTY, 0) + j.Quantity
        FROM   dbo.RM_CONT rc
        JOIN   OPENJSON(@LinesJson)
               WITH (ContNo VARCHAR(10)'$.ContNo', ContDt VARCHAR(20)'$.ContDt',
                     VarCode VARCHAR(10)'$.VarCode', ArrivalType CHAR(1)'$.ArrivalType',
                     Quantity NUMERIC(5,0)'$.Quantity', IsCentralised CHAR(1)'$.IsCentralised') AS j
               ON  rc.CONTNO = j.ContNo AND rc.CONTDT = CAST(j.ContDt AS DATETIME)
               AND rc.VARCODE = j.VarCode AND (j.IsCentralised='Y' OR rc.DIVCODE=@DivCode)
        WHERE  j.ArrivalType = 'P';

        -- Step 7: Apply new RM_CONT KGSWise balances (UPDLOCK)
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RCDKGS = ISNULL(rc.RCDKGS, 0) + j.NetWt
        FROM   dbo.RM_CONT rc
        JOIN   OPENJSON(@LinesJson)
               WITH (ContNo VARCHAR(10)'$.ContNo', ContDt VARCHAR(20)'$.ContDt',
                     VarCode VARCHAR(10)'$.VarCode', ArrivalType CHAR(1)'$.ArrivalType',
                     NetWt DECIMAL(10,3)'$.NetWt', IsCentralised CHAR(1)'$.IsCentralised') AS j
               ON  rc.CONTNO = j.ContNo AND rc.CONTDT = CAST(j.ContDt AS DATETIME)
               AND rc.VARCODE = j.VarCode AND (j.IsCentralised='Y' OR rc.DIVCODE=@DivCode)
        WHERE  j.ArrivalType = 'K';

        -- Step 8: Audit log
        INSERT INTO dbo.RM_Trans_Log
            (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId)
        SELECT j.ContNo, CAST(j.ContDt AS DATETIME), @DivCode, 'Modify', GETDATE(), @PreparedBy
        FROM   OPENJSON(@LinesJson)
               WITH (ContNo VARCHAR(10)'$.ContNo', ContDt VARCHAR(20)'$.ContDt') AS j;

        COMMIT TRANSACTION;
        SELECT @ArrNo AS ArrNo, 'SUCCESS' AS Status;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
