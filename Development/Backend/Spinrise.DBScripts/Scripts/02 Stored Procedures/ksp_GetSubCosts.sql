CREATE OR ALTER PROCEDURE ksp_GetSubCosts
    @DivCode    VARCHAR(10),
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT SCCCODE, SCCNAME
    FROM   in_scc
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
    ORDER BY SCCNAME;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        SCCCODE, SCCNAME
    FROM   in_scc
    WHERE  active  = 'Y'
      AND  DIVCODE = @DivCode
      AND  (SCCCODE LIKE @Term OR SCCNAME LIKE @Term)
    ORDER BY
        CASE WHEN SCCCODE LIKE @Term THEN 0 ELSE 1 END,
        SCCNAME;
END
GO
