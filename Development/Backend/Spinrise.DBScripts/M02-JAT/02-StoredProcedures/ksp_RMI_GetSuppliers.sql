CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetSuppliers
    @Search VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 50
        s.slcode                AS SupCode,
        ISNULL(s.slname, '')    AS SupName
    FROM   dbo.fa_slmas s
    WHERE  @Search IS NULL
        OR s.slcode LIKE '%' + @Search + '%'
        OR s.slname LIKE '%' + @Search + '%'
    ORDER BY s.slcode;
END;
