using Spinrise.Application.Areas.Common.Lookup.DTOs;

namespace Spinrise.Application.Areas.Common.Lookup.Interfaces;

public interface ILookupService
{
    Task<IEnumerable<DepartmentLookupDto>> GetDepartmentsAsync(string divCode);
    Task<IEnumerable<EmployeeLookupDto>>   GetEmployeesAsync(string divCode);
    Task<IEnumerable<POTypeLookupDto>>     GetPOTypesAsync();
    Task<IEnumerable<ItemLookupDto>>       GetItemsAsync(string divCode, string searchTerm, string? depCode, string? itemGroup);
    Task<IEnumerable<MachineLookupDto>>    GetMachinesAsync(string divCode);
    Task<IEnumerable<SubCostLookupDto>>    GetSubCostsAsync(string divCode);
}
