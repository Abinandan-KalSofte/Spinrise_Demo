using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRItemHistoryDto
{
    public string    PoNo         { get; set; } = string.Empty;
    public DateTime  PoDate       { get; set; }
    public string?   SupplierCode { get; set; }
    public string?   SupplierName { get; set; }
    
    [Range(0, 99999999.99, ErrorMessage = "Rate must be >= 0")]
    public decimal   Rate         { get; set; }
    
    [Range(0, 99999999, ErrorMessage = "OrderQty must be >= 0")]
    public decimal   OrderQty     { get; set; }
    
    [Range(0, 99999999, ErrorMessage = "ReceivedQty must be >= 0")]
    public decimal   ReceivedQty  { get; set; }
    
    [Range(0, 99999999, ErrorMessage = "PendingQty must be >= 0")]
    public decimal   PendingQty   { get; set; }
}
