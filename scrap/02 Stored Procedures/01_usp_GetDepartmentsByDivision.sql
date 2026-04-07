CREATE OR ALTER PROCEDURE dbo.usp_GetDepartmentsByDivision
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        DEPCODE,
        DEPNAME        
    FROM dbo.IN_DEP
    WHERE active ='Y'
    ORDER BY 
        ISNULL(SEQNO, 0),
        DEPCODE;
END;