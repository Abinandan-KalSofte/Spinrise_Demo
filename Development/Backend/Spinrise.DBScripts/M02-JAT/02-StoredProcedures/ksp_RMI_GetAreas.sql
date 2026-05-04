CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetAreas
    @Search VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 50
        a.AREACODE              AS AreaCode,
        ISNULL(a.AREANAME, '')  AS AreaName
    FROM   dbo.rm_area a
    WHERE  @Search IS NULL
        OR a.AREACODE LIKE '%' + @Search + '%'
        OR a.AREANAME LIKE '%' + @Search + '%'
    ORDER BY a.AREACODE;
END;
