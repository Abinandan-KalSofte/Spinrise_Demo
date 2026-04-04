using Dapper;
using System.Data;

namespace Spinrise.Infrastructure.Data;

public class PurchaseRequisitionRepository : IPurchaseRequisitionRepository
{
    private readonly IUnitOfWork _uow;

    public PurchaseRequisitionRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<PreCheckResult> RunPreChecksAsync(string divCode)
    {
        return await _uow.Connection!
            .QueryFirstAsync<PreCheckResult>(
                "usp_PR_PreChecks",
                new { DivCode = divCode },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> GetNextPrNumberAsync(string divCode, string finYear)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_GenerateNumber",
                new { DivCode = divCode, FinYear = finYear },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<bool> GetFeatureFlagAsync(string divCode, string featureKey)
    {
        var result = await _uow.Connection!
            .QueryFirstOrDefaultAsync<int?>(
                "SELECT CAST(IsEnabled AS INT) FROM dbo.feature_flags WHERE DivCode = @DivCode AND FeatureKey = @FeatureKey",
                new { DivCode = divCode, FeatureKey = featureKey },
                transaction: _uow.Transaction);

        return result == 1;
    }

    public async Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo, DateTime? fromDate, DateTime? toDate, string? depCode, string? status)
    {
        return await _uow.Connection!
            .QueryAsync<PRSummaryResponseDto>(
                "usp_PR_GetAll",
                new
                {
                    DivCode = divCode,
                    PrNo = prNo,
                    FromDate = fromDate,
                    ToDate = toDate,
                    DepCode = depCode,
                    Status = status
                },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, string prNo)
    {
        using var multi = await _uow.Connection!
            .QueryMultipleAsync(
                "usp_PR_GetById",
                new { DivCode = divCode, PrNo = prNo },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);

        var header = await multi.ReadFirstOrDefaultAsync<PurchaseRequisitionHeader>();
        if (header is null)
        {
            return null;
        }

        header.Lines = (await multi.ReadAsync<PurchaseRequisitionLine>()).ToList();
        return header;
    }

    public async Task<int> InsertHeaderAsync(PurchaseRequisitionHeader header)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_Insert",
                new
                {
                    header.DivCode,
                    header.PrNo,
                    header.PrDate,
                    header.DepCode,
                    header.DepName,
                    header.Section,
                    header.SubCostCode,
                    header.IType,
                    header.ReqName,
                    header.RefNo,
                    header.SaleOrderNo,
                    header.SaleOrderDate,
                    header.PrStatus,
                    header.CreatedBy
                },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> InsertLineAsync(PurchaseRequisitionLine line)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_InsertLine",
                new
                {
                    line.DivCode,
                    line.PrNo,
                    line.PrSNo,
                    line.ItemCode,
                    line.ItemName,
                    line.Uom,
                    line.Rate,
                    line.CurrentStock,
                    line.QtyRequired,
                    line.RequiredDate,
                    line.Place,
                    line.ApproxCost,
                    line.Remarks,
                    line.MachineNo,
                    line.CostCentreCode,
                    line.BudgetGroupCode,
                    line.LastPoRate,
                    line.LastPoDate,
                    line.LastPoSupplierCode,
                    line.LastPoSupplierName,
                    line.IsSample
                },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader header)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_Update",
                new
                {
                    header.DivCode,
                    header.PrNo,
                    header.DepCode,
                    header.DepName,
                    header.Section,
                    header.SubCostCode,
                    header.IType,
                    header.ReqName,
                    header.RefNo,
                    header.SaleOrderNo,
                    header.SaleOrderDate,
                    header.ModifiedBy
                },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task SoftDeleteLinesAsync(string divCode, string prNo)
    {
        await _uow.Connection!
            .ExecuteAsync(
                "usp_PR_SoftDeleteLines",
                new { DivCode = divCode, PrNo = prNo },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> DeleteAsync(string divCode, string prNo)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_Delete",
                new { DivCode = divCode, PrNo = prNo },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> DeleteLineAsync(string divCode, string prNo, int prSNo)
    {
        return await _uow.Connection!
            .ExecuteScalarAsync<int>(
                "usp_PR_DeleteLine",
                new { DivCode = divCode, PrNo = prNo, PrSNo = prSNo },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<bool> DepartmentExistsAsync(string divCode, string depCode)
    {
        return await ExistsAsync(
            "SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode AND DepCode = @DepCode",
            new { DivCode = divCode, DepCode = depCode });
    }

    public async Task<bool> ItemExistsAsync(string divCode, string itemCode)
    {
        return await ExistsAsync(
            "SELECT 1 FROM dbo.in_item WHERE DivCode = @DivCode AND ItemCode = @ItemCode AND IsActive = 1",
            new { DivCode = divCode, ItemCode = itemCode });
    }

    public async Task<bool> CostCentreExistsAsync(string divCode, string ccCode)
    {
        return await ExistsAsync(
            "SELECT 1 FROM dbo.in_cc WHERE DivCode = @DivCode AND CostCentreCode = @CostCentreCode",
            new { DivCode = divCode, CostCentreCode = ccCode });
    }

    public async Task<bool> BudgetGroupExistsAsync(string divCode, string bgrpCode)
    {
        return await ExistsAsync(
            "SELECT 1 FROM dbo.in_bgrp WHERE DivCode = @DivCode AND BudgetGroupCode = @BudgetGroupCode",
            new { DivCode = divCode, BudgetGroupCode = bgrpCode });
    }

    public async Task<bool> MachineExistsAsync(string divCode, string depCode, string machineNo)
    {
        return await ExistsAsync(
            "SELECT 1 FROM dbo.mm_macmas WHERE DivCode = @DivCode AND DepCode = @DepCode AND MachineNo = @MachineNo",
            new { DivCode = divCode, DepCode = depCode, MachineNo = machineNo });
    }

    private async Task<bool> ExistsAsync(string sql, object parameters)
    {
        var result = await _uow.Connection!
            .QueryFirstOrDefaultAsync<int?>(
                sql,
                parameters,
                transaction: _uow.Transaction);

        return result.HasValue;
    }
}
