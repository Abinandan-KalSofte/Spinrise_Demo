using Spinrise.Application.Areas.Inventory.Stock.DTOs;

namespace Spinrise.Application.Areas.Inventory.Stock.Interfaces;

public interface IStockRepository
{
    Task<StockResponseDto?> GetCurrentStockAsync(StockQueryDto query);
}
