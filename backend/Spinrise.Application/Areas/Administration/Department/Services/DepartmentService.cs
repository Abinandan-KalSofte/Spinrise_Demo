using Microsoft.Extensions.Logging;
using Spinrise.Application.Areas.Administration.Department.DTOs;
using Spinrise.Application.Areas.Administration.Department.Interfaces;

namespace Spinrise.Application.Areas.Administration.Department.Services;

public class DepartmentService : IDepartmentService
{
    private readonly IDepartmentRepository _repo;
    private readonly IUnitOfWork _uow;
    private readonly ILogger<DepartmentService> _logger;

    public DepartmentService(IDepartmentRepository repo, IUnitOfWork uow, ILogger<DepartmentService> logger)
    {
        _repo = repo;
        _uow = uow;
        _logger = logger;
    }

    public async Task<IEnumerable<DepartmentResponseDto>> GetByDivisionAsync()
    {
        await _uow.BeginAsync();

        try
        {
            var data = await _repo.GetByDivisionAsync();
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get departments ");
            await _uow.RollbackAsync();
            throw;
        }
    }
}
