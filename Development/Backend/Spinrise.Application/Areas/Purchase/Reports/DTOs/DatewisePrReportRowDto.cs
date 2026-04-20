namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class DatewisePrReportRowDto
{
    public DateTime PrDate      { get; set; }
    public int      PrNo        { get; set; }
    public string   ItemCode    { get; set; } = string.Empty;
    public string   ItemName    { get; set; } = string.Empty;
    public string   Uom         { get; set; } = string.Empty;
    public decimal  QtyRequired { get; set; }
    public decimal? QtyOrdered  { get; set; }
    public decimal? QtyReceived { get; set; }
    public string   PrStatus    { get; set; } = string.Empty;
    public string   DepName     { get; set; } = string.Empty;
    public string   DivName     { get; set; } = string.Empty;
    public string   SaleOrderNo { get; set; } = string.Empty;
    public string   SaleType    { get; set; } = string.Empty;
}
