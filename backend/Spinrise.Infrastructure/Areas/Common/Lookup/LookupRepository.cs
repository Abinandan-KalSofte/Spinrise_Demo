using Dapper;
using System.Data;
using Spinrise.Shared;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.Areas.Common.Lookup.Interfaces;

namespace Spinrise.Infrastructure.Data;

public class LookupRepository : ILookupRepository
{
    private const string ConnectionNotInitializedMessage = "Database connection is not initialized.";
    private readonly IUnitOfWork _uow;

    public LookupRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }

    public async Task<IEnumerable<DepartmentLookupDto>> GetDepartmentsAsync(string divCode)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<DepartmentLookupDto>(
            StoredProcedures.Lookup.GetDepartments,
            new { DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<EmployeeLookupDto>> GetEmployeesAsync(string divCode)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<EmployeeLookupDto>(
            StoredProcedures.Lookup.GetEmployees,
            new { DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<POTypeLookupDto>> GetPOTypesAsync()
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<POTypeLookupDto>(
            StoredProcedures.Lookup.GetPOTypes,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<ItemLookupDto>> GetItemsAsync( string searchTerm)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<ItemLookupDto>(
            StoredProcedures.Lookup.GetItems,
            new { SearchTerm = searchTerm },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<MachineLookupDto>> GetMachinesAsync(string divCode)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<MachineLookupDto>(
            StoredProcedures.Lookup.GetMachines,
            new { DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<SubCostLookupDto>> GetSubCostsAsync(string divCode)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<SubCostLookupDto>(
            StoredProcedures.Lookup.GetSubCosts,
            new { DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }
}
