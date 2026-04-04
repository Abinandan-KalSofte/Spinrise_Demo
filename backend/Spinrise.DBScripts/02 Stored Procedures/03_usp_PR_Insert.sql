CREATE OR ALTER PROCEDURE dbo.usp_PR_Insert
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrDate DATE,
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @PrStatus VARCHAR(20),
    @CreatedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh
    (
        DivCode,
        PrNo,
        PrDate,
        DepCode,
        DepName,
        Section,
        SubCostCode,
        IType,
        ReqName,
        RefNo,
        SaleOrderNo,
        SaleOrderDate,
        PrStatus,
        CreatedBy
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @DepName,
        @Section,
        @SubCostCode,
        @IType,
        @ReqName,
        @RefNo,
        @SaleOrderNo,
        @SaleOrderDate,
        @PrStatus,
        @CreatedBy
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
GO

CREATE OR ALTER PROCEDURE dbo.usp_PR_InsertLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT,
    @ItemCode VARCHAR(30),
    @ItemName VARCHAR(200) = NULL,
    @Uom VARCHAR(20) = NULL,
    @Rate DECIMAL(18,4) = NULL,
    @CurrentStock DECIMAL(18,4) = NULL,
    @QtyRequired DECIMAL(18,4),
    @RequiredDate DATE = NULL,
    @Place VARCHAR(100) = NULL,
    @ApproxCost DECIMAL(18,2) = NULL,
    @Remarks VARCHAR(500) = NULL,
    @MachineNo VARCHAR(30) = NULL,
    @CostCentreCode VARCHAR(20) = NULL,
    @BudgetGroupCode VARCHAR(20) = NULL,
    @LastPoRate DECIMAL(18,4) = NULL,
    @LastPoDate DATE = NULL,
    @LastPoSupplierCode VARCHAR(20) = NULL,
    @LastPoSupplierName VARCHAR(100) = NULL,
    @IsSample BIT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prl
    (
        DivCode,
        PrNo,
        PrSNo,
        ItemCode,
        ItemName,
        Uom,
        Rate,
        CurrentStock,
        QtyRequired,
        RequiredDate,
        Place,
        ApproxCost,
        Remarks,
        MachineNo,
        CostCentreCode,
        BudgetGroupCode,
        LastPoRate,
        LastPoDate,
        LastPoSupplierCode,
        LastPoSupplierName,
        IsSample
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrSNo,
        @ItemCode,
        @ItemName,
        @Uom,
        @Rate,
        @CurrentStock,
        @QtyRequired,
        @RequiredDate,
        @Place,
        @ApproxCost,
        @Remarks,
        @MachineNo,
        @CostCentreCode,
        @BudgetGroupCode,
        @LastPoRate,
        @LastPoDate,
        @LastPoSupplierCode,
        @LastPoSupplierName,
        @IsSample
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
