using Microsoft.Extensions.Logging;
using Spinrise.Application.Areas.Inventory.Stock.DTOs;
using Spinrise.Application.Areas.Inventory.Stock.Interfaces;

namespace Spinrise.Application.Areas.Inventory.Stock.Services;

public class StockService : IStockService
{
    private readonly IStockRepository       _repo;
    private readonly IUnitOfWork            _uow;
    private readonly ILogger<StockService>  _logger;

    public StockService(IStockRepository repo, IUnitOfWork uow, ILogger<StockService> logger)
    {
        _repo   = repo;
        _uow    = uow;
        _logger = logger;
    }

    public async Task<StockResponseDto?> GetCurrentStockAsync(StockQueryDto query)
    {
        await _uow.BeginAsync();
        try
        {
            var result = await _repo.GetCurrentStockAsync(query);
            await _uow.CommitAsync();
            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex,
                "Failed to get current stock for item {ItemCode} in division {DivCode}",
                query.ItemCode, query.DivCode);
            await _uow.RollbackAsync();
            throw;
        }
    }
}
