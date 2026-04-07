CREATE OR ALTER PROCEDURE ksp_GetEmployees
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT empno, ename
    FROM   pr_emp
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY ename;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        empno, ename
    FROM   pr_emp
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (empno LIKE @Term OR ename LIKE @Term)
    ORDER BY
        CASE WHEN empno LIKE @Term THEN 0 ELSE 1 END,
        ename;
END
GO
