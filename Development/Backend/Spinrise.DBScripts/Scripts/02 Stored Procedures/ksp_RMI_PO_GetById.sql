CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetById
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Result 1: PO variety lines (all RM_CONT rows for this PO)
    SELECT
        c.CONTNO         AS ContNo,
        c.CONTDT         AS ContDt,
        c.DIVCODE        AS DivCode,
        c.SUPCD          AS SupplierCode,
        s.slname         AS SupplierName,
        c.BRKCD          AS AgentCode,
        c.AREACODE       AS AreaCode,
        a.AREANAME       AS AreaName,
        a.STATION        AS Station,
        a.STATE          AS State,
        c.VARCODE        AS VarCode,
        v.VARNAME        AS VarName,
        c.CNTCODE        AS CountryCode,
        c.BBFLAG         AS BBFlag,
        c.ORDQTY         AS OrdQty,
        c.ORDKGS         AS OrdKgs,
        c.CANDYRATE      AS CandyRate,
        c.RATEKG         AS RateKg,
        c.PAYMODE        AS PayMode,
        c.DLYTYPE        AS DlyType,
        c.im_ind         AS ImInd,
        c.arrivaltype    AS ArrivalType,
        c.duedate        AS DueDate,
        c.CROPYEAR       AS CropYear,
        c.acceptance     AS Acceptance,
        c.PTY_CONTNO     AS PtyContNo,
        c.PLOTNO         AS PlotNo,
        c.Prno           AS WosamplePrNo,
        c.pressmarkno    AS PressMarkNo,
        c.rateunit       AS RateUnit,
        c.remarks        AS Remarks,
        c.deladd         AS DeliveryAddCode,
        c.billadd        AS BillingAddCode,
        c.contperson     AS ContactPerson,
        c.SEASON         AS Season,
        c.MILLREFNO      AS MillRefNo,
        c.CASHDISPER     AS CashDisPer,
        c.TRADEDISPER    AS TradeDisPer,
        c.CESSPER        AS CessPer,
        c.INSPER         AS InsPer,
        c.TAX_CODE       AS TaxCode,
        c.TAX_CHOICE     AS TaxChoice,
        c.CREDITDAYS     AS CreditDays,
        c.INTERESTPER    AS InterestPer,
        c.SUPPLIERLOTNOFROM AS SupplierLotFrom,
        c.SUPPLIERLOTNOTO   AS SupplierLotTo,
        c.FinalWeighment AS FinalWeighment,
        c.NONRECIEVELOT  AS NonRecieveLot,
        c.SAMPLEFLG      AS SampleFlg,
        c.CommPer        AS CommPer,
        c.Terms1         AS Terms1,
        c.Terms1Days     AS Terms1Days,
        c.Terms2         AS Terms2,
        c.Terms2Days     AS Terms2Days,
        c.TransPort      AS Transport,
        c.IPRNO          AS IPrNo,
        c.PRDATE         AS PrDate,
        c.PRSNO          AS PrSNo,
        c.FIRST_APPFLG   AS FirstAppFlg,
        c.APPFLG         AS AppFlg,
        c.APPUSERID      AS AppUserId,
        c.APPDATE        AS AppDate,
        c.CurrCode       AS CurrCode,
        c.DeliveryTerms  AS DeliveryTerms,
        c.HSN            AS HSN,
        c.cgstper        AS CgstPer,
        c.sgstper        AS SgstPer,
        c.igstper        AS IgstPer,
        c.FTAmt          AS FTAmt,
        c.FTFlg          AS FTFlg,
        c.prepDate       AS PrepDate,
        c.SusCatType     AS SusCatType,
        c.paycode        AS PayCode,
        c.Line_No        AS LineNo,
        c.PlCode         AS PlCode,
        c.SupFileName    AS SupFileName,
        c.TCS_PER        AS TcsPer,
        c.Grade          AS Grade,
        c.STAPLE         AS Staple,
        c.MIC            AS Micronaire,
        c.Strength       AS Strength,
        c.Moisture       AS Moisture,
        c.Trash          AS Trash,
        c.No_of_Load     AS NoOfLoad,
        c.MSDocno        AS MSDocNo,
        c.MSDocsno       AS MSDocSno,
        c.freightperbale AS FreightPerBale,
        c.Prepared_by    AS PreparedBy,
        c.CancelFlg      AS CancelFlg,
        c.CANCELDT       AS CancelDt,
        c.Mod_dt         AS ModDt,
        c.Mod_UserId     AS ModUserId,
        c.Amdnos         AS AmdNos
    FROM   dbo.RM_CONT c
    LEFT JOIN dbo.fa_slmas s ON c.SUPCD = s.slcode
    LEFT JOIN dbo.rm_area  a ON c.AREACODE = a.AREACODE
    LEFT JOIN dbo.rm_var   v ON c.VARCODE  = v.VARCODE
    WHERE  c.CONTNO  = @ContNo
      AND  c.CONTDT  = @ContDt
      AND  c.DIVCODE = @DivCode
    ORDER BY c.VARCODE;

    -- Result 2: Delivery schedule
    SELECT
        d.contno    AS ContNo,
        d.CONTDATE  AS ContDt,
        d.Divcode   AS DivCode,
        d.deldate   AS DelDate,
        d.qty       AS Qty,
        d.DELADD    AS DelAdd,
        d.VARCODE   AS VarCode,
        d.INSTRUCTION AS Instruction
    FROM   dbo.rm_delsched d
    WHERE  d.contno   = @ContNo
      AND  d.CONTDATE = @ContDt
      AND  d.Divcode  = @DivCode
    ORDER BY d.deldate;

    -- Result 3: Discount rates
    SELECT
        r.ContNo    AS ContNo,
        r.Contdt    AS ContDt,
        r.Divcode   AS DivCode,
        r.Varcode   AS VarCode,
        r.DType     AS DType,
        r.DRate     AS DRate,
        r.Docno     AS Docno,
        r.DocSno    AS DocSno
    FROM   dbo.RM_ContDiscntRate r
    WHERE  r.ContNo  = CAST(@ContNo AS NUMERIC)
      AND  r.Contdt  = @ContDt
      AND  r.Divcode = @DivCode
    ORDER BY r.DType;

    -- Result 4: Approval status from PO_ParaPOApproval config
    SELECT
        p.AppSno,
        p.AppLevelId,
        p.AppLevelName,
        p.AppUserId,
        p.AppUserName,
        p.AppUserPrintName,
        p.AppDesignation,
        p.AppLevel,
        p.AppActiveFlg,
        p.imagePath
    FROM   dbo.PO_ParaPOApproval p
    WHERE  p.divcode = @DivCode
      AND  ISNULL(p.AppActiveFlg,'Y') = 'Y'
    ORDER BY p.AppSno;
END;
