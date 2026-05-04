CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;

    SELECT code, description
    FROM   dbo.RM_DelReason
    ORDER BY code;
END;
