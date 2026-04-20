namespace Spinrise.Application.Interfaces;

public interface IAuthUserStore
{
    Task<AuthUserDto?> ValidateCredentialsAsync(string userId, string divCode, string password);
    Task<AuthUserDto?> GetByUserIdAsync(string userId, string divCode);
}
