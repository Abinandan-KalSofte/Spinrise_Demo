namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionService
{
    Task<PreCheckResult> RunPreChecksAsync(string divCode);
    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo, DateTime? fromDate, DateTime? toDate, string? depCode, string? status);
    Task<PRHeaderResponseDto?> GetByIdAsync(string divCode, string prNo);
    Task<(bool Success, string Message, string? PrNo)> CreateAsync(CreatePRHeaderDto dto, string divCode, string createdBy);
    Task<(bool Success, string Message)> UpdateAsync(UpdatePRHeaderDto dto, string divCode, string modifiedBy);
    Task<(bool Success, string Message)> DeleteAsync(string divCode, string prNo);
    Task<(bool Success, string Message)> DeleteLineAsync(string divCode, string prNo, int prSNo);
}
