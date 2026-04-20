using System.Collections.Concurrent;

namespace Spinrise.Infrastructure.Authentication;

public class InMemoryRefreshTokenStore : IRefreshTokenStore
{
    private readonly ConcurrentDictionary<string, DateTime> _tokens = new();

    public Task StoreAsync(string tokenId, DateTime expiresAtUtc)
    {
        _tokens[tokenId] = expiresAtUtc;
        return Task.CompletedTask;
    }

    public Task<bool> IsActiveAsync(string tokenId)
    {
        if (!_tokens.TryGetValue(tokenId, out var expiresAtUtc))
        {
            return Task.FromResult(false);
        }

        if (expiresAtUtc <= DateTime.UtcNow)
        {
            _tokens.TryRemove(tokenId, out _);
            return Task.FromResult(false);
        }

        return Task.FromResult(true);
    }

    public Task RevokeAsync(string tokenId)
    {
        _tokens.TryRemove(tokenId, out _);
        return Task.CompletedTask;
    }
}
