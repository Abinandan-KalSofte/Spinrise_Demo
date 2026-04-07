CREATE OR ALTER PROCEDURE dbo.usp_PR_DeleteLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND PrSNo = @PrSNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
