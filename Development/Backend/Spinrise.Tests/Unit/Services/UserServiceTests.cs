using Moq;
using Xunit;
using FluentAssertions;
using Spinrise.Application.Services;
using Spinrise.Application.DTOs.Users;
using Spinrise.Domain.Entities;
using Spinrise.Infrastructure.Data;
using Spinrise.Application.Interfaces;

namespace Spinrise.Tests.Unit.Services;

public class UserServiceTests
{
    private readonly Mock<IUserRepository> _mockUserRepo;
    private readonly Mock<IUnitOfWork> _mockUnitOfWork;
    private readonly Mock<ILogger<UserService>> _mockLogger;
    private readonly UserService _userService;

    public UserServiceTests()
    {
        _mockUserRepo = new Mock<IUserRepository>();
        _mockUnitOfWork = new Mock<IUnitOfWork>();
        _mockLogger = new Mock<ILogger<UserService>>();
        _userService = new UserService(_mockUserRepo.Object, _mockUnitOfWork.Object, _mockLogger.Object);
    }

    #region Create Tests

    [Fact]
    public async Task Create_WithValidUser_ReturnsCreatedUser()
    {
        // Arrange
        var createUserDto = new CreateUserDto { Name = "John Doe", Email = "john@example.com" };
        var userId = 1;

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.InsertAsync(It.IsAny<User>())).ReturnsAsync(userId);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Create(createUserDto);

        // Assert
        result.Should().NotBeNull();
        result.Id.Should().Be(userId);
        result.Name.Should().Be("John Doe");
        result.Email.Should().Be("john@example.com");
        _mockUnitOfWork.Verify(x => x.BeginAsync(It.IsAny<bool>()), Times.Once);
        _mockUserRepo.Verify(x => x.InsertAsync(It.IsAny<User>()), Times.Once);
        _mockUnitOfWork.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Create_WhenExceptionOccurs_RollsBack()
    {
        // Arrange
        var createUserDto = new CreateUserDto { Name = "John Doe", Email = "john@example.com" };

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.InsertAsync(It.IsAny<User>())).ThrowsAsync(new Exception("DB Error"));
        _mockUnitOfWork.Setup(x => x.RollbackAsync()).Returns(Task.CompletedTask);

        // Act & Assert
        await Assert.ThrowsAsync<Exception>(() => _userService.Create(createUserDto));
        _mockUnitOfWork.Verify(x => x.RollbackAsync(), Times.Once);
    }

    #endregion

    #region Get Tests

    [Fact]
    public async Task Get_WithValidId_ReturnsUser()
    {
        // Arrange
        var userId = 1;
        var user = new User { Id = userId, Name = "John Doe", Email = "john@example.com" };

        _mockUnitOfWork.Setup(x => x.BeginAsync(false)).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.GetByIdAsync(userId)).ReturnsAsync(user);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Get(userId);

        // Assert
        result.Should().NotBeNull();
        result?.Id.Should().Be(userId);
        result?.Name.Should().Be("John Doe");
    }

    [Fact]
    public async Task Get_WithInvalidId_ReturnsNull()
    {
        // Arrange
        var invalidId = -1;

        // Act
        var result = await _userService.Get(invalidId);

        // Assert
        result.Should().BeNull();
    }

    [Fact]
    public async Task Get_WithNonExistentId_ReturnsNull()
    {
        // Arrange
        var userId = 999;

        _mockUnitOfWork.Setup(x => x.BeginAsync(false)).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.GetByIdAsync(userId)).ReturnsAsync((User?)null);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Get(userId);

        // Assert
        result.Should().BeNull();
    }

    #endregion

    #region Delete Tests

    [Fact]
    public async Task Delete_WithValidId_DeletesUser()
    {
        // Arrange
        var userId = 1;

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.DeleteAsync(userId)).ReturnsAsync(true);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Delete(userId);

        // Assert
        result.Should().BeTrue();
        _mockUnitOfWork.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Delete_WithInvalidId_ReturnsFalse()
    {
        // Arrange
        var invalidId = -1;

        // Act
        var result = await _userService.Delete(invalidId);

        // Assert
        result.Should().BeFalse();
    }

    [Fact]
    public async Task Delete_WhenExceptionOccurs_RollsBack()
    {
        // Arrange
        var userId = 1;

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.DeleteAsync(userId)).ThrowsAsync(new Exception("DB Error"));
        _mockUnitOfWork.Setup(x => x.RollbackAsync()).Returns(Task.CompletedTask);

        // Act & Assert
        await Assert.ThrowsAsync<Exception>(() => _userService.Delete(userId));
        _mockUnitOfWork.Verify(x => x.RollbackAsync(), Times.Once);
    }

    #endregion

    #region GetAll Tests

    [Fact]
    public async Task GetAll_ReturnsAllUsers()
    {
        // Arrange
        var users = new List<User>
        {
            new User { Id = 1, Name = "John Doe", Email = "john@example.com" },
            new User { Id = 2, Name = "Jane Smith", Email = "jane@example.com" }
        };

        _mockUnitOfWork.Setup(x => x.BeginAsync(false)).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.GetAllAsync()).ReturnsAsync(users);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.GetAll();

        // Assert
        result.Should().HaveCount(2);
        result.First().Name.Should().Be("John Doe");
    }

    [Fact]
    public async Task GetAllPaginated_WithValidParameters_ReturnsPaginatedResults()
    {
        // Arrange
        var pageNumber = 1;
        var pageSize = 10;
        var users = new List<User>
        {
            new User { Id = 1, Name = "John Doe", Email = "john@example.com" }
        };
        var totalCount = 1;

        _mockUnitOfWork.Setup(x => x.BeginAsync(false)).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.GetAllPaginatedAsync(pageNumber, pageSize))
            .ReturnsAsync((users, totalCount));
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var (result, count) = await _userService.GetAllPaginated(pageNumber, pageSize);

        // Assert
        result.Should().HaveCount(1);
        count.Should().Be(1);
    }

    [Fact]
    public async Task GetAllPaginated_WithInvalidPageNumber_ThrowsException()
    {
        // Arrange & Act & Assert
        await Assert.ThrowsAsync<ArgumentException>(() => _userService.GetAllPaginated(-1, 10));
    }

    [Fact]
    public async Task GetAllPaginated_WithInvalidPageSize_ThrowsException()
    {
        // Arrange & Act & Assert
        await Assert.ThrowsAsync<ArgumentException>(() => _userService.GetAllPaginated(1, 0));
    }

    #endregion

    #region Update Tests

    [Fact]
    public async Task Update_WithValidUser_UpdatesUser()
    {
        // Arrange
        var updateUserDto = new UpdateUserDto { Id = 1, Name = "Updated Name", Email = "updated@example.com" };

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.UpdateAsync(It.IsAny<User>())).ReturnsAsync(true);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Update(updateUserDto);

        // Assert
        result.Should().NotBeNull();
        _mockUnitOfWork.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Update_WhenUserNotFound_ReturnsNull()
    {
        // Arrange
        var updateUserDto = new UpdateUserDto { Id = 999, Name = "Updated Name", Email = "updated@example.com" };

        _mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _mockUserRepo.Setup(x => x.UpdateAsync(It.IsAny<User>())).ReturnsAsync(false);
        _mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);

        // Act
        var result = await _userService.Update(updateUserDto);

        // Assert
        result.Should().BeNull();
    }

    #endregion
}
