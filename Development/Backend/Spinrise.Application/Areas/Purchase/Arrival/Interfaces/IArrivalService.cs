using Spinrise.Application.Areas.Purchase.Arrival.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.Arrival.Interfaces;

public interface IArrivalService
{
    Task<ArrivalConfigDto> GetParamAsync(string divCode);

    Task<IEnumerable<ArrivalCategoryDto>> GetCategoriesAsync();

    Task<IEnumerable<ArrivalOpenPoLineDto>> GetOpenPOLinesAsync(
        string divCode, string supCode, string? catCode, string? yfDate, string? ylDate);

    Task<LotRangeValidationResult> ValidateLotRangeAsync(
        string divCode, string contNo, string contDt,
        string varCode, decimal lotNo, string isCentralised);

    Task<int> CreateAsync(CreateArrivalRequest request, string preparedBy);

    Task UpdateAsync(UpdateArrivalRequest request, string preparedBy);

    Task FreightOnlyUpdateAsync(
        string divCode, int arrNo, DateTime arrDate,
        FreightOnlyUpdateRequest request, string preparedBy);

    Task DeleteAsync(string divCode, int arrNo, DateTime arrDate, string preparedBy);

    Task<ArrivalDetailDto> GetByIdAsync(string divCode, int arrNo, DateTime arrDate);

    Task<PagedResult<ArrivalListItemDto>> GetPaginatedAsync(ArrivalListQueryDto query);
}
