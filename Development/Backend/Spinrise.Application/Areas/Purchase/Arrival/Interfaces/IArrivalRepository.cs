using Spinrise.Application.Areas.Purchase.Arrival.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.Arrival.Interfaces;

public interface IArrivalRepository
{
    Task<ArrivalConfigDto> GetParamAsync(string divCode);

    Task<IEnumerable<ArrivalCategoryDto>> GetCategoriesAsync();

    Task<IEnumerable<ArrivalOpenPoLineDto>> GetOpenPOLinesAsync(
        string divCode, string supCode, string? catCode,
        bool isCentralised, string? importDivCode,
        DateTime? yfDate, DateTime? ylDate);

    Task<LotRangeValidationResult> ValidateLotRangeAsync(
        string divCode, string contNo, DateTime contDt,
        string varCode, decimal lotNo, bool isCentralised);

    Task<int> InsertAsync(CreateArrivalRequest request, string preparedBy);

    Task<bool> UpdateAsync(UpdateArrivalRequest request, string preparedBy);

    Task<bool> FreightOnlyUpdateAsync(
        string divCode, int arrNo, DateTime arrDate,
        FreightOnlyUpdateRequest request, string preparedBy);

    Task<(bool Success, string Status)> DeleteAsync(
        string divCode, int arrNo, DateTime arrDate, string preparedBy);

    Task<ArrivalDetailDto?> GetByIdAsync(string divCode, int arrNo, DateTime arrDate);

    Task<PagedResult<ArrivalListItemDto>> GetPaginatedAsync(ArrivalListQueryDto query);
}
