using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.Areas.Purchase.Arrival.DTOs;

// ── Config / Lookup ───────────────────────────────────────────────────────────

public class ArrivalConfigDto
{
    public string  SuppLotNoReqArrival { get; set; } = "Y";
    public string  SeasonCalcReq       { get; set; } = "N";
    public string  CentralizedOrder    { get; set; } = "N";
    public decimal POWtTolerance       { get; set; } = 0;
    public string  MasterEntryFlg      { get; set; } = "N";
    public string  ImportDivCode       { get; set; } = string.Empty;
    public string  FreightGLCode       { get; set; } = string.Empty;
    public string  CarrierGL           { get; set; } = string.Empty;
    public DateTime? YearFromDate      { get; set; }
    public DateTime? YearToDate        { get; set; }
    public DateTime? ProcessingDate    { get; set; }
}

public class ArrivalCategoryDto
{
    public string CatCode { get; set; } = string.Empty;
    public string CatName { get; set; } = string.Empty;
    public string FaTc    { get; set; } = string.Empty;
}

// ── Open PO Lines (for PO selection step) ────────────────────────────────────

public class ArrivalOpenPoLineDto
{
    public string   ContNo              { get; set; } = string.Empty;
    public DateTime ContDt              { get; set; }
    public string   DivCode             { get; set; } = string.Empty;
    public string   SupCd               { get; set; } = string.Empty;
    public string   VarCode             { get; set; } = string.Empty;
    public string   VarName             { get; set; } = string.Empty;
    public string   CntCode             { get; set; } = string.Empty;
    public string   MixGrpName          { get; set; } = string.Empty;
    public string   BbFlag              { get; set; } = "B";
    public decimal  CandyRate           { get; set; }
    public decimal  OrdQty              { get; set; }
    public decimal  RecQty              { get; set; }
    public decimal  CancelBales         { get; set; }
    public decimal  BalanceQty          { get; set; }
    public decimal  OrdKgs              { get; set; }
    public decimal  RcdKgs              { get; set; }
    public decimal  BalanceKgs          { get; set; }
    public string   ArrivalType         { get; set; } = "P";
    public decimal? SupplierLotNoFrom   { get; set; }
    public decimal? SupplierLotNoTo     { get; set; }
    public string   NonRecieveLot       { get; set; } = string.Empty;
    public string   Prefix              { get; set; } = string.Empty;
    public string   PoSource            { get; set; } = "OWN";
}

// ── Lot Range Validation ──────────────────────────────────────────────────────

public class LotRangeValidationResult
{
    public bool   IsValid { get; set; }
    public string Message { get; set; } = string.Empty;
}

// ── Request DTOs (Create / Update) ───────────────────────────────────────────

public class CreateArrivalLineRequest
{
    [Required] [StringLength(10)]
    public string  ContNo       { get; set; } = string.Empty;
    [Required]
    public DateTime ContDt      { get; set; }
    [Required] [StringLength(10)]
    public string  VarCode      { get; set; } = string.Empty;
    [Required] [StringLength(10)]
    public string  CntCode      { get; set; } = string.Empty;
    [Required] [RegularExpression("^[PKpk]$")]
    public string  ArrivalType  { get; set; } = "P";
    [Required] [StringLength(1)]
    public string  BbFlag       { get; set; } = "B";
    [StringLength(20)]
    public string? PlotNo       { get; set; }
    [StringLength(20)]
    public string? PrNo         { get; set; }
    [StringLength(15)]
    public string? PrMark       { get; set; }
    [Range(1, 99999)]
    public decimal Quantity     { get; set; }
    [Range(0.001, double.MaxValue)]
    public decimal GrossWt      { get; set; }
    [Range(0.001, double.MaxValue)]
    public decimal TareWt       { get; set; }
    public decimal NetWt        { get; set; }   // server-recalculated; client value is informational
    public decimal RateCy       { get; set; }
    public decimal FullTruckWgt { get; set; }
    public decimal EmptyTruckWgt{ get; set; }
    public decimal TrashPer     { get; set; }
    public decimal MoisturePer  { get; set; }
    public decimal MoistureEt   { get; set; }   // server-recalculated
    public decimal CommrWt      { get; set; }
    public decimal? DPDocno     { get; set; }
    public DateTime? DPDocDate  { get; set; }
    [StringLength(7)]
    public string? GinCode      { get; set; }
    public decimal? LotNoVal    { get; set; }   // supplier lot number (numeric)
    public string  IsCentralised{ get; set; } = "N";
}

public class CreateArrivalRequest
{
    [Required] [StringLength(2)]
    public string  DivCode      { get; set; } = string.Empty;
    [Required]
    public DateTime ArrDate     { get; set; }
    [Required] [StringLength(10)]
    public string  SupCd        { get; set; } = string.Empty;
    [StringLength(10)]
    public string? BrkCd        { get; set; }
    [Required] [StringLength(4)]
    public string  AreaCode     { get; set; } = string.Empty;
    [Required] [StringLength(1)]
    public string  CatCd        { get; set; } = string.Empty;
    [Required] [StringLength(10)]
    public string  CarCode      { get; set; } = string.Empty;
    [StringLength(50)]
    public string? LorryNos     { get; set; }
    public decimal Freight      { get; set; }
    [StringLength(40)]
    public string? GcNo         { get; set; }
    [StringLength(20)]
    public string? LrNo         { get; set; }
    [StringLength(2)]
    public string? Godown       { get; set; }
    public decimal? InwardNo    { get; set; }
    public DateTime? InwardDate { get; set; }
    [StringLength(5)]
    public string? PlCode       { get; set; }
    [StringLength(18)]
    public string? LineNo       { get; set; }
    [StringLength(15)]
    public string? Weignment    { get; set; }
    public DateTime? LR_InDt    { get; set; }
    public DateTime? LR_InTime  { get; set; }
    public DateTime? LR_OutDt   { get; set; }
    public DateTime? LR_OutTime { get; set; }
    public string? GlobalDiv    { get; set; }
    [Required]
    public List<CreateArrivalLineRequest> Lines { get; set; } = new();
}

public class UpdateArrivalRequest : CreateArrivalRequest
{
    public int ArrNo { get; set; }
}

public class FreightOnlyUpdateRequest
{
    public decimal  Freight   { get; set; }
    [StringLength(50)]
    public string? LorryNos  { get; set; }
}

// ── Response DTOs ─────────────────────────────────────────────────────────────

public class ArrivalHeaderDto
{
    public int      ArrNo        { get; set; }
    public DateTime ArrDate      { get; set; }
    public string   DivCode      { get; set; } = string.Empty;
    public string   SupCd        { get; set; } = string.Empty;
    public string   SupplierName { get; set; } = string.Empty;
    public string   BrkCd        { get; set; } = string.Empty;
    public string   BrokerName   { get; set; } = string.Empty;
    public string   AreaCode     { get; set; } = string.Empty;
    public string   AreaName     { get; set; } = string.Empty;
    public string   CatCd        { get; set; } = string.Empty;
    public string   CatName      { get; set; } = string.Empty;
    public string   CarCode      { get; set; } = string.Empty;
    public string   CarrierName  { get; set; } = string.Empty;
    public string?  LorryNos     { get; set; }
    public decimal  Freight      { get; set; }
    public string?  GcNo         { get; set; }
    public string?  LrNo         { get; set; }
    public string?  Godown       { get; set; }
    public decimal? InwardNo     { get; set; }
    public DateTime? InwardDate  { get; set; }
    public string?  PlCode       { get; set; }
    public string?  LineNo       { get; set; }
    public string?  Weignment    { get; set; }
    public DateTime? LR_InDt     { get; set; }
    public DateTime? LR_InTime   { get; set; }
    public DateTime? LR_OutDt    { get; set; }
    public DateTime? LR_OutTime  { get; set; }
    public string?  GlobalDiv    { get; set; }
    public string?  ReceivedNo   { get; set; }
    public string?  EnteredBy    { get; set; }
}

public class ArrivalLineDto
{
    public int      ArrNo         { get; set; }
    public DateTime ArrDate       { get; set; }
    public string   DivCode       { get; set; } = string.Empty;
    public string   ContNo        { get; set; } = string.Empty;
    public DateTime ContDt        { get; set; }
    public string   VarCode       { get; set; } = string.Empty;
    public string   VarName       { get; set; } = string.Empty;
    public string   CntCode       { get; set; } = string.Empty;
    public string   MixGrpName    { get; set; } = string.Empty;
    public string   CatCd         { get; set; } = string.Empty;
    public string?  SupplierLotNo { get; set; }
    public string?  PrNo          { get; set; }
    public string?  PrMark        { get; set; }
    public string   BbFlag        { get; set; } = "B";
    public decimal  RateCy        { get; set; }
    public decimal  Quantity      { get; set; }
    public decimal  GrossWt       { get; set; }
    public decimal  TareWt        { get; set; }
    public decimal  NetWt         { get; set; }
    public decimal  FullTruckWgt  { get; set; }
    public decimal  EmptyTruckWgt { get; set; }
    public decimal  TrashPer      { get; set; }
    public decimal  MoisturePer   { get; set; }
    public decimal  MoistureEt    { get; set; }
    public decimal  CommrWt       { get; set; }
    public decimal? DPDocno       { get; set; }
    public DateTime? DPDocDate    { get; set; }
    public string?  GinCode       { get; set; }
    public string   ArrivalType   { get; set; } = "P";
    public short?   LotNo         { get; set; }
    public DateTime? LotDt        { get; set; }
    public string?  LotType       { get; set; }
    public string?  Passed        { get; set; }
    public DateTime? PassDt       { get; set; }
}

public class ArrivalDetailDto
{
    public ArrivalHeaderDto        Header { get; set; } = new();
    public List<ArrivalLineDto>    Lines  { get; set; } = new();
}

public class ArrivalListItemDto
{
    public int      ArrNo         { get; set; }
    public DateTime ArrDate       { get; set; }
    public string   DivCode       { get; set; } = string.Empty;
    public string   SupCd         { get; set; } = string.Empty;
    public string   SupplierName  { get; set; } = string.Empty;
    public string   CatName       { get; set; } = string.Empty;
    public string   CarrierName   { get; set; } = string.Empty;
    public string?  LorryNos      { get; set; }
    public decimal  Freight       { get; set; }
    public decimal  TotalQty      { get; set; }
    public decimal  TotalGrossWt  { get; set; }
    public decimal  TotalNetWt    { get; set; }
    public int      LineCount     { get; set; }
    public bool     HasLot        { get; set; }
    public bool     HasInspection { get; set; }
    public int      TotalCount    { get; set; }
}

// ── Query ─────────────────────────────────────────────────────────────────────

public class ArrivalListQueryDto
{
    public string   DivCode    { get; set; } = string.Empty;
    public int      Page       { get; set; } = 1;
    public int      PageSize   { get; set; } = 20;
    public string?  SearchText { get; set; }
    public string?  FromDate   { get; set; }
    public string?  ToDate     { get; set; }
    public string?  SupCode    { get; set; }
    public string?  CatCode    { get; set; }
    public string?  YfDate     { get; set; }
    public string?  YlDate     { get; set; }
}
