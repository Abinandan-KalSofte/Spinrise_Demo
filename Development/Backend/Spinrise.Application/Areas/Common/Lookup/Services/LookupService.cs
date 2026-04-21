using Microsoft.Extensions.Logging;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.Areas.Common.Lookup.Interfaces;

namespace Spinrise.Application.Areas.Common.Lookup.Services;

public class LookupService : ILookupService
{
    private readonly ILookupRepository       _repo;
    private readonly IUnitOfWork             _uow;
    private readonly ILogger<LookupService>  _logger;

    public LookupService(ILookupRepository repo, IUnitOfWork uow, ILogger<LookupService> logger)
    {
        _repo   = repo;
        _uow    = uow;
        _logger = logger;
    }

    public async Task<IEnumerable<DepartmentLookupDto>> GetDepartmentsAsync(string divCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetDepartmentsAsync(divCode);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get departments lookup for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<EmployeeLookupDto>> GetEmployeesAsync(string divCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetEmployeesAsync(divCode);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get employees lookup for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<POTypeLookupDto>> GetPOTypesAsync()
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetPOTypesAsync();
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get PO types lookup for division ");
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<ItemLookupDto>> GetItemsAsync(string divCode, string searchTerm, string? depCode, string? itemGroup)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetItemsAsync(divCode, searchTerm, depCode, itemGroup);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get items lookup for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<MachineLookupDto>> GetMachinesAsync(string divCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetMachinesAsync(divCode);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get machines lookup for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<SubCostLookupDto>> GetSubCostsAsync(string divCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetSubCostsAsync(divCode);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get sub-costs lookup for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<DivisionDTO>> GetDivisionDetailsAsync(string divCode)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetDivisionDetailsAsync(divCode);
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get Division Details for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

}
