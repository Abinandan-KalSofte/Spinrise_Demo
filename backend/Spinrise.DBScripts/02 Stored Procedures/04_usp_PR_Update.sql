CREATE OR ALTER PROCEDURE dbo.usp_PR_Update
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @ModifiedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh
    SET DepCode = @DepCode,
        DepName = @DepName,
        Section = @Section,
        SubCostCode = @SubCostCode,
        IType = @IType,
        ReqName = @ReqName,
        RefNo = @RefNo,
        SaleOrderNo = @SaleOrderNo,
        SaleOrderDate = @SaleOrderDate,
        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
GO

CREATE OR ALTER PROCEDURE dbo.usp_PR_SoftDeleteLines
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;
END;
