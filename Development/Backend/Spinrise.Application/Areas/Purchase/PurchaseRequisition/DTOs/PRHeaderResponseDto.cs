namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRHeaderResponseDto
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
    public string? RequisitionType { get; set; }
    public string? SaleOrderNo { get; set; }
    public DateTime? SaleOrderDate { get; set; }
    public string PrStatus { get; set; } = string.Empty;
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public decimal? BudgetBalance { get; set; }
    public bool HasPendingIndentWarning { get; set; }
    public string? PendingIndentWarningMessage { get; set; }

    // Approval pipeline (display-only)
    public string? Level1ApproverName { get; set; }
    public DateTime? Level1ApprovedAt { get; set; }
    public string? Level2ApproverName { get; set; }
    public DateTime? Level2ApprovedAt { get; set; }
    public string? FinalApproverName { get; set; }
    public DateTime? FinalApprovedAt { get; set; }

    public List<PRLineResponseDto> Lines { get; set; } = new();
}
