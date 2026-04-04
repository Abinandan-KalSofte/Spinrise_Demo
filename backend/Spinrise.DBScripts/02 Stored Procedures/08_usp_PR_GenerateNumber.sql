CREATE OR ALTER PROCEDURE dbo.usp_PR_GenerateNumber
    @DivCode VARCHAR(10),
    @FinYear VARCHAR(9)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo INT;

    SELECT @NextNo = ISNULL(MAX(CAST(RIGHT(PrNo, 5) AS INT)), 0) + 1
    FROM dbo.po_prh
    WHERE DivCode = @DivCode
      AND PrNo LIKE '%' + @FinYear + '%'
      AND IsDeleted = 0;

    SELECT @NextNo AS NextNumber;
END;
