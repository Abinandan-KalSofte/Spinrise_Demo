using Microsoft.Data.SqlClient;
using System.Data;

namespace Spinrise.Infrastructure.Data;

public class UnitOfWork : IUnitOfWork
{
    private readonly IDbConnectionFactory _factory;

    public IDbConnection? Connection { get; private set; }
    public IDbTransaction? Transaction { get; private set; }

    public UnitOfWork(IDbConnectionFactory factory)
    {
        _factory = factory;
    }

    public async Task BeginAsync(bool startTransaction = false)
    {
        Cleanup();
        Connection = _factory.CreateConnection();

        if (Connection is SqlConnection sqlConn)
        {
            await sqlConn.OpenAsync();
        }
        else
        {
            Connection.Open();
        }

        if (startTransaction)
        {
            Transaction = Connection.BeginTransaction(IsolationLevel.ReadCommitted);
        }
    }

    public Task CommitAsync()
    {
        if (Transaction is not null)
        {
            Transaction.Commit();
        }

        Cleanup();
        return Task.CompletedTask;
    }

    public Task RollbackAsync()
    {
        if (Transaction is not null)
        {
            Transaction.Rollback();
        }

        Cleanup();
        return Task.CompletedTask;
    }

    public void Dispose()
    {
        Cleanup();
    }

    private void Cleanup()
    {
        Transaction?.Dispose();
        Transaction = null;

        Connection?.Dispose();
        Connection = null;
    }
}
