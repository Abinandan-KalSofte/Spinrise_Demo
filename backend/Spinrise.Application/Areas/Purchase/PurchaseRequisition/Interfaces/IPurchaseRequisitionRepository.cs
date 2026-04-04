namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionRepository
{
    Task<PreCheckResult> RunPreChecksAsync(string divCode);
    Task<int> GetNextPrNumberAsync(string divCode, string finYear);
    Task<bool> GetFeatureFlagAsync(string divCode, string featureKey);
    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo, DateTime? fromDate, DateTime? toDate, string? depCode, string? status);
    Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, string prNo);
    Task<int> InsertHeaderAsync(PurchaseRequisitionHeader header);
    Task<int> InsertLineAsync(PurchaseRequisitionLine line);
    Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader header);
    Task SoftDeleteLinesAsync(string divCode, string prNo);
    Task<int> DeleteAsync(string divCode, string prNo);
    Task<int> DeleteLineAsync(string divCode, string prNo, int prSNo);
    Task<bool> DepartmentExistsAsync(string divCode, string depCode);
    Task<bool> ItemExistsAsync(string divCode, string itemCode);
    Task<bool> CostCentreExistsAsync(string divCode, string ccCode);
    Task<bool> BudgetGroupExistsAsync(string divCode, string bgrpCode);
    Task<bool> MachineExistsAsync(string divCode, string depCode, string machineNo);
}
