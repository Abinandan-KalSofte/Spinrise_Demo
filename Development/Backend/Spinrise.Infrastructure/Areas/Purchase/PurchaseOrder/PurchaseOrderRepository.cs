using Dapper;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Application.DTOs;
using Spinrise.Application.Interfaces;
using Spinrise.Shared;

namespace Spinrise.Infrastructure.Areas.Purchase.PurchaseOrder;

public class PurchaseOrderRepository : IPurchaseOrderRepository
{
    private readonly IJATUnitOfWork _uow;

    public PurchaseOrderRepository(IJATUnitOfWork uow) => _uow = uow;

    public async Task<PagedResult<POSummaryResponseDto>> GetPaginatedAsync(POListQueryDto query)
    {
        await _uow.BeginAsync();
        var rows = (await _uow.Connection!.QueryAsync<POSummaryResponseDto>(
            StoredProcedures.PurchaseOrder.GetPaginated,
            new
            {
                DivCode      = query.DivCode,
                Page         = query.Page,
                PageSize     = query.PageSize,
                SearchText   = query.SearchText,
                FromDate     = string.IsNullOrEmpty(query.FromDate) ? (DateTime?)null : DateTime.Parse(query.FromDate),
                ToDate       = string.IsNullOrEmpty(query.ToDate)   ? (DateTime?)null : DateTime.Parse(query.ToDate),
                SupplierCode = query.SupplierCode,
                Status       = query.Status,
            },
            commandType: System.Data.CommandType.StoredProcedure)).ToList();

        var total = rows.FirstOrDefault()?.TotalCount ?? 0;
        return new PagedResult<POSummaryResponseDto>
        {
            Items     = rows,
            TotalCount= total,
            Page      = query.Page,
            PageSize  = query.PageSize,
        };
    }

    public async Task<POSummaryCounts> GetSummaryAsync(string divCode)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryFirstOrDefaultAsync<POSummaryCounts>(
            StoredProcedures.PurchaseOrder.GetSummary,
            new { DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure)
            ?? new POSummaryCounts();
    }

    public async Task<IEnumerable<POLineResponseDto>> GetByIdAsync(decimal contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetById,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        return (await multi.ReadAsync<POLineResponseDto>()).ToList();
    }

    public async Task<IEnumerable<DeliveryScheduleResponseDto>> GetDeliveryScheduleAsync(decimal contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetById,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        await multi.ReadAsync<POLineResponseDto>();
        return (await multi.ReadAsync<DeliveryScheduleResponseDto>()).ToList();
    }

    public async Task<IEnumerable<DiscountRateDto>> GetDiscountRatesAsync(decimal contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetById,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        await multi.ReadAsync<POLineResponseDto>();
        await multi.ReadAsync<DeliveryScheduleResponseDto>();
        return (await multi.ReadAsync<DiscountRateDto>()).ToList();
    }

    public async Task<decimal> GenerateNumberAsync(string divCode, int fYear)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryFirstAsync<decimal>(
            StoredProcedures.PurchaseOrder.GenerateNumber,
            new { DivCode = divCode, Prefix = "P", FYear = fYear },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<POParamDto?> GetParamAsync(string divCode)
    {
        await _uow.BeginAsync();
        var raw = await _uow.Connection!.QueryFirstOrDefaultAsync<dynamic>(
            StoredProcedures.PurchaseOrder.GetParam,
            new { DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        if (raw == null) return null;
        return new POParamDto
        {
            RequireSupplierLotNo  = ((string?)raw.SuppLotNoReqArrival ?? "N") == "Y",
            CentralizedOrder      = ((string?)raw.CentralizedOrder    ?? "N") == "Y",
            AutoCalculateSeason   = ((string?)raw.SeasonCalcReq       ?? "N") == "Y",
            MasterEntryRequired   = ((string?)raw.MasterEntryFlg      ?? "N") == "Y",
            PRBased               = ((string?)raw.PRBased             ?? "N") == "Y",
            ApprovalEnabled       = ((string?)raw.PO_Approval         ?? "N") == "Y",
            AdditionalTaxRequired = ((string?)raw.AddTaxRequired      ?? "N") == "Y",
            FtAmt                 = (decimal?)raw.FtAmt ?? 0,
            WoSample              = ((string?)raw.wosample ?? "Y") == "Y",
        };
    }

    public async Task<string> GetDefaultCurrencyAsync(string divCode)
    {
        await _uow.BeginAsync();
        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<string>(
            StoredProcedures.PurchaseOrder.GetDefaultCurrency,
            new { DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        return result ?? "INR";
    }

    public async Task<GSTConfigDto?> GetGSTConfigAsync(string supplierCode)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryFirstOrDefaultAsync<GSTConfigDto>(
            StoredProcedures.PurchaseOrder.GetGSTConfig,
            new { SupplierCode = supplierCode },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PODeleteReasonDto>> GetDeleteReasonsAsync()
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<PODeleteReasonDto>(
            StoredProcedures.PurchaseOrder.GetDeleteReasons,
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<POPreCheckResultDto>> PreChecksAsync(string divCode)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<POPreCheckResultDto>(
            StoredProcedures.PurchaseOrder.PreChecks,
            new { DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PRLineDto>> GetPendingPRLinesAsync(string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<PRLineDto>(
            StoredProcedures.PurchaseOrder.GetPendingPRLines,
            new { DivCode = divCode, ContDt = contDt.Date, SortBy = sortBy, SupplierCode = supplierCode, Plant = plant },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PRLineDto>> FilterPRLinesAsync(string divCode, DateTime contDt, PRLineFilterDto filter)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<PRLineDto>(
            StoredProcedures.PurchaseOrder.FilterPRLines,
            new
            {
                DivCode      = divCode,
                ContDt       = string.IsNullOrEmpty(filter.ContDt) ? contDt.Date : DateTime.Parse(filter.ContDt).Date,
                SortBy       = filter.SortBy,
                SupplierCode = filter.SupplierCode,
                Plant        = (string?)null,
                Indent       = filter.Indent,
                ItemCode     = filter.ItemCode,
                ItemName     = filter.ItemName,
            },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task InsertLineAsync(decimal contNo, CreatePODto header, CreatePOLineDto line, string preparedBy)
    {
        await _uow.BeginAsync(startTransaction: true);
        try
        {
            await _uow.Connection!.ExecuteAsync(
                StoredProcedures.PurchaseOrder.Insert,
                new
                {
                    ContNo          = contNo,
                    ContDt          = header.ContDt,
                    DivCode         = header.DivCode,
                    SupCd           = header.SupCd,
                    PayMode         = header.PayMode,
                    AreaCode        = header.AreaCode,
                    CurrCode        = header.CurrCode,
                    DlyType         = header.DlyType,
                    Acceptance      = header.Acceptance,
                    Transport       = header.Transport,
                    SupFileName     = header.SupFileName,
                    CropYear        = header.CropYear,
                    Season          = header.Season,
                    FtFlg           = header.FtFlg,
                    FtAmt           = header.FtAmt,
                    TaxChoice       = header.TaxChoice,
                    CommPer         = header.CommPer,
                    CommPerBal      = header.CommPerBal,
                    TcsPer          = header.TcsPer,
                    SpotExpense     = header.SpotExpense,
                    IncidentCharge  = header.IncidentCharge,
                    SusCatType      = header.SusCatType,
                    PlCode          = header.PlCode,
                    LineNo          = header.LineNo,
                    SampleFlg       = header.SampleFlg,
                    PreparedBy      = preparedBy,
                    VarCode         = line.VarCode,
                    OrdQty          = line.OrdQty,
                    OrdKgs          = line.OrdKgs,
                    CandyRate       = line.CandyRate,
                    PackType        = line.PackType,
                    BbFlag          = line.BbFlag,
                    CashDisPer      = line.CashDisPer,
                    TradeDisPer     = line.TradeDisPer,
                    CessPer         = line.CessPer,
                    InsPer          = line.InsPer,
                    Hsn             = line.Hsn,
                    CgstPer         = line.CgstPer,
                    SgstPer         = line.SgstPer,
                    IgstPer         = line.IgstPer,
                    TaxCode         = line.TaxCode,
                    IPrNo           = line.IPrNo,
                    PrDate          = line.PrDate,
                    PrSno           = line.PrSno,
                    MsDocNo         = line.MsDocNo,
                    MsDocSno        = line.MsDocSno,
                    NoOfLoad         = line.NoOfLoad,
                    RateKg           = line.RateKg,
                    AgentCode        = header.AgentCode,
                    ImInd            = header.ImInd ?? "L",
                    MillRefNo        = header.MillRefNo,
                    RateUnit         = header.RateUnit,
                    ArrivalType      = header.ArrivalType ?? "P",
                    FinalWeighment   = header.FinalWeighment ?? "S",
                    BillingAddress   = header.BillingAddress,
                    DeliveryAddrCode = header.DeliveryAddrCode,
                    ContactPerson    = header.ContactPerson,
                    Terms1           = header.Terms1,
                    Terms1Days       = header.Terms1Days,
                    Terms2           = header.Terms2,
                    Terms2Days       = header.Terms2Days,
                    CreditDays       = header.CreditDays,
                    InterestPer      = header.InterestPer,
                    DeliveryTerms    = header.DeliveryTerms,
                    PerBaleTruck     = header.PerBaleTruck,
                    Grade            = header.Grade,
                    Staple           = header.Staple,
                    Mic              = header.Mic,
                    Strength         = header.Strength,
                    Moisture         = header.Moisture,
                    Trash            = header.Trash,
                    MillSampleNo     = line.MillSampleNo,
                },
                transaction: _uow.Transaction,
                commandType: System.Data.CommandType.StoredProcedure);

            await _uow.CommitAsync();
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task InsertDiscountRateAsync(decimal contNo, DateTime contDt, CreateDiscountRateDto rate)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertDiscountRate,
            new { ContNo = contNo, ContDt = contDt, VarCode = rate.VarCode, SupCd = rate.SupCd, DiscType = rate.DiscType, DiscRate = rate.DiscRate },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task InsertDeliveryScheduleAsync(decimal contNo, DateTime contDt, string divCode, CreateDeliveryScheduleDto schedule)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertDeliverySchedule,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, DelDate = schedule.DelDate, DelQty = schedule.DelQty, DelAddress = schedule.DelAddress, VarCode = schedule.VarCode, Instruction = schedule.Instruction, Weighment = schedule.Weighment },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task InsertSlotNoAsync(decimal contNo, DateTime contDt, string divCode, decimal lotFrom, decimal lotTo)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertSlotNo,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, LotFrom = lotFrom, LotTo = lotTo },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task InsertAuditLogAsync(decimal contNo, DateTime contDt, string divCode, string mode, string userId, string? deleteReasonCode = null)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertAuditLog,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, Mode = mode, UserId = userId, DeleteReasonCode = deleteReasonCode },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task DeleteAsync(decimal contNo, DateTime contDt, string divCode, string deleteReasonCode, string deletedBy)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.Delete,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, DeleteReasonCode = deleteReasonCode, DeletedBy = deletedBy },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task DeleteLinesForUpdateAsync(decimal contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.DeleteLinesForUpdate,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task UndoPRBalanceAsync(string divCode, decimal prNo, DateTime prDate, int prSno, decimal qtyOrdKG)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.UpdatePRBalance,
            new { DivCode = divCode, PrNo = prNo, PrDate = prDate, PrSno = prSno, QtyOrd = 0m, QtyOrdKG = qtyOrdKG },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<POApprovalStatusDto?> GetApprovalStatusAsync(decimal contNo, DateTime contDt, string divCode)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryFirstOrDefaultAsync<POApprovalStatusDto>(
            StoredProcedures.PurchaseOrder.GetApprovalStatus,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task UpdateApprovalAsync(POApprovalActionDto dto, string approverId)
    {
        await _uow.BeginAsync();
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.UpdateApproval,
            new { ContNo = dto.ContNo, ContDt = dto.ContDt, DivCode = dto.DivCode, Level = dto.Level, Action = dto.Action, ApproverId = approverId, Remarks = dto.Remarks },
            commandType: System.Data.CommandType.StoredProcedure);
    }
}
