using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;

public interface IPurchaseOrderRepository
{
    Task<PagedResult<POSummaryResponseDto>>   GetPaginatedAsync(POListQueryDto query);
    Task<POSummaryCounts>                     GetSummaryAsync(string divCode);
    Task<IEnumerable<POLineResponseDto>>      GetByIdAsync(decimal contNo, DateTime contDt, string divCode);
    Task<IEnumerable<DeliveryScheduleResponseDto>> GetDeliveryScheduleAsync(decimal contNo, DateTime contDt, string divCode);
    Task<IEnumerable<DiscountRateDto>>        GetDiscountRatesAsync(decimal contNo, DateTime contDt, string divCode);
    Task<decimal>                             GenerateNumberAsync(string divCode, int fYear);
    Task<POParamDto?>                         GetParamAsync(string divCode);
    Task<string>                              GetDefaultCurrencyAsync(string divCode);
    Task<GSTConfigDto?>                       GetGSTConfigAsync(string supplierCode);
    Task<IEnumerable<PODeleteReasonDto>>      GetDeleteReasonsAsync();
    Task<IEnumerable<POPreCheckResultDto>>    PreChecksAsync(string divCode);
    Task<IEnumerable<PRLineDto>>              GetPendingPRLinesAsync(string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant);
    Task<IEnumerable<PRLineDto>>              FilterPRLinesAsync(string divCode, DateTime contDt, PRLineFilterDto filter);
    Task                                      InsertLineAsync(decimal contNo, CreatePODto header, CreatePOLineDto line, string preparedBy);
    Task                                      InsertDiscountRateAsync(decimal contNo, DateTime contDt, CreateDiscountRateDto rate);
    Task                                      InsertDeliveryScheduleAsync(decimal contNo, DateTime contDt, string divCode, CreateDeliveryScheduleDto schedule);
    Task                                      InsertSlotNoAsync(decimal contNo, DateTime contDt, string divCode, decimal lotFrom, decimal lotTo);
    Task                                      InsertAuditLogAsync(decimal contNo, DateTime contDt, string divCode, string mode, string userId, string? deleteReasonCode = null);
    Task                                      DeleteAsync(decimal contNo, DateTime contDt, string divCode, string deleteReasonCode, string deletedBy);
    Task                                      DeleteLinesForUpdateAsync(decimal contNo, DateTime contDt, string divCode);
    Task                                      UndoPRBalanceAsync(string divCode, decimal prNo, DateTime prDate, int prSno, decimal qtyOrdKG);
    Task<POApprovalStatusDto?>                GetApprovalStatusAsync(decimal contNo, DateTime contDt, string divCode);
    Task                                      UpdateApprovalAsync(POApprovalActionDto dto, string approverId);
}
