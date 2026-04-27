namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRStatusSummaryDto
{
    public int TotalCount     { get; init; }
    public int OpenCount      { get; init; }
    public int ApprovedCount  { get; init; }
    public int CancelledCount { get; init; }
}
