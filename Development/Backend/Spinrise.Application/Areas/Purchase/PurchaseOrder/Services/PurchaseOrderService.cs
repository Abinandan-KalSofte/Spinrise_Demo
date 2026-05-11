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
            Param            = param,   // full config for frontend
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

        // HV-7: Delivery Type mandatory (belt-and-suspenders in service; also [Required] on DTO)
        if (string.IsNullOrWhiteSpace(dto.DlyType))
            return (false, "Please enter the Delivery Type.", null, warnings);

        // HV-8: Authorised Signatory mandatory
        if (string.IsNullOrWhiteSpace(dto.Acceptance))
            return (false, "Please enter the Accepted Person.", null, warnings);

        // HV-9: Transport mandatory
        if (string.IsNullOrWhiteSpace(dto.Transport))
            return (false, "Please enter the Mode of Transport.", null, warnings);

        // HV-10: Supplier file mandatory
        if (string.IsNullOrWhiteSpace(dto.SupFileName))
            return (false, "Please Upload Supplier Price List.", null, warnings);

        // HV-12/13: Lot No validation when required by param
        if (param?.RequireSupplierLotNo == true)
        {
            if (dto.LotFrom == 0)
                return (false, "Please enter Supplier From Lot No.", null, warnings);
            if (dto.LotTo == 0)
                return (false, "Please enter the Supplier To Lot No.", null, warnings);
            if (dto.LotFrom > dto.LotTo)
                return (false, "Supplier From Lot No. should not be greater than To Lot No.", null, warnings);
        }

        // LV-3: Rate > 0 per line
        foreach (var line in dto.Lines)
        {
            if (!string.IsNullOrEmpty(line.VarCode) && line.CandyRate <= 0)
                return (false, $"Please Enter the Rate for variety {line.VarCode}.", null, warnings);
        }

        // LV-4/5: Qty per ArrivalType
        foreach (var line in dto.Lines.Where(l => !string.IsNullOrEmpty(l.VarCode)))
        {
            if (dto.ArrivalType == "P" && line.OrdQty <= 0)
                return (false, $"Please enter the Order Quantity for variety {line.VarCode}.", null, warnings);
            if (dto.ArrivalType == "K" && line.OrdKgs <= 0)
                return (false, $"Please enter the order Kgs for variety {line.VarCode}.", null, warnings);
        }

        // E55: ArrivalType vs RateUnit consistency (new SPINRISE rule — FSD §5.12)
        if (!string.IsNullOrEmpty(dto.RateUnit) && !string.IsNullOrEmpty(dto.ArrivalType))
        {
            var ru = dto.RateUnit.ToUpperInvariant();
            if (ru.Contains("CANDY") && dto.ArrivalType == "K")
                return (false, "Rate Unit (Candy-based) requires Arrival Type Pack-wise (P). Please correct.", null, warnings);
            if (ru.Contains("KGS") && dto.ArrivalType == "P")
                return (false, "Rate Unit (KGS-based) requires Arrival Type KGS-wise (K). Please correct.", null, warnings);
        }

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

        var checks = (await _repo.PreChecksAsync(dto.DivCode)).ToList();
        var failed = checks.Where(c => !c.Passed).ToList();
        if (failed.Count > 0)
            return (false, failed.First().ErrorMessage, warnings);

        if (dto.Lines.Count == 0)
            return (false, "At least one variety line is required.", warnings);

        var param = await _repo.GetParamAsync(dto.DivCode);
        if (param?.PRBased == true)
        {
            foreach (var line in dto.Lines)
            {
                if (string.IsNullOrWhiteSpace(line.Hsn))
                    return (false, $"HSN is mandatory for variety {line.VarCode} (FSD LV-16).", warnings);
                if (string.IsNullOrWhiteSpace(line.TaxCode))
                    return (false, $"Tax Code is mandatory for variety {line.VarCode} (FSD LV-17).", warnings);
            }
        }

        foreach (var line in dto.Lines.Where(l => l.CgstPer == 0 && l.SgstPer == 0 && l.IgstPer == 0))
            warnings.Add($"GST% is zero for variety {line.VarCode} — confirm if intentional.");

        if (string.IsNullOrWhiteSpace(dto.DlyType))
            return (false, "Please enter the Delivery Type.", warnings);
        if (string.IsNullOrWhiteSpace(dto.Acceptance))
            return (false, "Please enter the Accepted Person.", warnings);
        if (string.IsNullOrWhiteSpace(dto.Transport))
            return (false, "Please enter the Mode of Transport.", warnings);
        if (string.IsNullOrWhiteSpace(dto.SupFileName))
            return (false, "Please Upload Supplier Price List.", warnings);

        if (param?.RequireSupplierLotNo == true)
        {
            if (dto.LotFrom == 0)
                return (false, "Please enter Supplier From Lot No.", warnings);
            if (dto.LotTo == 0)
                return (false, "Please enter the Supplier To Lot No.", warnings);
            if (dto.LotFrom > dto.LotTo)
                return (false, "Supplier From Lot No. should not be greater than To Lot No.", warnings);
        }

        foreach (var line in dto.Lines)
        {
            if (!string.IsNullOrEmpty(line.VarCode) && line.CandyRate <= 0)
                return (false, $"Please Enter the Rate for variety {line.VarCode}.", warnings);
        }

        foreach (var line in dto.Lines.Where(l => !string.IsNullOrEmpty(l.VarCode)))
        {
            if (dto.ArrivalType == "P" && line.OrdQty <= 0)
                return (false, $"Please enter the Order Quantity for variety {line.VarCode}.", warnings);
            if (dto.ArrivalType == "K" && line.OrdKgs <= 0)
                return (false, $"Please enter the order Kgs for variety {line.VarCode}.", warnings);
        }

        if (!string.IsNullOrEmpty(dto.RateUnit) && !string.IsNullOrEmpty(dto.ArrivalType))
        {
            var ru = dto.RateUnit.ToUpperInvariant();
            if (ru.Contains("CANDY") && dto.ArrivalType == "K")
                return (false, "Rate Unit (Candy-based) requires Arrival Type Pack-wise (P). Please correct.", warnings);
            if (ru.Contains("KGS") && dto.ArrivalType == "P")
                return (false, "Rate Unit (KGS-based) requires Arrival Type KGS-wise (K). Please correct.", warnings);
        }

        // Undo PR balance for lines that reference a PR (so re-insert can re-apply fresh balance)
        var existingLines = (await _repo.GetByIdAsync(contNo, dto.ContDt, dto.DivCode)).ToList();
        foreach (var line in existingLines.Where(l => l.IPrNo.HasValue && l.PrSno > 0 && l.PrDate.HasValue))
            await _repo.UndoPRBalanceAsync(dto.DivCode, line.IPrNo!.Value, line.PrDate!.Value, line.PrSno, -line.OrdQty);

        await _repo.DeleteLinesForUpdateAsync(contNo, dto.ContDt, dto.DivCode);

        foreach (var line in dto.Lines)
            await _repo.InsertLineAsync(contNo, dto, line, userId);

        foreach (var rate in dto.DiscountRates)
            await _repo.InsertDiscountRateAsync(contNo, dto.ContDt, rate);

        foreach (var sched in dto.DeliverySchedule)
            await _repo.InsertDeliveryScheduleAsync(contNo, dto.ContDt, dto.DivCode, sched);

        if (dto.LotFrom > 0 && dto.LotTo >= dto.LotFrom)
            await _repo.InsertSlotNoAsync(contNo, dto.ContDt, dto.DivCode, dto.LotFrom, dto.LotTo);

        await _repo.InsertAuditLogAsync(contNo, dto.ContDt, dto.DivCode, "MOD", userId);

        return (true, "Purchase Order updated successfully.", warnings);
    }

    public async Task<(bool Success, string Message)> DeleteAsync(PODeleteRequestDto dto, string userId)
    {
        if (string.IsNullOrWhiteSpace(dto.DeleteReasonCode))
            return (false, "A deletion reason is required.");

        // FSD §5.10 Step 0: FIRST_APPFLG=Y blocks deletion (approval has commenced)
        var approval = await _repo.GetApprovalStatusAsync(dto.ContNo, dto.ContDt, dto.DivCode);
        if (approval?.FirstAppFlg == "Y")
            return (false, "PO cannot be deleted after approval has commenced.");

        try
        {
            await _repo.DeleteAsync(dto.ContNo, dto.ContDt, dto.DivCode, dto.DeleteReasonCode, userId);
            await _repo.InsertAuditLogAsync(dto.ContNo, dto.ContDt, dto.DivCode, "DEL", userId, dto.DeleteReasonCode);
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
