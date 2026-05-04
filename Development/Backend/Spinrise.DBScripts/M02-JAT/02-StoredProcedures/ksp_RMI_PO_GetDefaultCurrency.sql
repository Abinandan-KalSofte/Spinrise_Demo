CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDefaultCurrency
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(CurrCode, 'INR') AS CurrCode
    FROM   dbo.PO_Para
    WHERE  Divcode = @DivCode;
END;
