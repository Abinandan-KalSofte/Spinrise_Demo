CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrSNo
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0),
    @PrDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    -- Returns max prsno scoped to the exact (divcode, prno, prdate) key.
    -- Includes soft-deleted AmdFlg='Y' rows so new inserts continue the sequence
    -- and avoid PK collisions with previously soft-deleted lines.
    SELECT ISNULL(MAX(prsno), 0)
    FROM   dbo.po_prl
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate;
END;
