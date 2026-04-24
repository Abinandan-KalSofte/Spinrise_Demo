namespace Spinrise.Application.Services;

public class PurchaseRequisitionService : IPurchaseRequisitionService
{
    private readonly IPurchaseRequisitionRepository _repo;
    private readonly IUnitOfWork _uow;

    public PurchaseRequisitionService(IPurchaseRequisitionRepository repo, IUnitOfWork uow)
    {
        _repo = repo;
        _uow  = uow;
    }

    // ── Pre-checks (V1, V2, V3 + all po_para flags) ───────────────────────────

    public async Task<PreCheckResult> RunPreChecksAsync(string divCode)
    {
        await _uow.BeginAsync();
        var result = await _repo.RunPreChecksAsync(divCode.Trim());
        await _uow.CommitAsync();
        return result;
    }

    // ── List / Get ────────────────────────────────────────────────────────────

    public async Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(
        string divCode, string? prNo, DateTime? fromDate, DateTime? toDate,
        string? depCode, string? status)
    {
        await _uow.BeginAsync();
        var result = await _repo.GetAllAsync(
            divCode.Trim(), prNo?.Trim(), fromDate, toDate,
            depCode?.Trim(), status?.Trim());
        await _uow.CommitAsync();
        return result;
    }

    public async Task<PagedResult<PRSummaryResponseDto>> GetPaginatedAsync(string divCode, PRListQueryDto query)
    {
        await _uow.BeginAsync();
        var result = await _repo.GetPaginatedAsync(divCode.Trim(), query);
        await _uow.CommitAsync();
        return result;
    }

    public async Task<PRHeaderResponseDto?> GetByIdAsync(string divCode, long prNo, DateTime? startDate = null, DateTime? endDate = null)
    {
        await _uow.BeginAsync();
        var header = await _repo.GetByIdAsync(divCode.Trim(), prNo, startDate, endDate);
        await _uow.CommitAsync();
        return header?.ToResponseDto();
    }

    // ── Item info (rate, stock, last PO, pending warnings) ───────────────────

    public async Task<PRItemInfoDto?> GetItemInfoAsync(
        string divCode, string depCode, string itemCode,
        DateTime yfDate, DateTime ylDate, PreCheckResult flags)
    {
        await _uow.BeginAsync();
        try
        {
            var raw = await _repo.GetItemInfoAsync(
                divCode.Trim(), itemCode.Trim(), yfDate, ylDate);

            if (raw is null)
            {
                await _uow.CommitAsync();
                return null;
            }

            var dto = new PRItemInfoDto
            {
                Rate               = raw.Rate,
                CurrentStock       = raw.CurrentStock,
                LastPoRate         = raw.LastPoRate,
                LastPoDate         = raw.LastPoDate,
                LastPoSupplierCode = raw.LastPoSupplierCode,
                LastPoSupplierName = raw.LastPoSupplierName,
            };

            // Pending indent check — gated by po_para.PendingOrderPara = 'Y' (V26)
            if (flags.PendingIndentCheckEnabled)
            {
                var indent = await _repo.CheckPendingIndentAsync(
                    divCode.Trim(), itemCode.Trim(), depCode.Trim(), yfDate, ylDate);
                dto.HasPendingIndent = indent.HasPendingIndent;
                dto.PendingIndentQty = indent.PendingQty;
            }

            // Pending PR check — gated by po_para.PendPRCheck = 'Y' (V27 — configurable)
            if (flags.PendingPRCheckEnabled)
            {
                var pendPr = await _repo.CheckPendingPRAsync(divCode.Trim(), itemCode.Trim());
                dto.HasPendingPR  = pendPr.HasPendingPR;
                dto.PendingPrNo   = pendPr.PendingPrNo;
                dto.PendingPrDate = pendPr.PendingPrDate;
            }

            await _uow.CommitAsync();
            return dto;
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    public async Task<IEnumerable<PRItemHistoryDto>> GetItemHistoryAsync(string divCode, string itemCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetItemHistoryAsync(divCode.Trim(), itemCode.Trim());
            
            // Safeguard: ensure pending qty is never negative (null-safe)
            var validated = data.Select(x => new PRItemHistoryDto
            {
                PoNo         = x.PoNo,
                PoDate       = x.PoDate,
                SupplierCode = x.SupplierCode,
                SupplierName = x.SupplierName,
                Rate         = x.Rate >= 0 ? x.Rate : 0,
                OrderQty     = x.OrderQty >= 0 ? x.OrderQty : 0,
                ReceivedQty  = x.ReceivedQty >= 0 ? x.ReceivedQty : 0,
                PendingQty   = Math.Max(x.OrderQty - x.ReceivedQty, 0),  // Never negative
            });
            
            await _uow.CommitAsync();
            return validated;
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    // ── Delete reasons ────────────────────────────────────────────────────────

    public async Task<IEnumerable<PRDeleteReasonDto>> GetDeleteReasonsAsync()
    {
        await _uow.BeginAsync();
        var result = await _repo.GetDeleteReasonsAsync();
        await _uow.CommitAsync();
        return result;
    }

    // ── Create ────────────────────────────────────────────────────────────────

    public async Task<(bool Success, string Message, long? PrNo, IReadOnlyList<string> Warnings)> CreateAsync(
        CreatePRHeaderDto dto, string divCode, AuditContext audit)
    {
        divCode = divCode.Trim();

        IReadOnlyList<string> lineWarnings = [];

        // ── Phase 1: validation (read-only transaction) ───────────────────────
        await _uow.BeginAsync();
        try
        {
            // V1–V3: setup pre-checks
            var flags = await _repo.RunPreChecksAsync(divCode);
            var setupFailure = GetPreCheckFailure(flags);
            if (setupFailure is not null)
            {
                await _uow.CommitAsync();
                return (false, setupFailure, null, []);
            }

            var today = DateTime.Today;
            var yfDate = GetFinancialYearStart(dto.PrDate);
            var ylDate = GetFinancialYearEnd(dto.PrDate);

            //V4 / V6: PR date validation
            if (!flags.BackDateAllowed)
            {
                var maxPrDate = await _repo.GetMaxPrDateAsync(divCode, yfDate, ylDate);
                if (dto.PrDate.Date < maxPrDate.Date || dto.PrDate.Date > today)
                {
                    await _uow.CommitAsync();
                    return (false, PRMessages.InvalidPrDate, null, []);
                }
            }

            // V7: department
            if (!await _repo.DepartmentExistsAsync(divCode, dto.DepCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DepartmentNotFound, null, []);
            }

            // V8: order type required when flag active
            if (flags.PendingPoDetailsEnabled && string.IsNullOrWhiteSpace(dto.IType))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.OrderTypeRequired, null, []);
            }

            // V8b: PO Group required when PurTypeFlg active (PO_PARA.purtypeflg)
            if (flags.PurTypeFlgEnabled && string.IsNullOrWhiteSpace(dto.PoGroupCode))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PoGroupRequired, null, []);
            }

            // V9: requester name required when flag active
            if (flags.RequireRequesterName && string.IsNullOrWhiteSpace(dto.ReqName))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.RequesterRequired, null, []);
            }

            // V11: ref no required when flag active
            if (flags.RequireRefNo && string.IsNullOrWhiteSpace(dto.RefNo))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.RefNoRequired, null, []);
            }

            // V12: at least one line
            if (dto.Lines.Count == 0)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.NoLineItems, null, []);
            }

            // V13–V25: line-level validation (Create: item+machine composite dedup, IST-15)
            var (lineError, warnings) = await ValidateCreateLinesAsync(
                divCode, dto.DepCode.Trim(), dto.Lines, today);
            lineWarnings = warnings;
            if (lineError is not null)
            {
                await _uow.CommitAsync();
                return (false, lineError, null, []);
            }

            await _uow.CommitAsync();
        }
        catch { await _uow.RollbackAsync(); throw; }

        // ── Phase 2: write (explicit transaction) ─────────────────────────────
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            var prNo   = (long)await _repo.GetNextPrNumberAsync(divCode, GetFinancialYearLabel(dto.PrDate));
            var header = dto.ToEntity(prNo, divCode, audit.UserId);

            await _repo.InsertHeaderAsync(header);

            for (var i = 0; i < dto.Lines.Count; i++)
            {
                var line = dto.Lines[i].ToEntity(divCode, prNo, i + 1);
                await _repo.InsertLineAsync(line);
                await _repo.InsertAuditLogAsync(header, line, AuditMod.Add, audit);
            }

            await _uow.CommitAsync();
            return (true, "Purchase Requisition created successfully.", (long?)prNo, lineWarnings);
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    // ── Update ────────────────────────────────────────────────────────────────

    public async Task<(bool Success, string Message, IReadOnlyList<string> Warnings)> UpdateAsync(
        UpdatePRHeaderDto dto, string divCode, AuditContext audit)
    {
        divCode = divCode.Trim();

        IReadOnlyList<string> lineWarnings = [];

        // ── Phase 1: validation ───────────────────────────────────────────────
        PurchaseRequisitionHeader existing;
        await _uow.BeginAsync();
        try
        {
            var fetched = await _repo.GetByIdAsync(divCode, dto.PrNo);
            if (fetched is null)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrNotFound, []);
            }

            existing = fetched;

            var updateLockMsg = GetLockMessage(existing);
            if (updateLockMsg is not null)
            {
                await _uow.CommitAsync();
                return (false, updateLockMsg, []);
            }

            var flags = await _repo.RunPreChecksAsync(divCode);

            if (!await _repo.DepartmentExistsAsync(divCode, dto.DepCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DepartmentNotFound, []);
            }

            if (flags.RequireRequesterName && string.IsNullOrWhiteSpace(dto.ReqName))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.RequesterRequired, []);
            }

            if (flags.RequireRefNo && string.IsNullOrWhiteSpace(dto.RefNo))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.RefNoRequired, []);
            }

            if (dto.Lines.Count == 0)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.NoLineItems, []);
            }

            // V20: required date >= PR date | V15: item+machine composite dedup | MINLEVEL warnings
            var (lineError, warnings) = await ValidateUpdateLinesAsync(
                divCode, dto.DepCode.Trim(), fetched.PrDate.Date, dto.Lines);
            lineWarnings = warnings;
            if (lineError is not null)
            {
                await _uow.CommitAsync();
                return (false, lineError, []);
            }

            await _uow.CommitAsync();
        }
        catch { await _uow.RollbackAsync(); throw; }

        // ── Phase 2: write ────────────────────────────────────────────────────
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            // Reuse entity captured in Phase 1 — avoids second DB round-trip and TOCTOU gap
            var header = dto.ToEntity(
                divCode, audit.UserId, existing.PrDate, existing.DepName,
                existing.PrStatus, existing.CreatedBy, existing.CreatedAt);

            var updatedRows = await _repo.UpdateHeaderAsync(header);
            if (updatedRows <= 0)
            {
                await _uow.RollbackAsync();
                return (false, PRMessages.PrNotFound, []);
            }

            // Soft-delete existing lines then re-insert (VB6 pattern)
            await _repo.SoftDeleteLinesAsync(divCode, dto.PrNo);

            for (var i = 0; i < dto.Lines.Count; i++)
            {
                var line = dto.Lines[i].ToEntity(divCode, dto.PrNo, i + 1);
                await _repo.InsertLineAsync(line);
                await _repo.InsertAuditLogAsync(header, line, AuditMod.Modify, audit);
            }

            await _uow.CommitAsync();
            return (true, "Purchase Requisition updated successfully.", lineWarnings);
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    // ── Delete ────────────────────────────────────────────────────────────────

    public async Task<(bool Success, string Message)> DeleteAsync(
        string divCode, long prNo, string deleteReasonCode, AuditContext audit,
        DateTime? startDate = null, DateTime? endDate = null)
    {
        if (string.IsNullOrWhiteSpace(divCode) || prNo <= 0)
            return (false, PRMessages.PrNotFound);

        // V29: delete reason is mandatory and must exist in po_txndelreason
        if (string.IsNullOrWhiteSpace(deleteReasonCode))
            return (false, PRMessages.DeleteReasonRequired);

        divCode = divCode.Trim();

        // ── Phase 1: validation (read-only) ──────────────────────────────────
        PurchaseRequisitionHeader existing;
        await _uow.BeginAsync();
        try
        {
            var header = await _repo.GetByIdAsync(divCode, prNo, startDate, endDate);
            if (header is null)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrNotFound);
            }

            var deleteLockMsg = GetLockMessage(header);
            if (deleteLockMsg is not null)
            {
                await _uow.CommitAsync();
                return (false, deleteLockMsg);
            }

            // V28: block delete if linked to an enquiry in po_enql
            if (await _repo.IsLinkedToEnquiryAsync(divCode, prNo))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.LinkedToEnquiry);
            }

            if (!await _repo.DeleteReasonExistsAsync(deleteReasonCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DeleteReasonInvalid);
            }

            existing = header;
            await _uow.CommitAsync();
        }
        catch { await _uow.RollbackAsync(); throw; }

        // ── Phase 2: write (explicit transaction) ────────────────────────────
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            var deleted = await _repo.DeleteAsync(divCode, prNo, deleteReasonCode.Trim());
            if (deleted <= 0)
            {
                await _uow.RollbackAsync();
                return (false, PRMessages.PrNotFound);
            }

            // Audit one row per line (mirrors VB6 LogDet_PO on delete)
            foreach (var line in existing.Lines)
                await _repo.InsertAuditLogAsync(existing, line, AuditMod.Delete, audit);

            await _uow.CommitAsync();
            return (true, "Purchase Requisition deleted successfully.");
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    // ── Delete line ───────────────────────────────────────────────────────────

    public async Task<(bool Success, string Message)> DeleteLineAsync(
        string divCode, long prNo, int prSNo, string deleteReasonCode, AuditContext audit,
        DateTime? startDate = null, DateTime? endDate = null)
    {
        if (string.IsNullOrWhiteSpace(divCode) || prNo <= 0 || prSNo <= 0)
            return (false, PRMessages.PrNotFound);

        if (string.IsNullOrWhiteSpace(deleteReasonCode))
            return (false, PRMessages.DeleteReasonRequired);

        divCode = divCode.Trim();

        // ── Phase 1: validation (read-only) ──────────────────────────────────
        PurchaseRequisitionHeader header;
        PurchaseRequisitionLine targetLine;
        await _uow.BeginAsync();
        try
        {
            if (!await _repo.DeleteReasonExistsAsync(deleteReasonCode.Trim()))
            {
                await _uow.CommitAsync();
                return (false, PRMessages.DeleteReasonInvalid);
            }

            var existing = await _repo.GetByIdAsync(divCode, prNo, startDate, endDate);
            if (existing is null)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrNotFound);
            }

            var lineDeleteLockMsg = GetLockMessage(existing);
            if (lineDeleteLockMsg is not null)
            {
                await _uow.CommitAsync();
                return (false, lineDeleteLockMsg);
            }

            var line = existing.Lines.FirstOrDefault(l => l.PrSNo == prSNo);
            if (line is null)
            {
                await _uow.CommitAsync();
                return (false, PRMessages.PrNotFound);
            }

            header     = existing;
            targetLine = line;
            await _uow.CommitAsync();
        }
        catch { await _uow.RollbackAsync(); throw; }

        // ── Phase 2: write (explicit transaction) ────────────────────────────
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            var deleted = await _repo.DeleteLineAsync(
                divCode, prNo, prSNo, deleteReasonCode.Trim());
            if (deleted <= 0)
            {
                await _uow.RollbackAsync();
                return (false, PRMessages.PrNotFound);
            }

            await _repo.InsertAuditLogAsync(header, targetLine, AuditMod.Delete, audit);

            await _uow.CommitAsync();
            return (true, "Purchase Requisition line deleted successfully.");
        }
        catch { await _uow.RollbackAsync(); throw; }
    }

    // ── Validation helpers ────────────────────────────────────────────────────

    private static string? GetPreCheckFailure(PreCheckResult flags)
    {
        if (!flags.ItemMasterExists)    return PRMessages.ItemMasterMissing;
        if (!flags.DepartmentExists)    return PRMessages.DepartmentMissing;
        if (!flags.DocNumberConfigured) return PRMessages.DocNumberMissing;
        return null;
    }

    /// <summary>
    /// Create path: duplicate key is item+machine composite (IST-15).
    /// Required date >= processing date (V19).
    /// </summary>
    private async Task<(string? Error, List<string> Warnings)> ValidateCreateLinesAsync(
        string divCode, string depCode,
        IReadOnlyCollection<CreatePRLineDto> lines,
        DateTime processingDate)
    {
        var seenItems      = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        var seenComposites = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        var warnings       = new List<string>();
        var lineNo         = 0;

        foreach (var line in lines)
        {
            lineNo++;
            var error = await ValidateLineCommonAsync(
                divCode, depCode, processingDate,
                line.ItemCode, line.QtyRequired, line.RequiredDate,
                line.MachineNo, line.CostCentreCode, line.BudgetGroupCode,
                seenItems, seenComposites,
                PRMessages.RequiredDateInvalid,
                warnings, lineNo);
            if (error is not null) return (error, warnings);

            // V25: category code must exist in IN_CAT when provided
            if (!string.IsNullOrWhiteSpace(line.CategoryCode)
                && !await _repo.CategoryExistsAsync(divCode, line.CategoryCode.Trim()))
                return (PRMessages.CategoryNotFound, warnings);

            // V26: sub cost code must exist in in_scc when provided
            if (line.SubCostCode.HasValue
                && !await _repo.SubCostExistsAsync(divCode, line.SubCostCode.Value))
                return (string.Format(PRMessages.SubCostNotFound, line.SubCostCode), warnings);
        }

        return (null, warnings);
    }

    /// <summary>
    /// Modify path: duplicate key is (item + machine) composite (V15).
    /// Required date >= PR date (V20).
    /// </summary>
    private async Task<(string? Error, List<string> Warnings)> ValidateUpdateLinesAsync(
        string divCode, string depCode,
        DateTime prDate,
        IReadOnlyCollection<UpdatePRLineDto> lines)
    {
        var seenItems      = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        var seenComposites = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        var warnings       = new List<string>();
        var lineNo         = 0;

        foreach (var line in lines)
        {
            lineNo++;
            var error = await ValidateLineCommonAsync(
                divCode, depCode, prDate,
                line.ItemCode, line.QtyRequired, line.RequiredDate,
                line.MachineNo, line.CostCentreCode, line.BudgetGroupCode,
                seenItems, seenComposites,
                PRMessages.RequiredDateModify,
                warnings, lineNo);
            if (error is not null) return (error, warnings);

            // V25: category code must exist in IN_CAT when provided
            if (!string.IsNullOrWhiteSpace(line.CategoryCode)
                && !await _repo.CategoryExistsAsync(divCode, line.CategoryCode.Trim()))
                return (PRMessages.CategoryNotFound, warnings);

            // V26: sub cost code must exist in in_scc when provided
            if (line.SubCostCode.HasValue
                && !await _repo.SubCostExistsAsync(divCode, line.SubCostCode.Value))
                return (string.Format(PRMessages.SubCostNotFound, line.SubCostCode), warnings);
        }

        return (null, warnings);
    }

    private async Task<string?> ValidateLineCommonAsync(
        string divCode,
        string depCode,
        DateTime minRequiredDate,
        string itemCode,
        decimal qtyRequired,
        DateTime? requiredDate,
        string? machineNo,
        string? costCentreCode,
        string? budgetGroupCode,
        ISet<string> seenItems,
        ISet<string> itemMachineKey,
        string requiredDateMessage,
        List<string> warnings,
        int lineNo)
    {
        var normItem = itemCode.Trim().ToUpperInvariant();

        // V13: item must exist and be active
        if (!await _repo.ItemExistsAsync(divCode, normItem))
            return PRMessages.ItemNotFound;

        // V14/V15: item-level then composite dedup
        if (!seenItems.Add(normItem))
            return PRMessages.DuplicateItem;

        var machineKey = $"{normItem}|{(machineNo?.Trim().ToUpperInvariant() ?? string.Empty)}";
        if (!itemMachineKey.Add(machineKey))
            return PRMessages.DuplicateItemMachine;

        // V16/V17: quantity
        if (qtyRequired <= 0)
            return PRMessages.QtyRequired;

        // MINLEVEL warning (non-blocking, §4.3)
        var minLevel = await _repo.GetItemMinLevelAsync(divCode, normItem);
        if (minLevel > 0 && qtyRequired < minLevel)
            warnings.Add(PRMessages.QuantityBelowMinLevel(lineNo, minLevel));

        // V18/V19/V20: required date
        if (requiredDate.HasValue && requiredDate.Value.Date < minRequiredDate.Date)
            return requiredDateMessage;

        // V21: machine must exist with MACFLAG='M' and salesflag='N'
        if (!string.IsNullOrWhiteSpace(machineNo)
            && !await _repo.MachineExistsAsync(divCode, depCode, machineNo.Trim()))
            return PRMessages.MachineNotFound;

        // V23: cost centre
        if (!string.IsNullOrWhiteSpace(costCentreCode)
            && !await _repo.CostCentreExistsAsync(divCode, costCentreCode.Trim()))
            return PRMessages.CostCentreNotFound;

        // V24: budget group
        if (!string.IsNullOrWhiteSpace(budgetGroupCode)
            && !await _repo.BudgetGroupExistsAsync(divCode, budgetGroupCode.Trim()))
            return PRMessages.BudgetGroupNotFound;

        return null;
    }

    // ── PR number & financial year helpers ────────────────────────────────────

    private static DateTime GetFinancialYearStart(DateTime date)
        => date.Month >= 4
            ? new DateTime(date.Year,     4, 1)
            : new DateTime(date.Year - 1, 4, 1);

    private static DateTime GetFinancialYearEnd(DateTime date)
        => date.Month >= 4
            ? new DateTime(date.Year + 1, 3, 31)
            : new DateTime(date.Year,     3, 31);

    private static string GetFinancialYearLabel(DateTime date)
    {
        var startYear = date.Month >= 4 ? date.Year : date.Year - 1;
        return $"{startYear}";
    }

    /// <summary>
    /// Returns a lock error message when the PR cannot be modified; null when it is editable.
    /// Approval flags (IST-5) are checked first and produce a specific message.
    /// </summary>
    private static string? GetLockMessage(PurchaseRequisitionHeader header)
    {
        if (header.IsApprovalLocked)
            return PRMessages.PrApprovalLocked;

        if (header.PrStatus.Equals("CONVERTED",  StringComparison.OrdinalIgnoreCase)
         || header.PrStatus.Equals("RECEIVED",   StringComparison.OrdinalIgnoreCase)
         || header.PrStatus.Equals("CANCELLED",  StringComparison.OrdinalIgnoreCase)
         || header.PrStatus.Equals("APPROVED",   StringComparison.OrdinalIgnoreCase))
            return PRMessages.PrAlreadyConverted;

        return null;
    }
}

// ── Audit action constants ────────────────────────────────────────────────────

internal static class AuditMod
{
    public const string Add    = "ADD";
    public const string Modify = "MODIFY";
    public const string Delete = "DELETE";
}

// ── Error messages (V1–V29 coverage) ─────────────────────────────────────────

internal static class PRMessages
{
    // Setup (V1–V3)
    public const string ItemMasterMissing    = "Please define Item in Item Master.";
    public const string DepartmentMissing    = "Please define Department in Setup.";
    public const string DocNumberMissing     = "Please define Document No. for Requisition in Housekeeping.";
    // Header (V4–V12)
    public const string InvalidPrDate        = "PR date must be on or after the maximum existing PR date for this year and must not exceed today.";
    public const string DepartmentNotFound   = "Department not found. Please select a valid department.";
    public const string OrderTypeRequired    = "Please select an Order Type.";
    public const string PoGroupRequired      = "Please select a PO Group.";
    public const string RequesterRequired    = "Requester Name cannot be empty.";
    public const string SubCostRequired      = "Sub Cost Centre is required when budget validation is enabled.";
    public const string RefNoRequired        = "Please enter the Reference Number.";
    public const string NoLineItems          = "Purchase Requisition requires at least one item.";
    // Lines (V13–V25)
    public const string ItemNotFound         = "Item Code not found or inactive.";
    public const string DuplicateItem        = "Same item should not be repeated in the same PR.";
    public const string DuplicateItemMachine = "Same item with the same machine should not be repeated in the same PR.";
    public const string QtyRequired          = "Quantity Required must be greater than zero.";
    public static string QuantityBelowMinLevel(int lineNo, decimal minLevel)
        => $"Line {lineNo}: Required Quantity is below the minimum order quantity ({minLevel}). Please confirm.";
    public const string RequiredDateInvalid  = "Required Date must be on or after the processing date.";
    public const string RequiredDateModify   = "Required Date cannot be before the PR Date.";
    public const string MachineNotFound      = "Machine not found for the selected department.";
    public const string CostCentreNotFound   = "Cost Centre not found.";
    public const string SubCostNotFound      = "Sub Cost Centre code {0} not found.";
    public const string CategoryNotFound     = "Category Code not found. Please enter a valid category.";
    public const string BudgetGroupNotFound  = "Budget Group not found.";
    // Delete (V28–V29)
    public const string LinkedToEnquiry      = "This PR is linked to an enquiry and cannot be deleted.";
    public const string DeleteReasonRequired = "A delete reason is required.";
    public const string DeleteReasonInvalid  = "The selected delete reason is not valid.";
    // General
    public const string PrNotFound           = "Purchase Requisition not found.";
    public const string PrApprovalLocked     = "This PR has been approved and cannot be modified.";
    public const string PrAlreadyConverted   = "This PR cannot be modified — it has been approved, converted, or cancelled.";
}
