CREATE OR ALTER PROCEDURE ksp_PR_GetItemMinLevel
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
    SELECT ISNULL(MINLEVEL, 0)
    FROM   IN_ITEM
    WHERE  ITEMCODE = @ItemCode  -- IN_ITEM is global; no DIVCODE column
