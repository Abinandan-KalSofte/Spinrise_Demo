namespace Spinrise.Application.Interfaces;

public interface IAuthService
{
    Task<AuthResponseDto?> Login(LoginRequestDto request);
    Task<AuthResponseDto?> RefreshToken(RefreshTokenRequestDto request);
    Task Logout(string? refreshToken);
}
