CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDeliverySchedule
    @ContNo      NUMERIC(9,0),
    @ContDt      DATETIME,
    @DivCode     VARCHAR(2),
    @DelDate     DATE,
    @DelQty      NUMERIC(12,2),
    @DelAddress  VARCHAR(200) = NULL,
    @VarCode     VARCHAR(10)  = NULL,
    @Instruction VARCHAR(500) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_DELSCHED (DIVCODE, CONTNO, CONTDATE, DELDATE, QTY, deladd, VARCODE, INSTRUCTION)
    VALUES (@DivCode, @ContNo, @ContDt, @DelDate, @DelQty, @DelAddress, @VarCode, @Instruction);
END;
