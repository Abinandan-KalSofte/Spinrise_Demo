using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;

// ── Query / List ──────────────────────────────────────────────────────────────

public class POListQueryDto
{
    public int       Page         { get; set; } = 1;
    public int       PageSize     { get; set; } = 20;
    public string?   SearchText   { get; set; }
    public DateTime? FromDate     { get; set; }
    public DateTime? ToDate       { get; set; }
    public string?   SupplierCode { get; set; }
    public string?   FYStart      { get; set; }
    public string?   FYEnd        { get; set; }
}

public class POSummaryResponseDto
{
    public string   ContNo        { get; set; } = string.Empty;
    public DateTime ContDt        { get; set; }
    public string   DivCode       { get; set; } = string.Empty;
    public string?  SupplierCode  { get; set; }
    public string?  SupplierName  { get; set; }
    public int      VarietyCount  { get; set; }
    public string   POStatus      { get; set; } = string.Empty;
    public string   FirstAppFlg   { get; set; } = "N";
    public string   AppFlg        { get; set; } = "N";
    public string   CancelFlg     { get; set; } = "N";
    public string?  PayMode       { get; set; }
    public string?  CurrCode      { get; set; }
    public string?  ArrivalType   { get; set; }
    public string?  PreparedBy    { get; set; }
    public DateTime? PrepDate     { get; set; }
    public bool     IsPRBased     { get; set; }
}

// ── Detail / Line ─────────────────────────────────────────────────────────────

public class POLineResponseDto
{
    public string    ContNo          { get; set; } = string.Empty;
    public DateTime  ContDt          { get; set; }
    public string    DivCode         { get; set; } = string.Empty;
    public string?   SupplierCode    { get; set; }
    public string?   SupplierName    { get; set; }
    public string?   AgentCode       { get; set; }
    public string?   AreaCode        { get; set; }
    public string?   AreaName        { get; set; }
    public string?   Station         { get; set; }
    public string?   State           { get; set; }
    public string    VarCode         { get; set; } = string.Empty;
    public string?   VarName         { get; set; }
    public string?   CountryCode     { get; set; }
    public string    BBFlag          { get; set; } = "B";
    public decimal   OrdQty          { get; set; }
    public decimal   OrdKgs          { get; set; }
    public decimal   CandyRate       { get; set; }
    public decimal   RateKg          { get; set; }
    public string    PayMode         { get; set; } = string.Empty;
    public string    DlyType         { get; set; } = string.Empty;
    public string?   ImInd           { get; set; }
    public string?   ArrivalType     { get; set; }
    public DateTime? DueDate         { get; set; }
    public string?   CropYear        { get; set; }
    public string?   Acceptance      { get; set; }
    public string?   PtyContNo       { get; set; }
    public string?   RateUnit        { get; set; }
    public string?   Remarks         { get; set; }
    public string?   DeliveryAddCode { get; set; }
    public string?   BillingAddCode  { get; set; }
    public string?   ContactPerson   { get; set; }
    public string?   Season          { get; set; }
    public string?   MillRefNo       { get; set; }
    public decimal   CashDisPer      { get; set; }
    public decimal   TradeDisPer     { get; set; }
    public decimal   CessPer         { get; set; }
    public decimal   InsPer          { get; set; }
    public string?   TaxCode         { get; set; }
    public string?   TaxChoice       { get; set; }
    public decimal   CreditDays      { get; set; }
    public decimal   InterestPer     { get; set; }
    public decimal   SupplierLotFrom { get; set; }
    public decimal   SupplierLotTo   { get; set; }
    public string?   SampleFlg       { get; set; }
    public decimal   CommPer         { get; set; }
    public string?   Terms1          { get; set; }
    public decimal   Terms1Days      { get; set; }
    public string?   Terms2          { get; set; }
    public decimal   Terms2Days      { get; set; }
    public string?   Transport       { get; set; }
    public decimal?  IPrNo           { get; set; }
    public DateTime? PrDate          { get; set; }
    public decimal?  PrSNo           { get; set; }
    public string    FirstAppFlg     { get; set; } = "N";
    public string    AppFlg          { get; set; } = "N";
    public string?   AppUserId       { get; set; }
    public DateTime? AppDate         { get; set; }
    public string?   CurrCode        { get; set; }
    public string?   DeliveryTerms   { get; set; }
    public string?   HSN             { get; set; }
    public decimal   CgstPer         { get; set; }
    public decimal   SgstPer         { get; set; }
    public decimal   IgstPer         { get; set; }
    public decimal   FTAmt           { get; set; }
    public string?   FTFlg           { get; set; }
    public DateTime? PrepDate        { get; set; }
    public string?   SusCatType      { get; set; }
    public string?   PayCode         { get; set; }
    public string?   LineNo          { get; set; }
    public string?   PlCode          { get; set; }
    public string?   SupFileName     { get; set; }
    public decimal   TcsPer          { get; set; }
    public string?   Grade           { get; set; }
    public string?   Staple          { get; set; }
    public string?   Micronaire      { get; set; }
    public string?   Strength        { get; set; }
    public string?   Moisture        { get; set; }
    public string?   Trash           { get; set; }
    public decimal   NoOfLoad        { get; set; }
    public decimal?  MSDocNo         { get; set; }
    public decimal?  MSDocSno        { get; set; }
    public decimal   FreightPerBale  { get; set; }
    public string?   PreparedBy      { get; set; }
    public string?   CancelFlg       { get; set; }
    public DateTime? CancelDt        { get; set; }
    public DateTime? ModDt           { get; set; }
    public string?   ModUserId       { get; set; }
}

public class DeliveryScheduleDto
{
    public string    ContNo      { get; set; } = string.Empty;
    public DateTime  ContDt      { get; set; }
    public string    DivCode     { get; set; } = string.Empty;
    public DateTime  DelDate     { get; set; }
    public decimal   Qty         { get; set; }
    public string?   DelAdd      { get; set; }
    public string?   VarCode     { get; set; }
    public string?   Instruction { get; set; }
}

public class DiscountRateDto
{
    public string?  DivCode { get; set; }
    public decimal  ContNo  { get; set; }
    public DateTime ContDt  { get; set; }
    public string?  VarCode { get; set; }
    public string?  DType   { get; set; }
    public decimal  DRate   { get; set; }
    public decimal  Docno   { get; set; }
    public decimal  DocSno  { get; set; }
}

public class POApprovalConfigDto
{
    public int     AppSno           { get; set; }
    public string? AppLevelId       { get; set; }
    public string? AppLevelName     { get; set; }
    public string? AppUserId        { get; set; }
    public string? AppUserName      { get; set; }
    public string? AppUserPrintName { get; set; }
    public string? AppDesignation   { get; set; }
    public string? AppLevel         { get; set; }
    public string? AppActiveFlg     { get; set; }
    public string? ImagePath        { get; set; }
}

public class PODetailResponseDto
{
    public List<POLineResponseDto>      Lines            { get; set; } = new();
    public List<DeliveryScheduleDto>    DeliverySchedule { get; set; } = new();
    public List<DiscountRateDto>        DiscountRates    { get; set; } = new();
    public List<POApprovalConfigDto>    ApprovalConfig   { get; set; } = new();
}

// ── Create / Update ───────────────────────────────────────────────────────────

public class CreatePOLineDto
{
    [Required] public string  VarCode         { get; set; } = string.Empty;
    public string?   BBFlag          { get; set; } = "B";
    public decimal   OrdQty          { get; set; }
    public decimal   OrdKgs          { get; set; }
    [Required][Range(0.0001, double.MaxValue, ErrorMessage = "Rate must be greater than zero")]
    public decimal   CandyRate       { get; set; }
    public decimal   RateKg          { get; set; }
    public string?   TaxCode         { get; set; }
    public string?   HSN             { get; set; }
    public decimal   CgstPer         { get; set; }
    public decimal   SgstPer         { get; set; }
    public decimal   IgstPer         { get; set; }
    public decimal   CashDisPer      { get; set; }
    public decimal   TradeDisPer     { get; set; }
    public decimal   CessPer         { get; set; }
    public decimal   InsPer          { get; set; }
    public decimal?  IPrNo           { get; set; }
    public DateTime? PrDate          { get; set; }
    public decimal?  PrSNo           { get; set; }
    public decimal?  MSDocNo         { get; set; }
    public decimal?  MSDocSno        { get; set; }
    public string?   PtyContNo       { get; set; }
    public string?   PlotNo          { get; set; }
    public string?   WosamplePrNo    { get; set; }
    public string?   PressMarkNo     { get; set; }
    public decimal   NoOfLoad        { get; set; }
}

public class CreateDeliveryScheduleDto
{
    [Required] public DateTime DelDate     { get; set; }
    [Required][Range(0.001, double.MaxValue, ErrorMessage = "Delivery quantity must be greater than zero")]
    public decimal   Qty         { get; set; }
    public string?   DelAdd      { get; set; }
    public string?   VarCode     { get; set; }
    public string?   Instruction { get; set; }
}

public class CreateDiscountRateDto
{
    public string?  VarCode { get; set; }
    public string?  DType   { get; set; }
    public decimal  DRate   { get; set; }
    public decimal  Docno   { get; set; }
    public decimal  DocSno  { get; set; }
}

public class CreatePODto
{
    [Required] public string   DivCode         { get; set; } = string.Empty;
    [Required] public DateTime ContDt          { get; set; }
    [Required] public string   SupCd           { get; set; } = string.Empty;
    public string?   BrkCd           { get; set; }
    [Required] public string   AreaCode        { get; set; } = string.Empty;
    [Required] public string   PayMode         { get; set; } = string.Empty;
    [Required] public string   DlyType         { get; set; } = string.Empty;
    [Required] public string   Acceptance      { get; set; } = string.Empty;
    [Required] public string   Transport       { get; set; } = string.Empty;
    [Required] public string   SupFileName     { get; set; } = string.Empty;
    public string?   CntCode         { get; set; }
    public string?   ImInd           { get; set; } = "L";
    public string?   ArrivalType     { get; set; } = "P";
    public string?   RateUnit        { get; set; }
    public DateTime? DueDate         { get; set; }
    public string?   CropYear        { get; set; }
    public string?   Season          { get; set; }
    public string?   MillRefNo       { get; set; }
    public string?   DeliveryAddCode { get; set; }
    public string?   BillingAddCode  { get; set; }
    public string?   ContactPerson   { get; set; }
    public string?   DeliveryTerms   { get; set; }
    public string?   Remarks         { get; set; }
    public string?   CurrCode        { get; set; }
    public string?   TaxChoice       { get; set; } = "SINGLE";
    public decimal   CreditDays      { get; set; }
    public decimal   InterestPer     { get; set; }
    public decimal   LotFrom         { get; set; }
    public decimal   LotTo           { get; set; }
    public string?   FinalWeighment  { get; set; } = "S";
    public string?   SampleFlg       { get; set; } = "Y";
    public decimal   CommPer         { get; set; }
    public string?   Terms1          { get; set; }
    public decimal   Terms1Days      { get; set; }
    public string?   Terms2          { get; set; }
    public decimal   Terms2Days      { get; set; }
    public decimal   FTAmt           { get; set; }
    public string?   FTFlg           { get; set; } = "N";
    public string?   SusCatType      { get; set; }
    public string?   PayCode         { get; set; }
    public string?   LineNo          { get; set; }
    public string?   PlCode          { get; set; }
    public decimal   TcsPer          { get; set; }
    public decimal   FreightPerBale  { get; set; }
    public string?   PreparedBy      { get; set; }
    public string?   Grade           { get; set; }
    public string?   Staple          { get; set; }
    public string?   Micronaire      { get; set; }
    public string?   Strength        { get; set; }
    public string?   Moisture        { get; set; }
    public string?   Trash           { get; set; }

    [Required][MinLength(1, ErrorMessage = "At least one variety line is required")]
    public List<CreatePOLineDto>            Lines            { get; set; } = new();
    public List<CreateDeliveryScheduleDto>  DeliverySchedule { get; set; } = new();
    public List<CreateDiscountRateDto>      DiscountRates    { get; set; } = new();
}

public class UpdatePODto : CreatePODto
{
    [Required] public string ContNo { get; set; } = string.Empty;
    // Supplier and ContDt are locked when arrivals exist — enforced at service layer
}

// ── Delete ────────────────────────────────────────────────────────────────────

public class PODeleteRequestDto
{
    [Required] public string ContNo           { get; set; } = string.Empty;
    [Required] public DateTime ContDt         { get; set; }
    [Required] public string DivCode          { get; set; } = string.Empty;
    [Required][MaxLength(4)] public string DeleteReasonCode { get; set; } = string.Empty;
}

// ── PR Conversion ─────────────────────────────────────────────────────────────

public class PRLineDto
{
    public decimal   PrNo               { get; set; }
    public DateTime  PrDate             { get; set; }
    public string    VarCode            { get; set; } = string.Empty;
    public string?   VarName            { get; set; }
    public string?   PackType           { get; set; }
    public decimal   BalanceQty         { get; set; }
    public decimal   BalanceKgs         { get; set; }
    public decimal   PrSNo              { get; set; }
    public string?   RequisitionerName  { get; set; }
    public decimal?  MasterDocNo        { get; set; }
    public decimal?  MasterDocSno       { get; set; }
    public decimal   CandyRate          { get; set; }
}

public class PRLineFilterDto
{
    public int     SortBy    { get; set; } = 1;
    public string? Indent    { get; set; }
    public string? ItemCode  { get; set; }
    public string? ItemName  { get; set; }
    public string? SupplierCode { get; set; }
    public string? Plant     { get; set; }
    public DateTime ContDt   { get; set; }
    public string   DivCode  { get; set; } = string.Empty;
}

// ── Config / Param ────────────────────────────────────────────────────────────

public class POParamDto
{
    public string SuppLotNoReqArrival { get; set; } = "N";
    public string CentralizedOrder    { get; set; } = "N";
    public string SeasonCalcReq       { get; set; } = "N";
    public string MasterEntryFlg      { get; set; } = "N";
    public string PRBased             { get; set; } = "Y";
    public string POApproval          { get; set; } = "Y";
    public string AddTaxRequired      { get; set; } = "N";
    public decimal DefaultFTAmt       { get; set; }
}

public class PODefaultsDto
{
    public string?   DefaultCurrency   { get; set; }
    public POParamDto Params           { get; set; } = new();
}

public class GSTConfigDto
{
    public string  SupplierCode      { get; set; } = string.Empty;
    public string? SupplierName      { get; set; }
    public string  GSTStateCode      { get; set; } = "0";
    public string  GSTINNO           { get; set; } = "0";
    public string  SuppType          { get; set; } = "R";
    public string  SupplierCategory  { get; set; } = "REGISTERED";
}

public class POPreCheckResultDto
{
    public bool FinYearOpen            { get; set; }
    public bool SupplierMasterExists   { get; set; }
    public bool AreaMasterExists       { get; set; }
    public bool VarietyMasterExists    { get; set; }
    public bool RateUnitMasterExists   { get; set; }
    public bool PayModeMasterExists    { get; set; }
    public bool DelReasonMasterExists  { get; set; }
    public bool AllPassed              { get; set; }
}

// ── Approval ─────────────────────────────────────────────────────────────────

public class POApprovalActionDto
{
    [Required] public string ContNo    { get; set; } = string.Empty;
    [Required] public DateTime ContDt  { get; set; }
    [Required] public string DivCode   { get; set; } = string.Empty;
    [Required][Range(1,3)] public int Level { get; set; }
    [Required] public string Action    { get; set; } = string.Empty; // APPROVE or REJECT
    public string? AppUserId           { get; set; }
    public string? AppIPAddr           { get; set; }
}

public class POApprovalStatusDto
{
    public string   FirstAppFlg  { get; set; } = "N";
    public string   AppFlg       { get; set; } = "N";
    public string   FinalAppFlg  { get; set; } = "N";
    public string?  AppUserId    { get; set; }
    public DateTime? AppDate     { get; set; }
    public string?  FirstAppUserId { get; set; }
    public DateTime? FirstAppDate  { get; set; }
    public List<POApprovalConfigDto> Config { get; set; } = new();
}
