-- Returns all RM cotton categories for the category selection step in Add mode.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetCategories
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CATCD    AS CatCode,
        CATNAME  AS CatName,
        ISNULL(FATC, '') AS FaTc
    FROM dbo.RM_CAT
    ORDER BY CATCD;
END;
GO
