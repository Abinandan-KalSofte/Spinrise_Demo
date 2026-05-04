using Dapper;
using System.Data;
using Spinrise.Shared;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.Areas.Common.Lookup.Interfaces;
using Spinrise.Application.Interfaces;

namespace Spinrise.Infrastructure.Data;

public class LookupRepository : ILookupRepository
{
    private const string ConnectionNotInitializedMessage = "Database connection is not initialized.";
    private readonly IUnitOfWork    _uow;
    private readonly IJATUnitOfWork _jatUow;

    public LookupRepository(IUnitOfWork uow, IJATUnitOfWork jatUow)
    {
        _uow    = uow;
        _jatUow = jatUow;
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

    public async Task<IEnumerable<ItemLookupDto>> GetItemsAsync(string divCode, string searchTerm, string? depCode, string? itemGroup)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<ItemLookupDto>(
            StoredProcedures.Lookup.GetItemsEnriched,
            new { DivCode = divCode, SearchTerm = searchTerm, DepCode = depCode, ItemGroup = itemGroup },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure,
            commandTimeout: 15);  // 15s timeout for items lookup
    }

    public async Task<IEnumerable<MachineLookupDto>> GetMachinesAsync(string divCode, string? depCode = null)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<MachineLookupDto>(
            StoredProcedures.Lookup.GetMachines,
            new { DivCode = divCode, DepCode = string.IsNullOrWhiteSpace(depCode) ? null : depCode.Trim() },
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

    public async Task<IEnumerable<DivisionDTO>> GetDivisionDetailsAsync(string divCode)
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<DivisionDTO>(
            StoredProcedures.Lookup.GetDivisionDetails,
            new { DivCode = divCode },
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<ActiveDivisionDto>> GetActiveDivisionsAsync()
    {
        var connection = _uow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<ActiveDivisionDto>(
            StoredProcedures.Lookup.GetActiveDivisions,
            transaction: _uow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<SupplierLookupDto>> GetSuppliersAsync(string search)
    {
        var connection = _jatUow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<SupplierLookupDto>(
            StoredProcedures.Lookup.GetSuppliers,
            new { Search = search },
            transaction: _jatUow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<VarietyLookupDto>> GetVarietiesAsync(string search)
    {
        var connection = _jatUow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<VarietyLookupDto>(
            StoredProcedures.Lookup.GetVarieties,
            new { Search = search },
            transaction: _jatUow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<AreaLookupDto>> GetAreasAsync(string search)
    {
        var connection = _jatUow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<AreaLookupDto>(
            StoredProcedures.Lookup.GetAreas,
            new { Search = search },
            transaction: _jatUow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<PaymentModeLookupDto>> GetPaymentModesAsync()
    {
        var connection = _jatUow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<PaymentModeLookupDto>(
            StoredProcedures.Lookup.GetPaymentModes,
            transaction: _jatUow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

    public async Task<IEnumerable<CurrencyLookupDto>> GetCurrenciesAsync()
    {
        var connection = _jatUow.Connection ?? throw new InvalidOperationException(ConnectionNotInitializedMessage);
        return await connection.QueryAsync<CurrencyLookupDto>(
            StoredProcedures.Lookup.GetCurrencies,
            transaction: _jatUow.Transaction,
            commandType: CommandType.StoredProcedure);
    }

}
