using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;

namespace Spinrise.Infrastructure.Authentication;

public class JwtTokenService : IJwtTokenService
{
    private readonly JwtOptions _options;
    private readonly byte[] _secretKey;
    private readonly JwtSecurityTokenHandler _tokenHandler = new();

    public JwtTokenService(IOptions<JwtOptions> options)
    {
        _options = options.Value;
        _secretKey = Encoding.UTF8.GetBytes(_options.SecretKey);
    }

    public string GenerateAccessToken(AuthUserDto user)
    {
        var token = BuildToken(
            user,
            DateTime.UtcNow.AddMinutes(_options.AccessTokenMinutes),
            "access");

        return _tokenHandler.WriteToken(token);
    }

    public JwtTokenResult GenerateRefreshToken(AuthUserDto user)
    {
        var expiresAtUtc = DateTime.UtcNow.AddDays(_options.RefreshTokenDays);
        var token = BuildToken(user, expiresAtUtc, "refresh");

        return new JwtTokenResult
        {
            Token = _tokenHandler.WriteToken(token),
            TokenId = token.Id,
            ExpiresAtUtc = expiresAtUtc
        };
    }

    public RefreshTokenValidationResult? ValidateRefreshToken(string refreshToken)
    {
        try
        {
            var principal = _tokenHandler.ValidateToken(refreshToken, GetValidationParameters(), out var validatedToken);
            if (validatedToken is not JwtSecurityToken jwtToken)
            {
                return null;
            }

            var tokenType = principal.FindFirst("token_type")?.Value;
            if (!string.Equals(tokenType, "refresh", StringComparison.Ordinal))
            {
                return null;
            }

            var subject = principal.FindFirst(JwtRegisteredClaimNames.Sub)?.Value;
            var email = principal.FindFirst(JwtRegisteredClaimNames.Email)?.Value;
            var role = principal.FindFirst(ClaimTypes.Role)?.Value;
            var tokenId = principal.FindFirst(JwtRegisteredClaimNames.Jti)?.Value;

            if (string.IsNullOrWhiteSpace(tokenId) ||
                string.IsNullOrWhiteSpace(subject) ||
                string.IsNullOrWhiteSpace(email))
            {
                return null;
            }

            return new RefreshTokenValidationResult
            {
                TokenId = tokenId,
                ExpiresAtUtc = jwtToken.ValidTo,
                User = new AuthUserDto
                {
                    Id = int.TryParse(subject, out var userId) ? userId : 0,
                    Email = email,
                    Role = string.IsNullOrWhiteSpace(role) ? "user" : role
                }
            };
        }
        catch
        {
            return null;
        }
    }

    private JwtSecurityToken BuildToken(AuthUserDto user, DateTime expiresAtUtc, string tokenType)
    {
        var claims = new List<Claim>
        {
            new(JwtRegisteredClaimNames.Sub, user.Id.ToString()),
            new(JwtRegisteredClaimNames.Email, user.Email),
            new(ClaimTypes.Role, user.Role),
            new(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString("N")),
            new("token_type", tokenType)
        };

        var credentials = new SigningCredentials(
            new SymmetricSecurityKey(_secretKey),
            SecurityAlgorithms.HmacSha256);

        return new JwtSecurityToken(
            issuer: _options.Issuer,
            audience: _options.Audience,
            claims: claims,
            expires: expiresAtUtc,
            signingCredentials: credentials);
    }

    private TokenValidationParameters GetValidationParameters()
    {
        return new TokenValidationParameters
        {
            ValidateIssuer = true,
            ValidIssuer = _options.Issuer,
            ValidateAudience = true,
            ValidAudience = _options.Audience,
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = new SymmetricSecurityKey(_secretKey),
            ValidateLifetime = true,
            ClockSkew = TimeSpan.Zero,
            NameClaimType = JwtRegisteredClaimNames.Email,
            RoleClaimType = ClaimTypes.Role
        };
    }
}
