CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrDate
    @DivCode VARCHAR(2),
    @YFDate  DATE,    -- first day of financial year
    @YLDate  DATE     -- last day of financial year
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ISNULL(MAX(prdate), @YFDate) AS MaxPrDate
    FROM   dbo.po_prh
    WHERE  divcode             = @DivCode
      AND  prdate             >= @YFDate
      AND  prdate             <= @YLDate
      AND  ISNULL(cancelflag, '') <> 'Y';
END;
