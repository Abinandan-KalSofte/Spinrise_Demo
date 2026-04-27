using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;

public interface IPurchaseOrderRepository
{
    Task<string>                        GenerateNumberAsync(string divCode, DateTime fyStart, DateTime fyEnd, string centralizedOrder);
    Task<POPreCheckResultDto>           PreChecksAsync(string divCode, DateTime fyStart, DateTime fyEnd);
    Task<POParamDto?>                   GetParamAsync();
    Task<string?>                       GetDefaultCurrencyAsync(string divCode);
    Task<IEnumerable<GSTConfigDto>>     GetGSTConfigAsync(string supplierCode);
    Task<IEnumerable<PRLineDto>>        GetDeleteReasonsAsync();
    Task<PagedResult<POSummaryResponseDto>> GetPaginatedAsync(string divCode, POListQueryDto query);
    Task<PODetailResponseDto?>          GetByIdAsync(string contNo, DateTime contDt, string divCode);
    Task<IEnumerable<PRLineDto>>        GetPendingPRLinesAsync(string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant);
    Task<IEnumerable<PRLineDto>>        FilterPRLinesAsync(PRLineFilterDto filter);
    Task                                InsertLineAsync(string contNo, string divCode, CreatePODto header, CreatePOLineDto line);
    Task                                InsertDiscountRateAsync(string contNo, DateTime contDt, string divCode, string supCd, CreateDiscountRateDto discount);
    Task                                InsertDeliveryScheduleAsync(string contNo, DateTime contDt, string divCode, CreateDeliveryScheduleDto schedule);
    Task                                UpdatePRBalanceAsync(string divCode, decimal prNo, DateTime prDate, decimal prSNo, decimal qtyOrd, decimal qtyOrdKg);
    Task                                InsertSlotNoAsync(string contNo, DateTime contDt, string divCode, decimal lotFrom, decimal lotTo);
    Task                                UpdateLineAsync(string contNo, DateTime contDt, string divCode, string varCode, UpdatePODto dto, string? modUserId);
    Task<(int Result, string Message)>  DeleteAsync(string contNo, DateTime contDt, string divCode, string deleteReasonCode, string deletedBy);
    Task                                InsertAuditLogAsync(string contNo, DateTime contDt, string divCode, string transMod, string? userId, string? ipAddr, string? host, CreatePOLineDto? line = null);
    Task<POApprovalStatusDto?>          GetApprovalStatusAsync(string contNo, DateTime contDt, string divCode);
    Task<int>                           UpdateApprovalAsync(POApprovalActionDto dto);
}
