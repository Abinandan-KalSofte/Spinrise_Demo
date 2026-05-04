CREATE OR ALTER PROCEDURE ksp_GetItems
    @SearchTerm VARCHAR(100)
AS
SET NOCOUNT ON;

-- Items are company-wide (no division filter).
-- Require at least 2 characters to prevent full-table scans.
DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(@SearchTerm));

IF LEN(@Term) < 2
BEGIN
    SELECT TOP 0 ITEMCODE, ITEMNAME, UOM
    FROM in_item
    WHERE 1 = 0;
    RETURN;
END

SET @Term = @Term + '%';

SELECT TOP 20
    ITEMCODE,
    ITEMNAME,
    UOM
FROM   in_item
WHERE  IsItemActive = 1
  AND  (ITEMCODE LIKE @Term OR ITEMNAME LIKE @Term)
ORDER BY
    CASE WHEN ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
    ITEMNAME;
GO
