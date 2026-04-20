namespace Spinrise.Domain.Entities;

public class PurchaseRequisitionLine
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public long PrNo { get; set; }
    public int PrSNo { get; set; }
    public string ItemCode { get; set; } = string.Empty;
    public string? ItemName { get; set; }
    public string? Uom { get; set; }
    public decimal? Rate { get; set; }
    public decimal? CurrentStock { get; set; }
    public decimal QtyRequired { get; set; }       // SP column: qtyind (required quantity)
    public DateTime? RequiredDate { get; set; }
    public string? Place { get; set; }
    public decimal? ApproxCost { get; set; }
    public string? Remarks { get; set; }
    public string? MachineNo { get; set; }
    public string? DrawNo { get; set; }         // FRX: DRAWNO
    public string? CatNo { get; set; }    // FRX: ITEMSPEC1 / additional remarks
    public string? CostCentreCode { get; set; }
    public string? BudgetGroupCode { get; set; }
    public long? SubCostCode { get; set; }
    public decimal? LastPoRate { get; set; }
    public DateTime? LastPoDate { get; set; }
    public string? LastPoSupplierCode { get; set; }
    public string? LastPoSupplierName { get; set; }
    public bool IsSample { get; set; }
    public string? DirectApp { get; set; }
    public string? CategoryCode { get; set; }  // PO_PRL.CATCODE — validated against IN_CAT
    public string? Model { get; set; }
    public decimal? MaxCost { get; set; }
}
