namespace Spinrise.Application.Interfaces;

public interface IUserService
{
    Task<IEnumerable<UserResponseDto>> GetAll();
    Task<UserResponseDto?> Get(int id);
    Task<UserResponseDto> Create(CreateUserDto user);
    Task<UserResponseDto?> Update(UpdateUserDto user);
    Task<bool> Delete(int id);
    Task<(IEnumerable<UserResponseDto> Items, int TotalCount)> GetAllPaginated(int pageNumber = 1, int pageSize = 10);
}
