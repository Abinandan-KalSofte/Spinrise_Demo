namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRSummaryResponseDto
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public long PrNo { get; set; }
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public long? PlanNo { get; set; }
    public string? RefNo { get; set; }
    public string? ReqName { get; set; }
    public string PrStatus   { get; set; } = string.Empty;
    public bool   IsDeleted  { get; set; }
    public string CreatedBy  { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public int LineCount { get; set; }
}
