namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionRepository
{
    // ── Setup & flags ─────────────────────────────────────────────────────────
    Task<PreCheckResult> RunPreChecksAsync(string divCode);
    Task<DateTime>       GetMaxPrDateAsync(string divCode, DateTime yfDate, DateTime ylDate);

    // ── PR number generation ──────────────────────────────────────────────────
    Task<int> GetNextPrNumberAsync(string divCode, string finYear);

    // ── Read ──────────────────────────────────────────────────────────────────
    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(
        string divCode, string? prNo, DateTime? fromDate, DateTime? toDate,
        string? depCode, string? status);

    Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, long prNo);

    // ── Item info (rate, stock, last PO) ──────────────────────────────────────
    Task<PRItemInfoRaw?> GetItemInfoAsync(string divCode,
                                          string itemCode,
                                          DateTime yfDate,
                                          DateTime pDate);
    Task<PendingIndentResult> CheckPendingIndentAsync(string divCode, string itemCode, string depCode, DateTime yfDate, DateTime ylDate);
    Task<PendingPRResult> CheckPendingPRAsync(string divCode, string itemCode);

    // ── Delete reasons ────────────────────────────────────────────────────────
    Task<IEnumerable<PRDeleteReasonDto>> GetDeleteReasonsAsync();
    Task<bool>                           DeleteReasonExistsAsync(string reasonCode);

    // ── Write ─────────────────────────────────────────────────────────────────
    Task<int> InsertHeaderAsync(PurchaseRequisitionHeader header);
    Task<int> InsertLineAsync(PurchaseRequisitionLine line);
    Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader header);
    Task      SoftDeleteLinesAsync(string divCode, long prNo);
    Task<int> DeleteAsync(string divCode, long prNo, string deleteReasonCode);
    Task<int> DeleteLineAsync(string divCode, long prNo, int prSNo, string deleteReasonCode);

    // ── Audit log ─────────────────────────────────────────────────────────────
    Task InsertAuditLogAsync(PurchaseRequisitionHeader header, PurchaseRequisitionLine line,
                             string transMod, AuditContext audit);

    // ── Existence checks (all use parameterised queries) ─────────────────────
    Task<bool> DepartmentExistsAsync(string divCode, string depCode);
    Task<bool> ItemExistsAsync(string divCode, string itemCode);
    Task<bool> CostCentreExistsAsync(string divCode, string ccCode);
    Task<bool> BudgetGroupExistsAsync(string divCode, string bgrpCode);
    Task<bool> MachineExistsAsync(string divCode, string depCode, string machineNo);
    Task<bool> IsLinkedToEnquiryAsync(string divCode, long prNo);
}
