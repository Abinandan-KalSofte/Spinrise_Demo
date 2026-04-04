namespace Spinrise.Application.DTOs.Auth;
public class RefreshTokenValidationResult
{
    public string TokenId { get; set; } = string.Empty;
    public DateTime ExpiresAtUtc { get; set; }
    public AuthUserDto User { get; set; } = new();
}
