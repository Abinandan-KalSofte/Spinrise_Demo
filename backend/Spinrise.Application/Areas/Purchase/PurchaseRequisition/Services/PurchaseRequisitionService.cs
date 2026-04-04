namespace Spinrise.Application.Services;

public class PurchaseRequisitionService : IPurchaseRequisitionService
{
    private readonly IPurchaseRequisitionRepository _repo;
    private readonly IUnitOfWork _uow;

    public PurchaseRequisitionService(IPurchaseRequisitionRepository repo, IUnitOfWork uow)
    {
        _repo = repo;
        _uow = uow;
    }

    public async Task<PreCheckResult> RunPreChecksAsync(string divCode)
    {
        await _uow.BeginAsync();

        try
        {
            var result = await _repo.RunPreChecksAsync(divCode.Trim());
            await _uow.CommitAsync();
            return result;
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo, DateTime? fromDate, DateTime? toDate, string? depCode, string? status)
    {
        await _uow.BeginAsync();

        try
        {
            var result = await _repo.GetAllAsync(divCode.Trim(), prNo?.Trim(), fromDate, toDate, depCode?.Trim(), status?.Trim());
            await _uow.CommitAsync();
            return result;
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<PRHeaderResponseDto?> GetByIdAsync(string divCode, string prNo)
    {
        await _uow.BeginAsync();

        try
        {
            var header = await _repo.GetByIdAsync(divCode.Trim(), prNo.Trim());
            if (header is null)
            {
                await _uow.CommitAsync();
                return null;
            }

            var response = header.ToResponseDto();
            response.HasPendingIndentWarning = await _repo.GetFeatureFlagAsync(divCode.Trim(), PRFeatureFlags.PendingIndentCheckEnabled);
            if (response.HasPendingIndentWarning)
            {
                response.PendingIndentWarningMessage = PRMessages.PendingIndentWarning;
            }

            await _uow.CommitAsync();
            return response;
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<(bool Success, string Message, string? PrNo)> CreateAsync(CreatePRHeaderDto dto, string createdBy)
    {
        var divCode = dto.DivCode.Trim();
        var preCheckResult = await RunPreChecksAsync(divCode);
        var preCheckFailure = GetPreCheckFailure(preCheckResult);
        if (preCheckFailure is not null)
        {
            return (false, preCheckFailure, null);
        }

        await _uow.BeginAsync();

        try
        {
            var today = DateTime.Today;
            var backDateAllowed = await _repo.GetFeatureFlagAsync(divCode, PRFeatureFlags.BackDateAllowed);
            if (!backDateAllowed && dto.PrDate.Date != today)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.InvalidPrDate, null);
            }

            if (!await _repo.DepartmentExistsAsync(divCode, dto.DepCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DepartmentNotFound, null);
            }

            if (await _repo.GetFeatureFlagAsync(divCode, PRFeatureFlags.BudgetValidationEnabled)
                && string.IsNullOrWhiteSpace(dto.SubCostCode))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.SubCostRequired, null);
            }

            var lineValidation = await ValidateCreateLinesAsync(divCode, dto.DepCode.Trim(), dto.Lines, today);
            if (lineValidation is not null)
            {
                await _uow.CommitAsync();
                return (false, lineValidation, null);
            }

            await _uow.CommitAsync();
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var prNo = FormatPrNumber(await _repo.GetNextPrNumberAsync(divCode, GetFinancialYear(dto.PrDate)), dto.PrDate);
            var header = dto.ToEntity(prNo, createdBy);

            await _repo.InsertHeaderAsync(header);

            for (var index = 0; index < dto.Lines.Count; index++)
            {
                await _repo.InsertLineAsync(dto.Lines[index].ToEntity(divCode, prNo, index + 1));
            }

            await _uow.CommitAsync();
            return (true, "Purchase Requisition created successfully.", prNo);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<(bool Success, string Message)> UpdateAsync(UpdatePRHeaderDto dto, string modifiedBy)
    {
        await _uow.BeginAsync();

        try
        {
            var existing = await _repo.GetByIdAsync(dto.DivCode.Trim(), dto.PrNo.Trim());
            if (existing is null)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrNotFound);
            }

            if (existing.PrStatus.Equals("CONVERTED", StringComparison.OrdinalIgnoreCase)
                || existing.PrStatus.Equals("CLOSED", StringComparison.OrdinalIgnoreCase))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrAlreadyConverted);
            }

            if (!await _repo.DepartmentExistsAsync(dto.DivCode.Trim(), dto.DepCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DepartmentNotFound);
            }

            if (await _repo.GetFeatureFlagAsync(dto.DivCode.Trim(), PRFeatureFlags.BudgetValidationEnabled)
                && string.IsNullOrWhiteSpace(dto.SubCostCode))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.SubCostRequired);
            }

            var lineValidation = await ValidateUpdateLinesAsync(dto.DivCode.Trim(), dto.DepCode.Trim(), existing.PrDate.Date, dto.Lines);
            if (lineValidation is not null)
            {
                await _uow.CommitAsync();
                return (false, lineValidation);
            }

            await _uow.CommitAsync();
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var current = await _repo.GetByIdAsync(dto.DivCode.Trim(), dto.PrNo.Trim());
            if (current is null)
            {
                await _uow.RollbackAsync();
                return (false, PRMessages.PrNotFound);
            }

            var header = dto.ToEntity(modifiedBy, current.PrDate, current.DepName, current.PrStatus, current.CreatedBy, current.CreatedAt);
            var updatedRows = await _repo.UpdateHeaderAsync(header);
            if (updatedRows <= 0)
            {
                await _uow.RollbackAsync();
                return (false, PRMessages.PrNotFound);
            }

            await _repo.SoftDeleteLinesAsync(dto.DivCode.Trim(), dto.PrNo.Trim());

            for (var index = 0; index < dto.Lines.Count; index++)
            {
                await _repo.InsertLineAsync(dto.Lines[index].ToEntity(dto.DivCode.Trim(), dto.PrNo.Trim(), index + 1));
            }

            await _uow.CommitAsync();
            return (true, "Purchase Requisition updated successfully.");
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<(bool Success, string Message)> DeleteAsync(string divCode, string prNo)
    {
        if (string.IsNullOrWhiteSpace(divCode) || string.IsNullOrWhiteSpace(prNo))
        {
            return (false, PRMessages.PrNotFound);
        }

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var deletedRows = await _repo.DeleteAsync(divCode.Trim(), prNo.Trim());
            await _uow.CommitAsync();
            return deletedRows > 0
                ? (true, "Purchase Requisition deleted successfully.")
                : (false, PRMessages.PrNotFound);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<(bool Success, string Message)> DeleteLineAsync(string divCode, string prNo, int prSNo)
    {
        if (string.IsNullOrWhiteSpace(divCode) || string.IsNullOrWhiteSpace(prNo) || prSNo <= 0)
        {
            return (false, PRMessages.PrNotFound);
        }

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var deletedRows = await _repo.DeleteLineAsync(divCode.Trim(), prNo.Trim(), prSNo);
            await _uow.CommitAsync();
            return deletedRows > 0
                ? (true, "Purchase Requisition line deleted successfully.")
                : (false, PRMessages.PrNotFound);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    private static string? GetPreCheckFailure(PreCheckResult result)
    {
        if (!result.ItemMasterExists)
        {
            return PRMessages.ItemMasterMissing;
        }

        if (!result.DepartmentExists)
        {
            return PRMessages.DepartmentMissing;
        }

        if (!result.DocNumberConfigured)
        {
            return PRMessages.DocNumberMissing;
        }

        return null;
    }

    private async Task<string?> ValidateCreateLinesAsync(string divCode, string depCode, IReadOnlyCollection<CreatePRLineDto> lines, DateTime processingDate)
    {
        var seenItems = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

        foreach (var line in lines)
        {
            var lineValidation = await ValidateLineAsync(divCode, depCode, processingDate, line.ItemCode, line.QtyRequired, line.RequiredDate, line.MachineNo, line.CostCentreCode, line.BudgetGroupCode, seenItems, PRMessages.RequiredDateInvalid);
            if (lineValidation is not null)
            {
                return lineValidation;
            }
        }

        return null;
    }

    private async Task<string?> ValidateUpdateLinesAsync(string divCode, string depCode, DateTime prDate, IReadOnlyCollection<UpdatePRLineDto> lines)
    {
        var seenItems = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

        foreach (var line in lines)
        {
            var lineValidation = await ValidateLineAsync(divCode, depCode, prDate, line.ItemCode, line.QtyRequired, line.RequiredDate, line.MachineNo, line.CostCentreCode, line.BudgetGroupCode, seenItems, PRMessages.RequiredDateModify);
            if (lineValidation is not null)
            {
                return lineValidation;
            }
        }

        return null;
    }

    private async Task<string?> ValidateLineAsync(string divCode, string depCode, DateTime minRequiredDate, string itemCode, decimal qtyRequired, DateTime? requiredDate, string? machineNo, string? costCentreCode, string? budgetGroupCode, ISet<string> seenItems, string requiredDateMessage)
    {
        var normalizedItemCode = itemCode.Trim();
        if (!await _repo.ItemExistsAsync(divCode, normalizedItemCode))
        {
            return PRMessages.ItemNotFound;
        }

        if (!seenItems.Add(normalizedItemCode))
        {
            return PRMessages.DuplicateItem;
        }

        if (qtyRequired <= 0)
        {
            return PRMessages.QtyRequired;
        }

        if (requiredDate.HasValue && requiredDate.Value.Date < minRequiredDate.Date)
        {
            return requiredDateMessage;
        }

        if (!string.IsNullOrWhiteSpace(machineNo)
            && !await _repo.MachineExistsAsync(divCode, depCode, machineNo.Trim()))
        {
            return PRMessages.MachineNotFound;
        }

        if (!string.IsNullOrWhiteSpace(costCentreCode)
            && !await _repo.CostCentreExistsAsync(divCode, costCentreCode.Trim()))
        {
            return PRMessages.CostCentreNotFound;
        }

        if (!string.IsNullOrWhiteSpace(budgetGroupCode)
            && !await _repo.BudgetGroupExistsAsync(divCode, budgetGroupCode.Trim()))
        {
            return PRMessages.BudgetGroupNotFound;
        }

        return null;
    }

    private static string GetFinancialYear(DateTime date)
    {
        var startYear = date.Month >= 4 ? date.Year : date.Year - 1;
        return $"{startYear}-{(startYear + 1) % 100:00}";
    }

    private static string FormatPrNumber(int nextNumber, DateTime prDate)
    {
        return $"PR/{GetFinancialYear(prDate)}/{nextNumber:00000}";
    }
}

internal static class PRFeatureFlags
{
    public const string BackDateAllowed = "backdate_allowed";
    public const string BudgetValidationEnabled = "budget_validation_enabled";
    public const string PendingIndentCheckEnabled = "pending_indent_check_enabled";
}

internal static class PRMessages
{
    public const string ItemMasterMissing = "Please define Item in Item Master.";
    public const string DepartmentMissing = "Please define Department in Setup.";
    public const string DocNumberMissing = "Please define Document No. for Requisition in Housekeeping.";
    public const string InvalidPrDate = "PR date must be equal to processing date.";
    public const string DepartmentNotFound = "Department not found. Please select a valid department.";
    public const string SubCostRequired = "Sub Cost Centre is required when budget validation is enabled.";
    public const string RefNoRequired = "Please enter the Reference Number.";
    public const string ItemNotFound = "Item Code not found or inactive.";
    public const string DuplicateItem = "Duplicate item codes are not allowed in the same PR.";
    public const string QtyRequired = "Quantity Required must be greater than zero.";
    public const string RequiredDateInvalid = "Required Date must be on or after the processing date.";
    public const string RequiredDateModify = "Required Date cannot be before the PR Date.";
    public const string MachineNotFound = "Machine not found for the selected department.";
    public const string CostCentreNotFound = "Cost Centre not found.";
    public const string BudgetGroupNotFound = "Budget Group not found.";
    public const string PrNotFound = "Purchase Requisition not found.";
    public const string PrAlreadyConverted = "This PR has already been converted to a PO and cannot be modified.";
    public const string ApprovalNotComplete = "Final Level Approval not completed. Printout cannot be taken.";
    public const string NoPrRecords = "No records found to print.";
    public const string PendingIndentWarning = "Pending indent check is enabled for this division.";
}
