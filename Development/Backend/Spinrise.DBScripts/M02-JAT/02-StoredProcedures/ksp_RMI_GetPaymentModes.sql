CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetPaymentModes
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        paymode                AS PmCode,
        ISNULL(paydesc, '')    AS PmName
    FROM   dbo.rm_pmode
    ORDER BY paymode;
END;
