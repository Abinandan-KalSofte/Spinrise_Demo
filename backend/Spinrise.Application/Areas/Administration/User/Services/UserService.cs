using Microsoft.Extensions.Logging;

namespace Spinrise.Application.Services;

public class UserService : IUserService
{
    private readonly IUserRepository _repo;
    private readonly IUnitOfWork _uow;
    private readonly ILogger<UserService> _logger;

    public UserService(IUserRepository repo, IUnitOfWork uow, ILogger<UserService> logger)
    {
        _repo = repo;
        _uow = uow;
        _logger = logger;
    }

    public async Task<IEnumerable<UserResponseDto>> GetAll()
    {
        await _uow.BeginAsync();

        try
        {
            var data = await _repo.GetAllAsync();
            await _uow.CommitAsync();
            return data.Select(x => x.ToResponseDto()).ToList();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get all users");
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<UserResponseDto?> Get(int id)
    {
        if (id <= 0)
        {
            return null;
        }

        await _uow.BeginAsync();

        try
        {
            var data = await _repo.GetByIdAsync(id);
            await _uow.CommitAsync();
            return data?.ToResponseDto();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to get user with id: {Id}", id);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<UserResponseDto> Create(CreateUserDto user)
    {
        _logger.LogInformation("Creating user with email: {Email}", user.Email);

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var entity = user.ToEntity();
            var id = await _repo.InsertAsync(entity);
            await _uow.CommitAsync();

            _logger.LogInformation("User created successfully with ID: {UserId}", id);

            return new UserResponseDto
            {
                Id = id,
                Name = entity.Name,
                Email = entity.Email
            };
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to create user with email: {Email}", user.Email);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<UserResponseDto?> Update(UpdateUserDto user)
    {
        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var entity = user.ToEntity();
            var result = await _repo.UpdateAsync(entity);
            await _uow.CommitAsync();
            if (!result)
            {
                return null;
            }

            return entity.ToResponseDto();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to update user with id: {UserId}", user.Id);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<bool> Delete(int id)
    {
        if (id <= 0)
        {
            return false;
        }

        await _uow.BeginAsync(startTransaction: true);

        try
        {
            var result = await _repo.DeleteAsync(id);
            await _uow.CommitAsync();
            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to delete user with id: {Id}", id);
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<(IEnumerable<UserResponseDto> Items, int TotalCount)> GetAllPaginated(int pageNumber = 1, int pageSize = 10)
    {
        if (pageNumber < 1 || pageSize < 1)
            throw new ArgumentException("Page number and page size must be greater than 0.");

        _logger.LogInformation("Fetching paginated users: PageNumber={PageNumber}, PageSize={PageSize}", pageNumber, pageSize);

        await _uow.BeginAsync();

        try
        {
            var (users, totalCount) = await _repo.GetAllPaginatedAsync(pageNumber, pageSize);
            await _uow.CommitAsync();

            _logger.LogInformation("Retrieved {Count} users from page {PageNumber}", users.Count(), pageNumber);

            return (users.Select(x => x.ToResponseDto()).ToList(), totalCount);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to fetch paginated users");
            await _uow.RollbackAsync();
            throw;
        }
    }
}
