using Dapper;
using System.Data;
using Spinrise.Shared;
using Spinrise.Application.Areas.Inventory.Stock.DTOs;
using Spinrise.Application.Areas.Inventory.Stock.Interfaces;

namespace Spinrise.Infrastructure.Data;

public class StockRepository : IStockRepository
{
    private const string ConnectionNotInitializedMessage = "Database connection is not initialized.";
    private readonly IUnitOfWork _uow;

    public StockRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<StockResponseDto?> GetCurrentStockAsync(StockQueryDto query)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);

        var results = await connection.QueryAsync<StockResponseDto>(
            StoredProcedures.Stock.GetCurrentStock,
            new
            {
                DivCode       = query.DivCode,
                ItemCode      = query.ItemCode,
                YFDate        = query.YFDate,
                EndDate       = query.EndDate,
                OYM           = query.OYM,
                GodCode       = query.GodCode,
                IncludeType12 = query.IncludeType12,
                IncludeType11 = query.IncludeType11
            },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        return results.FirstOrDefault();
    }
}
