namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionService
{
    Task<PreCheckResult> RunPreChecksAsync(string divCode);

    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(
        string divCode, string? prNo, DateTime? fromDate, DateTime? toDate,
        string? depCode, string? status);

    Task<PagedResult<PRSummaryResponseDto>> GetPaginatedAsync(string divCode, PRListQueryDto query);

    Task<PRHeaderResponseDto?> GetByIdAsync(string divCode, long prNo, DateTime? startDate = null, DateTime? endDate = null);

    /// <summary>
    /// Called on item selection — returns rate, stock, last-PO data and
    /// soft pending-indent / pending-PR warnings in one API call.
    /// </summary>
    Task<PRItemInfoDto?> GetItemInfoAsync(
        string divCode, string depCode, string itemCode,
        DateTime yfDate, DateTime ylDate, PreCheckResult flags);

    Task<IEnumerable<PRItemHistoryDto>> GetItemHistoryAsync(string divCode, string itemCode);

    Task<IEnumerable<PRDeleteReasonDto>> GetDeleteReasonsAsync();

    Task<(bool Success, string Message, long? PrNo, IReadOnlyList<string> Warnings)> CreateAsync(
        CreatePRHeaderDto dto, string divCode, AuditContext audit);

    Task<(bool Success, string Message, IReadOnlyList<string> Warnings)> UpdateAsync(
        UpdatePRHeaderDto dto, string divCode, AuditContext audit);

    Task<(bool Success, string Message)> DeleteAsync(
        string divCode, long prNo, string deleteReasonCode, AuditContext audit);

    Task<(bool Success, string Message)> DeleteLineAsync(
        string divCode, long prNo, int prSNo, string deleteReasonCode, AuditContext audit);
}
