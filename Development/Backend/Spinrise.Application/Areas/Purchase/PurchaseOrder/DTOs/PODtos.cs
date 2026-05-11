using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;

// ── List / Pagination ──────────────────────────────────────────────────────
public class POListQueryDto
{
    public int     Page         { get; set; } = 1;
    public int     PageSize     { get; set; } = 20;
    public string? SearchText   { get; set; }
    public string? FromDate     { get; set; }
    public string? ToDate       { get; set; }
    public string? SupplierCode { get; set; }
    public string? Status       { get; set; }
    public string  DivCode      { get; set; } = string.Empty;
}

public class POSummaryResponseDto
{
    public decimal  ContNo       { get; set; }
    public DateTime ContDt       { get; set; }
    public string   DivCode      { get; set; } = string.Empty;
    public string   SupCd        { get; set; } = string.Empty;
    public string   SupplierName { get; set; } = string.Empty;
    public int      VarietyCount { get; set; }
    public string   FirstAppFlg  { get; set; } = string.Empty;
    public string   FAppFlg      { get; set; } = string.Empty;
    public string   AppFlg       { get; set; } = string.Empty;
    public string   CancelFlag   { get; set; } = string.Empty;
    public string?  CreatedBy    { get; set; }
    public int      TotalCount   { get; set; }
}

// ── Detail ────────────────────────────────────────────────────────────────
public class POLineResponseDto
{
    public decimal   ContNo        { get; set; }
    public DateTime  ContDt        { get; set; }
    public string    DivCode       { get; set; } = string.Empty;
    public string    SupCd         { get; set; } = string.Empty;
    public string    SupplierName  { get; set; } = string.Empty;
    public string    PayMode       { get; set; } = string.Empty;
    public string    AreaCode      { get; set; } = string.Empty;
    public string    AreaName      { get; set; } = string.Empty;
    public string    CurrCode      { get; set; } = string.Empty;
    public string    DlyType       { get; set; } = string.Empty;
    public string    Acceptance    { get; set; } = string.Empty;
    public string    Transport     { get; set; } = string.Empty;
    public string    SupFileName   { get; set; } = string.Empty;
    public string    CropYear      { get; set; } = string.Empty;
    public string    Season        { get; set; } = string.Empty;
    public string    FtFlg         { get; set; } = string.Empty;
    public decimal   FtAmt         { get; set; }
    public string    TaxChoice     { get; set; } = string.Empty;
    public decimal   CommPer       { get; set; }
    public decimal   CommPerBal    { get; set; }
    public decimal   TcsPer        { get; set; }
    public decimal   SpotExpense   { get; set; }
    public decimal   IncidentCharge{ get; set; }
    public string    SusCatType    { get; set; } = string.Empty;
    public string    PlCode        { get; set; } = string.Empty;
    public int       LineNo        { get; set; }
    public string    Wosample      { get; set; } = "N";   // maps to SAMPLEFLG (aliased in SP)
    public string    FirstAppFlg   { get; set; } = string.Empty;
    public string    FAppFlg       { get; set; } = string.Empty;
    public string    AppFlg        { get; set; } = string.Empty;
    public string    CancelFlag    { get; set; } = string.Empty;
    public string    NonRecieveLot { get; set; } = string.Empty;
    // Per-variety
    public string    VarCode       { get; set; } = string.Empty;
    public string    VarName       { get; set; } = string.Empty;
    public decimal   OrdQty        { get; set; }
    public decimal   OrdKgs        { get; set; }
    public decimal   CandyRate     { get; set; }
    public string    PackType      { get; set; } = string.Empty;
    public string    BbFlag        { get; set; } = string.Empty;
    public decimal   CashDisPer    { get; set; }
    public decimal   TradeDisPer   { get; set; }
    public decimal   CessPer       { get; set; }
    public decimal   InsPer        { get; set; }
    public string    Hsn           { get; set; } = string.Empty;
    public decimal   CgstPer       { get; set; }
    public decimal   SgstPer       { get; set; }
    public decimal   IgstPer       { get; set; }
    public string    TaxCode       { get; set; } = string.Empty;
    public decimal?  IPrNo         { get; set; }
    public DateTime? PrDate        { get; set; }
    public int       PrSno         { get; set; }
    public string    MsDocNo       { get; set; } = string.Empty;
    public string    MsDocSno      { get; set; } = string.Empty;
    public int       NoOfLoad      { get; set; }
    public decimal   RateKg        { get; set; }
    public string?   CreatedBy     { get; set; }
    // ── Extended header fields ────────────────────────────────────────────────
    public string?   AgentCode       { get; set; }
    public string?   ArrivalType     { get; set; }
    public string?   FinalWeighment  { get; set; }
    public string?   RateUnit        { get; set; }
    public string?   ImInd           { get; set; }
    public string?   MillRefNo       { get; set; }
    public string?   BillingAddress  { get; set; }
    public string?   DeliveryAddrCode{ get; set; }
    public string?   ContactPerson   { get; set; }
    public string?   Terms1          { get; set; }
    public int?      Terms1Days      { get; set; }
    public string?   Terms2          { get; set; }
    public int?      Terms2Days      { get; set; }
    public int?      CreditDays      { get; set; }
    public decimal?  InterestPer     { get; set; }
    public string?   DeliveryTerms   { get; set; }
    public string?   PerBaleTruck    { get; set; }
    // Quality — all string? because DB columns are varchar
    public string?   Grade           { get; set; }
    public string?   Staple          { get; set; }
    public string?   Mic             { get; set; }
    public string?   Strength        { get; set; }
    public string?   Moisture        { get; set; }
    public string?   Trash           { get; set; }
}

public class DeliveryScheduleResponseDto
{
    public string    DivCode     { get; set; } = string.Empty;
    public decimal   ContNo      { get; set; }
    public DateTime  ContDate    { get; set; }
    public DateTime  DelDate     { get; set; }
    public decimal   DelQty      { get; set; }
    public string    DelAddress  { get; set; } = string.Empty;
    public string    VarCode     { get; set; } = string.Empty;
    public string    Instruction { get; set; } = string.Empty;
    public string?   Weighment   { get; set; }
}

public class DiscountRateDto
{
    public decimal   ContNo   { get; set; }
    public DateTime  ContDt   { get; set; }   // aliased from Docdate in SP
    public string    VarCode  { get; set; } = string.Empty;
    public string    SupCd    { get; set; } = string.Empty;
    public string    DiscType { get; set; } = string.Empty;
    public decimal   DiscPer  { get; set; }   // aliased from DRate in SP
}

public class PODetailResponseDto
{
    public POLineResponseDto                 Header           { get; set; } = new();
    public List<POLineResponseDto>           Lines            { get; set; } = new();
    public List<DeliveryScheduleResponseDto> DeliverySchedule { get; set; } = new();
    public List<DiscountRateDto>             DiscountRates    { get; set; } = new();
}

// ── Create / Update ───────────────────────────────────────────────────────
public class CreatePOLineDto
{
    [Required] public string   VarCode      { get; set; } = string.Empty;
    public decimal   OrdQty        { get; set; }
    public decimal   OrdKgs        { get; set; }
    [Required][Range(0.0001, double.MaxValue, ErrorMessage = "Rate must be greater than zero.")]
    public decimal   CandyRate     { get; set; }
    public string?   PackType      { get; set; }
    public string?   BbFlag        { get; set; }
    public decimal   CashDisPer    { get; set; }
    public decimal   TradeDisPer   { get; set; }
    public decimal   CessPer       { get; set; }
    public decimal   InsPer        { get; set; }
    public string?   Hsn           { get; set; }
    public decimal   CgstPer       { get; set; }
    public decimal   SgstPer       { get; set; }
    public decimal   IgstPer       { get; set; }
    public string?   TaxCode       { get; set; }
    public decimal?  IPrNo         { get; set; }
    public DateTime? PrDate        { get; set; }
    public int?      PrSno         { get; set; }
    public string?   MsDocNo       { get; set; }
    public string?   MsDocSno      { get; set; }
    public int       NoOfLoad      { get; set; }
    public decimal   RateKg        { get; set; }
    public string?   MillSampleNo  { get; set; }    // DB: SNO varchar(10)
    // PTY_CONTNO (suppSampleNo) is read-only, set by SP from rm_sample — not in request DTO
}

public class CreateDeliveryScheduleDto
{
    [Required] public DateTime DelDate     { get; set; }
    [Range(0.001, double.MaxValue, ErrorMessage = "Delivery quantity must be greater than zero.")]
    public decimal   DelQty      { get; set; }
    public string?   DelAddress  { get; set; }
    public string?   VarCode     { get; set; }
    public string?   Instruction { get; set; }
    public string?   Weighment   { get; set; }    // from rm_WEIGHNMENT
}

public class CreateDiscountRateDto
{
    [Required] public string  VarCode   { get; set; } = string.Empty;
    [Required] public string  SupCd     { get; set; } = string.Empty;
    [Required] public string  DiscType  { get; set; } = string.Empty;
    public decimal   DiscRate  { get; set; }
}

public class CreatePODto
{
    [Required] public string   DivCode        { get; set; } = string.Empty;
    [Required] public DateTime ContDt         { get; set; }
    [Required] public string   SupCd          { get; set; } = string.Empty;
    [Required(ErrorMessage = "Please enter the Payment Mode")]
    public string?   PayMode        { get; set; }
    [Required(ErrorMessage = "Please enter the Area Name")]
    public string?   AreaCode       { get; set; }
    [Required(ErrorMessage = "Please enter the Billing Currency")]
    public string?   CurrCode       { get; set; }
    [Required(ErrorMessage = "Please enter the Delivery Type")]
    public string?   DlyType        { get; set; }
    [Required(ErrorMessage = "Please enter the Accepted Person")]
    public string?   Acceptance     { get; set; }
    [Required(ErrorMessage = "Please enter the Mode of Transport")]
    public string?   Transport      { get; set; }
    public string?   SupFileName    { get; set; }
    public string?   CropYear       { get; set; }
    public string?   Season         { get; set; }
    public string?   FtFlg          { get; set; }
    public decimal   FtAmt          { get; set; }
    public string?   TaxChoice      { get; set; }
    public decimal   CommPer        { get; set; }
    public decimal   CommPerBal     { get; set; }
    public decimal   TcsPer         { get; set; }
    public decimal   SpotExpense    { get; set; }
    public decimal   IncidentCharge { get; set; }
    public string?   SusCatType     { get; set; }
    public string?   PlCode         { get; set; }
    public int       LineNo         { get; set; } = 1;
    public string    SampleFlg      { get; set; } = "N";
    public decimal   LotFrom        { get; set; }
    public decimal   LotTo          { get; set; }
    // ── Additional Header Fields ──────────────────────────────────────────────
    public string?   AgentCode       { get; set; }          // DB: BRKCD varchar(10)
    public string?   ImInd           { get; set; }          // DB: im_ind char(1) — I/L/U
    public string?   MillRefNo       { get; set; }          // DB: MILLREFNO varchar(20)
    public string?   RateUnit        { get; set; }          // DB: rateunit varchar(20)
    public string?   ArrivalType     { get; set; }          // DB: arrivaltype varchar(1) — P/K
    public string?   FinalWeighment  { get; set; }          // DB: FinalWeighment varchar(1) — M/S
    // ── Payment & Terms (Tab 1) ───────────────────────────────────────────────
    public string?   BillingAddress  { get; set; }          // DB: billadd varchar(10)
    public string?   DeliveryAddrCode{ get; set; }          // DB: deladd varchar(10)
    public string?   ContactPerson   { get; set; }          // DB: contperson varchar(50)
    public string?   Terms1          { get; set; }          // DB: Terms1 varchar(50)
    public int?      Terms1Days      { get; set; }          // DB: Terms1Days numeric
    public string?   Terms2          { get; set; }          // DB: Terms2 varchar(50)
    public int?      Terms2Days      { get; set; }          // DB: Terms2Days numeric
    public int?      CreditDays      { get; set; }          // DB: CREDITDAYS numeric
    public decimal?  InterestPer     { get; set; }          // DB: INTERESTPER numeric
    public string?   DeliveryTerms   { get; set; }          // DB: DeliveryTerms varchar(200)
    public string?   Remarks         { get; set; }          // DB: remarks nvarchar(255)
    // ── Tax Details (Tab 2) ───────────────────────────────────────────────────
    public string?   PerBaleTruck    { get; set; }          // DB: perbaletruckbale varchar(5) — T/B/blank
    // ── Cotton Quality Parameters ─────────────────────────────────────────────
    public string?   Grade           { get; set; }          // DB: grade varchar(15)
    public string?   Staple          { get; set; }          // DB: STAPLE varchar(25)
    public string?   Mic             { get; set; }          // DB: MIC varchar(15) — TEXT not decimal
    public string?   Strength        { get; set; }          // DB: STRENGTH varchar(20) — TEXT not decimal
    public string?   Moisture        { get; set; }          // DB: moisture varchar(20) — TEXT not decimal
    public string?   Trash           { get; set; }          // DB: trash varchar(15) — TEXT not decimal

    [Required][MinLength(1, ErrorMessage = "At least one variety line is required.")]
    public List<CreatePOLineDto>           Lines            { get; set; } = new();
    public List<CreateDeliveryScheduleDto> DeliverySchedule { get; set; } = new();
    public List<CreateDiscountRateDto>     DiscountRates    { get; set; } = new();
}

public class UpdatePODto : CreatePODto
{
    // Locked when FIRST_APPFLG='Y': SupCd, ContDt — enforced at service layer
}

// ── Delete ────────────────────────────────────────────────────────────────
public class PODeleteRequestDto
{
    [Required] public decimal  ContNo           { get; set; }
    [Required] public DateTime ContDt           { get; set; }
    [Required] public string   DivCode          { get; set; } = string.Empty;
    [Required] public string   DeleteReasonCode { get; set; } = string.Empty;
}

// ── PR Lines ──────────────────────────────────────────────────────────────
public class PRLineDto
{
    public decimal   PrNo              { get; set; }
    public DateTime  PrDate            { get; set; }
    public string    VarCode           { get; set; } = string.Empty;
    public string    VarName           { get; set; } = string.Empty;
    public string    PackType          { get; set; } = string.Empty;
    public decimal   BalanceQty        { get; set; }
    public decimal   BalanceKgs        { get; set; }   // ISNULL(qtyindKG,0) - ISNULL(qtyordKG,0)
    public int       PrSno             { get; set; }
    public string    RequisitionerName { get; set; } = string.Empty;
    public decimal   MasterDocNo       { get; set; }
    public decimal   MasterDocSno      { get; set; }
    public decimal   CandyRate         { get; set; }
}

public class PRLineFilterDto
{
    public int     SortBy       { get; set; } = 1;
    public string? Indent       { get; set; }
    public string? ItemCode     { get; set; }
    public string? ItemName     { get; set; }
    public string? ContDt       { get; set; }
    public string? SupplierCode { get; set; }
}

// ── Config / Params ───────────────────────────────────────────────────────
public class POParamDto
{
    public bool    RequireSupplierLotNo  { get; set; }
    public bool    CentralizedOrder      { get; set; }
    public bool    AutoCalculateSeason   { get; set; }
    public bool    MasterEntryRequired   { get; set; }
    public bool    PRBased               { get; set; }
    public bool    ApprovalEnabled       { get; set; }
    public bool    AdditionalTaxRequired { get; set; }
    public decimal FtAmt                 { get; set; }
    public bool    WoSample              { get; set; }    // RM_PARAM.wosample — with-sample mode default
}

public class PODefaultsDto
{
    public string      DefaultCurrency  { get; set; } = "INR";
    public bool        PRBased          { get; set; }
    public bool        CentralizedOrder { get; set; }
    public POParamDto? Param            { get; set; }    // full config — replaces the 3 partial flags (kept for backwards compatibility)
}

public class GSTConfigDto
{
    public string GstStateCode { get; set; } = string.Empty;
    public string GstInNo      { get; set; } = string.Empty;
    public string SuppType     { get; set; } = string.Empty;
    public string StateCode    { get; set; } = string.Empty;
}

// ── Approval ──────────────────────────────────────────────────────────────
public class POApprovalActionDto
{
    [Required] public decimal  ContNo    { get; set; }
    [Required] public DateTime ContDt    { get; set; }
    [Required] public string   DivCode   { get; set; } = string.Empty;
    [Range(1, 3)] public int   Level     { get; set; } = 1;
    [Required] public string   Action    { get; set; } = string.Empty;
    public string?  Remarks    { get; set; }
}

public class POApprovalStatusDto
{
    public string FirstAppFlg { get; set; } = string.Empty;
    public string FAppFlg     { get; set; } = string.Empty;
    public string AppFlg      { get; set; } = string.Empty;
    public string CancelFlag  { get; set; } = string.Empty;
}

// ── Summary KPIs ──────────────────────────────────────────────────────────
public class POSummaryCounts
{
    public int TotalPOs       { get; set; }
    public int TotalCancelled { get; set; }
    public int TotalApproved  { get; set; }
    public int TotalLevel1    { get; set; }
    public int TotalPending   { get; set; }
}

// ── Lookups ───────────────────────────────────────────────────────────────
public class PODeleteReasonDto
{
    public string Code        { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
}

public class POPreCheckResultDto
{
    public string CheckName    { get; set; } = string.Empty;
    public bool   Passed       { get; set; }
    public string ErrorMessage { get; set; } = string.Empty;
}
