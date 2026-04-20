using Dapper;
using System.Data;
using Spinrise.Shared;

namespace Spinrise.Infrastructure.Data;

public class UserRepository : IUserRepository
{
    private const string ConnectionNotInitializedMessage = "Database connection is not initialized.";
    private readonly IUnitOfWork _uow;

    public UserRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<IEnumerable<User>> GetAllAsync()
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection
            .QueryAsync<User>(
                StoredProcedures.User.GetAll,
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<User?> GetByIdAsync(int id)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection
            .QueryFirstOrDefaultAsync<User>(
                StoredProcedures.User.GetById,
                new { Id = id },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<int> InsertAsync(User user)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection
            .ExecuteScalarAsync<int>(
                StoredProcedures.User.Insert,
                new { user.Name, user.Email },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);
    }

    public async Task<bool> UpdateAsync(User user)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        var rows = await connection
            .ExecuteScalarAsync<int>(
                StoredProcedures.User.Update,
                new { user.Id, user.Name, user.Email },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);

        return rows > 0;
    }

    public async Task<bool> DeleteAsync(int id)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        var rows = await connection
            .ExecuteScalarAsync<int>(
                StoredProcedures.User.Delete,
                new { Id = id },
                transaction: _uow.Transaction,
                commandType: CommandType.StoredProcedure);

        return rows > 0;
    }

    public async Task<(IEnumerable<User> Items, int TotalCount)> GetAllPaginatedAsync(int pageNumber, int pageSize)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);

        var items = await connection.QueryAsync<User>(
            StoredProcedures.User.GetAllPaginated,
            new { PageNumber = pageNumber, PageSize = pageSize },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        var totalCount = await connection.ExecuteScalarAsync<int>(
            StoredProcedures.User.GetCount,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);

        return (items, totalCount);
    }
}
