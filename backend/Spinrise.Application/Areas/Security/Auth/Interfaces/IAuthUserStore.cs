namespace Spinrise.Application.Interfaces;

public interface IAuthUserStore
{
    Task<AuthUserDto?> ValidateCredentialsAsync(string email, string password);
    Task<AuthUserDto?> GetByEmailAsync(string email);
}
