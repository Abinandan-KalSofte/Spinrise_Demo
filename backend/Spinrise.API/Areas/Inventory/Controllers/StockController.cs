using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.Areas.Inventory.Stock.DTOs;
using Spinrise.Application.Areas.Inventory.Stock.Interfaces;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Inventory")]
[Route(ApiRoutes.Inventory.Stock.BaseRoute)]
[Authorize]
public class StockController : BaseApiController
{
    private readonly IStockService _service;

    public StockController(IStockService service)
    {
        _service = service;
    }

    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token. Access denied.");

    [HttpGet(ApiRoutes.Inventory.Stock.GetCurrent)]
    public async Task<IActionResult> GetCurrent([FromQuery] StockQueryDto query)
    {
        // Override any client-supplied DivCode with the authenticated user's division.
        query.DivCode = RequireDivCode();

        var result = await _service.GetCurrentStockAsync(query);

        if (result is null)
        {
            return Failure(
                $"No stock record found for item '{query.ItemCode}' in division '{query.DivCode}'.",
                StatusCodes.Status404NotFound);
        }

        return Success(result, "Stock retrieved successfully.");
    }
}
