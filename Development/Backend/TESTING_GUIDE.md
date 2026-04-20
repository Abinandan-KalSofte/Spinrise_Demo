# Spinrise Backend - Testing Guide

This guide covers unit testing, integration testing, and best practices for the Spinrise backend.

## Project Structure

```
Spinrise.Tests/
├── Unit/
│   ├── Services/
│   │   └── UserServiceTests.cs
│   ├── Repositories/
│   └── Controllers/
├── Integration/
│   ├── TestInfrastructure/
│   └── Services/
└── GlobalUsings.cs
```

## Unit Testing

### Overview

Unit tests verify individual components in isolation using mocks.

**Framework**: xUnit  
**Mocking**: Moq  
**Assertions**: FluentAssertions  

### Running Tests

```bash
# Run all tests
dotnet test

# Run specific test class
dotnet test --filter "FullyQualifiedName~UserServiceTests"

# Run with code coverage
dotnet test /p:CollectCoverage=true /p:CoverageFormat=opencover

# Run only unit tests
dotnet test Spinrise.Tests/Unit
```

### Writing Unit Tests

#### Test Structure (AAA Pattern)

```csharp
[Fact]
public async Task MethodName_Scenario_ExpectedResult()
{
    // Arrange - Set up test data and mocks
    var mockRepo = new Mock<IUserRepository>();
    mockRepo.Setup(x => x.GetByIdAsync(1)).ReturnsAsync(new User { Id = 1 });

    // Act - Execute the method
    var result = await userService.Get(1);

    // Assert - Verify the result
    result.Should().NotBeNull();
    result?.Id.Should().Be(1);
}
```

#### Naming Convention

`MethodName_Scenario_ExpectedResult`

Examples:
- `Create_WithValidUser_ReturnsCreatedUser`
- `Get_WithInvalidId_ReturnsNull`
- `Delete_WhenExceptionOccurs_RollsBack`

### UserServiceTests Examples

#### Testing Success Cases

```csharp
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
}
```

#### Testing Exception Handling

```csharp
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
```

#### Testing Edge Cases

```csharp
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
public async Task GetAllPaginated_WithInvalidPageNumber_ThrowsException()
{
    // Act & Assert
    await Assert.ThrowsAsync<ArgumentException>(() => 
        _userService.GetAllPaginated(-1, 10));
}
```

### Mock Setup Patterns

#### Mocking Method Calls

```csharp
// Any parameter
mock.Setup(x => x.Method(It.IsAny<int>())).Returns(value);

// Specific value
mock.Setup(x => x.Method(5)).Returns(value);

// In range
mock.Setup(x => x.Method(It.IsInRange(1, 10, Range.Inclusive))).Returns(value);

// Async returns
mock.Setup(x => x.AsyncMethod(It.IsAny<int>())).ReturnsAsync(value);

// Throws exception
mock.Setup(x => x.Method(It.IsAny<int>())).Throws(new Exception());

// Callback
mock.Setup(x => x.Method(It.IsAny<int>())).Callback<int>(id => {
    // Execute code
});
```

#### Verifying Mock Calls

```csharp
// Verify called once
mock.Verify(x => x.Method(It.IsAny<int>()), Times.Once);

// Verify called N times
mock.Verify(x => x.Method(It.IsAny<int>()), Times.Exactly(3));

// Verify never called
mock.Verify(x => x.Method(It.IsAny<int>()), Times.Never);

// Verify with exact parameters
mock.Verify(x => x.Method(5), Times.Once);
```

## Integration Testing

### Overview

Integration tests verify multiple components working together, often with a test database.

**Note**: Currently placeholder structure. Implement integration tests based on your needs.

### Test Database Setup

```csharp
public class TestInfrastructure
{
    private const string TestConnectionString = "Server=(localdb)\\mssqllocaldb;Database=SpinriseTest;Integrated Security=true;";

    public static IDbConnection CreateTestConnection()
    {
        return new SqlConnection(TestConnectionString);
    }

    public static void ResetDatabase()
    {
        using var connection = CreateTestConnection();
        // Drop and recreate tables
        // Run migrations
    }
}
```

### Example Integration Test

```csharp
[Collection("Database collection")]
public class UserRepositoryIntegrationTests : IAsyncLifetime
{
    private readonly IDbConnection _connection;

    public async Task InitializeAsync()
    {
        _connection = TestInfrastructure.CreateTestConnection();
        await TestInfrastructure.ResetDatabase();
    }

    public async Task DisposeAsync()
    {
        _connection?.Dispose();
    }

    [Fact]
    public async Task InsertAsync_WithValidUser_PersistsToDatabase()
    {
        // Arrange
        var user = new User { Name = "John Doe", Email = "john@example.com" };
        var repo = new UserRepository(_unitOfWork);

        // Act
        var userId = await repo.InsertAsync(user);

        // Assert
        var persisted = await repo.GetByIdAsync(userId);
        persisted.Should().NotBeNull();
        persisted?.Name.Should().Be("John Doe");
    }
}
```

## Code Coverage

### Running with Coverage

```bash
dotnet test /p:CollectCoverage=true /p:CoverageFormat=opencover /p:Exclude=\"[xunit*]*\"
```

### Coverage Goals

- **Minimum**: 60% overall
- **Target**: 80% for critical paths
- **Services**: 90%+ (business logic)
- **Controllers**: 70%+ (basic validation)
- **Utilities**: 50%+ (helpers)

### Coverage Report

The coverage report is generated in the `coverage/` directory after running tests with coverage flags.

## Test Categories

### Unit Tests

**Location**: `Spinrise.Tests/Unit/`

**Types**:
- Service logic
- Repository layer (with mocks)
- DTO mappings
- Validation logic

**Isolation**: Uses Moq for all dependencies

### Integration Tests

**Location**: `Spinrise.Tests/Integration/`

**Types**:
- End-to-end API flows
- Database operations
- External service calls

**Isolation**: Uses test database

## Best Practices

### 1. Use Descriptive Test Names

✅ Good:
```csharp
public async Task Create_WithValidUser_ReturnsUserWithGeneratedId()
```

❌ Bad:
```csharp
public async Task CreateTest()
```

### 2. One Assertion Per Test (or Related Assertions)

✅ Good:
```csharp
result.Should().NotBeNull();
result.Id.Should().Be(expectedId);
result.Name.Should().Be("John");
```

❌ Bad (Multiple unrelated assertions):
```csharp
var result = await userService.Create(dto);
var user = await userService.Get(result.Id);
await userService.Delete(user.Id);
Assert.True(someCondition);
```

### 3. Use Fluent Assertions

```csharp
// Use FluentAssertions
result.Should().NotBeNull().And.HaveCount(5);
result.Should().BeOfType<UserResponseDto>();
result.Name.Should().Be("John").And.HaveLength(4);

// Not Assert
Assert.NotNull(result);
Assert.Equal(5, result.Count);
```

### 4. Keep Tests DRY with Fixtures

```csharp
public class UserServiceTests
{
    private readonly UserServiceFixture _fixture;

    public UserServiceTests()
    {
        _fixture = new UserServiceFixture();
    }

    [Fact]
    public async Task Create_Test()
    {
        var dto = _fixture.CreateValidUserDto();
        // ...
    }
}

public class UserServiceFixture
{
    public CreateUserDto CreateValidUserDto() =>
        new CreateUserDto { Name = "Test", Email = "test@example.com" };
}
```

### 5. Isolate External Dependencies

```csharp
_mockUnitOfWork.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
_mockUnitOfWork.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);
_mockUnitOfWork.Setup(x => x.RollbackAsync()).Returns(Task.CompletedTask);
```

## Common Testing Scenarios

### Testing Logging

```csharp
var mockLogger = new Mock<ILogger<UserService>>();

// ...use service with mockLogger...

// Verify logging occurred
mockLogger.Verify(
    x => x.Log(
        LogLevel.Information,
        It.IsAny<EventId>(),
        It.Is<It.IsAnyType>((v, t) => v.ToString().Contains("created")),
        It.IsAny<Exception>(),
        It.IsAny<Func<It.IsAnyType, Exception, string>>()),
    Times.Once);
```

### Testing Pagination

```csharp
[Theory]
[InlineData(1, 10)]
[InlineData(2, 10)]
[InlineData(1, 20)]
public async Task GetAllPaginated_WithVariousPageSizes_ReturnsCorrectPage(int page, int size)
{
    // Arrange
    var mockUsers = Enumerable.Range(1, 100).Select(i => 
        new User { Id = i, Name = $"User{i}", Email = $"user{i}@example.com" }
    ).ToList();

    _mockUserRepo.Setup(x => x.GetAllPaginatedAsync(page, size))
        .ReturnsAsync((mockUsers.Skip((page - 1) * size).Take(size), 100));

    // Act
    var (results, total) = await _userService.GetAllPaginated(page, size);

    // Assert
    results.Should().HaveCount(Math.Min(size, 100 - (page - 1) * size));
    total.Should().Be(100);
}
```

## Troubleshooting Tests

### Test Hangs

- Check for missing `.Returns()` on mocks
- Verify `async/await` is used correctly
- Check for deadlocks in transaction handling

### Flaky Tests

- Don't use `DateTime.Now` in tests, use injected `ISystemClock`
- Use consistent test data
- Avoid test order dependencies

### Mock Verification Fails

- Double-check parameter matching with `It.IsAny<T>()`
- Verify method was actually called
- Check mock setup matches actual call

## Running Tests in CI/CD

```yaml
# Example GitHub Actions workflow
- name: Run Tests
  run: dotnet test --logger "trx;LogFileName=test-results.trx" --collect:"XPlat Code Coverage"

- name: Upload Coverage
  uses: codecov/codecov-action@v3
  with:
    files: ./coverage/coverage.xml
```

---

**Last Updated**: April 3, 2026  
**Related Files**: `Spinrise.Tests.csproj`, `Unit/Services/UserServiceTests.cs`
