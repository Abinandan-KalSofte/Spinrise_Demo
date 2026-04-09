CREATE OR ALTER PROCEDURE dbo.ksp_PR_SoftDeleteLines
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolve prdate from header for FK integrity (PO_PRL PK includes prdate)
    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
        RETURN;

    UPDATE dbo.po_prl
    SET    AmdFlg = 'Y'
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  ISNULL(AmdFlg, '') <> 'Y';
END;
