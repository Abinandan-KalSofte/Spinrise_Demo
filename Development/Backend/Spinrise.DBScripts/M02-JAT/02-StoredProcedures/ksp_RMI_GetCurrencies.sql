CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetCurrencies
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        currcode                        AS CurrCode,
        ISNULL(currname, currcode)      AS CurrName
    FROM   dbo.fa_currency
    ORDER BY currcode;
END;
