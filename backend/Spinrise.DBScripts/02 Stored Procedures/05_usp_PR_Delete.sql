CREATE OR ALTER PROCEDURE dbo.usp_PR_Delete
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo;

    UPDATE dbo.po_prh
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
