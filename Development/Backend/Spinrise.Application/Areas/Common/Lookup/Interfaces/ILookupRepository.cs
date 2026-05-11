using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Common.Lookup.Interfaces;

public interface ILookupRepository
{
    Task<IEnumerable<DepartmentLookupDto>> GetDepartmentsAsync(string divCode);
    Task<IEnumerable<EmployeeLookupDto>>   GetEmployeesAsync(string divCode);
    Task<IEnumerable<POTypeLookupDto>>     GetPOTypesAsync();
    Task<IEnumerable<ItemLookupDto>>       GetItemsAsync(string divCode, string searchTerm, string? depCode, string? itemGroup);
    Task<IEnumerable<MachineLookupDto>>    GetMachinesAsync(string divCode, string? depCode = null);
    Task<IEnumerable<SubCostLookupDto>>    GetSubCostsAsync(string divCode);
    Task<IEnumerable<DivisionDTO>>       GetDivisionDetailsAsync(string divCode);
    Task<IEnumerable<ActiveDivisionDto>> GetActiveDivisionsAsync();
    Task<IEnumerable<SupplierLookupDto>>     GetSuppliersAsync(string search);
    Task<IEnumerable<VarietyLookupDto>>      GetVarietiesAsync(string search);
    Task<IEnumerable<AreaLookupDto>>         GetAreasAsync(string search);
    Task<IEnumerable<PaymentModeLookupDto>>  GetPaymentModesAsync();
    Task<IEnumerable<CurrencyLookupDto>>     GetCurrenciesAsync();
    Task<IEnumerable<RateUnitLookupDto>>     GetRateUnitsAsync();
    Task<IEnumerable<WeighmentLookupDto>>    GetWeighmentsAsync();
    Task<IEnumerable<AgentLookupDto>>        SearchAgentsAsync(string term);
    Task<IEnumerable<EmployeeRMILookupDto>>  SearchEmployeesAsync(string term);
    Task<IEnumerable<TaxCodeLookupDto>>      GetActiveTaxCodesAsync();
    Task<PagedResult<ItemLookupDto>>         GetItemsPaginatedAsync(string divCode, string? search, string? depCode, int page, int pageSize);
}
