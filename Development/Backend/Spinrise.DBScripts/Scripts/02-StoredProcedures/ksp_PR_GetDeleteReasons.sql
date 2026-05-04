CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Delcode    AS ReasonCode,
        Delreason  AS ReasonDesc
    FROM  dbo.po_txndelreason
    WHERE ISNULL(active, 'Y') = 'Y'
    ORDER BY Delcode;
END;
