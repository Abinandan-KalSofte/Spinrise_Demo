CREATE OR ALTER PROCEDURE dbo.ksp_PR_GenerateNumber
    @DivCode VARCHAR(2),
    @FinYear VARCHAR(4)   -- financial year start, e.g. '2025'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo NUMERIC(6,0);

    -- Use full financial year date range (Apr 1 → Mar 31) so PRs in Jan–Mar
    -- of the second calendar year are included correctly.
    -- Cancelled records are intentionally included so their numbers are not reused.
    SELECT @NextNo = ISNULL(MAX(prno), 0) + 1
    FROM   dbo.po_prh WITH (UPDLOCK, HOLDLOCK)
    WHERE  divcode = @DivCode
      AND  prdate >= DATEFROMPARTS(TRY_CAST(@FinYear AS INT),     4, 1)
      AND  prdate <  DATEFROMPARTS(TRY_CAST(@FinYear AS INT) + 1, 4, 1);

    SELECT @NextNo AS NextNumber;
END;
