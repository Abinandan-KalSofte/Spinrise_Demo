-- Single-transaction PO insert: one RM_CONT row per variety + PR balance update (CD-3 fix)
-- Call this SP once per variety line. Discount rates and delivery schedule use separate SPs.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Insert
    -- Header params (repeated per variety call)
    @ContNo           NUMERIC(9,0),
    @ContDt           DATETIME,
    @DivCode          VARCHAR(2),
    @SupCd            VARCHAR(10),
    @PayMode          VARCHAR(10)   = NULL,
    @AreaCode         VARCHAR(10)   = NULL,
    @CurrCode         VARCHAR(5)    = NULL,
    @DlyType          VARCHAR(5)    = NULL,
    @Acceptance       VARCHAR(200)  = NULL,
    @Transport        VARCHAR(100)  = NULL,
    @SupFileName      VARCHAR(200)  = NULL,
    @CropYear         VARCHAR(20)   = NULL,
    @Season           VARCHAR(20)   = NULL,
    @FtFlg            CHAR(1)       = NULL,
    @FtAmt            NUMERIC(12,2) = 0,
    @TaxChoice        VARCHAR(20)   = NULL,
    @CommPer          NUMERIC(8,2)  = 0,
    @CommPerBal       NUMERIC(8,2)  = 0,
    @TcsPer           NUMERIC(8,2)  = 0,
    @SpotExpense      NUMERIC(12,2) = 0,
    @IncidentCharge   NUMERIC(8,2)  = 0,
    @SusCatType       VARCHAR(20)   = NULL,
    @PlCode           VARCHAR(10)   = NULL,
    @LineNo           INT           = 1,
    @SampleFlg        CHAR(1)       = 'N',
    @PreparedBy       VARCHAR(50)   = NULL,
    -- Line params (one call per variety)
    @VarCode          VARCHAR(10),
    @OrdQty           NUMERIC(12,2) = 0,
    @OrdKgs           NUMERIC(12,3) = 0,
    @CandyRate        NUMERIC(12,4) = 0,
    @PackType         VARCHAR(5)    = NULL,
    @BbFlag           CHAR(1)       = NULL,
    @CashDisPer       NUMERIC(8,2)  = 0,
    @TradeDisPer      NUMERIC(8,2)  = 0,
    @CessPer          NUMERIC(8,2)  = 0,
    @InsPer           NUMERIC(8,2)  = 0,
    @Hsn              VARCHAR(20)   = NULL,
    @CgstPer          NUMERIC(8,2)  = 0,
    @SgstPer          NUMERIC(8,2)  = 0,
    @IgstPer          NUMERIC(8,2)  = 0,
    @TaxCode          VARCHAR(20)   = NULL,
    @IPrNo            NUMERIC(6,0)  = NULL,
    @PrDate           DATETIME      = NULL,
    @PrSno            INT           = NULL,
    @MsDocNo          VARCHAR(10)   = NULL,
    @MsDocSno         VARCHAR(10)   = NULL,
    @NoOfLoad         INT           = 0,
    @RateKg           NUMERIC(12,4) = 0,
    -- Extended params added for full field coverage
    @AgentCode        VARCHAR(10)   = NULL,   -- BRKCD
    @ImInd            CHAR(1)       = 'L',    -- im_ind
    @MillRefNo        VARCHAR(20)   = NULL,   -- MILLREFNO
    @RateUnit         VARCHAR(20)   = NULL,   -- rateunit
    @ArrivalType      VARCHAR(1)    = 'P',    -- arrivaltype
    @FinalWeighment   VARCHAR(1)    = 'S',    -- FinalWeighment
    @BillingAddress   VARCHAR(10)   = NULL,   -- billadd
    @DeliveryAddrCode VARCHAR(10)   = NULL,   -- deladd
    @ContactPerson    VARCHAR(50)   = NULL,   -- contperson
    @Terms1           VARCHAR(50)   = NULL,   -- Terms1
    @Terms1Days       NUMERIC(10,0) = NULL,   -- Terms1Days
    @Terms2           VARCHAR(50)   = NULL,   -- Terms2
    @Terms2Days       NUMERIC(10,0) = NULL,   -- Terms2Days
    @CreditDays       NUMERIC(10,0) = NULL,   -- CREDITDAYS
    @InterestPer      NUMERIC(10,2) = NULL,   -- INTERESTPER
    @DeliveryTerms    VARCHAR(200)  = NULL,   -- DeliveryTerms
    @PerBaleTruck     VARCHAR(5)    = NULL,   -- perbaletruckbale
    @Grade            VARCHAR(15)   = NULL,   -- grade
    @Staple           VARCHAR(25)   = NULL,   -- STAPLE
    @Mic              VARCHAR(15)   = NULL,   -- MIC
    @Strength         VARCHAR(20)   = NULL,   -- STRENGTH
    @Moisture         VARCHAR(20)   = NULL,   -- moisture
    @Trash            VARCHAR(15)   = NULL,   -- trash
    @MillSampleNo     VARCHAR(10)   = NULL    -- SNO
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_CONT
        (CONTNO, CONTDT, DIVCODE, SUPCD, PAYMODE, AREACODE, CURRCODE, DLYTYPE,
         ACCEPTANCE, TRANSPORT, SUPFILENAME, CROPYEAR, SEASON, FTFLG, FTAMT,
         TAX_CHOICE, CommPer, commperbale, TCS_PER, SPOTEXPENSE,
         INCIDENTCHARGE, SUSCATTYPE, PLCODE, Line_No, SAMPLEFLG,
         VARCODE, ORDQTY, ORDKGS, CANDYRATE, BBFLAG,
         CASHDISPER, TRADEDISPER, CESSPER, INSPER,
         HSN, CGSTPER, SGSTPER, IGSTPER, TAX_CODE,
         IPRNO, PRDATE, PRSNO, MSDocno, MSDocsno, No_of_Load, RATEKG,
         Prepared_by,
         BRKCD, im_ind, MILLREFNO, rateunit, arrivaltype, FinalWeighment,
         billadd, deladd, contperson,
         Terms1, Terms1Days, Terms2, Terms2Days,
         CREDITDAYS, INTERESTPER, DeliveryTerms,
         perbaletruckbale, grade, STAPLE, MIC, STRENGTH, moisture, trash, SNO)
    VALUES
        (@ContNo, @ContDt, @DivCode, @SupCd, @PayMode, @AreaCode, @CurrCode, @DlyType,
         @Acceptance, @Transport, @SupFileName, @CropYear, @Season, @FtFlg, @FtAmt,
         @TaxChoice, @CommPer, @CommPerBal, @TcsPer, @SpotExpense,
         @IncidentCharge, @SusCatType, @PlCode, @LineNo, @SampleFlg,
         @VarCode, @OrdQty, @OrdKgs, @CandyRate, @BbFlag,
         @CashDisPer, @TradeDisPer, @CessPer, @InsPer,
         @Hsn, @CgstPer, @SgstPer, @IgstPer, @TaxCode,
         @IPrNo, @PrDate, @PrSno, @MsDocNo, @MsDocSno, @NoOfLoad, @RateKg,
         @PreparedBy,
         @AgentCode, @ImInd, @MillRefNo, @RateUnit, @ArrivalType, @FinalWeighment,
         @BillingAddress, @DeliveryAddrCode, @ContactPerson,
         @Terms1, @Terms1Days, @Terms2, @Terms2Days,
         @CreditDays, @InterestPer, @DeliveryTerms,
         @PerBaleTruck, @Grade, @Staple, @Mic, @Strength, @Moisture, @Trash, @MillSampleNo);

    -- CD-3 fix: update PR balance inside transaction (UPDLOCK prevents concurrent double-order)
    IF @IPrNo IS NOT NULL AND @PrSno IS NOT NULL
    BEGIN
        UPDATE dbo.Rm_PRL WITH (UPDLOCK)
        SET    qtyordKG = ISNULL(qtyordKG, 0) + @OrdQty
        WHERE  DIVCODE  = @DivCode
          AND  PRNO     = @IPrNo
          AND  PRDATE   = @PrDate
          AND  PRSNO    = @PrSno;
    END;

    SELECT @@ROWCOUNT AS RowsAffected;
END;
GO
