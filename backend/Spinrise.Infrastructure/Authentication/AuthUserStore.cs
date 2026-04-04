using Microsoft.Extensions.Options;

namespace Spinrise.Infrastructure.Authentication;

public class AuthUserStore : IAuthUserStore
{
    private readonly AuthOptions _options;

    public AuthUserStore(IOptions<AuthOptions> options)
    {
        _options = options.Value;
    }

    public Task<AuthUserDto?> ValidateCredentialsAsync(string email, string password)
    {
        var user = _options.Users.FirstOrDefault(x =>
            string.Equals(x.Email, email, StringComparison.OrdinalIgnoreCase) &&
            x.Password == password);

        return Task.FromResult(Map(user));
    }

    public Task<AuthUserDto?> GetByEmailAsync(string email)
    {
        var user = _options.Users.FirstOrDefault(x =>
            string.Equals(x.Email, email, StringComparison.OrdinalIgnoreCase));

        return Task.FromResult(Map(user));
    }

    private static AuthUserDto? Map(AuthUserCredential? user)
    {
        if (user is null)
        {
            return null;
        }

        return new AuthUserDto
        {
            Id = user.Id,
            Email = user.Email,
            Role = user.Role
        };
    }
}
