using Microsoft.AspNetCore.Authorization;

namespace Spinrise.API.Controllers;

[Area("Security")]
[Route("api/v1/auth")]
public class AuthController : BaseApiController
{
    private readonly IAuthService _authService;

    public AuthController(IAuthService authService)
    {
        _authService = authService;
    }

    [AllowAnonymous]
    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] LoginRequestDto request)
    {
        var result = await _authService.Login(request);
        if (result is null)
        {
            return Failure("Invalid email or password.", StatusCodes.Status401Unauthorized);
        }

        return Success(result, "Login successful.");
    }

    [AllowAnonymous]
    [HttpPost("refresh")]
    public async Task<IActionResult> RefreshToken([FromBody] RefreshTokenRequestDto request)
    {
        var result = await _authService.RefreshToken(request);
        if (result is null)
        {
            return Failure("Refresh token is invalid or expired.", StatusCodes.Status401Unauthorized);
        }

        return Success(result, "Token refreshed successfully.");
    }

    [AllowAnonymous]
    [HttpPost("logout")]
    public async Task<IActionResult> Logout([FromBody] LogoutRequestDto request)
    {
        await _authService.Logout(request.RefreshToken);
        return SuccessMessage("Logout successful.");
    }
}
