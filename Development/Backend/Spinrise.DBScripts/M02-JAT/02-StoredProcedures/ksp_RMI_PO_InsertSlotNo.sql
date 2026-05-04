-- Post-commit lot number management (runs OUTSIDE main save transaction)
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertSlotNo
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @LotFrom NUMERIC(10,0),
    @LotTo   NUMERIC(10,0)
AS
BEGIN
    SET NOCOUNT ON;

    -- Remove previous lot rows for this PO
    DELETE FROM dbo.RM_CONT_SLOTNO
    WHERE  CONTNO  = @ContNo
      AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  DIVCODE = @DivCode;

    DECLARE @Lot     NUMERIC(10,0) = @LotFrom;
    DECLARE @LotList VARCHAR(MAX)  = '';

    WHILE @Lot <= @LotTo
    BEGIN
        INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO)
        VALUES (@DivCode, @ContNo, @ContDt, @Lot);

        SET @LotList = @LotList + CAST(@Lot AS VARCHAR) + ',';
        SET @Lot = @Lot + 1;
    END;

    IF LEN(@LotList) > 0
        SET @LotList = LEFT(@LotList, LEN(@LotList) - 1);

    -- Update comma-separated lot list on all RM_CONT rows for this PO
    UPDATE dbo.RM_CONT
    SET    NONRECIEVELOT = @LotList
    WHERE  CONTNO  = @ContNo
      AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  DIVCODE = @DivCode;
END;
