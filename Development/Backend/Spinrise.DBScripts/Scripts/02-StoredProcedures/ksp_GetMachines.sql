CREATE OR ALTER PROCEDURE ksp_GetMachines
    @DivCode    VARCHAR(10),
    @DepCode    VARCHAR(10)  = NULL,
    @SearchTerm VARCHAR(100) = NULL
AS
SET NOCOUNT ON;

DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(ISNULL(@SearchTerm, '')));

IF LEN(@Term) = 0
BEGIN
    SELECT MAC_NO, DESCRIPTION
    FROM   mm_macmas
    WHERE  DIVCODE = @DivCode
      AND  (@DepCode IS NULL OR DEPCODE = @DepCode)
    ORDER BY DESCRIPTION;
END
ELSE
BEGIN
    SET @Term = @Term + '%';

    SELECT TOP 20
        MAC_NO, DESCRIPTION
    FROM   mm_macmas
    WHERE  DIVCODE = @DivCode
      AND  (@DepCode IS NULL OR DEPCODE = @DepCode)
      AND  (MAC_NO LIKE @Term OR DESCRIPTION LIKE @Term)
    ORDER BY
        CASE WHEN MAC_NO LIKE @Term THEN 0 ELSE 1 END,
        DESCRIPTION;
END
GO
