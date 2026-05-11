using Spinrise.Application.Areas.Purchase.Arrival.DTOs;
using Spinrise.Application.Areas.Purchase.Arrival.Interfaces;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.Arrival.Services;

public class ArrivalService : IArrivalService
{
    private readonly IArrivalRepository _repo;

    public ArrivalService(IArrivalRepository repo) => _repo = repo;

    public Task<ArrivalConfigDto> GetParamAsync(string divCode)
        => _repo.GetParamAsync(divCode);

    public Task<IEnumerable<ArrivalCategoryDto>> GetCategoriesAsync()
        => _repo.GetCategoriesAsync();

    public Task<IEnumerable<ArrivalOpenPoLineDto>> GetOpenPOLinesAsync(
        string divCode, string supCode, string? catCode, string? yfDate, string? ylDate)
    {
        var config = _repo.GetParamAsync(divCode).GetAwaiter().GetResult();
        bool isCentralised = config.CentralizedOrder == "Y";
        DateTime? yf = string.IsNullOrEmpty(yfDate) ? null : DateTime.Parse(yfDate);
        DateTime? yl = string.IsNullOrEmpty(ylDate) ? null : DateTime.Parse(ylDate);
        return _repo.GetOpenPOLinesAsync(divCode, supCode, catCode, isCentralised,
                                         config.ImportDivCode, yf, yl);
    }

    public Task<LotRangeValidationResult> ValidateLotRangeAsync(
        string divCode, string contNo, string contDt,
        string varCode, decimal lotNo, string isCentralised)
    {
        bool centralised = isCentralised == "Y";
        return _repo.ValidateLotRangeAsync(divCode, contNo,
            DateTime.Parse(contDt), varCode, lotNo, centralised);
    }

    public async Task<int> CreateAsync(CreateArrivalRequest request, string preparedBy)
    {
        ValidateHeader(request);
        var config = await _repo.GetParamAsync(request.DivCode);
        RecalcAllLines(request.Lines, config.SeasonCalcReq == "Y");
        await ValidateLinesAsync(request, config);
        return await _repo.InsertAsync(request, preparedBy);
    }

    public async Task UpdateAsync(UpdateArrivalRequest request, string preparedBy)
    {
        ValidateHeader(request);
        var config = await _repo.GetParamAsync(request.DivCode);
        RecalcAllLines(request.Lines, config.SeasonCalcReq == "Y");
        await ValidateLinesAsync(request, config);
        var ok = await _repo.UpdateAsync(request, preparedBy);
        if (!ok) throw new InvalidOperationException("Arrival cannot be modified after lot assignment.");
    }

    public async Task FreightOnlyUpdateAsync(
        string divCode, int arrNo, DateTime arrDate,
        FreightOnlyUpdateRequest request, string preparedBy)
    {
        var ok = await _repo.FreightOnlyUpdateAsync(divCode, arrNo, arrDate, request, preparedBy);
        if (!ok) throw new InvalidOperationException("Freight update failed.");
    }

    public async Task DeleteAsync(string divCode, int arrNo, DateTime arrDate, string preparedBy)
    {
        var (success, status) = await _repo.DeleteAsync(divCode, arrNo, arrDate, preparedBy);
        if (!success)
        {
            if (status == "LOT_EXISTS")
                throw new InvalidOperationException("Lot Bale details exist for this arrival. Deletion is not permitted.");
            throw new InvalidOperationException("Arrival deletion failed.");
        }
    }

    public async Task<ArrivalDetailDto> GetByIdAsync(string divCode, int arrNo, DateTime arrDate)
    {
        var detail = await _repo.GetByIdAsync(divCode, arrNo, arrDate);
        return detail ?? throw new KeyNotFoundException($"Arrival {arrNo} not found.");
    }

    public Task<PagedResult<ArrivalListItemDto>> GetPaginatedAsync(ArrivalListQueryDto query)
        => _repo.GetPaginatedAsync(query);

    // ── Private helpers ───────────────────────────────────────────────────────

    private static void ValidateHeader(CreateArrivalRequest r)
    {
        if (string.IsNullOrWhiteSpace(r.AreaCode))
            throw new ArgumentException("Area Code is required.");
        if (string.IsNullOrWhiteSpace(r.CarCode))
            throw new ArgumentException("Carrier Code is required.");
        if (!r.Lines.Any())
            throw new ArgumentException("At least one line item is required.");
    }

    // Server-side recalculation of NetWt and MoistureEt — client values are never trusted.
    private static void RecalcAllLines(IEnumerable<CreateArrivalLineRequest> lines, bool seasonCalcRequired)
    {
        foreach (var line in lines)
        {
            if (line.GrossWt <= line.TareWt)
                throw new ArgumentException($"Gross weight must be greater than Tare weight for variety {line.VarCode}.");

            decimal adjustable = line.GrossWt - line.TareWt;
            if (seasonCalcRequired)
            {
                // SeasoncalcReq=Y: moisture weight deducted via season process; NetWt = GrossWt - TareWt
                line.MoistureEt = adjustable * (line.MoisturePer + line.TrashPer) / 100m;
                line.NetWt      = adjustable;
            }
            else
            {
                // SeasoncalcReq=N: NetWt = GrossWt - TareWt - MoistureWt
                line.MoistureEt = adjustable * line.MoisturePer / 100m;
                line.NetWt      = adjustable - line.MoistureEt;
            }

            if (line.NetWt <= 0)
                throw new ArgumentException($"Net Weight must be greater than zero for variety {line.VarCode}.");
        }
    }

    private async Task ValidateLinesAsync(CreateArrivalRequest req, ArrivalConfigDto config)
    {
        bool requireLot = config.SuppLotNoReqArrival == "Y";

        foreach (var line in req.Lines)
        {
            if (line.Quantity <= 0)
                throw new ArgumentException($"Quantity must be greater than zero for variety {line.VarCode}.");
            if (line.GrossWt <= 0)
                throw new ArgumentException($"Gross Weight must be greater than zero for variety {line.VarCode}.");

            if (requireLot && (line.LotNoVal == null || line.LotNoVal <= 0))
                throw new ArgumentException($"Supplier Lot Number is required for variety {line.VarCode}.");

            if (requireLot && line.LotNoVal > 0)
            {
                var lotResult = await _repo.ValidateLotRangeAsync(
                    req.DivCode, line.ContNo, DateTime.Parse(line.ContDt.ToString("yyyy-MM-dd")),
                    line.VarCode, line.LotNoVal.Value, line.IsCentralised == "Y");

                if (!lotResult.IsValid)
                    throw new ArgumentException($"Variety {line.VarCode}: {lotResult.Message}");
            }
        }
    }
}
