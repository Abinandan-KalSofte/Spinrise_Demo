namespace Spinrise.Application.Services;

public class AuthService : IAuthService
{
    private readonly IAuthUserStore _authUserStore;
    private readonly IJwtTokenService _jwtTokenService;
    private readonly IRefreshTokenStore _refreshTokenStore;

    public AuthService(
        IAuthUserStore authUserStore,
        IJwtTokenService jwtTokenService,
        IRefreshTokenStore refreshTokenStore)
    {
        _authUserStore = authUserStore;
        _jwtTokenService = jwtTokenService;
        _refreshTokenStore = refreshTokenStore;
    }

    public async Task<AuthResponseDto?> Login(LoginRequestDto request)
    {
        var user = await _authUserStore.ValidateCredentialsAsync(
            request.UserId, request.DivCode, request.Password);

        if (user is null) return null;

        return await CreateSessionAsync(user);
    }

    public async Task<AuthResponseDto?> RefreshToken(RefreshTokenRequestDto request)
    {
        var refreshToken = _jwtTokenService.ValidateRefreshToken(request.RefreshToken);
        if (refreshToken is null) return null;

        var isActive = await _refreshTokenStore.IsActiveAsync(refreshToken.TokenId);
        if (!isActive) return null;

        await _refreshTokenStore.RevokeAsync(refreshToken.TokenId);

        // UserId was stored in the Email claim; DivCode in div_code claim
        var user = await _authUserStore.GetByUserIdAsync(
            refreshToken.User.Email, refreshToken.User.DivCode);

        if (user is null) return null;

        return await CreateSessionAsync(user);
    }

    public async Task Logout(string? refreshToken)
    {
        if (string.IsNullOrWhiteSpace(refreshToken))
        {
            return;
        }

        var validation = _jwtTokenService.ValidateRefreshToken(refreshToken);
        if (validation is null)
        {
            return;
        }

        await _refreshTokenStore.RevokeAsync(validation.TokenId);
    }

    private async Task<AuthResponseDto> CreateSessionAsync(AuthUserDto user)
    {
        var accessToken = _jwtTokenService.GenerateAccessToken(user);
        var refreshToken = _jwtTokenService.GenerateRefreshToken(user);

        await _refreshTokenStore.StoreAsync(refreshToken.TokenId, refreshToken.ExpiresAtUtc);

        return new AuthResponseDto
        {
            User = user,
            Tokens = new AuthTokensDto
            {
                AccessToken = accessToken,
                RefreshToken = refreshToken.Token
            }
        };
    }
}
