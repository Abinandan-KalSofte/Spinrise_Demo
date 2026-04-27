using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Purchase.PurchaseOrder.Services;

public class PurchaseOrderService : IPurchaseOrderService
{
    private readonly IPurchaseOrderRepository _repo;
    private readonly IUnitOfWork _uow;

    public PurchaseOrderService(IPurchaseOrderRepository repo, IUnitOfWork uow)
    {
        _repo = repo;
        _uow  = uow;
    }

    // ── Defaults / Pre-checks ─────────────────────────────────────────────────

    public async Task<PODefaultsDto> GetDefaultsAsync(string divCode)
    {
        await _uow.BeginAsync();
        var param    = await _repo.GetParamAsync();
        var currency = await _repo.GetDefaultCurrencyAsync(divCode);
        await _uow.CommitAsync();
        return new PODefaultsDto
        {
            DefaultCurrency = currency,
            Params          = param ?? new POParamDto()
        };
    }

    public async Task<POPreCheckResultDto> RunPreChecksAsync(string divCode)
    {
        var (fyStart, fyEnd) = GetFinancialYear();
        await _uow.BeginAsync();
        var result = await _repo.PreChecksAsync(divCode, fyStart, fyEnd);
        await _uow.CommitAsync();
        return result;
    }

    public async Task<IEnumerable<PRLineDto>> GetDeleteReasonsAsync()
    {
        await _uow.BeginAsync();
        var result = await _repo.GetDeleteReasonsAsync();
        await _uow.CommitAsync();
        return result;
    }

    // ── Read ──────────────────────────────────────────────────────────────────

    public async Task<PagedResult<POSummaryResponseDto>> GetPaginatedAsync(string divCode, POListQueryDto query)
    {
        await _uow.BeginAsync();
        var result = await _repo.GetPaginatedAsync(divCode.Trim(), query);
        await _uow.CommitAsync();
        return result;
    }

    public async Task<PODetailResponseDto?> GetByIdAsync(string contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        var result = await _repo.GetByIdAsync(contNo.Trim(), contDt, divCode.Trim());
        await _uow.CommitAsync();
        return result;
    }

    public async Task<IEnumerable<PRLineDto>> GetPendingPRLinesAsync(PRLineFilterDto filter)
    {
        await _uow.BeginAsync();
        IEnumerable<PRLineDto> result;
        bool hasFilter = !string.IsNullOrWhiteSpace(filter.Indent)
                      || !string.IsNullOrWhiteSpace(filter.ItemCode)
                      || !string.IsNullOrWhiteSpace(filter.ItemName);

        if (hasFilter)
            result = await _repo.FilterPRLinesAsync(filter);
        else
            result = await _repo.GetPendingPRLinesAsync(
                filter.DivCode, filter.ContDt, filter.SortBy,
                filter.SupplierCode, filter.Plant);

        await _uow.CommitAsync();
        return result;
    }

    // ── Create ────────────────────────────────────────────────────────────────

    public async Task<(string ContNo, IReadOnlyList<string> Warnings)> CreateAsync(
        CreatePODto dto, string userId, string? ipAddr, string? host)
    {
        var warnings = new List<string>();

        // Pre-add checks
        var (fyStart, fyEnd) = GetFinancialYear(dto.ContDt);
        await _uow.BeginAsync();
        var checks = await _repo.PreChecksAsync(dto.DivCode, fyStart, fyEnd);
        await _uow.CommitAsync();

        if (!checks.FinYearOpen)
            throw new InvalidOperationException("Transaction is Closed in this Financial Year.");
        if (!checks.SupplierMasterExists)
            throw new InvalidOperationException("Please Define the Supplier!!");
        if (!checks.AreaMasterExists)
            throw new InvalidOperationException("Please Define the Area in SetUp!!");
        if (!checks.VarietyMasterExists)
            throw new InvalidOperationException("Please Define the Variety in SetUp!!");
        if (!checks.RateUnitMasterExists)
            throw new InvalidOperationException("Please Enter the RateUnit details");
        if (!checks.PayModeMasterExists)
            throw new InvalidOperationException("Please enter the Payment Mode");
        if (!checks.DelReasonMasterExists)
            warnings.Add("Delete Reason master is empty — set up reasons before deleting POs.");

        // Header validations
        ValidateHeader(dto);

        // Line validations — purge empty rows first
        var lines = dto.Lines
            .Where(l => !string.IsNullOrWhiteSpace(l.VarCode) || l.OrdQty > 0 || l.OrdKgs > 0)
            .ToList();
        if (lines.Count == 0)
            throw new InvalidOperationException("Please enter all the Details for Variety");

        var param = new POParamDto();
        await _uow.BeginAsync();
        param = await _repo.GetParamAsync() ?? param;
        await _uow.CommitAsync();

        foreach (var line in lines)
        {
            if (string.IsNullOrWhiteSpace(line.VarCode))
                throw new InvalidOperationException("Please enter the Variety");

            if (param.PRBased == "Y")
            {
                if (string.IsNullOrWhiteSpace(line.HSN))
                    throw new InvalidOperationException("HSN cannot be empty");
                if (string.IsNullOrWhiteSpace(line.TaxCode))
                    throw new InvalidOperationException("Tax Code Cannot Be empty! Add Tax Code in master");
            }

            if (dto.ArrivalType == "P" && line.OrdQty <= 0)
                throw new InvalidOperationException("Please enter the Order Quantity");
            if (dto.ArrivalType == "K" && line.OrdKgs <= 0)
                throw new InvalidOperationException("Please enter the order Kgs");
            if (line.CandyRate <= 0)
                throw new InvalidOperationException("Please Enter the Rate");

            if (line.CgstPer == 0 && line.SgstPer == 0 && line.IgstPer == 0)
                warnings.Add($"GST % is 0 for variety {line.VarCode} — please confirm.");
        }

        // UoM–ArrivalType consistency (Section 5.12)
        if (!string.IsNullOrWhiteSpace(dto.RateUnit) && !string.IsNullOrWhiteSpace(dto.ArrivalType))
        {
            bool isCandyUnit = dto.RateUnit.Contains("candy", StringComparison.OrdinalIgnoreCase)
                            || dto.RateUnit.Contains("bale",  StringComparison.OrdinalIgnoreCase);
            bool isKgsUnit   = dto.RateUnit.Contains("kg",   StringComparison.OrdinalIgnoreCase);

            if (isCandyUnit && dto.ArrivalType == "K")
                throw new InvalidOperationException("Rate unit and Arrival Type mismatch: Candy rate requires Pack-wise arrival.");
            if (isKgsUnit && dto.ArrivalType == "P")
                throw new InvalidOperationException("Rate unit and Arrival Type mismatch: KGS rate requires KGS-wise arrival.");
        }

        // Generate PO number
        await _uow.BeginAsync();
        var contNoStr = await _repo.GenerateNumberAsync(dto.DivCode, fyStart, fyEnd, param.CentralizedOrder);
        await _uow.CommitAsync();

        // Save — single transaction
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            foreach (var line in lines)
            {
                await _repo.InsertLineAsync(contNoStr, dto.DivCode, dto, line);

                // PR balance update with UPDLOCK (CD-3 fix)
                if (line.IPrNo.HasValue && line.IPrNo > 0 && line.PrDate.HasValue && line.PrSNo.HasValue)
                    await _repo.UpdatePRBalanceAsync(dto.DivCode, line.IPrNo.Value, line.PrDate.Value, line.PrSNo.Value, line.OrdQty, line.OrdKgs);
            }

            foreach (var discount in dto.DiscountRates)
                await _repo.InsertDiscountRateAsync(contNoStr, dto.ContDt, dto.DivCode, dto.SupCd, discount);

            foreach (var schedule in dto.DeliverySchedule)
                await _repo.InsertDeliveryScheduleAsync(contNoStr, dto.ContDt, dto.DivCode, schedule);

            // Audit log (one entry for the PO, using first line for variety context)
            await _repo.InsertAuditLogAsync(contNoStr, dto.ContDt, dto.DivCode, "ADD", userId, ipAddr, host, lines.FirstOrDefault());

            await _uow.CommitAsync();
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }

        // Post-commit: lot number management (outside transaction — FSD Section 5.5)
        if (dto.LotFrom > 0)
        {
            await _uow.BeginAsync();
            await _repo.InsertSlotNoAsync(contNoStr, dto.ContDt, dto.DivCode, dto.LotFrom, dto.LotTo);
            await _uow.CommitAsync();
        }

        return (contNoStr, warnings.AsReadOnly());
    }

    // ── Update ────────────────────────────────────────────────────────────────

    public async Task<IReadOnlyList<string>> UpdateAsync(UpdatePODto dto, string userId, string? ipAddr, string? host)
    {
        var warnings = new List<string>();
        ValidateHeader(dto);

        var lines = dto.Lines.Where(l => !string.IsNullOrWhiteSpace(l.VarCode)).ToList();
        if (lines.Count == 0)
            throw new InvalidOperationException("Please enter all the Details for Variety");

        await _uow.BeginAsync(startTransaction: true);
        try
        {
            // Delete existing discount rates and schedules before re-inserting
            // (handled via InsertDiscountRate replacing — delete done in repo for update)
            foreach (var line in lines)
                await _repo.UpdateLineAsync(dto.ContNo, dto.ContDt, dto.DivCode, line.VarCode, dto, userId);

            foreach (var discount in dto.DiscountRates)
                await _repo.InsertDiscountRateAsync(dto.ContNo, dto.ContDt, dto.DivCode, dto.SupCd, discount);

            foreach (var schedule in dto.DeliverySchedule)
                await _repo.InsertDeliveryScheduleAsync(dto.ContNo, dto.ContDt, dto.DivCode, schedule);

            await _repo.InsertAuditLogAsync(dto.ContNo, dto.ContDt, dto.DivCode, "MODIFY", userId, ipAddr, host);
            await _uow.CommitAsync();
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }

        if (dto.LotFrom > 0)
        {
            await _uow.BeginAsync();
            await _repo.InsertSlotNoAsync(dto.ContNo, dto.ContDt, dto.DivCode, dto.LotFrom, dto.LotTo);
            await _uow.CommitAsync();
        }

        return warnings.AsReadOnly();
    }

    // ── Delete ────────────────────────────────────────────────────────────────

    public async Task<(int Result, string Message)> DeleteAsync(PODeleteRequestDto dto, string deletedBy)
    {
        await _uow.BeginAsync();
        var result = await _repo.DeleteAsync(dto.ContNo, dto.ContDt, dto.DivCode, dto.DeleteReasonCode, deletedBy);
        await _uow.CommitAsync();
        return result;
    }

    // ── Approval ─────────────────────────────────────────────────────────────

    public async Task<POApprovalStatusDto?> GetApprovalStatusAsync(string contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        var result = await _repo.GetApprovalStatusAsync(contNo, contDt, divCode);
        await _uow.CommitAsync();
        return result;
    }

    public async Task<int> ApproveAsync(POApprovalActionDto dto)
    {
        await _uow.BeginAsync();
        var result = await _repo.UpdateApprovalAsync(dto);
        await _uow.CommitAsync();
        return result;
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

    private static (DateTime FYStart, DateTime FYEnd) GetFinancialYear(DateTime? reference = null)
    {
        var date = reference ?? DateTime.Today;
        int year = date.Month >= 4 ? date.Year : date.Year - 1;
        return (new DateTime(year, 4, 1), new DateTime(year + 1, 3, 31));
    }

    private static void ValidateHeader(CreatePODto dto)
    {
        if (string.IsNullOrWhiteSpace(dto.SupCd))
            throw new InvalidOperationException("Please enter Supplier");
        if (string.IsNullOrWhiteSpace(dto.AreaCode))
            throw new InvalidOperationException("Please enter the Area Name");
        if (string.IsNullOrWhiteSpace(dto.PayMode))
            throw new InvalidOperationException("Please enter the Payment Mode");
        if (string.IsNullOrWhiteSpace(dto.CurrCode))
            throw new InvalidOperationException("Please enter the Billing Currency");
        if (string.IsNullOrWhiteSpace(dto.DlyType))
            throw new InvalidOperationException("Please enter the Delivery Type");
        if (string.IsNullOrWhiteSpace(dto.Acceptance))
            throw new InvalidOperationException("Please enter the Accepted Person");
        if (string.IsNullOrWhiteSpace(dto.Transport))
            throw new InvalidOperationException("Please enter the Mode of Transport");
        if (string.IsNullOrWhiteSpace(dto.SupFileName))
            throw new InvalidOperationException("Please Upload Supplier Price List");
        if (dto.ContDt.Year < 2000)
            throw new InvalidOperationException("Please enter the valid Processing Date");
    }
}
