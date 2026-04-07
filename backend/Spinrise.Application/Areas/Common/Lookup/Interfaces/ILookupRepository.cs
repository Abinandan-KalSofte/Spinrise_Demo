using Spinrise.Application.Areas.Common.Lookup.DTOs;

namespace Spinrise.Application.Areas.Common.Lookup.Interfaces;

public interface ILookupRepository
{
    Task<IEnumerable<DepartmentLookupDto>> GetDepartmentsAsync(string divCode);
    Task<IEnumerable<EmployeeLookupDto>>   GetEmployeesAsync(string divCode);
    Task<IEnumerable<POTypeLookupDto>>     GetPOTypesAsync();
    Task<IEnumerable<ItemLookupDto>>       GetItemsAsync( string searchTerm);
    Task<IEnumerable<MachineLookupDto>>    GetMachinesAsync(string divCode);
    Task<IEnumerable<SubCostLookupDto>>    GetSubCostsAsync(string divCode);
}
