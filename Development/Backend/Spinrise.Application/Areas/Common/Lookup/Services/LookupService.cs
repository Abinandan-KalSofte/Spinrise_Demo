using Microsoft.Extensions.Logging;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Application.Areas.Common.Lookup.Interfaces;
using Spinrise.Application.DTOs;

namespace Spinrise.Application.Areas.Common.Lookup.Services;

public class LookupService : ILookupService
{
    private readonly ILookupRepository       _repo;
    private readonly IUnitOfWork             _uow;
    private readonly IJATUnitOfWork          _jatUow;
    private readonly ILogger<LookupService>  _logger;

    public LookupService(ILookupRepository repo, IUnitOfWork uow, IJATUnitOfWork jatUow, ILogger<LookupService> logger)
    {
        _repo    = repo;
        _uow     = uow;
        _jatUow  = jatUow;
        _logger  = logger;
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

    public async Task<IEnumerable<MachineLookupDto>> GetMachinesAsync(string divCode, string? depCode = null)
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetMachinesAsync(divCode, depCode);
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

    public async Task<IEnumerable<ActiveDivisionDto>> GetActiveDivisionsAsync()
    {
        await _uow.BeginAsync();
        try
        {
            var data = await _repo.GetActiveDivisionsAsync();
            await _uow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get active divisions list");
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<SupplierLookupDto>> GetSuppliersAsync(string search)
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetSuppliersAsync(search);
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get suppliers lookup for search '{Search}'", search);
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<VarietyLookupDto>> GetVarietiesAsync(string search)
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetVarietiesAsync(search);
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get varieties lookup for search '{Search}'", search);
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<AreaLookupDto>> GetAreasAsync(string search)
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetAreasAsync(search);
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get areas lookup for search '{Search}'", search);
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<PaymentModeLookupDto>> GetPaymentModesAsync()
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetPaymentModesAsync();
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get payment modes lookup");
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<CurrencyLookupDto>> GetCurrenciesAsync()
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetCurrenciesAsync();
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get currencies lookup");
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<RateUnitLookupDto>> GetRateUnitsAsync()
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetRateUnitsAsync();
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get rate units lookup");
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<WeighmentLookupDto>> GetWeighmentsAsync()
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetWeighmentsAsync();
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get weighments lookup");
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<AgentLookupDto>> SearchAgentsAsync(string term)
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.SearchAgentsAsync(term);
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to search agents lookup for term '{Term}'", term);
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<EmployeeRMILookupDto>> SearchEmployeesAsync(string term)
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.SearchEmployeesAsync(term);
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to search employees lookup for term '{Term}'", term);
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<IEnumerable<TaxCodeLookupDto>> GetActiveTaxCodesAsync()
    {
        await _jatUow.BeginAsync();
        try
        {
            var data = await _repo.GetActiveTaxCodesAsync();
            await _jatUow.CommitAsync();
            return data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get active tax codes lookup");
            await _jatUow.RollbackAsync();
            throw;
        }
    }

    public async Task<PagedResult<ItemLookupDto>> GetItemsPaginatedAsync(
        string divCode, string? search, string? depCode, int page, int pageSize)
    {
        await _uow.BeginAsync();
        try
        {
            var result = await _repo.GetItemsPaginatedAsync(divCode, search, depCode, page, pageSize);
            await _uow.CommitAsync();
            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get paginated items for division {DivCode}", divCode);
            await _uow.RollbackAsync();
            throw;
        }
    }

}
