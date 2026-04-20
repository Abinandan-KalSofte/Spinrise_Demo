using System.Data.Common;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.API.Controllers;
using Spinrise.Infrastructure.Data;

namespace Spinrise.API.Areas.Health.Controllers;

[ApiController]
[Route("api/v1/health")]
[AllowAnonymous]
public class HealthController : BaseApiController
{
    private readonly IDbConnectionFactory _connectionFactory;

    public HealthController(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    [HttpGet]
    public async Task<IActionResult> CheckHealth()
    {
        try
        {
            using (var connection = _connectionFactory.CreateConnection())
            {
                if (connection is DbConnection dbConnection)
                {
                    await dbConnection.OpenAsync();
                }
                else
                {
                    connection.Open();
                }
            }

            return SuccessMessage("API is healthy", StatusCodes.Status200OK);
        }
        catch (Exception ex)
        {
            return Failure($"Database connection failed: {ex.Message}", StatusCodes.Status503ServiceUnavailable);
        }
    }
}
