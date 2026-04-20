CREATE OR ALTER PROCEDURE dbo.ksp_PR_InsertAuditLog
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrDate       DATE,
    @DepCode      VARCHAR(3),
    @ReqName      VARCHAR(100)   = NULL,
    @SubCost      NUMERIC(5,0)   = NULL,
    @UserId       VARCHAR(50),
    @UserName     VARCHAR(100),
    @PrSNo        NUMERIC(5,0),
    @ItemCode     VARCHAR(10),
    @MachineNo    VARCHAR(5)     = NULL,
    @Rate         NUMERIC(13,4)  = NULL,
    @Quantity     NUMERIC(12,3),
    @TransMod     VARCHAR(10),       -- 'ADD', 'MODIFY', 'DELETE'
    @TransIPAddr  VARCHAR(50)    = NULL,
    @TransHost    VARCHAR(100)   = NULL,
    @LastPoRate   NUMERIC(13,4)  = NULL,
    @LastPoDate   DATE           = NULL,
    @LastPoSlCode VARCHAR(8)     = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.LogDet_PO
    (
        DivCode,
        PrNo,
        PrDate,
        DepCode,
        ReqName,
        Trans_UserId,
        SubCost,
        PrSNo,
        ItemCode,
        MacNo,
        Rate,
        Quantity,
        UserName,
        Trans_Date,
        Trans_Name,
        Trans_Mod,
        Trans_Host
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @ReqName,
        @UserId,
        @SubCost,
        @PrSNo,
        @ItemCode,
        @MachineNo,
        @Rate,
        @Quantity,
        @UserName,
        GETDATE(),
        'Purchase Requisition',
        @TransMod,
        @TransHost
    );
END;
