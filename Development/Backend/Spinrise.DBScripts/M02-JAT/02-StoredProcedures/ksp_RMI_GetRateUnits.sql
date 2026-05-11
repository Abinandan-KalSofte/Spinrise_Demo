CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetRateUnits
AS
BEGIN
    SET NOCOUNT ON;
    SELECT unitname AS UnitName,
           value    AS Value
    FROM   dbo.rm_rateunit
    ORDER  BY unitname;
END;
GO
