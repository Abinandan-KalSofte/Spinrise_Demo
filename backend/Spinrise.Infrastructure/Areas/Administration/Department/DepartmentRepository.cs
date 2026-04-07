using Dapper;
using System.Data;
using Spinrise.Shared;
using Spinrise.Application.Areas.Administration.Department.DTOs;
using Spinrise.Application.Areas.Administration.Department.Interfaces;

namespace Spinrise.Infrastructure.Data;

public class DepartmentRepository : IDepartmentRepository
{
    private const string ConnectionNotInitializedMessage = "Database connection is not initialized.";
    private readonly IUnitOfWork _uow;

    public DepartmentRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<IEnumerable<DepartmentResponseDto>> GetByDivisionAsync()
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<DepartmentResponseDto>(
            StoredProcedures.Department.GetByDivision,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }
}
