using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Administration")]
[Route(ApiRoutes.Users.BaseRoute)]
[Authorize]
public class UserController : BaseApiController
{
    private readonly IUserService _service;

    public UserController(IUserService service)
    {
        _service = service;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<IActionResult> GetAll()
        => Success(await _service.GetAll(), "Users retrieved successfully.");

    [HttpGet("{id:int}")]
    [AllowAnonymous]
    public async Task<IActionResult> Get(int id)
    {
        if (id <= 0)
        {
            return Failure(ErrorMessages.InvalidId, StatusCodes.Status400BadRequest);
        }

        var user = await _service.Get(id);
        if (user is null)
        {
            return Failure($"User with id {id} was not found.", StatusCodes.Status404NotFound);
        }

        return Success(user, "User retrieved successfully.");
    }

    [HttpPost]
    [Authorize(Roles = UserRoles.Admin)]
    public async Task<IActionResult> Create([FromBody] CreateUserDto user)
    {
        var createdUser = await _service.Create(user);
        return Success(createdUser, "User created successfully.", StatusCodes.Status201Created);
    }

    [HttpPut]
    [Authorize(Roles = UserRoles.Admin)]
    public async Task<IActionResult> Update([FromBody] UpdateUserDto user)
    {
        var updatedUser = await _service.Update(user);
        if (updatedUser is null)
        {
            return Failure($"User with id {user.Id} was not found.", StatusCodes.Status404NotFound);
        }

        return Success(updatedUser, "User updated successfully.");
    }

    [HttpDelete("{id:int}")]
    [Authorize(Roles = UserRoles.Admin)]
    public async Task<IActionResult> Delete(int id)
    {
        if (id <= 0)
        {
            return Failure(ErrorMessages.InvalidId, StatusCodes.Status400BadRequest);
        }

        var deleted = await _service.Delete(id);
        if (!deleted)
        {
            return Failure($"User with id {id} was not found.", StatusCodes.Status404NotFound);
        }

        return SuccessMessage("User deleted successfully.");
    }

    [HttpGet(ApiRoutes.Users.GetPaginated)]
    [AllowAnonymous]
    public async Task<IActionResult> GetAllPaginated([FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 10)
    {
        if (pageNumber < 1 || pageSize < 1)
            return Failure("Page number and page size must be greater than 0.", StatusCodes.Status400BadRequest);

        var (users, totalCount) = await _service.GetAllPaginated(pageNumber, pageSize);
        return Success(new { Items = users, TotalCount = totalCount, PageNumber = pageNumber, PageSize = pageSize });
    }
}
