namespace Spinrise.API.Models;

public class ApiResponse
{
    public bool Success { get; init; }
    public string Message { get; init; } = string.Empty;
    public object? Errors { get; init; }
}
