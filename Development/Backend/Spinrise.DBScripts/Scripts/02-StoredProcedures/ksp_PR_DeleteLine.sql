CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteLine
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrDate       DATETIME,
    @PrSNo        NUMERIC(5,0),
    @DeleteReason VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

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
