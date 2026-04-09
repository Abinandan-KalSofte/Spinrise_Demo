CREATE OR ALTER PROCEDURE dbo.ksp_PR_Delete
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @DeleteReason VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolve prdate for FK-safe line update
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

    -- Soft-delete all lines (mark as amended/cancelled)
    UPDATE dbo.po_prl
    SET    AmdFlg = 'Y'
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  ISNULL(AmdFlg, '') <> 'Y';

    -- Soft-delete header
    UPDATE dbo.po_prh
    SET    cancelflag = 'Y',
           canceldt   = GETDATE(),
           canreason  = @DeleteReason
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  ISNULL(cancelflag, '') <> 'Y';

    SELECT @@ROWCOUNT;
END;
