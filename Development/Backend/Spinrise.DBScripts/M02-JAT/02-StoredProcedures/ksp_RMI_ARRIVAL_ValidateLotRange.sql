-- Validates that a supplier lot number falls within the PO's registered lot range.
-- Returns 1 if valid, 0 if outside range or range not defined.
-- Used when SuppLotNoReqArrival=Y (LV-10).
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_ValidateLotRange
    @DivCode       VARCHAR(2),
    @ContNo        VARCHAR(10),
    @ContDt        DATETIME,
    @VarCode       VARCHAR(10),
    @LotNo         NUMERIC(9,0),
    @IsCentralised CHAR(1) = 'N'   -- when Y, omit DIVCODE filter
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FromLot NUMERIC(9,0), @ToLot NUMERIC(9,0);

    IF @IsCentralised = 'Y'
    BEGIN
        SELECT @FromLot = SUPPLIERLOTNOFROM, @ToLot = SUPPLIERLOTNOTO
        FROM   dbo.RM_CONT
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  VARCODE = @VarCode;
    END
    ELSE
    BEGIN
        SELECT @FromLot = SUPPLIERLOTNOFROM, @ToLot = SUPPLIERLOTNOTO
        FROM   dbo.RM_CONT
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  VARCODE = @VarCode
          AND  DIVCODE = @DivCode;
    END;

    IF @FromLot IS NULL OR @ToLot IS NULL
        SELECT 0 AS IsValid, 'No lot range defined on PO' AS Message;
    ELSE IF @LotNo BETWEEN @FromLot AND @ToLot
        SELECT 1 AS IsValid, 'OK' AS Message;
    ELSE
        SELECT 0 AS IsValid,
               'Lot number must be between ' + CAST(@FromLot AS VARCHAR) +
               ' and ' + CAST(@ToLot AS VARCHAR) AS Message;
END;
GO
