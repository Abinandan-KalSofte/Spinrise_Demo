CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetById
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Result 1: All RM_CONT variety rows for this PO (header + per-variety line data)
    SELECT
        c.CONTNO, c.CONTDT, c.DIVCODE, c.SUPCD,
        ISNULL(s.slname,      '')   AS SupplierName,
        c.PAYMODE,
        c.AREACODE,
        ISNULL(a.AREANAME,    '')   AS AreaName,
        c.CURRCODE,
        ISNULL(c.DLOTYPE,     '')   AS DlyType,
        ISNULL(c.ACCEPTANCE,  '')   AS Acceptance,
        ISNULL(c.TRANSPORT,   '')   AS Transport,
        ISNULL(c.SUPFILENAME, '')   AS SupFileName,
        ISNULL(c.CROPYEAR,    '')   AS CropYear,
        ISNULL(c.SEASON,      '')   AS Season,
        ISNULL(c.FTFLG,       '')   AS FtFlg,
        ISNULL(c.FTAMT,       0)    AS FtAmt,
        ISNULL(c.TAXCHOICE,   '')   AS TaxChoice,
        ISNULL(c.CommPer,     0)    AS CommPer,
        ISNULL(c.commperbale, 0)    AS CommPerBal,
        ISNULL(c.TCS_PER,     0)    AS TcsPer,
        ISNULL(c.SPOTEXPENSE, 0)    AS SpotExpense,
        ISNULL(c.INCIDENTCHARGE, 0) AS IncidentCharge,
        ISNULL(c.SUSCATTYPE,  '')   AS SusCatType,
        ISNULL(c.PLCODE,      '')   AS PlCode,
        ISNULL(c.Line_No,     0)    AS LineNo,
        ISNULL(c.SAMPLEFLG,   'N')  AS Wosample,
        ISNULL(c.FIRST_APPFLG,'')   AS FirstAppFlg,
        ISNULL(c.fappflg,     '')   AS FAppFlg,
        ISNULL(c.Appflg,      '')   AS AppFlg,
        ISNULL(c.CancelFlg,   '')   AS CancelFlag,
        ISNULL(c.NONRECIEVELOT,'')  AS NonRecieveLot,
        -- Per-variety line columns
        c.VARCODE,
        ISNULL(v.VARNAME,    '')    AS VarName,
        ISNULL(c.ORDQTY,     0)     AS OrdQty,
        ISNULL(c.ORDKGS,     0)     AS OrdKgs,
        ISNULL(c.CANDYRATE,  0)     AS CandyRate,
        ISNULL(c.PACKTYPE,   '')    AS PackType,
        ISNULL(c.BBFLAG,     '')    AS BbFlag,
        ISNULL(c.CASHDISPER, 0)     AS CashDisPer,
        ISNULL(c.TRADEDISPER,0)     AS TradeDisPer,
        ISNULL(c.CESSPER,    0)     AS CessPer,
        ISNULL(c.INSPER,     0)     AS InsPer,
        ISNULL(c.HSN,        '')    AS Hsn,
        ISNULL(c.CGSTPER,    0)     AS CgstPer,
        ISNULL(c.SGSTPER,    0)     AS SgstPer,
        ISNULL(c.IGSTPER,    0)     AS IgstPer,
        ISNULL(c.TAX_CODE,   '')    AS TaxCode,
        c.IPRNO,
        c.PRDATE,
        ISNULL(c.PRSNO,      0)     AS PrSno,
        ISNULL(c.MSDocno,    '')    AS MsDocNo,
        ISNULL(c.MSDocsno,   '')    AS MsDocSno,
        ISNULL(c.No_of_Load, 0)     AS NoOfLoad,
        ISNULL(c.RATEKG,     0)     AS RateKg,
        ISNULL(c.Prepared_by,'')    AS CreatedBy
    FROM   dbo.RM_CONT c
    LEFT JOIN dbo.fa_slmas s ON s.slcode   = c.SUPCD
    LEFT JOIN dbo.rm_area  a ON a.AREACODE = c.AREACODE
    LEFT JOIN dbo.rm_var   v ON v.VARCODE  = c.VARCODE
    WHERE  c.CONTNO  = @ContNo
      AND  CAST(c.CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  c.DIVCODE = @DivCode;

    -- Result 2: Delivery schedule rows
    SELECT
        d.DIVCODE, d.CONTNO, d.CONTDATE,
        d.DELDATE, d.QTY AS DelQty,
        ISNULL(d.deladd,      '') AS DelAddress,
        ISNULL(d.VARCODE,     '') AS VarCode,
        ISNULL(d.INSTRUCTION, '') AS Instruction
    FROM   dbo.RM_DELSCHED d
    WHERE  d.CONTNO  = @ContNo
      AND  CAST(d.CONTDATE AS DATE) = CAST(@ContDt AS DATE)
      AND  d.DIVCODE = @DivCode
    ORDER BY d.DELDATE;

    -- Result 3: Discount rate rows
    SELECT
        r.ContNo,
        r.Docdate AS ContDt,
        ISNULL(r.Varcode, '') AS VarCode,
        ISNULL(r.SUPCD,   '') AS SupCd,
        ISNULL(r.DType,   '') AS DiscType,
        ISNULL(r.DRate,   0)  AS DiscPer
    FROM   dbo.RM_ContDiscntRate r
    WHERE  r.ContNo  = @ContNo
      AND  CAST(r.Docdate AS DATE) = CAST(@ContDt AS DATE);
END;
