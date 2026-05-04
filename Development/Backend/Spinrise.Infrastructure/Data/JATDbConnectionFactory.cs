using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace Spinrise.Infrastructure.Data;

public interface IJATDbConnectionFactory : IDbConnectionFactory { }

public class JATDbConnectionFactory : IJATDbConnectionFactory
{
    private readonly IConfiguration _config;

    public JATDbConnectionFactory(IConfiguration config)
    {
        _config = config;
    }

    public IDbConnection CreateConnection()
    {
        return new SqlConnection(_config.GetConnectionString("JATConnection"));
    }
}
