namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRListQueryDto
{
    public string?   PrNo      { get; set; }
    public DateTime? StartDate { get; set; }
    public DateTime? EndDate   { get; set; }
    public string?   DepCode   { get; set; }
    public string?   ReqName   { get; set; }
    public string?   Status    { get; set; }
    public int       Page      { get; set; } = 1;
    public int       PageSize  { get; set; } = 20;
}
