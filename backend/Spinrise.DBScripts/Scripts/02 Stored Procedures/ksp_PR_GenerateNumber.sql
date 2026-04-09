CREATE OR ALTER PROCEDURE dbo.ksp_PR_GenerateNumber
    @DivCode VARCHAR(2),
    @FinYear VARCHAR(4)   -- financial year start, e.g. '2025'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo NUMERIC(6,0);

    SELECT @NextNo = ISNULL(MAX(prno), 0) + 1
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  YEAR(prdate) = TRY_CAST(@FinYear AS INT)
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @NextNo AS NextNumber;
END;
