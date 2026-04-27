CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDeliverySchedule
    @ContNo      VARCHAR(10),
    @ContDt      DATETIME,
    @DivCode     VARCHAR(2),
    @DelDate     DATETIME,
    @Qty         DECIMAL(10,2),
    @DelAdd      VARCHAR(30)  = NULL,
    @VarCode     VARCHAR(10)  = NULL,
    @Instruction VARCHAR(50)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.rm_delsched (contno, CONTDATE, Divcode, deldate, qty, DELADD, VARCODE, INSTRUCTION)
    VALUES (@ContNo, @ContDt, @DivCode, @DelDate, @Qty, @DelAdd, @VarCode, @Instruction);
END;
