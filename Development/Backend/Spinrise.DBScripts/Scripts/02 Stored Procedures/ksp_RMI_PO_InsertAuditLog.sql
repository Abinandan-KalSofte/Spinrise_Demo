CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertAuditLog
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @SupCd           VARCHAR(10)   = NULL,
    @VarCode         VARCHAR(10)   = NULL,
    @ArrivalType     VARCHAR(1)    = NULL,
    @OrdQty          NUMERIC(10,0) = 0,
    @OrdKgs          NUMERIC(15,3) = 0,
    @CandyRate       NUMERIC(15,7) = 0,
    @RateKg          NUMERIC(15,7) = 0,
    @CurrCode        VARCHAR(5)    = NULL,
    @HSN             VARCHAR(9)    = NULL,
    @TaxCode         VARCHAR(9)    = NULL,
    @CgstPer         NUMERIC(9,2)  = 0,
    @SgstPer         NUMERIC(9,2)  = 0,
    @IgstPer         NUMERIC(9,2)  = 0,
    @TransMod        VARCHAR(5),     -- ADD / MODIFY / DELETE
    @TransUserId     VARCHAR(12)   = NULL,
    @TransIPAddr     VARCHAR(18)   = NULL,
    @TransHost       VARCHAR(18)   = NULL,
    @DeleteReasonCode VARCHAR(4)   = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_Trans_Log
    (
        Divcode, Trans_Name, Trans_Mod, Trans_UserId, Trans_date,
        ContNo, Contdt, Slcode, Varcode, ArrivalType,
        ordqty, ordkgs, RateCY, RateKg, currency,
        HSN, TaxCode, Cgstper, Sgstper, Igstper,
        Trans_Host, Trans_IPADD, DelReason
    )
    VALUES
    (
        @DivCode, 'RMI Purchase Order', @TransMod, @TransUserId, GETDATE(),
        TRY_CAST(@ContNo AS NUMERIC(10,0)), @ContDt, @SupCd, @VarCode, @ArrivalType,
        @OrdQty, @OrdKgs, @CandyRate, @RateKg, @CurrCode,
        @HSN, @TaxCode, @CgstPer, @SgstPer, @IgstPer,
        @TransHost, @TransIPAddr, @DeleteReasonCode
    );
END;
