namespace Spinrise.Domain.Entities;

public class PurchaseRequisitionHeader
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public long PrNo { get; set; }
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public string? Section { get; set; }
    public long? SubCost { get; set; }
    public string? IType { get; set; }
    public string? ReqName { get; set; }
    public string? RefNo { get; set; }
    public string? PoGroupCode { get; set; }
    public string? ScopeCode { get; set; }
    public string? SaleOrderNo { get; set; }
    public DateTime? SaleOrderDate { get; set; }
    public string PrStatus { get; set; } = "DRAFT";
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }

    // Approval / signatory fields — names match SP column names exactly for Dapper mapping
    public string? FirstappUser { get; set; }   // SP column: FirstappUser
    public string? FinalAppUser { get; set; }   // SP column: FinalAppUser
    public DateTime? APP1DATE { get; set; }     // SP column: APP1DATE
    public DateTime? APP3DATE { get; set; }     // SP column: APP3DATE

    public List<PurchaseRequisitionLine> Lines { get; set; } = new();
}
