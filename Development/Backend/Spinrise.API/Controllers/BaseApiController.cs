using Microsoft.AspNetCore.Mvc;
using Spinrise.API.Models;

namespace Spinrise.API.Controllers;

[ApiController]
public abstract class BaseApiController : ControllerBase
{
    protected IActionResult Success<T>(T data, string message = "Request completed successfully.", int statusCode = StatusCodes.Status200OK)
    {
        return StatusCode(statusCode, new ApiResponse<T>
        {
            Success = true,
            Message = message,
            Data = data
        });
    }

    protected IActionResult SuccessMessage(string message = "Request completed successfully.", int statusCode = StatusCodes.Status200OK)
    {
        return StatusCode(statusCode, new ApiResponse
        {
            Success = true,
            Message = message
        });
    }

    protected IActionResult Failure(string message, int statusCode, object? errors = null)
    {
        return StatusCode(statusCode, new ApiResponse
        {
            Success = false,
            Message = message,
            Errors = errors
        });
    }
}
