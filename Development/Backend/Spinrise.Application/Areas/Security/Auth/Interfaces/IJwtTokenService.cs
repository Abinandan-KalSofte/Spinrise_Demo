namespace Spinrise.Application.Interfaces;

public interface IJwtTokenService
{
    string GenerateAccessToken(AuthUserDto user);
    JwtTokenResult GenerateRefreshToken(AuthUserDto user);
    RefreshTokenValidationResult? ValidateRefreshToken(string refreshToken);
}
