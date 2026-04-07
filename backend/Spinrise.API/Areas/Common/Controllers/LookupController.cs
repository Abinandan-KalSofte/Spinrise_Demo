using Microsoft.AspNetCore.Mvc;
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
    public async Task<IActionResult> GetItems([FromQuery] string? search = null)
    {
        var term = search?.Trim() ?? string.Empty;
        if (term.Length < 2)
            return Success(Array.Empty<object>(), "Items retrieved successfully.");

        return Success(await _service.GetItemsAsync( term), "Items retrieved successfully.");
    }

    [HttpGet("machines")]
    public async Task<IActionResult> GetMachines()
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetMachinesAsync(divCode), "Machines retrieved successfully.");
    }

    [HttpGet("sub-costs")]
    public async Task<IActionResult> GetSubCosts()
    {
        var divCode = RequireDivCode();
        return Success(await _service.GetSubCostsAsync(divCode), "Sub-costs retrieved successfully.");
    }
}
