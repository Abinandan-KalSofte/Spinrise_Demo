namespace Spinrise.Application.DTOs.Auth;

public class AuthResponseDto
{
    public AuthUserDto User { get; set; } = new();
    public AuthTokensDto Tokens { get; set; } = new();
}
