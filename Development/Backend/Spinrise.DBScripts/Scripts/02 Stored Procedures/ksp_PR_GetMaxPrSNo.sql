CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetMaxPrSNo
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;
    -- Returns max prsno across ALL lines (including soft-deleted AmdFlg='Y' rows).
    -- The caller adds 1 to this to get the first safe prsno for the next insert batch,
    -- avoiding PK collisions after SoftDeleteLines sets AmdFlg without removing rows.
    SELECT ISNULL(MAX(prsno), 0)
    FROM   dbo.po_prl
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;
END;
