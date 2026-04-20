using System.Net;
using System.Text.Json;
using Spinrise.API.Models;

namespace Spinrise.API.Middleware;

public class ExceptionHandlingMiddleware
{
    private static readonly JsonSerializerOptions SerializerOptions = new(JsonSerializerDefaults.Web);
    private readonly RequestDelegate _next;
    private readonly ILogger<ExceptionHandlingMiddleware> _logger;
    private readonly IHostEnvironment _environment;

    public ExceptionHandlingMiddleware(
        RequestDelegate next,
        ILogger<ExceptionHandlingMiddleware> logger,
        IHostEnvironment environment)
    {
        _next = next;
        _logger = logger;
        _environment = environment;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        var correlationId = Guid.NewGuid().ToString();
        context.Items["CorrelationId"] = correlationId;
        context.Response.Headers.Append("X-Correlation-ID", correlationId);

        try
        {
            await _next(context);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Unhandled exception [CorrelationID: {CorrelationId}] while processing {Method} {Path}", correlationId, context.Request.Method, context.Request.Path);
            await WriteErrorResponseAsync(context, ex, correlationId);
        }
    }

    private async Task WriteErrorResponseAsync(HttpContext context, Exception exception, string correlationId)
    {
        if (context.Response.HasStarted)
        {
            _logger.LogWarning("The response has already started, skipping exception response writing.");
            throw exception;
        }

        context.Response.Clear();
        context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
        context.Response.ContentType = "application/json";

        var response = new ApiResponse
        {
            Success = false,
            Message = "An unexpected error occurred.",
            Errors = _environment.IsDevelopment()
                ? new
                {
                    exception.Message,
                    Detail = exception.InnerException?.Message,
                    CorrelationId = correlationId
                }
                : new { CorrelationId = correlationId }
        };

        await context.Response.WriteAsync(JsonSerializer.Serialize(response, SerializerOptions));
    }
}
