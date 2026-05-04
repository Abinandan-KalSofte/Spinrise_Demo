CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertLine
    @DivCode          VARCHAR(2),
    @PrNo             NUMERIC(6,0),
    @PrDate           DATETIME,
    @PrSNo            NUMERIC(5,0),
    @ItemCode         VARCHAR(10),
    @ItemName         VARCHAR(200)  = NULL,
    @Uom              VARCHAR(3)    = NULL,
    @Rate             NUMERIC(13,4) = NULL,
    @CurrentStock     NUMERIC(12,3) = NULL,
    @QtyRequired      NUMERIC(12,3),
    @RequiredDate     DATETIME      = NULL,
    @Place            VARCHAR(40)   = NULL,
    @ApproxCost       NUMERIC(11,2) = NULL,
    @Remarks          VARCHAR(50)   = NULL,
    @MachineNo        VARCHAR(5)    = NULL,
    @CostCentreCode   VARCHAR(5)    = NULL,
    @BudgetGroupCode  VARCHAR(4)    = NULL,
    @SubCostCode      NUMERIC(5,0)  = NULL,
    @LastPoRate       NUMERIC(13,4) = NULL,
    @LastPoDate       DATETIME      = NULL,
    @LastPoSupplierCode VARCHAR(8)  = NULL,
    @LastPoSupplierName VARCHAR(100) = NULL,
    @IsSample         BIT,
    @Model            VARCHAR(100)  = NULL,
    @MaxCost          NUMERIC(11,2) = NULL,
    @CatCode          VARCHAR(1)    = NULL,
    @DrawNo           VARCHAR(25)   = NULL,   -- accepted but not stored (derived from IN_ITEM)
    @CatNo            VARCHAR(25)   = NULL    -- accepted but not stored (derived from IN_ITEM)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prl
    (
        divcode,
        prno,
        prdate,
        prsno,
        itemcode,
        macno,
        qtyind,
        reqddate,
        prstatus,
        remarks,
        CCCODE,
        RATE,
        APPCOST,
        BGRPCODE,
        PLACE,
        curstock,
        LPO_RATE,
        LPO_DATE,
        PUR_FROM,
        Sample,
        SubCost,
        ITEMMEMO,
        CATCODE
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @PrSNo,
        @ItemCode,
        @MachineNo,
        @QtyRequired,
        @RequiredDate,
        'O',
        @Remarks,
        TRY_CAST(@CostCentreCode AS NUMERIC(4,0)),
        @Rate,
        @ApproxCost,
        @BudgetGroupCode,
        @Place,
        @CurrentStock,
        @LastPoRate,
        @LastPoDate,
        @LastPoSupplierCode,
        CASE WHEN @IsSample = 1 THEN 'Y' ELSE 'N' END,
        @SubCostCode,
        @ItemName,
        @CatCode
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
