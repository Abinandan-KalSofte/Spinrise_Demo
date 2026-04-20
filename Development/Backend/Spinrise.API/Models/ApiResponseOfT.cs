namespace Spinrise.API.Models;

public class ApiResponse<T> : ApiResponse
{
    public T? Data { get; init; }
}
