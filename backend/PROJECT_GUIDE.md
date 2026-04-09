# Spinrise Backend Project Guide

This document is the primary reference for future AI-assisted development in this repository.

Its purpose is to help new modules follow the current architecture, coding style, API response rules, and database conventions already used in the project.

## Project Overview

Spinrise is a layered ASP.NET Core backend using:

- `Spinrise.API` for HTTP endpoints and middleware
- `Spinrise.Application` for DTOs, service logic, and interfaces
- `Spinrise.Infrastructure` for Dapper-based data access and database plumbing
- `Spinrise.Domain` for core entities
- `Spinrise.Shared` for cross-cutting shared code if needed in the future
- `Spinrise.DBScripts` for SQL tables, stored procedures, seed data, and merged database setup scripts

use ksp instead usp for creating SP
Current sample module:

- `User`

This module should be treated as the reference pattern for creating future modules such as `Product`, `Customer`, `Order`, `Role`, etc.

## Current Architecture

The application follows a simple layered flow:

`Controller -> Service -> Repository -> Stored Procedure -> SQL Server`

### Layer Responsibilities

#### `Spinrise.API`

Responsible for:

- routing
- request/response handling
- validation response formatting
- global exception handling
- Swagger configuration

Important files:

- `Spinrise.API/Program.cs`
- `Spinrise.API/Controllers/BaseApiController.cs`
- `Spinrise.API/Middleware/ExceptionHandlingMiddleware.cs`
- `Spinrise.API/Areas/<Division>/Controllers/...`
- `Spinrise.API/Models/ApiResponse.cs`
- `Spinrise.API/Models/ApiResponseOfT.cs`

#### `Spinrise.Application`

Responsible for:

- service logic
- DTO definitions
- mapping between DTOs and entities
- interfaces for repositories and services

Important files:

- `Spinrise.Application/Areas/Administration/User/Services/UserService.cs`
- `Spinrise.Application/Interfaces/IUserService.cs`
- `Spinrise.Application/Interfaces/IUserRepository.cs`
- `Spinrise.Application/Interfaces/IUnitOfWork.cs`
- `Spinrise.Application/Areas/Administration/User/DTOs/*`

#### `Spinrise.Infrastructure`

Responsible for:

- Dapper queries
- stored procedure execution
- connection creation
- transaction handling

Important files:

- `Spinrise.Infrastructure/Areas/Administration/User/UserRepository.cs`
- `Spinrise.Infrastructure/Data/UnitOfWork.cs`
- `Spinrise.Infrastructure/Data/DbConnectionFactory.cs`

#### `Spinrise.Domain`

Responsible for:

- entity definitions only

Important file:

- `Spinrise.Domain/Areas/Administration/User/User.cs`

## API Conventions

All new controllers should follow the same conventions already introduced for the `User` module.

### Base Controller

Controllers should inherit from:

- `BaseApiController`

Use helper methods:

- `Success(data, message, statusCode)`
- `SuccessMessage(message, statusCode)`
- `Failure(message, statusCode, errors)`

### Standard Response Format

Success with data:

```json
{
  "success": true,
  "message": "Users retrieved successfully.",
  "data": []
}
```

Failure:

```json
{
  "success": false,
  "message": "Validation failed.",
  "errors": {
    "Email": ["The Email field is required."]
  }
}
```

### Validation

Validation is currently handled using Data Annotations on DTOs.

Examples:

- `[Required]`
- `[StringLength(...)]`
- `[EmailAddress]`
- `[Range(...)]`

Invalid model state is transformed in `Program.cs` into the standard API response format.

### Exception Handling

Unhandled exceptions are caught by:

- `ExceptionHandlingMiddleware`

Rules:

- never return raw exceptions directly from controllers
- let middleware handle unexpected exceptions
- return business or not-found scenarios explicitly from services/controllers

## DTO Rules

Do not expose domain entities directly in API endpoints.

Use DTOs for:

- create requests
- update requests
- response payloads

Current user DTO examples:

- `CreateUserDto`
- `UpdateUserDto`
- `UserResponseDto`

Mapping is currently handled with extension methods in:

- `Spinrise.Application/Areas/Administration/User/Mappings/UserMappings.cs`

### Rule for Future Modules

For every new module, create:

1. `Create<Entity>Dto`
2. `Update<Entity>Dto`
3. `<Entity>ResponseDto`
4. `<Entity>Mappings.cs`

Example for a future `Product` module:

- `Spinrise.Application/DTOs/Products/CreateProductDto.cs`
- `Spinrise.Application/DTOs/Products/UpdateProductDto.cs`
- `Spinrise.Application/DTOs/Products/ProductResponseDto.cs`
- `Spinrise.Application/DTOs/Products/ProductMappings.cs`

## Service Layer Rules

Services should:

- receive DTOs from controllers
- map DTOs to entities
- call repositories
- return response DTOs or status flags
- manage unit-of-work begin/commit/rollback

Pattern from `UserService`:

- read operations call `_uow.BeginAsync()`
- write operations call `_uow.BeginAsync(startTransaction: true)`
- `try/catch` blocks commit on success and rollback on failure

### Important Rule

Business logic belongs in services, not in controllers and not in repositories.

Examples of logic that belongs in services:

- validation beyond annotations
- duplicate checks
- authorization decisions
- orchestration across repositories
- mapping entities to response models

## Repository Rules

Repositories should:

- only deal with database access
- call stored procedures using Dapper
- avoid controller or HTTP concerns
- avoid response formatting logic

### Dapper Conventions

Use:

- `QueryAsync<T>` for list fetches
- `QueryFirstOrDefaultAsync<T>` for single fetches
- `ExecuteScalarAsync<int>` when stored procedures return a scalar like `SCOPE_IDENTITY()` or `@@ROWCOUNT`

Important example:

`usp_User_Update` returns `SELECT @@ROWCOUNT`, so repository code must use `ExecuteScalarAsync<int>`, not `ExecuteAsync`.

## Database Rules

Database artifacts are stored in:

- `Spinrise.DBScripts/01 Tables`
- `Spinrise.DBScripts/02 Stored Procedures`
- `Spinrise.DBScripts/03 Seed Data`
- `Spinrise.DBScripts/Scripts`

### Merged Script

Run this file to recreate the current user database objects:

- `Spinrise.DBScripts/Scripts/00_Run_All.sql`

This script:

- drops procedures in dependency-safe order
- drops and recreates `dbo.Users`
- recreates all `User` stored procedures
- inserts seed data

### Stored Procedure Naming Convention

Use:

- `usp_<Entity>_GetAll`
- `usp_<Entity>_GetById`
- `usp_<Entity>_Insert`
- `usp_<Entity>_Update`
- `usp_<Entity>_Delete`

Examples:

- `usp_User_GetAll`
- `usp_User_GetById`
- `usp_User_Insert`
- `usp_User_Update`
- `usp_User_Delete`

### SQL Script Naming Convention

Use ordered filenames like:

- `01_<object>.sql`
- `02_<object>.sql`
- `03_<object>.sql`

Examples:

- `01_usp_Product_GetAll.sql`
- `02_usp_Product_GetById.sql`
- `03_usp_Product_Insert.sql`

## Dependency Injection Rules

Every new module must be registered in `Program.cs`.

Example pattern:

```csharp
builder.Services.AddScoped<IProductRepository, ProductRepository>();
builder.Services.AddScoped<IProductService, ProductService>();
```

If a new shared infrastructure service is added, register it there as well.

## Folder and Naming Conventions

For Spinrise ERP, the preferred structure is:

`Division -> Module -> Layer-specific files`

This scales better than a flat module list because each division can contain many modules.

### Naming Rules

- use `Controllers` everywhere, not a mix of `Controller` and `Controllers`
- use PascalCase folder names without spaces
- prefer `Purchase`, `Inventory`, `Accounts`, `HR`, `Production` as division folder names
- prefer `PurchaseRequisition`, `PurchaseOrder`, `GoodsReceipt` as module folder names
- if a business label has spaces such as "Purchase Order", convert it to `PurchaseOrder`

### Recommended Backend Structure

Use `Areas` in the API project to group by division.

Example:

```text
Spinrise.API/
├── Areas/
│   ├── Purchase/
│   │   ├── Controllers/
│   │   │   ├── PurchaseRequisitionController.cs
│   │   │   └── PurchaseOrderController.cs
│   │   └── Models/
│   ├── Inventory/
│   │   └── Controllers/
│   └── Accounts/
│       └── Controllers/
├── Controllers/
│   └── BaseApiController.cs
├── Middleware/
├── Models/
└── Program.cs
```

### Recommended Application Structure

Keep the same division and module grouping in the application layer.

```text
Spinrise.Application/
├── Areas/
│   ├── Purchase/
│   │   ├── PurchaseRequisition/
│   │   │   ├── DTOs/
│   │   │   ├── Interfaces/
│   │   │   ├── Mappings/
│   │   │   └── Services/
│   │   └── PurchaseOrder/
│   ├── Inventory/
│   └── Accounts/
```

Example files:

- `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePurchaseRequisitionDto.cs`
- `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionService.cs`
- `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionRepository.cs`
- `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs`
- `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Mappings/PurchaseRequisitionMappings.cs`

### Recommended Domain Structure

If the domain becomes large, group entities by division and module as well.

```text
Spinrise.Domain/
├── Areas/
│   ├── Purchase/
│   │   ├── PurchaseRequisition/
│   │   │   ├── PurchaseRequisitionHeader.cs
│   │   │   └── PurchaseRequisitionLine.cs
│   │   └── PurchaseOrder/
│   ├── Inventory/
│   └── Accounts/
```

### Recommended Infrastructure Structure

```text
Spinrise.Infrastructure/
├── Areas/
│   ├── Purchase/
│   │   ├── PurchaseRequisition/
│   │   │   └── PurchaseRequisitionRepository.cs
│   │   └── PurchaseOrder/
│   ├── Inventory/
│   └── Accounts/
├── Data/
│   ├── DbConnectionFactory.cs
│   └── UnitOfWork.cs
```

### Recommended Database Script Structure

You can keep the current numeric SQL folders, but inside them group by division and module.

```text
Spinrise.DBScripts/
├── 01 Tables/
│   ├── Purchase/
│   │   ├── PurchaseRequisition/
│   │   └── PurchaseOrder/
│   ├── Inventory/
│   └── Accounts/
├── 02 Stored Procedures/
│   ├── Purchase/
│   │   ├── PurchaseRequisition/
│   │   └── PurchaseOrder/
│   ├── Inventory/
│   └── Accounts/
├── 03 Seed Data/
│   ├── Purchase/
│   ├── Inventory/
│   └── Accounts/
```

### Recommended Frontend Structure

The frontend should mirror the same business structure so navigation, API integration, and ownership stay aligned.

Recommended shape inside `frontend/spinrise-web/src`:

```text
src/
├── app/
├── layouts/
├── routes/
├── shared/
├── divisions/
│   ├── purchase/
│   │   ├── purchase-requisition/
│   │   │   ├── api/
│   │   │   ├── components/
│   │   │   ├── hooks/
│   │   │   ├── pages/
│   │   │   ├── types/
│   │   │   └── utils/
│   │   └── purchase-order/
│   ├── inventory/
│   └── accounts/
└── test/
```

Example frontend files:

- `src/divisions/purchase/purchase-requisition/pages/PurchaseRequisitionListPage.tsx`
- `src/divisions/purchase/purchase-requisition/pages/PurchaseRequisitionFormPage.tsx`
- `src/divisions/purchase/purchase-requisition/components/PurchaseRequisitionForm.tsx`
- `src/divisions/purchase/purchase-requisition/api/purchaseRequisitionApi.ts`
- `src/divisions/purchase/purchase-requisition/types/purchaseRequisition.ts`

### Route Convention with Areas

If you use ASP.NET Core Areas, controllers should explicitly declare the area.

Example:

```csharp
[Area("Purchase")]
[Route("api/v1/purchase/purchase-requisitions")]
public class PurchaseRequisitionController : BaseApiController
{
}
```

This gives you:

- clean grouping in code
- stable API URLs
- easier onboarding when divisions grow

### Transition Rule for This Repository

The repository currently contains both `Controller` and `Controllers`.

Going forward:

- `BaseApiController` stays in `Spinrise.API/Controllers`
- all new controllers should go into `Spinrise.API/Areas/<Division>/Controllers`
- do not create any more files under `Spinrise.API/Controller`
- when safe, refactor existing controllers from `Controller` to `Areas/<Division>/Controllers`

## How to Add a New Module

When adding a new module, follow this sequence.

1. Choose the target division such as `Purchase` or `Inventory`.
2. Create the module folder inside that division in every layer.
3. Add the domain entities.
4. Add SQL table scripts under the same division and module path.
5. Add stored procedure scripts under the same division and module path.
6. Update the merged SQL setup script if needed.
7. Add repository and service interfaces in `Application`.
8. Add DTOs and mappings in `Application`.
9. Implement repository in `Infrastructure`.
10. Implement service in `Application`.
11. Add the controller in `Spinrise.API/Areas/<Division>/Controllers`.
12. Register dependencies in `Program.cs`.
13. Keep response format aligned with `BaseApiController`.

## AI Development Rules

Any future AI working on this repository should follow these rules.

### General Rules

- do not bind API requests directly to domain entities
- do not return anonymous objects from controllers when `BaseApiController` helpers exist
- do not place SQL directly inside controllers or services
- do not bypass stored procedures unless the project direction changes explicitly
- do not add module-specific logic into middleware
- do not duplicate response envelope structures

### Preferred Extension Pattern

When building a new module, copy the `User` flow conceptually, but place it under the correct division and module:

- entity
- DTOs
- service
- repository
- stored procedures
- controller
- DI registration

### Safe Refactoring Rules

- preserve the current layered architecture
- keep API response contracts consistent
- keep SQL scripts runnable independently
- favor small incremental changes over sweeping rewrites
- do not break existing `User` behavior while adding new modules

## Known Current Decisions

These are intentional and should be preserved unless changed deliberately.

- Dapper is used instead of Entity Framework
- stored procedures are the current database access strategy
- DTOs are used at API boundaries
- `ApiResponse` is the standard response envelope
- validation errors are formatted globally in `Program.cs`
- exception handling is centralized in middleware

## Recommended Next Improvements

Future development can safely add these improvements:

- route-based update endpoints like `PUT /api/v1/users/{id}`
- pagination for list endpoints
- authentication and authorization
- request logging and correlation IDs
- FluentValidation if validation grows more complex
- shared result/error abstractions in `Spinrise.Shared`
- unit and integration tests

## Important Reference Files

Use these files as the main examples before implementing anything new:

- `Spinrise.API/Program.cs`
- `Spinrise.API/Controllers/BaseApiController.cs`
- `Spinrise.API/Middleware/ExceptionHandlingMiddleware.cs`
- `Spinrise.API/Areas/<Division>/Controllers/<Module>Controller.cs`
- `Spinrise.Application/Areas/<Division>/<Module>/Services/<Module>Service.cs`
- `Spinrise.Application/Areas/<Division>/<Module>/DTOs/...`
- `Spinrise.Application/Areas/<Division>/<Module>/Mappings/...`
- `Spinrise.Infrastructure/Areas/<Division>/<Module>/<Module>Repository.cs`
- `Spinrise.Infrastructure/Data/UnitOfWork.cs`
- `Spinrise.DBScripts/Scripts/00_Run_All.sql`

## Current Implementation Status

### Completed Modules
- **User Management**: Full CRUD with authentication, pagination, and testing
- **Authentication**: JWT-based with refresh tokens, role-based authorization
- **Database Layer**: Dapper with stored procedures, Unit of Work pattern
- **API Infrastructure**: Standardized responses, exception handling, CORS, Swagger

### In Progress / Planned Modules
- **Purchase Requisition**: Detailed migration guide exists, partial implementation
- **Additional ERP Modules**: Product, Customer, Order, Role, etc. (following User pattern)

### Known Issues
- Purchase Requisition module requires full implementation per migration guide
- Frontend build configuration needs fixing (vite.config.ts)
- Some frontend features are incomplete (auth refresh, error boundaries)

### Next Steps
1. Complete Purchase Requisition implementation
2. Fix frontend build issues
3. Add integration tests
4. Implement remaining ERP modules
5. Add comprehensive error boundaries and loading states
- keep validation and exception handling centralized
- update SQL scripts alongside code changes

If the architecture evolves later, this document should be updated before asking AI to generate major new modules.
