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

    public async Task CommitAsync()
    {
        if (Transaction is SqlTransaction sqlTx)
        {
            await sqlTx.CommitAsync();
        }
        else
        {
            Transaction?.Commit();
        }

        Cleanup();
    }

    public async Task RollbackAsync()
    {
        if (Transaction is SqlTransaction sqlTx)
        {
            await sqlTx.RollbackAsync();
        }
        else
        {
            Transaction?.Rollback();
        }

        Cleanup();
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
