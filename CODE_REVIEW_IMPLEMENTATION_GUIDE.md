# Spinrise Project - Code Review Implementation Guide

**Date**: April 3, 2026  
**Purpose**: AI Agent Reference for Implementing Code Review Recommendations  
**Scope**: Backend (ASP.NET Core 8) & Frontend (React + TypeScript)

---

## Executive Summary

This guide provides step-by-step instructions for implementing the code review recommendations. An AI agent should follow this document to systematically address all issues and improve code quality, security, and maintainability.

**Total Estimated Effort**: 25-30 hours  
**Priority Tiers**: CRITICAL → HIGH → MEDIUM → LOW

---

## 🔴 TIER 1: CRITICAL (Fix Immediately)

### 1.1 Remove Duplicate Program Classes

**File**: `backend/Spinrise.API/Program.cs`  
**Lines**: 164-174  
**Issue**: Three empty partial Program class declarations with no purpose

**Current Code**:
```csharp
app.Run();

public partial class Program
{
}

public partial class Program
{
}

public partial class Program
{
}
```

**Action**: Delete lines 164-174 entirely.

**After**:
```csharp
app.Run();
```

---

### 1.2 Fix Null-Coalescing in Repository

**File**: `backend/Spinrise.Infrastructure/Areas/Administration/User/UserRepository.cs`  
**Issue**: Using null-forgiving operator `!` instead of proper null handling

**Current Code** (Lines 16-20):
```csharp
public async Task<IEnumerable<User>> GetAllAsync()
{
    return await _uow.Connection!
        .QueryAsync<User>(
```

**Action**: Replace all `_uow.Connection!` with proper null coalescing.

**After**:
```csharp
public async Task<IEnumerable<User>> GetAllAsync()
{
    var connection = _uow.Connection ?? throw new InvalidOperationException("Database connection is not initialized.");
    return await connection
        .QueryAsync<User>(
```

**Affected Methods**: GetAllAsync, GetByIdAsync, InsertAsync, UpdateAsync, DeleteAsync (5 methods total)

---

### 1.3 Add Required Data Annotations to DTOs

**Files to Update**:
- `backend/Spinrise.Application/Areas/Administration/User/DTOs/CreateUserDto.cs`
- `backend/Spinrise.Application/Areas/Administration/User/DTOs/UpdateUserDto.cs`

**Example - CreateUserDto**:

**Current**:
```csharp
public class CreateUserDto
{
    public string Name { get; set; }
    public string Email { get; set; }
}
```

**After**:
```csharp
using System.ComponentModel.DataAnnotations;

public class CreateUserDto
{
    [Required(ErrorMessage = "Name is required")]
    [StringLength(100, MinimumLength = 2, ErrorMessage = "Name must be between 2 and 100 characters")]
    public string Name { get; set; } = string.Empty;

    [Required(ErrorMessage = "Email is required")]
    [EmailAddress(ErrorMessage = "Invalid email format")]
    [StringLength(255)]
    public string Email { get; set; } = string.Empty;
}
```

**Apply Same Pattern To**:
- UpdateUserDto
- UpdatePRHeaderDto
- CreatePRHeaderDto
- CreatePRLineDto
- UpdatePRLineDto

---

---

## 🟠 TIER 2: HIGH PRIORITY (Complete Within 1 Week)

### 2.1 Add Role-Based Authorization

**File**: `backend/Spinrise.API/Areas/Administration/Controllers/UserController.cs`

**Current**:
```csharp
[Area("Administration")]
[Route("api/v1/users")]
public class UserController : BaseApiController
{
    [HttpDelete("{id:int}")]
    public async Task<IActionResult> Delete(int id)
```

**Action**: Add `[Authorize(Roles = "Admin")]` to delete and update operations.

**After**:
```csharp
[Area("Administration")]
[Route("api/v1/users")]
[Authorize]
public class UserController : BaseApiController
{
    [HttpGet]
    public async Task<IActionResult> GetAll()
        => Success(await _service.GetAll(), "Users retrieved successfully.");

    [HttpGet("{id:int}")]
    public async Task<IActionResult> Get(int id)
        => /* existing logic */;

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Create([FromBody] CreateUserDto user)
        => /* existing logic */;

    [HttpPut]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Update([FromBody] UpdateUserDto user)
        => /* existing logic */;

    [HttpDelete("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Delete(int id)
        => /* existing logic */;
}
```

**Apply To**: UserController, PurchaseRequisitionController (all update/delete actions)

---

### 2.2 Implement Pagination in Repository

**File**: `backend/Spinrise.Infrastructure/Areas/Administration/User/UserRepository.cs`

**New Method to Add**:
```csharp
public async Task<(IEnumerable<User> Items, int TotalCount)> GetAllPaginatedAsync(int pageNumber, int pageSize)
{
    var connection = _uow.Connection ?? throw new InvalidOperationException("Database connection is not initialized.");
    
    var items = await connection.QueryAsync<User>(
        "usp_User_GetAllPaginated",
        new { PageNumber = pageNumber, PageSize = pageSize },
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);

    var totalCount = await connection.ExecuteScalarAsync<int>(
        "usp_User_GetCount",
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);

    return (items, totalCount);
}
```

**Update IUserRepository Interface**:
```csharp
Task<(IEnumerable<User> Items, int TotalCount)> GetAllPaginatedAsync(int pageNumber, int pageSize);
```

**Update UserService**:
```csharp
public async Task<(IEnumerable<UserResponseDto>, int TotalCount)> GetAllPaginated(int pageNumber = 1, int pageSize = 10)
{
    if (pageNumber < 1 || pageSize < 1)
        throw new ArgumentException("Page number and page size must be greater than 0.");

    await _uow.BeginAsync();
    try
    {
        var (users, totalCount) = await _repo.GetAllPaginatedAsync(pageNumber, pageSize);
        await _uow.CommitAsync();
        return (users.Select(x => x.ToResponseDto()).ToList(), totalCount);
    }
    catch
    {
        await _uow.RollbackAsync();
        throw;
    }
}
```

**Update UserController**:
```csharp
[HttpGet("paginated")]
[ProducesResponseType(typeof(ApiResponse<object>), StatusCodes.Status200OK)]
public async Task<IActionResult> GetAllPaginated([FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 10)
{
    if (pageNumber < 1 || pageSize < 1)
        return Failure("Page number and page size must be greater than 0.", StatusCodes.Status400BadRequest);

    var (users, totalCount) = await _service.GetAllPaginated(pageNumber, pageSize);
    return Success(new { Items = users, TotalCount = totalCount, PageNumber = pageNumber, PageSize = pageSize });
}
```

**Database Script Required**: `backend/Spinrise.DBScripts/02 Stored Procedures/usp_User_GetAllPaginated.sql`

```sql
CREATE OR ALTER PROCEDURE usp_User_GetAllPaginated
    @PageNumber INT,
    @PageSize INT
AS
BEGIN
    SELECT *
    FROM users
    ORDER BY Id
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY
END
```

---

### 2.3 Create Constants File for Magic Strings

**File**: `backend/Spinrise.Shared/Constants.cs` (Create new)

```csharp
namespace Spinrise.Shared;

public static class ApiRoutes
{
    public const string ApiVersionPrefix = "api/v1";
    
    public static class Users
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/users";
        public const string GetAll = BaseRoute;
        public const string GetById = $"{BaseRoute}/{{id:int}}";
        public const string Create = BaseRoute;
        public const string Update = BaseRoute;
        public const string Delete = $"{BaseRoute}/{{id:int}}";
        public const string GetPaginated = $"{BaseRoute}/paginated";
    }

    public static class PurchaseRequisitions
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/purchase-requisitions";
        public const string GetAll = BaseRoute;
        public const string GetById = $"{BaseRoute}/{{id:int}}";
        public const string Create = BaseRoute;
        public const string Update = BaseRoute;
        public const string Delete = $"{BaseRoute}/{{id:int}}";
    }
}

public static class StoredProcedures
{
    public static class User
    {
        public const string GetAll = "usp_User_GetAll";
        public const string GetById = "usp_User_GetById";
        public const string Insert = "usp_User_Insert";
        public const string Update = "usp_User_Update";
        public const string Delete = "usp_User_Delete";
        public const string GetAllPaginated = "usp_User_GetAllPaginated";
        public const string GetCount = "usp_User_GetCount";
    }

    public static class PurchaseRequisition
    {
        public const string GetAll = "usp_PR_GetAll";
        public const string GetById = "usp_PR_GetById";
        public const string Insert = "usp_PR_Insert";
        public const string Update = "usp_PR_Update";
        public const string Delete = "usp_PR_Delete";
        public const string DeleteLine = "usp_PR_DeleteLine";
    }
}

public static class ErrorMessages
{
    public const string InvalidId = "A valid id is required.";
    public const string NotFound = "The requested resource was not found.";
    public const string CreatedSuccessfully = "{0} created successfully.";
    public const string UpdatedSuccessfully = "{0} updated successfully.";
    public const string DeletedSuccessfully = "{0} deleted successfully.";
    public const string ValidationFailed = "Validation failed.";
    public const string UnexpectedError = "An unexpected error occurred.";
}

public static class UserRoles
{
    public const string Admin = "Admin";
    public const string Manager = "Manager";
    public const string User = "User";
}
```

**Update UserRepository to Use Constants**:
```csharp
public async Task<IEnumerable<User>> GetAllAsync()
{
    var connection = _uow.Connection ?? throw new InvalidOperationException("Database connection is not initialized.");
    return await connection.QueryAsync<User>(
        StoredProcedures.User.GetAll,  // Instead of "usp_User_GetAll"
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);
}
```

**Update Controllers to Use Constants**:
```csharp
[Route(ApiRoutes.Users.BaseRoute)]
public class UserController : BaseApiController
{
    [HttpDelete("{id:int}")]
    [Authorize(Roles = UserRoles.Admin)]
    public async Task<IActionResult> Delete(int id)
    {
        if (id <= 0)
            return Failure(ErrorMessages.InvalidId, StatusCodes.Status400BadRequest);
        // ...
    }
}
```

---

### 2.4 Add Comprehensive Logging

**File**: `backend/Spinrise.API/Middleware/ExceptionHandlingMiddleware.cs`

**Update to Include Correlation ID**:
```csharp
using System.Net;
using System.Text.Json;
using Spinrise.API.Models;

namespace Spinrise.API.Middleware;

public class ExceptionHandlingMiddleware
{
    private static readonly JsonSerializerOptions SerializerOptions = new(JsonSerializerDefaults.Web);
    private readonly RequestDelegate _next;
    private readonly ILogger<ExceptionHandlingMiddleware> _logger;
    private readonly IHostEnvironment _environment;

    public ExceptionHandlingMiddleware(
        RequestDelegate next,
        ILogger<ExceptionHandlingMiddleware> logger,
        IHostEnvironment environment)
    {
        _next = next;
        _logger = logger;
        _environment = environment;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        var correlationId = Guid.NewGuid().ToString();
        context.Items["CorrelationId"] = correlationId;
        context.Response.Headers.Add("X-Correlation-ID", correlationId);

        try
        {
            await _next(context);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, 
                "Unhandled exception [CorrelationID: {CorrelationId}] while processing {Method} {Path}", 
                correlationId, 
                context.Request.Method, 
                context.Request.Path);
            
            await WriteErrorResponseAsync(context, ex, correlationId);
        }
    }

    private async Task WriteErrorResponseAsync(HttpContext context, Exception exception, string correlationId)
    {
        if (context.Response.HasStarted)
        {
            _logger.LogWarning("The response has already started, skipping exception response writing.");
            throw exception;
        }

        context.Response.Clear();
        context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
        context.Response.ContentType = "application/json";

        var response = new ApiResponse
        {
            Success = false,
            Message = "An unexpected error occurred.",
            Errors = _environment.IsDevelopment()
                ? new
                {
                    exception.Message,
                    Detail = exception.InnerException?.Message,
                    CorrelationId = correlationId
                }
                : new { CorrelationId = correlationId }
        };

        await context.Response.WriteAsJsonAsync(response, SerializerOptions);
    }
}
```

**Add Logging to Services** (UserService Example):
```csharp
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
}
```

---

### 2.5 Add Rate Limiting Middleware

**File**: `backend/Spinrise.API/Middleware/RateLimitingMiddleware.cs` (Create new)

```csharp
using System.Collections.Concurrent;

namespace Spinrise.API.Middleware;

public class RateLimitingMiddleware
{
    private readonly RequestDelegate _next;
    private readonly ILogger<RateLimitingMiddleware> _logger;
    private static readonly ConcurrentDictionary<string, (int Count, DateTime ResetTime)> RequestCounts = new();

    private const int MaxRequestsPerMinute = 100;
    private const int WindowSizeInSeconds = 60;

    public RateLimitingMiddleware(RequestDelegate next, ILogger<RateLimitingMiddleware> logger)
    {
        _next = next;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        var clientId = GetClientId(context);
        var now = DateTime.UtcNow;

        if (!RequestCounts.TryGetValue(clientId, out var request))
        {
            RequestCounts.TryAdd(clientId, (1, now.AddSeconds(WindowSizeInSeconds)));
            await _next(context);
            return;
        }

        if (now > request.ResetTime)
        {
            RequestCounts.TryUpdate(clientId, (1, now.AddSeconds(WindowSizeInSeconds)), request);
            await _next(context);
            return;
        }

        if (request.Count >= MaxRequestsPerMinute)
        {
            _logger.LogWarning("Rate limit exceeded for client: {ClientId}", clientId);
            context.Response.StatusCode = StatusCodes.Status429TooManyRequests;
            context.Response.ContentType = "application/json";
            await context.Response.WriteAsJsonAsync(new { message = "Rate limit exceeded. Maximum 100 requests per minute." });
            return;
        }

        RequestCounts.TryUpdate(clientId, (request.Count + 1, request.ResetTime), request);
        await _next(context);
    }

    private static string GetClientId(HttpContext context)
    {
        return context.User?.FindFirst("sub")?.Value 
            ?? context.Connection.RemoteIpAddress?.ToString() 
            ?? "unknown";
    }
}
```

**Register in Program.cs** (after line 142 `app.UseMiddleware<ExceptionHandlingMiddleware>();`):
```csharp
app.UseMiddleware<ExceptionHandlingMiddleware>();
app.UseMiddleware<RateLimitingMiddleware>();
```

---

---

## 🟡 TIER 3: MEDIUM PRIORITY (Complete Within 2 Weeks)

### 3.1 Refactor Repetitive Transaction Handling

**Current Problem**: Every service method has 15+ lines of boilerplate transaction code.

**Solution**: Create a decorator/transaction wrapper attribute.

**File**: `backend/Spinrise.Application/Attributes/TransactionAttribute.cs` (Create new)

```csharp
using Microsoft.AspNetCore.Mvc.Filters;

namespace Spinrise.Application.Attributes;

[AttributeUsage(AttributeTargets.Method)]
public class TransactionAttribute : Attribute
{
    public bool UseTransaction { get; set; } = true;
}
```

**Better Approach - Create Extension Method**:

**File**: `backend/Spinrise.Application/Extensions/UnitOfWorkExtensions.cs` (Create new)

```csharp
using Spinrise.Infrastructure.Data;

namespace Spinrise.Application.Extensions;

public static class UnitOfWorkExtensions
{
    public delegate Task<T> TransactionalOperation<T>();

    public static async Task<T> ExecuteTransactionalAsync<T>(
        this IUnitOfWork unitOfWork,
        TransactionalOperation<T> operation,
        bool useTransaction = true)
    {
        await unitOfWork.BeginAsync(startTransaction: useTransaction);
        try
        {
            var result = await operation();
            await unitOfWork.CommitAsync();
            return result;
        }
        catch
        {
            await unitOfWork.RollbackAsync();
            throw;
        }
    }
}
```

**Refactored UserService**:
```csharp
public async Task<UserResponseDto> Create(CreateUserDto user)
{
    var result = await _uow.ExecuteTransactionalAsync(async () =>
    {
        var entity = user.ToEntity();
        var id = await _repo.InsertAsync(entity);
        return new UserResponseDto
        {
            Id = id,
            Name = entity.Name,
            Email = entity.Email
        };
    });

    return result;
}
```

**Apply to**: UserService, PurchaseRequisitionService - all methods

---

### 3.2 Create API Response DTOs for Pagination

**File**: `backend/Spinrise.API/Models/PaginatedResponse.cs` (Create new)

```csharp
namespace Spinrise.API.Models;

public class PaginatedResponse<T>
{
    public IEnumerable<T> Items { get; set; } = [];
    public int TotalCount { get; set; }
    public int PageNumber { get; set; }
    public int PageSize { get; set; }
    
    public int TotalPages => (TotalCount + PageSize - 1) / PageSize;
    public bool HasNextPage => PageNumber < TotalPages;
    public bool HasPreviousPage => PageNumber > 1;
}
```

**Update Controller**:
```csharp
[HttpGet("paginated")]
public async Task<IActionResult> GetAllPaginated([FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 10)
{
    var (users, totalCount) = await _service.GetAllPaginated(pageNumber, pageSize);
    
    var response = new PaginatedResponse<UserResponseDto>
    {
        Items = users,
        TotalCount = totalCount,
        PageNumber = pageNumber,
        PageSize = pageSize
    };

    return Success(response);
}
```

---

### 3.3 Add Filtering and Sorting Support

**File**: `backend/Spinrise.Shared/Models/QueryFilter.cs` (Create new)

```csharp
namespace Spinrise.Shared.Models;

public class QueryFilter
{
    public int PageNumber { get; set; } = 1;
    public int PageSize { get; set; } = 10;
    public string? SortBy { get; set; }
    public bool Ascending { get; set; } = true;
    public string? SearchTerm { get; set; }

    public void Validate()
    {
        if (PageNumber < 1) PageNumber = 1;
        if (PageSize < 1) PageSize = 10;
        if (PageSize > 100) PageSize = 100;
    }
}
```

**Update Repository**:
```csharp
public async Task<(IEnumerable<User> Items, int TotalCount)> GetAllFilteredAsync(QueryFilter filter)
{
    filter.Validate();
    
    var connection = _uow.Connection ?? throw new InvalidOperationException("Database connection is not initialized.");
    
    var items = await connection.QueryAsync<User>(
        "usp_User_GetAllFiltered",
        new 
        { 
            PageNumber = filter.PageNumber, 
            PageSize = filter.PageSize,
            SortBy = filter.SortBy ?? "Id",
            Ascending = filter.Ascending,
            SearchTerm = filter.SearchTerm
        },
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);

    var totalCount = await connection.ExecuteScalarAsync<int>(
        "usp_User_GetCountFiltered",
        new { SearchTerm = filter.SearchTerm },
        transaction: _uow.Transaction,
        commandType: CommandType.StoredProcedure);

    return (items, totalCount);
}
```

---

### 3.4 Implement Unit Tests for Services

**File**: `backend/Spinrise.Tests/Unit/Services/UserServiceTests.cs` (Create new)

```csharp
using Moq;
using Spinrise.Application.Services;
using Spinrise.Application.DTOs.User;
using Spinrise.Domain.Entities.User;
using Spinrise.Infrastructure.Data;
using Xunit;

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
        Assert.NotNull(result);
        Assert.Equal(userId, result.Id);
        Assert.Equal("John Doe", result.Name);
        _mockUnitOfWork.Verify(x => x.BeginAsync(It.IsAny<bool>()), Times.Once);
        _mockUserRepo.Verify(x => x.InsertAsync(It.IsAny<User>()), Times.Once);
        _mockUnitOfWork.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Get_WithInvalidId_ReturnsNull()
    {
        // Arrange
        var invalidId = -1;

        // Act
        var result = await _userService.Get(invalidId);

        // Assert
        Assert.Null(result);
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
}
```

**Test Database Factory** (for integration tests):

**File**: `backend/Spinrise.Tests/Integration/TestInfrastructure/TestDbConnectionFactory.cs`

```csharp
using System.Data;
using Dapper;

namespace Spinrise.Tests.Integration.TestInfrastructure;

public class TestDbConnectionFactory : IDbConnectionFactory
{
    private readonly string _testConnectionString;

    public TestDbConnectionFactory(string testConnectionString)
    {
        _testConnectionString = testConnectionString;
    }

    public IDbConnection CreateConnection()
    {
        return new SqlConnection(_testConnectionString);
    }
}
```

---

### 3.5 Generate TypeScript API Types from Swagger

**File**: `frontend/spinrise-web/scripts/generate-api-types.sh` (Create new)

```bash
#!/bin/bash

# Generate TypeScript types from Swagger/OpenAPI
npx openapi-generator-cli generate \
  -i http://localhost:5243/swagger/v1/swagger.json \
  -g typescript-axios \
  -o src/api/generated

echo "API types generated successfully at src/api/generated"
```

**Or use Orval** (recommended for React):

**File**: `frontend/spinrise-web/orval.config.ts` (Create new)

```typescript
import { defineConfig } from 'orval';

export default defineConfig({
  api: {
    input: {
      target: 'http://localhost:5243/swagger/v1/swagger.json',
    },
    output: {
      target: 'src/api/generated',
      client: 'fetch',
      httpClient: 'axios',
      mode: 'tags-split',
    },
  },
});
```

**Add to package.json**:
```json
"scripts": {
  "generate:api": "orval",
  "dev": "npm run generate:api && vite",
}
```

---

### 3.6 Implement API Error Response Wrapper for Frontend

**File**: `frontend/spinrise-web/src/shared/api/client.ts` (Create new)

```typescript
import axios, { AxiosError, AxiosInstance, AxiosRequestConfig } from 'axios';

interface ApiErrorResponse {
  success: boolean;
  message: string;
  errors?: Record<string, string[]> | object;
}

export class ApiClient {
  private axiosInstance: AxiosInstance;

  constructor() {
    this.axiosInstance = axios.create({
      baseURL: import.meta.env.VITE_BACKEND_ORIGIN || 'http://localhost:5243',
      headers: {
        'Content-Type': 'application/json',
      },
    });

    // Add response interceptor for error handling
    this.axiosInstance.interceptors.response.use(
      (response) => response,
      (error: AxiosError<ApiErrorResponse>) => {
        const message = error.response?.data?.message || 'An unexpected error occurred';
        const correlationId = error.response?.headers['x-correlation-id'];
        
        console.error(`[${correlationId}] API Error:`, message, error.response?.data?.errors);
        
        return Promise.reject({
          message,
          errors: error.response?.data?.errors,
          correlationId,
          status: error.response?.status,
        });
      }
    );
  }

  async get<T>(url: string, config?: AxiosRequestConfig) {
    const { data } = await this.axiosInstance.get<{ data: T }>(url, config);
    return data;
  }

  async post<T>(url: string, payload: unknown, config?: AxiosRequestConfig) {
    const { data } = await this.axiosInstance.post<{ data: T }>(url, payload, config);
    return data;
  }

  async put<T>(url: string, payload: unknown, config?: AxiosRequestConfig) {
    const { data } = await this.axiosInstance.put<{ data: T }>(url, payload, config);
    return data;
  }

  async delete(url: string, config?: AxiosRequestConfig) {
    await this.axiosInstance.delete(url, config);
  }
}

export const apiClient = new ApiClient();
```

---

---

## 🟢 TIER 4: LOW PRIORITY (Nice to Have)

### 4.1 Add HSTS Headers for Security

**File**: `backend/Spinrise.API/Program.cs`

**Update** (after `app.UseHttpsRedirection()`):
```csharp
app.UseHttpsRedirection();

if (!app.Environment.IsDevelopment())
{
    app.UseHsts();
}
```

---

### 4.2 Add Request Size Limits

**File**: `backend/Spinrise.API/Program.cs`

**Add** (in service configuration section):
```csharp
builder.Services.Configure<FormOptions>(options =>
{
    options.MultipartBodyLengthLimit = 104857600; // 100 MB
});

builder.Services.AddControllers()
    .ConfigureApiBehaviorOptions(options =>
    {
        // existing code...
    });
```

---

### 4.3 Add API Documentation to DTOs

**File**: `backend/Spinrise.Application/Areas/Administration/User/DTOs/CreateUserDto.cs`

```csharp
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Data transfer object for creating a new user.
/// </summary>
public class CreateUserDto
{
    /// <summary>
    /// The full name of the user (2-100 characters).
    /// </summary>
    [Required(ErrorMessage = "Name is required")]
    [StringLength(100, MinimumLength = 2, ErrorMessage = "Name must be between 2 and 100 characters")]
    public string Name { get; set; } = string.Empty;

    /// <summary>
    /// The email address of the user (must be unique).
    /// </summary>
    [Required(ErrorMessage = "Email is required")]
    [EmailAddress(ErrorMessage = "Invalid email format")]
    [StringLength(255)]
    public string Email { get; set; } = string.Empty;
}
```

---

### 4.4 Create README for Setup & Deployment

**File**: `backend/SETUP_AND_DEPLOYMENT.md` (Create new)

```markdown
# Spinrise Backend - Setup & Deployment Guide

## Local Development Setup

### Prerequisites
- .NET 8 SDK
- SQL Server 2019 or later
- Visual Studio 2022 or VS Code

### Steps
1. Clone repository
2. Update connection string in `appsettings.Development.json`
3. Run database migration scripts in `Spinrise.DBScripts/`
4. Run `dotnet run` from `Spinrise.API` folder
5. Open Swagger at `https://localhost:5243`

## Database Setup
- Execute scripts in order: Tables → Stored Procedures → Seed Data
- Use `merge.bat` in `Spinrise.DBScripts` for merged deployment

## Production Deployment
- Use `appsettings.json` (not Development)
- Ensure JWT Secret Key is strong
- Enable HTTPS
- Configure CORS origins
- Set up Application Insights logging
```

---

### 4.5 Create Health Check Endpoint

**File**: `backend/Spinrise.API/Controllers/HealthController.cs` (Create new)

```csharp
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.API.Controllers;

namespace Spinrise.API.Areas.Health.Controllers;

[ApiController]
[Route("api/v1/health")]
[AllowAnonymous]
public class HealthController : BaseApiController
{
    private readonly IDbConnectionFactory _connectionFactory;

    public HealthController(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    [HttpGet]
    public async Task<IActionResult> CheckHealth()
    {
        try
        {
            using (var connection = _connectionFactory.CreateConnection())
            {
                await connection.OpenAsync();
            }

            return SuccessMessage("API is healthy", StatusCodes.Status200OK);
        }
        catch
        {
            return Failure("Database connection failed", StatusCodes.Status503ServiceUnavailable);
        }
    }
}
```

---

---

## 📋 Implementation Checklist

### CRITICAL (Must Complete)
- [ ] Remove duplicate Program classes
- [ ] Fix null-coalescing in repositories
- [ ] Add Required annotations to DTOs
- [ ] Add role-based authorization

### HIGH (Should Complete by Week 1)
- [ ] Implement pagination
- [ ] Create Constants file
- [ ] Add logging with correlation IDs
- [ ] Add rate limiting

### MEDIUM (Should Complete by Week 2)
- [ ] Refactor transaction handling
- [ ] Add pagination response DTOs
- [ ] Add filtering/sorting support
- [ ] Create unit tests
- [ ] Generate TypeScript API types

### LOW (Nice to Have)
- [ ] Add HSTS headers
- [ ] Add request size limits
- [ ] Document DTOs with XML comments
- [ ] Create deployment guide
- [ ] Add health check endpoint

---

## 🚀 How to Use This Guide

**For AI Agents**:
1. Read this document completely
2. Start with TIER 1 (CRITICAL) tasks
3. For each task, read the file, locate the code, make the exact changes shown
4. Test after each tier completion
5. Move to next tier

**For Human Reviewers**:
1. Prioritize TIER 1 and TIER 2
2. Involve team for TIER 3 discussions
3. Defer TIER 4 to later sprints
4. Use this as communication document with developers

---

## ✅ Validation Steps

After implementing each tier, run:

```bash
# Backend
dotnet build
dotnet test

# Frontend
npm run lint
npm run test
npm run build
```

---

## 📞 Questions & Support

For implementation questions, refer back to the detailed code examples in this guide. Each section contains before/after code snippets for clarity.

---

**Document Version**: 1.0  
**Last Updated**: April 3, 2026  
**Next Review**: After completion of TIER 2
