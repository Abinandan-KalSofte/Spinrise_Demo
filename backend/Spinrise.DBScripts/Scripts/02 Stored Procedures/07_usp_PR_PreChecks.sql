
 CREATE OR ALTER PROCEDURE dbo.usp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE 
            @DeptExists BIT = 0

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode)
        SET @DeptExists = 1;

    SELECT
        
        @DeptExists AS DepartmentExists
END;