CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetVarieties
    @Search VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 50
        v.VARCODE                    AS VarCode,
        ISNULL(v.VARNAME,  '')       AS VarName,
        ISNULL(v.HSN,      '')       AS HsnCode,
        ISNULL(v.CGSTPER,  0)        AS CgstPer,
        ISNULL(v.SGSTPER,  0)        AS SgstPer,
        ISNULL(v.IGSTPER,  0)        AS IgstPer,
        ISNULL(v.TAX_CODE, '')       AS TaxCode
    FROM   dbo.rm_var v
    WHERE  @Search IS NULL
        OR v.VARCODE LIKE '%' + @Search + '%'
        OR v.VARNAME LIKE '%' + @Search + '%'
    ORDER BY v.VARCODE;
END;
