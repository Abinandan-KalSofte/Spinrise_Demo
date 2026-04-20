using Microsoft.Extensions.Options;

namespace Spinrise.Infrastructure.Authentication;

public class AuthUserStore : IAuthUserStore
{
    private readonly AuthOptions _options;

    public AuthUserStore(IOptions<AuthOptions> options)
    {
        _options = options.Value;
    }

    public Task<AuthUserDto?> ValidateCredentialsAsync(string userId, string divCode, string password)
    {
        var user = _options.Users.FirstOrDefault(x =>
            string.Equals(x.Email, userId, StringComparison.OrdinalIgnoreCase) &&
            string.Equals(x.DivCode, divCode, StringComparison.OrdinalIgnoreCase) &&
            x.Password == password);

        return Task.FromResult(Map(user));
    }

    public Task<AuthUserDto?> GetByUserIdAsync(string userId, string divCode)
    {
        var user = _options.Users.FirstOrDefault(x =>
            string.Equals(x.Email, userId, StringComparison.OrdinalIgnoreCase) &&
            string.Equals(x.DivCode, divCode, StringComparison.OrdinalIgnoreCase));

        return Task.FromResult(Map(user));
    }

    private static AuthUserDto? Map(AuthUserCredential? user)
    {
        if (user is null) return null;

        return new AuthUserDto
        {
            Id       = user.Id,
            UserId   = user.Email,
            UserName = string.Empty,
            Email    = user.Email,
            Role     = user.Role,
            DivCode  = user.DivCode
        };
    }
}
