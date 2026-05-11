CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_DeleteLinesForUpdate
    @ContNo   DECIMAL(10,0),
    @ContDt   DATETIME,
    @DivCode  VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.RM_ContDiscntRate WHERE contno  = @ContNo AND contdt   = @ContDt AND divcode = @DivCode;
    DELETE FROM dbo.RM_DELSCHED       WHERE contno  = @ContNo AND contdate = @ContDt AND divcode = @DivCode;
    DELETE FROM dbo.RM_CONT           WHERE CONTNO  = @ContNo AND CONTDT   = @ContDt AND DIVCODE = @DivCode;
END;
GO
