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

    public decimal? BudgetBalAmt { get; set; }  // maps PO_PRH.budgetBALAMT

    // True when any PO_PRL line has FirstApp/SecondApp/ThirdApp = 'Y' (IST-5 lock)
    public bool IsApprovalLocked { get; set; }

    // Approval signatory fields — names match SP column aliases for Dapper mapping
    public string? FirstappUser { get; set; }   // SP column: FirstappUser (APP1 alias)
    public string? SecondAppUser { get; set; }  // SP column: SecondAppUser (APP2 alias)
    public string? FinalAppUser { get; set; }   // SP column: FinalAppUser (APP3 alias)
    public DateTime? APP1DATE { get; set; }
    public DateTime? APP2DATE { get; set; }
    public DateTime? APP3DATE { get; set; }

    public List<PurchaseRequisitionLine> Lines { get; set; } = new();
}
