using Dapper;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Application.DTOs;
using Spinrise.Infrastructure.Data;
using Spinrise.Shared;
using System.Data;

namespace Spinrise.Infrastructure.Areas.Purchase.PurchaseOrder;

public class PurchaseOrderRepository : IPurchaseOrderRepository
{
    private readonly IUnitOfWork _uow;

    public PurchaseOrderRepository(IUnitOfWork uow) => _uow = uow;

    public async Task<string> GenerateNumberAsync(string divCode, DateTime fyStart, DateTime fyEnd, string centralizedOrder)
    {
        var result = await _uow.Connection!.ExecuteScalarAsync<decimal>(
            StoredProcedures.PurchaseOrder.GenerateNumber,
            new { DivCode = divCode, FYStart = fyStart, FYEnd = fyEnd, CentralizedOrder = centralizedOrder },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
        return result.ToString("0");
    }

    public async Task<POPreCheckResultDto> PreChecksAsync(string divCode, DateTime fyStart, DateTime fyEnd)
    {
        return await _uow.Connection!.QueryFirstAsync<POPreCheckResultDto>(
            StoredProcedures.PurchaseOrder.PreChecks,
            new { DivCode = divCode, FYStart = fyStart, FYEnd = fyEnd },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
    }

    public async Task<POParamDto?> GetParamAsync()
    {
        return await _uow.Connection!.QueryFirstOrDefaultAsync<POParamDto>(
            StoredProcedures.PurchaseOrder.GetParam,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<string?> GetDefaultCurrencyAsync(string divCode)
    {
        return await _uow.Connection!.ExecuteScalarAsync<string>(
            StoredProcedures.PurchaseOrder.GetDefaultCurrency,
            new { DivCode = divCode },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<GSTConfigDto>> GetGSTConfigAsync(string supplierCode)
    {
        return await _uow.Connection!.QueryAsync<GSTConfigDto>(
            StoredProcedures.PurchaseOrder.GetGSTConfig,
            new { SupplierCode = supplierCode },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PRLineDto>> GetDeleteReasonsAsync()
    {
        return await _uow.Connection!.QueryAsync<PRLineDto>(
            StoredProcedures.PurchaseOrder.GetDeleteReasons,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<PagedResult<POSummaryResponseDto>> GetPaginatedAsync(string divCode, POListQueryDto query)
    {
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetPaginated,
            new
            {
                DivCode      = divCode,
                Page         = query.Page,
                PageSize     = query.PageSize,
                SearchText   = query.SearchText,
                FromDate     = query.FromDate,
                ToDate       = query.ToDate,
                SupplierCode = query.SupplierCode
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        var totalCount = await multi.ReadFirstAsync<int>();
        var items      = (await multi.ReadAsync<POSummaryResponseDto>()).ToList();
        return new PagedResult<POSummaryResponseDto>
        {
            Items      = items,
            TotalCount = totalCount,
            Page       = query.Page,
            PageSize   = query.PageSize,
        };
    }

    public async Task<PODetailResponseDto?> GetByIdAsync(string contNo, DateTime contDt, string divCode)
    {
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetById,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        var lines    = (await multi.ReadAsync<POLineResponseDto>()).ToList();
        var schedule = (await multi.ReadAsync<DeliveryScheduleDto>()).ToList();
        var discounts = (await multi.ReadAsync<DiscountRateDto>()).ToList();
        var approval = (await multi.ReadAsync<POApprovalConfigDto>()).ToList();

        if (lines.Count == 0) return null;

        return new PODetailResponseDto
        {
            Lines            = lines,
            DeliverySchedule = schedule,
            DiscountRates    = discounts,
            ApprovalConfig   = approval
        };
    }

    public async Task<IEnumerable<PRLineDto>> GetPendingPRLinesAsync(
        string divCode, DateTime contDt, int sortBy, string? supplierCode, string? plant)
    {
        return await _uow.Connection!.QueryAsync<PRLineDto>(
            StoredProcedures.PurchaseOrder.GetPendingPRLines,
            new { DivCode = divCode, ContDt = contDt, SortBy = sortBy, SupplierCode = supplierCode, Plant = plant },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PRLineDto>> FilterPRLinesAsync(PRLineFilterDto filter)
    {
        return await _uow.Connection!.QueryAsync<PRLineDto>(
            StoredProcedures.PurchaseOrder.FilterPRLines,
            new
            {
                DivCode      = filter.DivCode,
                ContDt       = filter.ContDt,
                SortBy       = filter.SortBy,
                SupplierCode = filter.SupplierCode,
                Plant        = filter.Plant,
                Indent       = filter.Indent,
                ItemCode     = filter.ItemCode,
                ItemName     = filter.ItemName
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task InsertLineAsync(string contNo, string divCode, CreatePODto h, CreatePOLineDto l)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertLine,
            new
            {
                ContNo = contNo, ContDt = h.ContDt, DivCode = divCode,
                SupCd = h.SupCd, BrkCd = h.BrkCd, AreaCode = h.AreaCode,
                VarCode = l.VarCode, CntCode = h.CntCode, BBFlag = l.BBFlag ?? "B",
                OrdQty = l.OrdQty, OrdKgs = l.OrdKgs, CandyRate = l.CandyRate, RateKg = l.RateKg,
                PayMode = h.PayMode, DlyType = h.DlyType, ImInd = h.ImInd ?? "L",
                ArrivalType = h.ArrivalType ?? "P", DueDate = h.DueDate, CropYear = h.CropYear,
                Acceptance = h.Acceptance, PtyContNo = l.PtyContNo, PlotNo = l.PlotNo,
                WosamplePrNo = l.WosamplePrNo, PressMarkNo = l.PressMarkNo, RateUnit = h.RateUnit,
                Remarks = h.Remarks, DeliveryAddCode = h.DeliveryAddCode, BillingAddCode = h.BillingAddCode,
                ContactPerson = h.ContactPerson, Season = h.Season, MillRefNo = h.MillRefNo,
                CashDisPer = l.CashDisPer, TradeDisPer = l.TradeDisPer, CessPer = l.CessPer, InsPer = l.InsPer,
                TaxCode = l.TaxCode, TaxChoice = h.TaxChoice ?? "SINGLE",
                CreditDays = h.CreditDays, InterestPer = h.InterestPer,
                LotFrom = h.LotFrom, LotTo = h.LotTo, FinalWeighment = h.FinalWeighment ?? "S",
                SampleFlg = h.SampleFlg ?? "Y", CommPer = h.CommPer,
                Terms1 = h.Terms1, Terms1Days = h.Terms1Days, Terms2 = h.Terms2, Terms2Days = h.Terms2Days,
                Transport = h.Transport,
                IPrNo = l.IPrNo, IPrDate = l.PrDate, IPrSNo = l.PrSNo,
                CurrCode = h.CurrCode, DeliveryTerms = h.DeliveryTerms,
                HSN = l.HSN, CgstPer = l.CgstPer, SgstPer = l.SgstPer, IgstPer = l.IgstPer,
                FTAmt = h.FTAmt, FTFlg = h.FTFlg ?? "N", PrepDate = DateTime.Today,
                SusCatType = h.SusCatType, PayCode = h.PayCode, LineNo = h.LineNo, PlCode = h.PlCode,
                SupFileName = h.SupFileName, TcsPer = h.TcsPer,
                Grade = h.Grade, Staple = h.Staple, Micronaire = h.Micronaire,
                Strength = h.Strength, Moisture = h.Moisture, Trash = h.Trash,
                NoOfLoad = l.NoOfLoad, MSDocNo = l.MSDocNo, MSDocSno = l.MSDocSno,
                FreightPerBale = h.FreightPerBale, PreparedBy = h.PreparedBy
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task InsertDiscountRateAsync(string contNo, DateTime contDt, string divCode, string supCd, CreateDiscountRateDto discount)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertDiscountRate,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, SupCd = supCd,
                  VarCode = discount.VarCode ?? "", Docno = discount.Docno, DocSno = discount.DocSno,
                  DType = discount.DType, DRate = discount.DRate },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task InsertDeliveryScheduleAsync(string contNo, DateTime contDt, string divCode, CreateDeliveryScheduleDto schedule)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertDeliverySchedule,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode,
                  DelDate = schedule.DelDate, Qty = schedule.Qty, DelAdd = schedule.DelAdd,
                  VarCode = schedule.VarCode, Instruction = schedule.Instruction },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task UpdatePRBalanceAsync(string divCode, decimal prNo, DateTime prDate, decimal prSNo, decimal qtyOrd, decimal qtyOrdKg)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.UpdatePRBalance,
            new { DivCode = divCode, PrNo = prNo, PrDate = prDate, PrSNo = prSNo, QtyOrd = qtyOrd, QtyOrdKG = qtyOrdKg },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task InsertSlotNoAsync(string contNo, DateTime contDt, string divCode, decimal lotFrom, decimal lotTo)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertSlotNo,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, LotFrom = lotFrom, LotTo = lotTo },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task UpdateLineAsync(string contNo, DateTime contDt, string divCode, string varCode, UpdatePODto dto, string? modUserId)
    {
        var line = dto.Lines.FirstOrDefault(l => l.VarCode == varCode);
        if (line is null) return;
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.UpdateLine,
            new
            {
                ContNo = contNo, ContDt = contDt, DivCode = divCode, VarCode = varCode,
                OrdQty = line.OrdQty, OrdKgs = line.OrdKgs, CandyRate = line.CandyRate, RateKg = line.RateKg,
                BBFlag = line.BBFlag ?? "B", DueDate = dto.DueDate, CropYear = dto.CropYear,
                Acceptance = dto.Acceptance, Remarks = dto.Remarks, Season = dto.Season, MillRefNo = dto.MillRefNo,
                CashDisPer = line.CashDisPer, TradeDisPer = line.TradeDisPer, CessPer = line.CessPer, InsPer = line.InsPer,
                TaxCode = line.TaxCode, TaxChoice = dto.TaxChoice, CreditDays = dto.CreditDays, InterestPer = dto.InterestPer,
                LotFrom = dto.LotFrom, LotTo = dto.LotTo, CommPer = dto.CommPer,
                Terms1 = dto.Terms1, Terms1Days = dto.Terms1Days, Terms2 = dto.Terms2, Terms2Days = dto.Terms2Days,
                Transport = dto.Transport, CurrCode = dto.CurrCode, DeliveryTerms = dto.DeliveryTerms,
                HSN = line.HSN, CgstPer = line.CgstPer, SgstPer = line.SgstPer, IgstPer = line.IgstPer,
                FTAmt = dto.FTAmt, FTFlg = dto.FTFlg, SusCatType = dto.SusCatType,
                PayCode = dto.PayCode, LineNo = dto.LineNo, PlCode = dto.PlCode, SupFileName = dto.SupFileName,
                TcsPer = dto.TcsPer, Grade = dto.Grade, Staple = dto.Staple, Micronaire = dto.Micronaire,
                Strength = dto.Strength, Moisture = dto.Moisture, Trash = dto.Trash,
                NoOfLoad = line.NoOfLoad, FreightPerBale = dto.FreightPerBale, ModUserId = modUserId
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<(int Result, string Message)> DeleteAsync(string contNo, DateTime contDt, string divCode, string deleteReasonCode, string deletedBy)
    {
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.Delete,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode, DeleteReasonCode = deleteReasonCode, DeletedBy = deletedBy },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        var row = await multi.ReadFirstAsync<dynamic>();
        return ((int)row.Result, (string)row.Message);
    }

    public async Task InsertAuditLogAsync(string contNo, DateTime contDt, string divCode, string transMod,
        string? userId, string? ipAddr, string? host, CreatePOLineDto? line = null)
    {
        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.PurchaseOrder.InsertAuditLog,
            new
            {
                ContNo = contNo, ContDt = contDt, DivCode = divCode, TransMod = transMod,
                TransUserId = userId, TransIPAddr = ipAddr, TransHost = host,
                VarCode = line?.VarCode, OrdQty = line?.OrdQty ?? 0, OrdKgs = line?.OrdKgs ?? 0,
                CandyRate = line?.CandyRate ?? 0, HSN = line?.HSN, TaxCode = line?.TaxCode,
                CgstPer = line?.CgstPer ?? 0, SgstPer = line?.SgstPer ?? 0, IgstPer = line?.IgstPer ?? 0
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<POApprovalStatusDto?> GetApprovalStatusAsync(string contNo, DateTime contDt, string divCode)
    {
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.PurchaseOrder.GetApprovalStatus,
            new { ContNo = contNo, ContDt = contDt, DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
        var status = await multi.ReadFirstOrDefaultAsync<POApprovalStatusDto>();
        var config = (await multi.ReadAsync<POApprovalConfigDto>()).ToList();
        if (status is not null) status.Config = config;
        return status;
    }

    public async Task<int> UpdateApprovalAsync(POApprovalActionDto dto)
    {
        return await _uow.Connection!.ExecuteScalarAsync<int>(
            StoredProcedures.PurchaseOrder.UpdateApproval,
            new { ContNo = dto.ContNo, ContDt = dto.ContDt, DivCode = dto.DivCode,
                  Level = dto.Level, Action = dto.Action, AppUserId = dto.AppUserId, AppIPAddr = dto.AppIPAddr },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }
}
