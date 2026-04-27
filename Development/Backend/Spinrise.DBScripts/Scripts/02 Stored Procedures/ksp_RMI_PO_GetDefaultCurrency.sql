CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDefaultCurrency
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(CurrCode, '') AS CurrCode
    FROM   dbo.PO_PARA
    WHERE  divcode = @DivCode;
END;
