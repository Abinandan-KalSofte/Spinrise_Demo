CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteLine
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrSNo        NUMERIC(5,0),
    @DeleteReason VARCHAR(100) = NULL
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
    BEGIN
        SELECT 0;
        RETURN;
    END;

    UPDATE dbo.po_prl
    SET    AmdFlg       = 'Y',
           deletereason = @DeleteReason
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  prsno   = @PrSNo
      AND  ISNULL(AmdFlg, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
