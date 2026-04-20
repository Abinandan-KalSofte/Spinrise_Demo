using System.Data;

namespace Spinrise.Application.Interfaces;

public interface IUnitOfWork : IDisposable
{
    IDbConnection? Connection { get; }
    IDbTransaction? Transaction { get; }

    Task BeginAsync(bool startTransaction = false);
    Task CommitAsync();
    Task RollbackAsync();
}
