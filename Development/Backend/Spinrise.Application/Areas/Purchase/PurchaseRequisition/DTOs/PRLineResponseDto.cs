namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRLineResponseDto
{
    public int Id { get; set; }
    public int PrSNo { get; set; }
    public string ItemCode { get; set; } = string.Empty;
    public string? ItemName { get; set; }
    public string? Uom { get; set; }
    public decimal? Rate { get; set; }
    public decimal? CurrentStock { get; set; }
    public decimal QtyRequired { get; set; }
    public DateTime? RequiredDate { get; set; }
    public string? Place { get; set; }
    public decimal? ApproxCost { get; set; }
    public string? Remarks { get; set; }
    public string? MachineNo { get; set; }
    public string? CostCentreCode { get; set; }
    public string? BudgetGroupCode { get; set; }
    public decimal? LastPoRate { get; set; }
    public DateTime? LastPoDate { get; set; }
    public string? LastPoSupplierCode { get; set; }
    public string? LastPoSupplierName { get; set; }
    public bool IsSample { get; set; }
    public long? SubCostCode { get; set; }
    public string? CategoryCode { get; set; }
    public string? DrawNo { get; set; }
    public string? CatNo { get; set; }
    public string? Model { get; set; }
    public decimal? MaxCost { get; set; }
}
