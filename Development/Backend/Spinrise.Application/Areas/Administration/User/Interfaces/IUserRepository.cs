namespace Spinrise.Application.Interfaces;

public interface IUserRepository
{
    Task<IEnumerable<User>> GetAllAsync();
    Task<User?> GetByIdAsync(int id);
    Task<int> InsertAsync(User user);
    Task<bool> UpdateAsync(User user);
    Task<bool> DeleteAsync(int id);
    Task<(IEnumerable<User> Items, int TotalCount)> GetAllPaginatedAsync(int pageNumber, int pageSize);
}
