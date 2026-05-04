CREATE OR ALTER PROCEDURE dbo.ksp_PR_SoftDeleteLines
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0),
    @PrDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Physical delete scoped to the exact (divcode, prno, prdate) composite key.
    -- The update flow does full replace: delete all existing lines, then re-insert the
    -- submitted set. This keeps po_prl at exactly N rows per PR (one per active line),
    -- avoiding the unlimited row accumulation of the old soft-delete pattern.
    DELETE FROM dbo.po_prl
    WHERE divcode = @DivCode
      AND prno    = @PrNo
      AND prdate  = @PrDate;
END;
