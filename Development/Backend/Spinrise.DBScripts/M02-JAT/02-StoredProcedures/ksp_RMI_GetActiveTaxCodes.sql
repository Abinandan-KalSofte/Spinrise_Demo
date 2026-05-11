CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetActiveTaxCodes
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TAX_CODE            AS TaxCode,
           DESCRIPTION            AS TaxName,
           ISNULL(ST_PER, 0) AS TaxPer
    FROM   dbo.ig_tax
    WHERE  ISNULL(active, 'Y') = 'Y'
    ORDER  BY taxcode;
END;
GO