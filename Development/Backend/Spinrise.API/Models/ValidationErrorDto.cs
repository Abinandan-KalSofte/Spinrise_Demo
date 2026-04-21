namespace Spinrise.API.Models;

public sealed record ValidationErrorDto(string Field, string Message, string? Code = null);
