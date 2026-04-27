CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertSlotNo
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @LotFrom NUMERIC(12,0),
    @LotTo   NUMERIC(12,0)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete existing lot rows for this PO (refresh on save)
    DELETE FROM dbo.RM_CONT_SLOTNO
    WHERE  CONTNO  = @ContNo
      AND  CONTDT  = @ContDt
      AND  DIVCODE = @DivCode;

    DECLARE @LotList VARCHAR(500) = '';
    DECLARE @Curr    NUMERIC(20,0) = @LotFrom;

    IF @LotFrom = @LotTo OR @LotFrom = 0
    BEGIN
        -- Single lot
        IF @LotFrom > 0
        BEGIN
            INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO, RECFLG)
            VALUES (@DivCode, @ContNo, @ContDt, @LotFrom, 'N');

            SET @LotList = CAST(@LotFrom AS VARCHAR);
        END
    END
    ELSE
    BEGIN
        -- Range of lots
        WHILE @Curr <= @LotTo
        BEGIN
            INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO, RECFLG)
            VALUES (@DivCode, @ContNo, @ContDt, @Curr, 'N');

            IF @LotList <> '' SET @LotList = @LotList + ',';
            SET @LotList = @LotList + CAST(@Curr AS VARCHAR);
            SET @Curr = @Curr + 1;
        END
    END

    -- Update NONRECIEVELOT on RM_CONT with comma-separated list
    IF @LotList <> ''
    BEGIN
        UPDATE dbo.RM_CONT
        SET    NONRECIEVELOT = @LotList
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;
    END
END;
