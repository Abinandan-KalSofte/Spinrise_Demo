using Dapper;
using System.Data;
using Spinrise.Shared;

namespace Spinrise.Infrastructure.Data;

public class PurchaseRequisitionRepository : IPurchaseRequisitionRepository
{
    private readonly IUnitOfWork _uow;

    public PurchaseRequisitionRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    // ── Setup & flags ─────────────────────────────────────────────────────────

    public async Task<PreCheckResult> RunPreChecksAsync(string divCode)
    {
        return await _uow.Connection!.QueryFirstAsync<PreCheckResult>(
            StoredProcedures.PurchaseRequisition.PreChecks,
            new { DivCode = divCode },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
    }

    public async Task<DateTime> GetMaxPrDateAsync(string divCode, DateTime yfDate, DateTime ylDate)
    {
        return await _uow.Connection!.QueryFirstAsync<DateTime>(
            StoredProcedures.PurchaseRequisition.GetMaxPrDate,
            new { DivCode = divCode, YFDate = yfDate, YLDate = ylDate },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    // ── PR number generation ──────────────────────────────────────────────────

    public async Task<int> GetNextPrNumberAsync(string divCode, string finYear)
    {
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.GenerateNumber,
            new { DivCode = divCode, FinYear = finYear },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    // ── Read ──────────────────────────────────────────────────────────────────

    public async Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(
        string divCode, string? prNo, DateTime? fromDate, DateTime? toDate,
        string? depCode, string? status)
    {
        return await _uow.Connection!.QueryAsync<PRSummaryResponseDto>(
            StoredProcedures.PurchaseRequisition.GetAll,
            new { DivCode = divCode, PrNo = prNo, FromDate = fromDate,
                  ToDate  = toDate,  DepCode = depCode, Status = status },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, long prNo)
    {
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseRequisition.GetById,
            new { DivCode = divCode, PrNo = prNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        var header = await multi.ReadFirstOrDefaultAsync<PurchaseRequisitionHeader>();
        if (header is null) return null;

        header.Lines = (await multi.ReadAsync<PurchaseRequisitionLine>()).ToList();
        return header;
    }

    // ── Item info ─────────────────────────────────────────────────────────────

    public async Task<PRItemInfoRaw?> GetItemInfoAsync(
        string divCode, string itemCode, DateTime yfDate, DateTime pDate)
    {
        return await _uow.Connection!.QueryFirstOrDefaultAsync<PRItemInfoRaw>(
            StoredProcedures.PurchaseRequisition.GetItemInfo,
            new { DivCode = divCode, ItemCode = itemCode, YFDate = yfDate, PDate = pDate },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<PendingIndentResult> CheckPendingIndentAsync(
        string divCode, string itemCode, string depCode, DateTime yfDate, DateTime ylDate)
    {
        return await _uow.Connection!.QueryFirstAsync<PendingIndentResult>(
            StoredProcedures.PurchaseRequisition.PendingIndentCheck,
            new { DivCode = divCode, ItemCode = itemCode, DepCode = depCode,
                  YFDate  = yfDate,  YLDate = ylDate },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<PendingPRResult> CheckPendingPRAsync(string divCode, string itemCode)
    {
        return await _uow.Connection!.QueryFirstAsync<PendingPRResult>(
            StoredProcedures.PurchaseRequisition.PendingPRCheck,
            new { DivCode = divCode, ItemCode = itemCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    // ── Delete reasons ────────────────────────────────────────────────────────

    public async Task<IEnumerable<PRDeleteReasonDto>> GetDeleteReasonsAsync()
    {
        return await _uow.Connection!.QueryAsync<PRDeleteReasonDto>(
            StoredProcedures.PurchaseRequisition.GetDeleteReasons,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<bool> DeleteReasonExistsAsync(string reasonCode)
    {
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.DeleteReasonExists,
            new { ReasonCode = reasonCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    // ── Write ─────────────────────────────────────────────────────────────────

    public async Task<int> InsertHeaderAsync(PurchaseRequisitionHeader header)
    {
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.Insert,
            new
            {
                header.DivCode,
                header.PrNo,
                header.PrDate,
                header.DepCode,
                header.Section,
                SubCost = header.SubCost,
                header.IType,
                header.ReqName,
                header.RefNo,
                PoGrp = header.PoGroupCode,
                header.ScopeCode,
                header.SaleOrderNo,
                header.SaleOrderDate,
                header.CreatedBy
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<int> InsertLineAsync(PurchaseRequisitionLine line)
    {
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.InsertLine,
            new
            {
                line.DivCode,          line.PrNo,              line.PrSNo,
                line.ItemCode,         line.ItemName,           line.Uom,
                line.Rate,             line.CurrentStock,       line.QtyRequired,
                line.RequiredDate,     line.Place,              line.ApproxCost,
                line.Remarks,          line.MachineNo,          line.CostCentreCode,
                line.BudgetGroupCode,  line.SubCostCode,        line.LastPoRate,
                line.LastPoDate,       line.LastPoSupplierCode, line.LastPoSupplierName,
                line.IsSample,         line.Model,              line.MaxCost
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader header)
    {
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.Update,
            new
            {
                header.DivCode,          header.PrNo,             header.DepCode,
                header.DepName,          header.Section,          SubCost = header.SubCost,
                header.IType,            header.ReqName,
                header.RefNo,            PoGrp = header.PoGroupCode,  header.ScopeCode,
                header.SaleOrderNo,      header.SaleOrderDate,    ModifiedBy = header.ModifiedBy
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task SoftDeleteLinesAsync(string divCode, long prNo)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseRequisition.SoftDeleteLines,
            new { DivCode = divCode, PrNo = prNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<int> DeleteAsync(string divCode, long prNo, string deleteReasonCode)
    {
        // deleteReasonCode is validated by service before this call; SP does not accept it
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.Delete,
            new { DivCode = divCode, PrNo = prNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<int> DeleteLineAsync(string divCode, long prNo, int prSNo, string deleteReasonCode)
    {
        // deleteReasonCode is validated by service before this call; SP does not accept it
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseRequisition.DeleteLine,
            new { DivCode = divCode, PrNo = prNo, PrSNo = prSNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    // ── Audit log ─────────────────────────────────────────────────────────────

    public async Task InsertAuditLogAsync(
        PurchaseRequisitionHeader header,
        PurchaseRequisitionLine   line,
        string                    transMod,
        AuditContext              audit)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseRequisition.InsertAuditLog,
            new
            {
                DivCode     = header.DivCode,
                PrNo        = header.PrNo,
                PrDate      = header.PrDate,
                DepCode     = header.DepCode,
                ReqName     = header.ReqName,
                SubCost     = header.SubCost,
                UserId      = audit.UserId,
                UserName    = audit.UserName,
                PrSNo       = line.PrSNo,
                ItemCode    = line.ItemCode,
                MachineNo   = line.MachineNo,
                Rate        = line.Rate,
                Quantity    = line.QtyRequired,
                TransMod    = transMod,
                TransIPAddr = audit.IpAddress,
                TransHost   = audit.HostName,
                LastPoRate  = line.LastPoRate,
                LastPoDate  = line.LastPoDate,
                LastPoSlCode= line.LastPoSupplierCode,
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    // ── Existence checks ──────────────────────────────────────────────────────

    public async Task<bool> DepartmentExistsAsync(string divCode, string depCode)
    {
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.DepartmentExists,
            new { DivCode = divCode, DepCode = depCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    public async Task<bool> ItemExistsAsync(string divCode, string itemCode)
    {
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.ItemExists,
            new { DivCode = divCode, ItemCode = itemCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    public async Task<bool> CostCentreExistsAsync(string divCode, string ccCode)
    {
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.CostCentreExists,
            new { DivCode = divCode, CostCentreCode = ccCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    public async Task<bool> BudgetGroupExistsAsync(string divCode, string bgrpCode)
    {
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.BudgetGroupExists,
            new { DivCode = divCode, BudgetGroupCode = bgrpCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    public async Task<bool> MachineExistsAsync(string divCode, string depCode, string machineNo)
    {
        // V21/V22: must be MACFLAG='M' and salesflag='N' (active procurement machines only)
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.MachineExists,
            new { DivCode = divCode, DepCode = depCode, MachineNo = machineNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

    public async Task<bool> IsLinkedToEnquiryAsync(string divCode, long prNo)
    {
        // V28: delete blocked if any enquiry record exists for this PR
        var result = await _uow.Connection!.QueryFirstAsync<int>(
            StoredProcedures.PurchaseRequisition.IsLinkedToEnquiry,
            new { DivCode = divCode, PrNo = prNo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        return result == 1;
    }

}
