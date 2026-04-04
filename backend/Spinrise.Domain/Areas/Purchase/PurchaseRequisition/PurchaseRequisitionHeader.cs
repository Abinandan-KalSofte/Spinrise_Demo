namespace Spinrise.Domain.Entities;

public class PurchaseRequisitionHeader
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public string PrNo { get; set; } = string.Empty;
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public string? Section { get; set; }
    public string? SubCostCode { get; set; }
    public string? IType { get; set; }
    public string? ReqName { get; set; }
    public string? RefNo { get; set; }
    public string? SaleOrderNo { get; set; }
    public DateTime? SaleOrderDate { get; set; }
    public string PrStatus { get; set; } = "DRAFT";
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public List<PurchaseRequisitionLine> Lines { get; set; } = new();
}
