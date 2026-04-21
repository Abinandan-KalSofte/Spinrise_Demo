namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRItemHistoryDto
{
    public string    PoNo         { get; set; } = string.Empty;
    public DateTime  PoDate       { get; set; }
    public string?   SupplierCode { get; set; }
    public string?   SupplierName { get; set; }
    public decimal   Rate         { get; set; }
    public decimal   OrderQty     { get; set; }
    public decimal   ReceivedQty  { get; set; }
    public decimal   PendingQty   { get; set; }
}
