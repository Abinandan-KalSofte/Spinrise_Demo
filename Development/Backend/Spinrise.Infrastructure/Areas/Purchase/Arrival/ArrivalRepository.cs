using System.Text.Json;
using Dapper;
using Spinrise.Application.Areas.Purchase.Arrival.DTOs;
using Spinrise.Application.Areas.Purchase.Arrival.Interfaces;
using Spinrise.Application.DTOs;
using Spinrise.Application.Interfaces;
using Spinrise.Shared;

namespace Spinrise.Infrastructure.Areas.Purchase.Arrival;

public class ArrivalRepository : IArrivalRepository
{
    private readonly IJATUnitOfWork _uow;

    public ArrivalRepository(IJATUnitOfWork uow) => _uow = uow;

    public async Task<ArrivalConfigDto> GetParamAsync(string divCode)
    {
        await _uow.BeginAsync();
        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<ArrivalConfigDto>(
            StoredProcedures.Arrival.GetParam,
            new { DivCode = divCode },
            commandType: System.Data.CommandType.StoredProcedure);
        return result ?? new ArrivalConfigDto();
    }

    public async Task<IEnumerable<ArrivalCategoryDto>> GetCategoriesAsync()
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<ArrivalCategoryDto>(
            StoredProcedures.Arrival.GetCategories,
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<ArrivalOpenPoLineDto>> GetOpenPOLinesAsync(
        string divCode, string supCode, string? catCode,
        bool isCentralised, string? importDivCode,
        DateTime? yfDate, DateTime? ylDate)
    {
        await _uow.BeginAsync();
        return await _uow.Connection!.QueryAsync<ArrivalOpenPoLineDto>(
            StoredProcedures.Arrival.GetOpenPOLines,
            new
            {
                DivCode       = divCode,
                SupCode       = supCode,
                CatCode       = catCode,
                IsCentralised = isCentralised ? "Y" : "N",
                ImportDivCode = importDivCode,
                YfDate        = yfDate,
                YlDate        = ylDate,
            },
            commandType: System.Data.CommandType.StoredProcedure);
    }

    public async Task<LotRangeValidationResult> ValidateLotRangeAsync(
        string divCode, string contNo, DateTime contDt,
        string varCode, decimal lotNo, bool isCentralised)
    {
        await _uow.BeginAsync();
        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<LotRangeValidationResult>(
            StoredProcedures.Arrival.ValidateLotRange,
            new
            {
                DivCode       = divCode,
                ContNo        = contNo,
                ContDt        = contDt,
                VarCode       = varCode,
                LotNo         = lotNo,
                IsCentralised = isCentralised ? "Y" : "N",
            },
            commandType: System.Data.CommandType.StoredProcedure);
        return result ?? new LotRangeValidationResult { IsValid = false, Message = "Validation error." };
    }

    public async Task<int> InsertAsync(CreateArrivalRequest request, string preparedBy)
    {
        await _uow.BeginAsync();

        var config = await GetParamAsync(request.DivCode);
        DateTime? yf = config.YearFromDate;
        DateTime? yl = config.YearToDate;

        var linesJson = JsonSerializer.Serialize(request.Lines.Select(l => new
        {
            l.ContNo,
            ContDt        = l.ContDt.ToString("yyyy-MM-dd"),
            l.VarCode,
            l.CntCode,
            l.ArrivalType,
            l.BbFlag,
            PlotNo        = l.PlotNo ?? string.Empty,
            PrNo          = l.PrNo ?? string.Empty,
            PrMark        = l.PrMark ?? string.Empty,
            l.Quantity,
            l.GrossWt,
            l.TareWt,
            l.NetWt,
            l.RateCy,
            l.FullTruckWgt,
            l.EmptyTruckWgt,
            l.TrashPer,
            l.MoisturePer,
            l.MoistureEt,
            l.CommrWt,
            l.DPDocno,
            l.DPDocDate,
            GinCode       = l.GinCode ?? string.Empty,
            LotNoVal      = l.LotNoVal,
            IsCentralised = l.IsCentralised,
        }));

        var p = new DynamicParameters();
        p.Add("DivCode",    request.DivCode);
        p.Add("ArrDate",    request.ArrDate);
        p.Add("SupCd",      request.SupCd);
        p.Add("BrkCd",      request.BrkCd);
        p.Add("AreaCode",   request.AreaCode);
        p.Add("CatCd",      request.CatCd);
        p.Add("CarCode",    request.CarCode);
        p.Add("LorryNos",   request.LorryNos);
        p.Add("Freight",    request.Freight);
        p.Add("GcNo",       request.GcNo);
        p.Add("LrNo",       request.LrNo);
        p.Add("Godown",     request.Godown);
        p.Add("InwardNo",   request.InwardNo);
        p.Add("InwardDate", request.InwardDate);
        p.Add("PlCode",     request.PlCode);
        p.Add("LineNo",     request.LineNo);
        p.Add("Weignment",  request.Weignment);
        p.Add("LR_InDt",    request.LR_InDt);
        p.Add("LR_InTime",  request.LR_InTime);
        p.Add("LR_OutDt",   request.LR_OutDt);
        p.Add("LR_OutTime", request.LR_OutTime);
        p.Add("GlobalDiv",  request.GlobalDiv ?? request.DivCode);
        p.Add("PreparedBy", preparedBy);
        p.Add("YfDate",     yf);
        p.Add("YlDate",     yl);
        p.Add("LinesJson",  linesJson);
        p.Add("ArrNo",      dbType: System.Data.DbType.Int32,
              direction: System.Data.ParameterDirection.Output);

        await _uow.Connection!.ExecuteAsync(
            StoredProcedures.Arrival.Insert, p,
            commandType: System.Data.CommandType.StoredProcedure);

        return p.Get<int>("ArrNo");
    }

    public async Task<bool> UpdateAsync(UpdateArrivalRequest request, string preparedBy)
    {
        await _uow.BeginAsync();

        var linesJson = JsonSerializer.Serialize(request.Lines.Select(l => new
        {
            l.ContNo,
            ContDt        = l.ContDt.ToString("yyyy-MM-dd"),
            l.VarCode,
            l.CntCode,
            l.ArrivalType,
            l.BbFlag,
            PlotNo        = l.PlotNo ?? string.Empty,
            PrNo          = l.PrNo ?? string.Empty,
            PrMark        = l.PrMark ?? string.Empty,
            l.Quantity,
            l.GrossWt,
            l.TareWt,
            l.NetWt,
            l.RateCy,
            l.FullTruckWgt,
            l.EmptyTruckWgt,
            l.TrashPer,
            l.MoisturePer,
            l.MoistureEt,
            l.CommrWt,
            l.DPDocno,
            l.DPDocDate,
            GinCode       = l.GinCode ?? string.Empty,
            LotNoVal      = l.LotNoVal,
            IsCentralised = l.IsCentralised,
        }));

        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<dynamic>(
            StoredProcedures.Arrival.Update,
            new
            {
                DivCode    = request.DivCode,
                ArrNo      = request.ArrNo,
                ArrDate    = request.ArrDate,
                SupCd      = request.SupCd,
                BrkCd      = request.BrkCd,
                AreaCode   = request.AreaCode,
                CatCd      = request.CatCd,
                CarCode    = request.CarCode,
                LorryNos   = request.LorryNos,
                Freight    = request.Freight,
                GcNo       = request.GcNo,
                LrNo       = request.LrNo,
                Godown     = request.Godown,
                InwardNo   = request.InwardNo,
                InwardDate = request.InwardDate,
                PlCode     = request.PlCode,
                LineNo     = request.LineNo,
                Weignment  = request.Weignment,
                LR_InDt    = request.LR_InDt,
                LR_InTime  = request.LR_InTime,
                LR_OutDt   = request.LR_OutDt,
                LR_OutTime = request.LR_OutTime,
                GlobalDiv  = request.GlobalDiv ?? request.DivCode,
                PreparedBy = preparedBy,
                LinesJson  = linesJson,
            },
            commandType: System.Data.CommandType.StoredProcedure);

        string status = result?.Status ?? "ERROR";
        return status == "SUCCESS";
    }

    public async Task<bool> FreightOnlyUpdateAsync(
        string divCode, int arrNo, DateTime arrDate,
        FreightOnlyUpdateRequest request, string preparedBy)
    {
        await _uow.BeginAsync();
        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<dynamic>(
            StoredProcedures.Arrival.FreightOnlyUpdate,
            new
            {
                DivCode    = divCode,
                ArrNo      = arrNo,
                ArrDate    = arrDate,
                Freight    = request.Freight,
                LorryNos   = request.LorryNos,
                PreparedBy = preparedBy,
            },
            commandType: System.Data.CommandType.StoredProcedure);
        return result?.Status == "SUCCESS";
    }

    public async Task<(bool Success, string Status)> DeleteAsync(
        string divCode, int arrNo, DateTime arrDate, string preparedBy)
    {
        await _uow.BeginAsync();
        var result = await _uow.Connection!.QueryFirstOrDefaultAsync<dynamic>(
            StoredProcedures.Arrival.Delete,
            new { DivCode = divCode, ArrNo = arrNo, ArrDate = arrDate, PreparedBy = preparedBy },
            commandType: System.Data.CommandType.StoredProcedure);
        string status = result?.Status ?? "ERROR";
        return (status == "SUCCESS", status);
    }

    public async Task<ArrivalDetailDto?> GetByIdAsync(string divCode, int arrNo, DateTime arrDate)
    {
        await _uow.BeginAsync();
        using var multi = await _uow.Connection!.QueryMultipleAsync(
            StoredProcedures.Arrival.GetById,
            new { DivCode = divCode, ArrNo = arrNo, ArrDate = arrDate },
            commandType: System.Data.CommandType.StoredProcedure);

        var header = await multi.ReadFirstOrDefaultAsync<ArrivalHeaderDto>();
        var lines  = (await multi.ReadAsync<ArrivalLineDto>()).ToList();

        if (header is null) return null;
        return new ArrivalDetailDto { Header = header, Lines = lines };
    }

    public async Task<PagedResult<ArrivalListItemDto>> GetPaginatedAsync(ArrivalListQueryDto query)
    {
        await _uow.BeginAsync();
        var rows = (await _uow.Connection!.QueryAsync<ArrivalListItemDto>(
            StoredProcedures.Arrival.GetPaginated,
            new
            {
                DivCode    = query.DivCode,
                Page       = query.Page,
                PageSize   = query.PageSize,
                SearchText = query.SearchText,
                FromDate   = string.IsNullOrEmpty(query.FromDate) ? (DateTime?)null : DateTime.Parse(query.FromDate),
                ToDate     = string.IsNullOrEmpty(query.ToDate)   ? (DateTime?)null : DateTime.Parse(query.ToDate),
                SupCode    = query.SupCode,
                CatCode    = query.CatCode,
                YfDate     = string.IsNullOrEmpty(query.YfDate) ? (DateTime?)null : DateTime.Parse(query.YfDate),
                YlDate     = string.IsNullOrEmpty(query.YlDate) ? (DateTime?)null : DateTime.Parse(query.YlDate),
            },
            commandType: System.Data.CommandType.StoredProcedure)).ToList();

        int total = rows.FirstOrDefault()?.TotalCount ?? 0;
        return new PagedResult<ArrivalListItemDto>
        {
            Items      = rows,
            TotalCount = total,
            Page       = query.Page,
            PageSize   = query.PageSize,
        };
    }
}
