using Spinrise.Application.Areas.Administration.Department.DTOs;

namespace Spinrise.Application.Areas.Administration.Department.Interfaces;

public interface IDepartmentService
{
    Task<IEnumerable<DepartmentResponseDto>> GetByDivisionAsync();
}
