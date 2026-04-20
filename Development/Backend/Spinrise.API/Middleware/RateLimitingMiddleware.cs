using System.Collections.Concurrent;

namespace Spinrise.API.Middleware;

public class RateLimitingMiddleware
{
    private readonly RequestDelegate _next;
    private readonly ILogger<RateLimitingMiddleware> _logger;
    private static readonly ConcurrentDictionary<string, (int Count, DateTime ResetTime)> RequestCounts = new();

    private const int MaxRequestsPerMinute = 100;
    private const int WindowSizeInSeconds = 60;

    public RateLimitingMiddleware(RequestDelegate next, ILogger<RateLimitingMiddleware> logger)
    {
        _next = next;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        var clientId = GetClientId(context);
        var now = DateTime.UtcNow;

        if (!RequestCounts.TryGetValue(clientId, out var request))
        {
            RequestCounts.TryAdd(clientId, (1, now.AddSeconds(WindowSizeInSeconds)));
            await _next(context);
            return;
        }

        if (now > request.ResetTime)
        {
            RequestCounts.TryUpdate(clientId, (1, now.AddSeconds(WindowSizeInSeconds)), request);
            await _next(context);
            return;
        }

        if (request.Count >= MaxRequestsPerMinute)
        {
            _logger.LogWarning("Rate limit exceeded for client: {ClientId}", clientId);
            context.Response.StatusCode = StatusCodes.Status429TooManyRequests;
            context.Response.ContentType = "application/json";
            await context.Response.WriteAsJsonAsync(new { message = "Rate limit exceeded. Maximum 100 requests per minute." });
            return;
        }

        RequestCounts.TryUpdate(clientId, (request.Count + 1, request.ResetTime), request);
        await _next(context);
    }

    private static string GetClientId(HttpContext context)
    {
        return context.User?.FindFirst("sub")?.Value
            ?? context.Connection.RemoteIpAddress?.ToString()
            ?? "unknown";
    }
}
