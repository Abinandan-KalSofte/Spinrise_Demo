using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Services;

public class PurchaseOrderService : IPurchaseOrderService
{
    private readonly IPurchaseOrderRepository _repo;

    public PurchaseOrderService(IPurchaseOrderRepository repo) => _repo = repo;

    public Task<PagedResult<POSummaryResponseDto>> GetListAsync(POListQueryDto query)
        => _repo.GetPaginatedAsync(query);

    public Task<POSummaryCounts> GetSummaryAsync(string divCode)
        => _repo.GetSummaryAsync(divCode);

    public async Task<PODetailResponseDto?> GetDetailAsync(decimal contNo, DateTime contDt, string divCode)
    {
        var lines = (await _repo.GetByIdAsync(contNo, contDt, divCode)).ToList();
        if (lines.Count == 0) return null;

        return new PODetailResponseDto
        {
            Header           = lines[0],
            Lines            = lines,
            DeliverySchedule = (await _repo.GetDeliveryScheduleAsync(contNo, contDt, divCode)).ToList(),
            DiscountRates    = (await _repo.GetDiscountRatesAsync(contNo, contDt, divCode)).ToList(),
        };
    }

    public async Task<PODefaultsDto> GetDefaultsAsync(string divCode)
    {
        var param    = await _repo.GetParamAsync(divCode);
        var currency = await _repo.GetDefaultCurrencyAsync(divCode);
        return new PODefaultsDto
        {
            DefaultCurrency  = currency,
            PRBased          = param?.PRBased ?? false,
            CentralizedOrder = param?.CentralizedOrder ?? false,
        };
    }

    public Task<IEnumerable<PODeleteReasonDto>>   GetDeleteReasonsAsync()                 => _repo.GetDeleteReasonsAsync();
    public Task<IEnumerable<POPreCheckResultDto>> RunPreChecksAsync(string divCode)        => _repo.PreChecksAsync(divCode);
    public Task<GSTConfigDto?>                    GetGSTConfigAsync(string supplierCode)   => _repo.GetGSTConfigAsync(supplierCode);

    public Task<IEnumerable<PRLineDto>> GetPendingPRLinesAsync(string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant)
        => _repo.GetPendingPRLinesAsync(divCode, contDt, sortBy, supplierCode, plant);

    public Task<IEnumerable<PRLineDto>> FilterPRLinesAsync(string divCode, DateTime contDt, PRLineFilterDto filter)
        => _repo.FilterPRLinesAsync(divCode, contDt, filter);

    public async Task<(bool Success, string Message, decimal? ContNo, IReadOnlyList<string> Warnings)> CreateAsync(CreatePODto dto, string userId)
    {
        var warnings = new List<string>();

        var checks = (await _repo.PreChecksAsync(dto.DivCode)).ToList();
        var failed = checks.Where(c => !c.Passed).ToList();
        if (failed.Count > 0)
            return (false, failed.First().ErrorMessage, null, warnings);

        if (dto.Lines.Count == 0)
            return (false, "At least one variety line is required.", null, warnings);

        var param = await _repo.GetParamAsync(dto.DivCode);
        if (param?.PRBased == true)
        {
            foreach (var line in dto.Lines)
            {
                if (string.IsNullOrWhiteSpace(line.Hsn))
                    return (false, $"HSN is mandatory for variety {line.VarCode} (FSD LV-16).", null, warnings);
                if (string.IsNullOrWhiteSpace(line.TaxCode))
                    return (false, $"Tax Code is mandatory for variety {line.VarCode} (FSD LV-17).", null, warnings);
            }
        }

        foreach (var line in dto.Lines.Where(l => l.CgstPer == 0 && l.SgstPer == 0 && l.IgstPer == 0))
            warnings.Add($"GST% is zero for variety {line.VarCode} — confirm if intentional.");

        var fYear  = dto.ContDt.Month >= 4 ? dto.ContDt.Year : dto.ContDt.Year - 1;
        var contNo = await _repo.GenerateNumberAsync(dto.DivCode, fYear);

        foreach (var line in dto.Lines)
            await _repo.InsertLineAsync(contNo, dto, line, userId);

        foreach (var rate in dto.DiscountRates)
            await _repo.InsertDiscountRateAsync(contNo, dto.ContDt, rate);

        foreach (var sched in dto.DeliverySchedule)
            await _repo.InsertDeliveryScheduleAsync(contNo, dto.ContDt, dto.DivCode, sched);

        await _repo.InsertAuditLogAsync(contNo, dto.ContDt, dto.DivCode, "ADD", userId);

        if (dto.LotFrom > 0 && dto.LotTo >= dto.LotFrom)
            await _repo.InsertSlotNoAsync(contNo, dto.ContDt, dto.DivCode, dto.LotFrom, dto.LotTo);

        return (true, "Purchase Order created successfully.", contNo, warnings);
    }

    public async Task<(bool Success, string Message, IReadOnlyList<string> Warnings)> UpdateAsync(decimal contNo, UpdatePODto dto, string userId)
    {
        var warnings = new List<string>();

        var approval = await _repo.GetApprovalStatusAsync(contNo, dto.ContDt, dto.DivCode);
        if (approval?.FirstAppFlg == "Y")
            return (false, "Cannot modify: approval has commenced for this Purchase Order.", warnings);

        return (false, "Update not yet implemented.", warnings);
    }

    public async Task<(bool Success, string Message)> DeleteAsync(PODeleteRequestDto dto, string userId)
    {
        if (string.IsNullOrWhiteSpace(dto.DeleteReasonCode))
            return (false, "A deletion reason is required.");

        try
        {
            await _repo.DeleteAsync(dto.ContNo, dto.ContDt, dto.DivCode, dto.DeleteReasonCode, userId);
            return (true, "Purchase Order Deleted successfully.");
        }
        catch (Exception ex)
        {
            return (false, ex.Message);
        }
    }

    public Task<POApprovalStatusDto?> GetApprovalStatusAsync(decimal contNo, DateTime contDt, string divCode)
        => _repo.GetApprovalStatusAsync(contNo, contDt, divCode);

    public async Task<(bool Success, string Message)> ApproveAsync(POApprovalActionDto dto, string approverId)
    {
        try
        {
            await _repo.UpdateApprovalAsync(dto, approverId);
            return (true, $"Level {dto.Level} {dto.Action.ToLower()} recorded.");
        }
        catch (Exception ex)
        {
            return (false, ex.Message);
        }
    }
}
