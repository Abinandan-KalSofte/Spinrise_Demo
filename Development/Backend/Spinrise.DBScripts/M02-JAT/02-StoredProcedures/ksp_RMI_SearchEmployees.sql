CREATE OR ALTER PROCEDURE dbo.ksp_RMI_SearchEmployees
    @Term VARCHAR(100) = ''
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TOP 50
           empcode AS EmpCode,
           ename   AS EmpName
    FROM   dbo.pr_emp
    WHERE  (empcode LIKE '%' + @Term + '%' OR ename LIKE '%' + @Term + '%')
    ORDER  BY ename;
END;
GO
