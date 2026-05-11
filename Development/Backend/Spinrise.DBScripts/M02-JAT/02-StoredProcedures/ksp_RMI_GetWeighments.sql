CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetWeighments
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CODE AS WCode,
           wname AS WName
    FROM   dbo.rm_WEIGHNMENT
    ORDER  BY wname;
END;
GO

