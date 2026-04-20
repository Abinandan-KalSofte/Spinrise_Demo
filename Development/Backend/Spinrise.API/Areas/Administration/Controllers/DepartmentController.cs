using Microsoft.AspNetCore.Authorization;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Administration")]
[Route(ApiRoutes.Departments.BaseRoute)]
[Authorize]
public class DepartmentController : BaseApiController
{
    private readonly IDepartmentService _service;

    public DepartmentController(IDepartmentService service)
    {
        _service = service;
    }

    [HttpGet("active")]
    [AllowAnonymous]
    public async Task<IActionResult> GetActive()
    {
        var departments = await _service.GetByDivisionAsync();
        return Success(departments, "Departments retrieved successfully.");
    }
}
