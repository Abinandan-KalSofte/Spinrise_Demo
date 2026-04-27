using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;

public interface IPurchaseOrderService
{
    Task<PODefaultsDto>                         GetDefaultsAsync(string divCode);
    Task<POPreCheckResultDto>                   RunPreChecksAsync(string divCode);
    Task<IEnumerable<PRLineDto>>                GetDeleteReasonsAsync();
    Task<PagedResult<POSummaryResponseDto>>     GetPaginatedAsync(string divCode, POListQueryDto query);
    Task<PODetailResponseDto?>                  GetByIdAsync(string contNo, DateTime contDt, string divCode);
    Task<IEnumerable<PRLineDto>>                GetPendingPRLinesAsync(PRLineFilterDto filter);
    Task<(string ContNo, IReadOnlyList<string> Warnings)> CreateAsync(CreatePODto dto, string userId, string? ipAddr, string? host);
    Task<IReadOnlyList<string>>                 UpdateAsync(UpdatePODto dto, string userId, string? ipAddr, string? host);
    Task<(int Result, string Message)>          DeleteAsync(PODeleteRequestDto dto, string deletedBy);
    Task<POApprovalStatusDto?>                  GetApprovalStatusAsync(string contNo, DateTime contDt, string divCode);
    Task<int>                                   ApproveAsync(POApprovalActionDto dto);
}
