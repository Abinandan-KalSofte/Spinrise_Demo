CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertLine
    @DivCode          VARCHAR(2),
    @PrNo             NUMERIC(6,0),
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
    @CatCode          VARCHAR(1)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Resolve prdate from header for FK integrity (PO_PRL FK references divcode+prno+prdate)
    DECLARE @PrDate DATETIME;
    SELECT @PrDate = prdate
    FROM   dbo.po_prh
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo;

    IF @PrDate IS NULL
    BEGIN
        RAISERROR('PR header not found for divcode=%s, prno=%d', 16, 1, @DivCode, @PrNo);
        RETURN;
    END;

    INSERT INTO dbo.po_prl
    (
        divcode,
        prno,
        prdate,
        prsno,
        itemcode,
        macno,
        qtyreqd,
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
