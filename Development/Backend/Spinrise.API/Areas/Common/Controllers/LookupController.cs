using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.Areas.Common.Lookup.Interfaces;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Common")]
[Route(ApiRoutes.Lookups.BaseRoute)]
public class LookupController : BaseApiController
{
    private readonly ILookupService _service;

    public LookupController(ILookupService service)
    {
        _service = service;
    }

    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token. Access denied.");

    [AllowAnonymous]
    [HttpGet("/api/v1/divisions/active")]
    public async Task<IActionResult> GetActiveDivisions()
    {
        return Success(await _service.GetActiveDivisionsAsync(), "Active divisions retrieved successfully.");
    }

    [HttpGet("departments")]
    public async Task<IActionResult> GetDepartments()
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetDepartmentsAsync(divCode), "Departments retrieved successfully.");
    }

    [HttpGet("employees")]
    public async Task<IActionResult> GetEmployees()
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetEmployeesAsync(divCode), "Employees retrieved successfully.");
    }

    [HttpGet("po-types")]
    public async Task<IActionResult> GetPOTypes()
    {
        return Success(await _service.GetPOTypesAsync(), "PO types retrieved successfully.");
    }

    [HttpGet("items")]
    public async Task<IActionResult> GetItems(
        [FromQuery] string? search    = null,
        [FromQuery] string? depCode   = null,
        [FromQuery] string? itemGroup = null)
    {
        var divCode = RequireDivCode();
        var term    = search?.Trim() ?? string.Empty;
        if (term.Length < 2)
            return Success(Array.Empty<object>(), "Items retrieved successfully.");

        return Success(
            await _service.GetItemsAsync(divCode, term, depCode?.Trim(), itemGroup?.Trim()),
            "Items retrieved successfully.");
    }

    [HttpGet("items/paginated")]
    public async Task<IActionResult> GetItemsPaginated(
        [FromQuery] string? search   = null,
        [FromQuery] string? depCode  = null,
        [FromQuery] int     page     = 1,
        [FromQuery] int     pageSize = 50)
    {
        if (page < 1)     page     = 1;
        if (pageSize < 1) pageSize = 50;
        if (pageSize > 200) pageSize = 200;

        var divCode = RequireDivCode();
        var result  = await _service.GetItemsPaginatedAsync(divCode, search?.Trim(), depCode?.Trim(), page, pageSize);
        return Success(result, "Items retrieved successfully.");
    }

    [HttpGet("machines")]
    public async Task<IActionResult> GetMachines([FromQuery] string? depCode = null)
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetMachinesAsync(divCode, depCode?.Trim()), "Machines retrieved successfully.");
    }

    [HttpGet("sub-costs")]
    public async Task<IActionResult> GetSubCosts()
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetSubCostsAsync(divCode), "Sub-costs retrieved successfully.");
    }

    [HttpGet("suppliers")]
    public async Task<IActionResult> GetSuppliers([FromQuery] string? search = null)
    {
        var term = search?.Trim() ?? string.Empty;
        if (term.Length < 2)
            return Success(Array.Empty<object>(), "Suppliers retrieved successfully.");
        return Success(await _service.GetSuppliersAsync(term), "Suppliers retrieved successfully.");
    }

    [HttpGet("varieties")]
    public async Task<IActionResult> GetVarieties([FromQuery] string? search = null)
    {
        var term = search?.Trim() ?? string.Empty;
        if (term.Length < 2)
            return Success(Array.Empty<object>(), "Varieties retrieved successfully.");
        return Success(await _service.GetVarietiesAsync(term), "Varieties retrieved successfully.");
    }

    [HttpGet("areas")]
    public async Task<IActionResult> GetAreas([FromQuery] string? search = null)
    {
        var term = search?.Trim() ?? string.Empty;
        if (term.Length < 2)
            return Success(Array.Empty<object>(), "Areas retrieved successfully.");
        return Success(await _service.GetAreasAsync(term), "Areas retrieved successfully.");
    }

    [HttpGet("payment-modes")]
    public async Task<IActionResult> GetPaymentModes()
    {
        return Success(await _service.GetPaymentModesAsync(), "Payment modes retrieved successfully.");
    }

    [HttpGet("currencies")]
    public async Task<IActionResult> GetCurrencies()
    {
        return Success(await _service.GetCurrenciesAsync(), "Currencies retrieved successfully.");
    }

    [HttpGet("rate-units")]
    public async Task<IActionResult> GetRateUnits()
    {
        return Success(await _service.GetRateUnitsAsync(), "Rate units retrieved successfully.");
    }

    [HttpGet("weighments")]
    public async Task<IActionResult> GetWeighments()
    {
        return Success(await _service.GetWeighmentsAsync(), "Weighments retrieved successfully.");
    }

    [HttpGet("agents")]
    public async Task<IActionResult> SearchAgents([FromQuery] string term = "")
    {
        var t = term.Trim();
        if (t.Length < 2)
            return Success(Array.Empty<AgentLookupDto>(), "Agents retrieved successfully.");
        return Success(await _service.SearchAgentsAsync(t), "Agents retrieved successfully.");
    }

    [HttpGet("employees/search")]
    public async Task<IActionResult> SearchEmployees([FromQuery] string term = "")
    {
        var t = term.Trim();
        if (t.Length < 2)
            return Success(Array.Empty<EmployeeRMILookupDto>(), "Employees retrieved successfully.");
        return Success(await _service.SearchEmployeesAsync(t), "Employees retrieved successfully.");
    }

    [HttpGet("tax-codes")]
    public async Task<IActionResult> GetActiveTaxCodes()
    {
        return Success(await _service.GetActiveTaxCodesAsync(), "Tax codes retrieved successfully.");
    }

    [HttpGet("indent-types")]
    public async Task<IActionResult> GetIndentTypes()
    {
        return Success(await _service.GetIndentTypesAsync(), "Indent types retrieved successfully.");
    }
}
