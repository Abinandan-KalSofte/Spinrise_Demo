CREATE OR ALTER PROCEDURE ksp_GetDepartments
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT DEPCODE, DEPNAME
    FROM   in_dep
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY DEPNAME;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        DEPCODE, DEPNAME
    FROM   in_dep
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (DEPCODE LIKE @Term OR DEPNAME LIKE @Term)
    ORDER BY
        CASE WHEN DEPCODE LIKE @Term THEN 0 ELSE 1 END,
        DEPNAME;
END
GO
