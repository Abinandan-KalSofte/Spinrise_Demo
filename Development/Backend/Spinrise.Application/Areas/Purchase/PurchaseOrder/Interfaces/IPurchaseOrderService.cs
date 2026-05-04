using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;

public interface IPurchaseOrderService
{
    Task<PagedResult<POSummaryResponseDto>>  GetListAsync(POListQueryDto query);
    Task<POSummaryCounts>                    GetSummaryAsync(string divCode);
    Task<PODetailResponseDto?>               GetDetailAsync(decimal contNo, DateTime contDt, string divCode);
    Task<PODefaultsDto>                      GetDefaultsAsync(string divCode);
    Task<IEnumerable<PODeleteReasonDto>>     GetDeleteReasonsAsync();
    Task<IEnumerable<POPreCheckResultDto>>   RunPreChecksAsync(string divCode);
    Task<GSTConfigDto?>                      GetGSTConfigAsync(string supplierCode);
    Task<IEnumerable<PRLineDto>>             GetPendingPRLinesAsync(string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant);
    Task<IEnumerable<PRLineDto>>             FilterPRLinesAsync(string divCode, DateTime contDt, PRLineFilterDto filter);

    Task<(bool Success, string Message, decimal? ContNo, IReadOnlyList<string> Warnings)> CreateAsync(CreatePODto dto, string userId);
    Task<(bool Success, string Message, IReadOnlyList<string> Warnings)>                  UpdateAsync(decimal contNo, UpdatePODto dto, string userId);
    Task<(bool Success, string Message)>                                                   DeleteAsync(PODeleteRequestDto dto, string userId);

    Task<POApprovalStatusDto?>               GetApprovalStatusAsync(decimal contNo, DateTime contDt, string divCode);
    Task<(bool Success, string Message)>     ApproveAsync(POApprovalActionDto dto, string approverId);
}
