namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PurchaseRequisitionReportRowDto
{
    public int SerialNo { get; set; }
    public string ItemCode { get; set; } = string.Empty;
    public string ItemName { get; set; } = string.Empty;
    public string Unit { get; set; } = string.Empty;
    public decimal RequiredQuantity { get; set; }
    public string RequiredDate { get; set; } = string.Empty;
    public decimal CurrentStockQuantity { get; set; }
    public decimal PreviousPurchaseRate { get; set; }
    public decimal PreviousPurchaseValue { get; set; }
    public string PreviousPurchaseDate { get; set; } = string.Empty;
    public decimal ApproxCostValue { get; set; }
    public string Remarks { get; set; } = string.Empty;
}
