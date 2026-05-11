-- Atomic PO number generation using SQL Server SEQUENCE (fixes CD-2 race condition)
-- Prerequisite: run Scripts/01-Tables/SEQ_RMI_PO_Number_Setup.sql ONCE on SpinRiseSaranya
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GenerateNumber
    @DivCode  VARCHAR(2),
    @Prefix   VARCHAR(2) = 'P',
    @FYear    INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT NEXT VALUE FOR dbo.SEQ_RMI_PO_NUMBER AS ContNo;
END;
GO
