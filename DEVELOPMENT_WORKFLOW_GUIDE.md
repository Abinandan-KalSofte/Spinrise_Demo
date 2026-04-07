# SPINRISE — Complete Development Workflow Guide
> **Safe development with existing DB | No schema modifications | Full-stack integration guidance**  
> Last Updated: April 2026  
> Stack: ASP.NET Core 8 · Dapper · SQL Server · React 18 · TypeScript

---

## Table of Contents
1. [Pre-Development Verification Checklist](#pre-development-verification-checklist)
2. [Safe Database Extension Rules](#safe-database-extension-rules)
3. [End-to-End Integration Flow](#end-to-end-integration-flow)
4. [Implementation Workflow Guide](#implementation-workflow-guide)
5. [ADA Assistance Integration](#ai-assistance-integration-prompts)
6. [Common Pitfalls & Solutions](#common-pitfalls--solutions)

---

## Pre-Development Verification Checklist

**Complete ALL checkboxes before writing any code or stored procedure.**

### ✅ Phase 1: Database Analysis

- [ ] **Identify existing tables** involved
  - Location: `/backend/Spinrise.DBScripts/01 Tables/`
  - Query live `saranya` database to confirm table existence
  - Document table names, columns, and primary keys
  
- [ ] **Check existing stored procedures**
  - Location: `/backend/Spinrise.DBScripts/02 Stored Procedures/`
  - Avoid name collisions (use `usp_<Module>_<Action>` naming convention)
  - List all SPs already created to prevent duplicates
  
- [ ] **Confirm no ALTER TABLE required**
  - New features must work with existing columns
  - Use separate tables if new data doesn't fit existing schema
  - Document which existing columns will be used
  
- [ ] **Verify referenced tables exist in live DB**
  - Tables like `in_dep`, `in_item`, `in_cc`, `in_bgrp`, `mm_macmas` may exist in production but not in DBScripts
  - Run SELECT queries to confirm data structure
  - Note any missing columns or data type mismatches
  
- [ ] **Validate SP parameter compatibility**
  - Ensure parameters match what backend will pass
  - Verify data types (NVARCHAR, INT, DATETIME, etc.)
  - Add NULL defaults to all parameters for backward compatibility
  - Example: `@DivCode NVARCHAR(10) = NULL`
  
- [ ] **Test on non-production DB first**
  - Create a test database copy of `saranya`
  - Run all new SPs on test DB first
  - Verify no errors, data integrity issues, or performance problems
  - Document test results before deploying to production

### ✅ Phase 2: Backend Architecture Review

- [ ] **Check existing service/repository for same module**
  - Look in: `Spinrise.Infrastructure/Areas/<Division>/<Module>/`
  - Confirm no duplicate service already exists
  - Review existing implementation if it exists partially
  
- [ ] **Verify DI (Dependency Injection) registration**
  - Check `Program.cs` for service registrations
  - Ensure repository and service are registered if you're adding new ones
  - Add registrations if missing: `builder.Services.AddScoped<IYourService, YourService>();`
  
- [ ] **Confirm connection string accessibility**
  - Default: `Server=172.16.16.52\sql2016;Database=saranya`
  - Test connection in `appsettings.Development.json`
  - Ensure network connectivity to DB server
  - Verify SQL authentication credentials work
  
- [ ] **Review BaseApiController response patterns**
  - All controllers should inherit from `BaseApiController`
  - Use `Success<T>()` for successful responses
  - Use `Failure()` for error responses
  - Follow standard response format (no custom response structures)
  
- [ ] **Check JWT authorization policy**
  - New secured endpoints need `[Authorize]` attribute
  - Public endpoints use `[AllowAnonymous]`
  - Review `Program.cs` for JWT configuration
  - Understand token validation and claims setup

- [ ] **Confirm API versioning scheme**
  - All endpoints use `/api/v1/` prefix
  - Controller areas organize routes: `/api/v1/<Division>/<Resource>`
  - Mirror this pattern for new endpoints

### ✅ Phase 3: Frontend Stack Validation

- [ ] **Generate API types from Swagger**
  - Run `npm run generate:api` in `/frontend/spinrise-web/` after new backend endpoints
  - Confirms API schema is correct
  - Auto-generates TypeScript DTOs
  - Check generated files in `src/api/generated/`
  
- [ ] **Verify base URL configuration**
  - Check `.env.development` for `VITE_BACKEND_ORIGIN`
  - Should match running backend: `http://localhost:5243/api/v1`
  - Verify in `src/shared/api/client.ts`
  
- [ ] **Confirm Zustand auth store accessibility**
  - Ensure `accessToken` is populated before secured endpoints
  - Check `src/store/authStore.ts` for token storage
  - Verify JWT is attached to request headers automatically
  
- [ ] **Check if feature folder already exists**
  - Look in: `src/features/<featureName>/`
  - Determine if you're extending existing feature or creating new
  - Follow folder structure convention
  
- [ ] **Review API client patterns**
  - Understand `apiHelpers.get()`, `apiHelpers.post()`, etc.
  - Check error handling and loading states
  - Review `useApi` hook for API calls in components
  - Verify correlation ID tracking setup

---

## Safe Database Extension Rules

**CRITICAL: You are using an existing production database (`saranya`). Rules are MANDATORY.**

### Core Rules — No Schema Changes Allowed

| Rule | Detail | Example |
|------|--------|---------|
| **No ALTER TABLE** | Never modify existing column names, types, or nullability | ❌ ALTER TABLE po_prh ADD NewColumn | 
| **No DROP** | Never drop/rename existing tables, columns, or stored procedures | ❌ DROP TABLE po_prl |
| **CREATE OR ALTER PROCEDURE** | Safe redeploy of SPs without dropping | ✅ CREATE OR ALTER PROCEDURE dbo.usp_PR_GetAll |
| **Additive-only queries** | SELECT from existing tables; INSERT/UPDATE only rows your module owns | ✅ SELECT * FROM in_dep WHERE DivCode = @DivCode |
| **Defensive parameters** | Add `= NULL` defaults to prevent breaking old callers | ✅ @SearchTerm NVARCHAR(100) = NULL |
| **Consistent SP naming** | `usp_<Module>_<Action>` follows convention | ✅ usp_PurchaseRequisition_GetAll |
| **Script first, deploy later** | Write `.sql` file in `DBScripts/02 Stored procedures/` BEFORE calling from backend | ✅ Create SQL file → Test → Create backend service |

### Stored Procedure Template

```sql
-- File: Spinrise.DBScripts/02 Stored Procedures/NN_usp_<Module>_<Action>.sql
-- Created: YYYY-MM-DD
-- Purpose: <One-line business purpose>
-- Changes: <None yet>

CREATE OR ALTER PROCEDURE dbo.usp_<Module>_<Action>
    @DivCode       NVARCHAR(10),
    @Param1        NVARCHAR(100) = NULL,    -- always provide defaults
    @Param2        INT            = NULL,
    @Param3        DATETIME       = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Input validation
    IF @DivCode IS NULL
    BEGIN
        RAISERROR('DivCode is required', 16, 1);
        RETURN;
    END

    -- Optional parameter validation
    IF @Param2 IS NOT NULL AND @Param2 <= 0
    BEGIN
        RAISERROR('Param2 must be positive', 16, 1);
        RETURN;
    END

    -- Main business logic
    SELECT
        col1,
        col2,
        col3
    FROM dbo.existing_table
    WHERE DivCode = @DivCode
      AND (@Param1 IS NULL OR col1 = @Param1)
      AND (@Param3 IS NULL OR CreatedDate >= @Param3)
    ORDER BY col1;

END
GO
```

### Version Control for SPs

When modifying an existing SP:
1. Update the `-- Changes:` comment at the top
2. Document what changed and why
3. Use `CREATE OR ALTER PROCEDURE` (never DROP and CREATE)
4. Test on test DB first

```sql
-- File: Spinrise.DBScripts/02 Stored Procedures/02_usp_PR_GetAll.sql
-- Created: 2026-03-15
-- Last Modified: 2026-04-06
-- Changes:
--   2026-04-06: Added @SearchTerm parameter for lookup autocomplete (Feature: PR Line Items)
--   2026-03-15: Initial creation

CREATE OR ALTER PROCEDURE dbo.usp_PR_GetAll
    @DivCode       NVARCHAR(10),
    @StatusFilter  NVARCHAR(10)   = NULL,
    @SearchTerm    NVARCHAR(100)  = NULL    -- NEW: 2026-04-06
AS
BEGIN
    SET NOCOUNT ON;
    ...
END
GO
```

---

## End-to-End Integration Flow

### Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                        REACT FRONTEND                            │
│         (src/features/<Module>/<Component>.tsx)                 │
│  - Defines form fields, validation, UI components               │
│  - Calls feature service on submit                              │
└────────────────┬────────────────────────────────────────────────┘
                 │ imports
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│                    FEATURE SERVICE LAYER                         │
│      (src/features/<Module>/services/<Module>Service.ts)        │
│  - Business logic, data transformation                           │
│  - Calls API client with proper DTO                             │
└────────────────┬────────────────────────────────────────────────┘
                 │ uses
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│                      API CLIENT HELPER                           │
│          (src/shared/api/client.ts → apiHelpers)               │
│  - Axios instance with JWT token injection                      │
│  - Correlation ID tracking, error handling                      │
│  - Automatically sends: Authorization: Bearer <token>           │
│  - Base URL: http://localhost:5243/api/v1                      │
└────────────────┬────────────────────────────────────────────────┘
                 │ HTTP POST/GET/PUT/DELETE
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│                   ASP.NET CONTROLLER                             │
│      (Spinrise.API/Areas/<Div>/Controllers/<Module>Ctrl.cs)    │
│  - Route: POST /api/v1/<Module>/create                          │
│  - Receives DTO from request body                               │
│  - Validates [Authorize] policy                                 │
│  - Calls application service                                    │
│  - Returns Success<T>() or Failure()                            │
└────────────────┬────────────────────────────────────────────────┘
                 │ calls
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│                  APPLICATION SERVICE LAYER                       │
│   (Spinrise.Application/Areas/<Div>/<Module>/Services/)        │
│  - Business logic, validation, error handling                   │
│  - Maps DTO to domain entity                                    │
│  - Calls repository methods                                     │
│  - Returns domain object or error                               │
└────────────────┬────────────────────────────────────────────────┘
                 │ calls
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│              INFRASTRUCTURE REPOSITORY LAYER                     │
│  (Spinrise.Infrastructure/Areas/<Div>/<Module>/...)            │
│  - Data access abstraction (Dapper-based)                       │
│  - Calls stored procedure via SqlConnection                     │
│  - Maps SQL results to domain entity                            │
│  - Handles connection/transaction management                    │
└────────────────┬────────────────────────────────────────────────┘
                 │ executes (Dapper)
                 ↓
┌─────────────────────────────────────────────────────────────────┐
│              SQL SERVER STORED PROCEDURE                         │
│            (Spinrise.DBScripts/02 Stored Procedures/)           │
│  - Name: dbo.usp_<Module>_<Action>                              │
│  - Parameters: @DivCode, @Param1, etc.                          │
│  - Performs SELECT/INSERT/UPDATE on existing tables             │
│  - Returns result set or affected row count                     │
│  - NO ALTER TABLE or schema changes                             │
└─────────────────────────────────────────────────────────────────┘

Response Flow (reverse):
DB Result → Repository maps to Entity → Service processes → Controller formats 
→ API Client response → Feature Service processes → Component renders
```

### Data Flow Example: Creating a Purchase Requisition

**Step 1: User fills form in React component**
```typescript
// src/features/purchase/pages/CreatePRPage.tsx
const [formData, setFormData] = useState({
  depCode: 'DEP001',
  prNo: 'PR-2026-001',
  prDate: '2026-04-06',
  // ... other fields
});

const handleSubmit = async () => {
  await prService.createPR(formData);  // Calls feature service
};
```

**Step 2: Feature service prepares DTO**
```typescript
// src/features/purchase/services/prService.ts
export const prService = {
  createPR: async (data: CreatePRRequest) => {
    const dto: CreatePRHeaderDto = {
      depCode: data.depCode,
      prNo: data.prNo,
      prDate: new Date(data.prDate),
      status: 'DRAFT',
      // ... map all fields
    };
    return apiHelpers.post('/purchase-requisition/create', dto);
  }
};
```

**Step 3: API client sends HTTP request**
```typescript
// src/shared/api/client.ts (automatic)
// Method: POST
// URL: http://localhost:5243/api/v1/purchase-requisition/create
// Headers: Authorization: Bearer <jwt-token>, Content-Type: application/json
// Body: { depCode: '...', prNo: '...', ... }
```

**Step 4: ASP.NET controller receives & validates**
```csharp
// Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs
[HttpPost("create")]
[Authorize]
public async Task<IActionResult> CreatePR([FromBody] CreatePRHeaderDto dto)
{
    var result = await _prService.CreatePR(dto);
    return result.IsSuccess ? Success(result.Data) : Failure(result.Error);
}
```

**Step 5: Application service applies business logic**
```csharp
// Spinrise.Application/Areas/Purchase/Services/PurchaseRequisitionService.cs
public async Task<Result<PRHeaderResponseDto>> CreatePR(CreatePRHeaderDto dto)
{
    // Validate business rules
    var validation = ValidateCreateRequest(dto);
    if (!validation.IsSuccess) return Result.Failure(validation.Error);
    
    // Map DTO to domain entity
    var entity = mapper.Map<PurchaseRequisitionHeader>(dto);
    
    // Call repository
    var prId = await _repository.InsertPRHeaderAsync(entity);
    
    // Return response
    return Result.Success(new PRHeaderResponseDto { Id = prId, ... });
}
```

**Step 6: Repository calls stored procedure**
```csharp
// Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisitionRepository.cs
public async Task<int> InsertPRHeaderAsync(PurchaseRequisitionHeader pr)
{
    using var connection = new SqlConnection(_connectionString);
    var result = await connection.ExecuteScalarAsync<int>(
        "dbo.usp_PR_Insert",
        new
        {
            pr.DivCode,
            pr.PRNo,
            pr.PRDate,
            pr.Status,
            // ... all parameters
        },
        commandType: CommandType.StoredProcedure
    );
    return result;
}
```

**Step 7: SQL Server executes procedure**
```sql
-- Spinrise.DBScripts/02 Stored Procedures/03_usp_PR_Insert.sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_Insert
    @DivCode    NVARCHAR(10),
    @PRNo       NVARCHAR(20),
    @PRDate     DATETIME,
    @Status     NVARCHAR(10) = 'DRAFT'
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO dbo.po_prh (DivCode, PRNo, PRDate, Status, CreatedDate)
    VALUES (@DivCode, @PRNo, @PRDate, @Status, GETDATE());
    
    SELECT @@IDENTITY AS PRId;  -- Return inserted ID
END
GO
```

**Step 8: Response flows back to React**
```
SQLServer (1) → Repository (int PRId) → Service (Result<DTO>)
→ Controller (IActionResult) → APIClient (response object)
→ Feature Service (parsed data) → Component (setState, display)
```

---

## Implementation Workflow Guide

### 👉 Quick Start: Always Follow This Order

#### **Phase 1: Database (Day 1-2)**

1. **Create SQL file** in `Spinrise.DBScripts/02 Stored Procedures/`
   ```
   NN_usp_<Module>_<Action>.sql
   ```

2. **Test SP on test DB**
   - Copy `saranya` to test database
   - Run SQL script against test DB
   - Verify no errors, correct data returned
   - Document parameter values used in test

3. **Update version control**
   - Add file to git
   - Document in `PR_StoredProcedures_Requirements.md`
   - Mark as "Created" or "Modified"

#### **Phase 2: Backend Domain Layer (Day 2)**

1. **Create domain entities** in `Spinrise.Domain/Areas/<Division>/<Module>/`
   ```
   - <Entity>.cs (e.g., PurchaseRequisitionHeader.cs)
   - Contains ONLY properties, no business logic
   - Maps directly to stored procedure result columns
   ```

2. **Template:**
   ```csharp
   namespace Spinrise.Domain.Areas.Purchase.PurchaseRequisition;

   public class PurchaseRequisitionHeader
   {
       public int Id { get; set; }
       public string DivCode { get; set; }
       public string PRNo { get; set; }
       public DateTime PRDate { get; set; }
       public string Status { get; set; }
       public DateTime CreatedDate { get; set; }
   }
   ```

#### **Phase 3: Backend Application Layer (Day 2-3)**

1. **Create DTOs** in `Spinrise.Application/Areas/<Division>/<Module>/DTOs/`
   - `Create<Entity>Dto.cs` — for POST requests
   - `Update<Entity>Dto.cs` — for PUT requests
   - `<Entity>ResponseDto.cs` — for API responses
   - Use data annotations for validation: `[Required]`, `[StringLength]`, etc.

2. **Create interfaces** in `Spinrise.Application/Areas/<Division>/<Module>/Interfaces/`
   - `IRepository.cs` — repository interface
   - `IService.cs` — service interface
   - Define method signatures that backend will implement

3. **Create service** in `Spinrise.Application/Areas/<Division>/<Module>/Services/`
   - Implements business logic
   - Calls repository methods
   - Returns `Result<T>` for error handling
   - Maps between DTO and domain entity

4. **Create mappings** in `Spinrise.Application/Areas/<Division>/<Module>/Mappings/`
   - AutoMapper profiles for DTO ↔ Domain conversions
   - Register in `Program.cs`: `builder.Services.AddAutoMapper(...)`

#### **Phase 4: Backend Infrastructure Layer (Day 3)**

1. **Create repository** in `Spinrise.Infrastructure/Areas/<Division>/<Module>/`
   - Implements `IRepository` interface
   - Uses Dapper to execute stored procedures
   - Handles SqlConnection and parameter binding
   - Maps SQL results to domain entities
   - Template:
   ```csharp
   public class <Module>Repository : I<Module>Repository
   {
       private readonly string _connectionString;
       
       public <Module>Repository(IConfiguration config)
       {
           _connectionString = config.GetConnectionString("DefaultConnection");
       }
       
       public async Task<List<Entity>> GetAllAsync(string divCode)
       {
           using var connection = new SqlConnection(_connectionString);
           var result = await connection.QueryAsync<Entity>(
               "dbo.usp_<Module>_GetAll",
               new { DivCode = divCode },
               commandType: CommandType.StoredProcedure
           );
           return result.ToList();
       }
   }
   ```

2. **Register in DI** in `Program.cs`
   ```csharp
   builder.Services.AddScoped<I<Module>Repository, <Module>Repository>();
   builder.Services.AddScoped<I<Module>Service, <Module>Service>();
   ```

#### **Phase 5: Backend API Layer (Day 4)**

1. **Create controller** in `Spinrise.API/Areas/<Division>/Controllers/`
   - Inherit from `BaseApiController`
   - Inject service in constructor
   - Each action calls service method
   - Return `Success<T>()` or `Failure()`
   - Add `[HttpGet]`, `[HttpPost]`, `[authorize]` attributes
   - Template:
   ```csharp
   [ApiController]
   [Route("api/v1/[area]/[controller]")]
   public class <Module>Controller : BaseApiController
   {
       private readonly I<Module>Service _service;
       
       public <Module>Controller(I<Module>Service service)
       {
           _service = service;
       }
       
       [HttpGet("list")]
       [Authorize]
       public async Task<IActionResult> GetAll()
       {
           var result = await _service.GetAllAsync();
           return result.IsSuccess ? Success(result.Data) : Failure("Error");
       }
   }
   ```

#### **Phase 6: Frontend API Generation & Integration (Day 4-5)**

1. **Run API code generation**
   ```bash
   cd frontend/spinrise-web
   npm run generate:api
   ```
   This auto-generates TypeScript client from your OpenAPI/Swagger schema.

2. **Create feature service** in `src/features/<Module>/services/`
   - Calls API client (auto-generated)
   - Handles business logic and transformations
   - Provides hook-friendly interface to components

3. **Create React component** in `src/features/<Module>/pages/` or `components/`
   - Calls feature service
   - Handles form state with Zustand or React state
   - Displays data and submission results

4. **Template:**
   ```typescript
   // src/features/purchase/services/prService.ts
   export const prService = {
     createPR: async (data: CreatePRRequest): Promise<CreatePRResponse> => {
       const dto: CreatePRHeaderDto = mapRequestToDTO(data);
       const response = await apiHelpers.post('/purchase-requisition/create', dto);
       return response.data;
     },
     
     getPRs: async (filters?: FilterOptions): Promise<PR[]> => {
       const response = await apiHelpers.get('/purchase-requisition/list', { params: filters });
       return response.data;
     }
   };
   ```

---

## AI Assistance Integration Prompts

### 🤖 Using AI Assistant (Claude Code, GitHub Copilot, etc.)

#### **Prompt 1: Generate Stored Procedure**
```
Context: Read DEVELOPMENT_WORKFLOW_GUIDE.md, PR_StoredProcedures_Requirements.md, and DEV_GUIDE.md

Task: Create a new stored procedure for [Module Name]
- Requirements: [List the business requirement]
- Input parameters: [List all parameters and types]
- Output: [Describe expected result set]
- Existing tables to use: [List table names]
- Database: saranya (do NOT create new tables, do NOT alter existing tables)

Follow the SP template:
- Name: dbo.usp_<Module>_<Action>
- Use CREATE OR ALTER PROCEDURE (not CREATE PROCEDURE)
- Add NULL defaults to all parameters
- Include input validation
- Use NOCOUNT ON
- File name: Spinrise.DBScripts/02 Stored Procedures/NN_usp_<Module>_<Action>.sql

Generate the complete SQL script.
```

#### **Prompt 2: Generate Complete Backend Module**
```
Context: Read PROJECT_GUIDE.md, DEVELOPMENT_WORKFLOW_GUIDE.md, and PR_Backend_Migration_Guide.md

Task: Generate backend code for [Module Name] module
- Module: [Name]
- Stored Procedure: [usp_<Module>_<Action>]
- SQL Result columns: [col1, col2, col3, ...]
- Actions needed: [Create, Read, Update, Delete, List]
- Division: [Purchase/Inventory/etc.]

Generate files:
1. Domain entity: Spinrise.Domain/Areas/[Division]/[Module]/[Entity].cs
2. DTOs: Spinrise.Application/Areas/.../DTOs/[Create/Update/Response]Dto.cs
3. Interfaces: Spinrise.Application/Areas/.../Interfaces/I[Module]Repository.cs, I[Module]Service.cs
4. Service: Spinrise.Application/Areas/.../Services/[Module]Service.cs
5. Repository: Spinrise.Infrastructure/Areas/.../Repositories/[Module]Repository.cs
6. Controller: Spinrise.API/Areas/.../Controllers/[Module]Controller.cs

Follow patterns from User module.
Use Dapper for database access.
Return Result<T> from service.
Use Success<T>() and Failure() in controller.
```

#### **Prompt 3: Generate Frontend Integration**
```
Context: Read FRONTEND_API_INTEGRATION_GUIDE.md and TECHNICAL_SPEC.md

Task: Create React component and API integration for [Module]

Requirements:
- Module: [Name]
- API endpoints available: [List endpoints created in backend]
- Feature: [What user can do]
- Form fields: [List fields needed]

Generate:
1. src/features/[module]/services/[module]Service.ts — Feature service
2. src/features/[module]/pages/[Module]Page.tsx — React component
3. Use apiHelpers from src/shared/api/client.ts
4. Use Zustand or React state for form management
5. Add error handling and loading states
6. Add form validation

Assumptions:
- accessToken is auto-injected by API client
- Base URL is from VITE_BACKEND_ORIGIN
- Types are auto-generated via npm run generate:api
```

#### **Prompt 4: Verify Integration End-to-End**
```
I've created:
1. DB: [usp_name.sql]
2. Backend: [Module files created]
3. Frontend: [Component created]

Task: Verify the full integration from React component to DB:
1. Check that frontend API endpoint matches backend route
2. Verify DTO structure matches stored procedure parameters
3. Confirm DI registrations in Program.cs
4. Check authorization attributes on controllers
5. Verify error handling in service
6. Confirm response format matches frontend expectations

Provide a checklist of items to verify before testing.
```

---

## Common Pitfalls & Solutions

### 🚨 Pitfall 1: Altering Existing Tables

**Problem:** Developer tries to add a column to an existing table.
```sql
-- ❌ WRONG - Will break production
ALTER TABLE po_prh ADD NewColumn NVARCHAR(100);
```

**Solution:** Use separate lookup table or document workaround.
```sql
-- ✅ CORRECT - Create new table without altering existing
CREATE TABLE dbo.po_prh_extensions (
    Id INT PRIMARY KEY IDENTITY,
    PRId INT NOT NULL REFERENCES po_prh(Id),
    NewData NVARCHAR(100)
);
```

### 🚨 Pitfall 2: Stored Procedure Name Collision

**Problem:** Created `usp_PR_GetAll` but one already exists.
```sql
-- ❌ WRONG - Now duplicate exists
CREATE PROCEDURE dbo.usp_PR_GetAll AS ...
```

**Solution:** Check existing SPs first, use unique naming.
```bash
# Command to list all SPs in database
SELECT name FROM sys.procedures ORDER BY name;
```

### 🚨 Pitfall 3: Missing NULL Default in SP Parameters

**Problem:** New SP parameter breaks old code that doesn't pass it.
```sql
-- ❌ WRONG - Old callers will error
CREATE PROCEDURE dbo.usp_Items_GetAll
    @SearchTerm NVARCHAR(100)  -- No default!
AS ...
```

**Solution:** Always add defaults.
```sql
-- ✅ CORRECT
CREATE PROCEDURE dbo.usp_Items_GetAll
    @SearchTerm NVARCHAR(100) = NULL  -- Default: NULL
AS ...
```

### 🚨 Pitfall 4: Frontend API Types Not Generated

**Problem:** Component uses API client but types are missing.
```typescript
// ❌ WRONG - TypeScript error
const response = await apiHelpers.post('/new-endpoint', data);
// Type `unknown` - no intellisense
```

**Solution:** Regenerate API types after backend changes.
```bash
cd frontend/spinrise-web
npm run generate:api
```

Then types appear:
```typescript
// ✅ CORRECT
const response = await apiHelpers.post<CreatePRResponse>('/new-endpoint', data);
```

### 🚨 Pitfall 5: DI Not Registered in Program.cs

**Problem:** Service injected in controller but never registered.
```csharp
// ❌ WRONG - Will throw DependencyResolutionException at runtime
public PurchaseRequisitionController(IPRService service) { }
// IPRService never registered!
```

**Solution:** Register in `Program.cs`.
```csharp
// ✅ CORRECT
builder.Services.AddScoped<IPRRepository, PRRepository>();
builder.Services.AddScoped<IPRService, PRService>();
```

### 🚨 Pitfall 6: Missing [Authorize] on Secured Endpoint

**Problem:** Endpoint should require JWT token but doesn't check it.
```csharp
// ❌ WRONG - Public endpoint with user data
[HttpGet("my-data")]
public IActionResult GetMyData() { }
```

**Solution:** Add [Authorize] unless intentionally public.
```csharp
// ✅ CORRECT
[HttpGet("my-data")]
[Authorize]  // Required for secured endpoints
public IActionResult GetMyData() { }
```

### 🚨 Pitfall 7: Direct SQL Query Instead of SP

**Problem:** Developer writes inline SQL instead of using stored procedure.
```csharp
// ❌ WRONG - Breaks from established pattern
var sql = "SELECT * FROM po_prh WHERE DivCode = @DivCode";
var result = await connection.QueryAsync<PR>(sql, new { DivCode });
```

**Solution:** Always use stored procedures.
```csharp
// ✅ CORRECT - Follows SP pattern
var result = await connection.QueryAsync<PR>(
    "dbo.usp_PR_GetAll",
    new { DivCode = divCode },
    commandType: CommandType.StoredProcedure
);
```

### 🚨 Pitfall 8: Token Not Included in Frontend Requests

**Problem:** Frontend calls API but JWT token missing.
```typescript
// ❌ WRONG - No token header
const response = await fetch(`${API_URL}/endpoint`, {
  method: 'POST',
  body: JSON.stringify(data)
});
```

**Solution:** Use `apiHelpers` which auto-injects token.
```typescript
// ✅ CORRECT - Token auto-attached
import { apiHelpers } from '@/shared/api/client';
const response = await apiHelpers.post('/endpoint', data);
```

### 🚨 Pitfall 9: Configuration/Connection String Missing

**Problem:** Application runs but can't connect to DB.
```
Error: A network-related or instance-specific error occurred while 
establishing a connection to SQL Server...
```

**Solution:** Verify `appsettings.Development.json`.
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=172.16.16.52\\sql2016;Database=saranya;User Id=sa;Password=YourPassword;"
  }
}
```

### 🚨 Pitfall 10: Result Mapping Mismatch

**Problem:** SP column names don't match entity property names.
```csharp
// ❌ WRONG - Column "DepCode" but property "DepartmentCode"
var items = await connection.QueryAsync<Department>(
    "dbo.usp_Lookup_GetDepartments",
    commandType: CommandType.StoredProcedure
);
// Dapper can't map, properties remain null
```

**Solution:** Match SP column names to entity properties (case-insensitive).
```csharp
// ✅ CORRECT - Names match
// SP columns: DepCode, DepName
// Entity properties: DepCode, DepName
var items = await connection.QueryAsync<Department>(
    "dbo.usp_Lookup_GetDepartments",
    commandType: CommandType.StoredProcedure
);
```

---

## Testing Before Deployment

### Database Testing Checklist
- [ ] SP runs without errors on test DB
- [ ] Returns expected columns and data types
- [ ] Parameters with NULL values work correctly
- [ ] No rows affected in unrelated tables
- [ ] Performance acceptable (< 1s for lookup SPs)

### Backend Testing Checklist
- [ ] All classes compile without errors
- [ ] DI registrations added to Program.cs
- [ ] Endpoints appear in Swagger at `/swagger`
- [ ] Can call endpoint with valid JWT token
- [ ] Error handling returns correct error messages
- [ ] Response format matches Success<T>() pattern

### Frontend Testing Checklist
- [ ] `npm run generate:api` completes successfully
- [ ] New API methods appear in `src/api/generated/`
- [ ] Component imports types without errors
- [ ] Form submission calls correct endpoint
- [ ] Response data displays in component
- [ ] Error messages display correctly
- [ ] No console errors in browser DevTools

### Integration Testing Checklist
- [ ] Backend running: `dotnet run --project Spinrise.API`
- [ ] Frontend running: `npm run dev`
- [ ] Both on same network (localhost or VPN)
- [ ] Backend connection string points to test DB
- [ ] Can log in and receive JWT token
- [ ] Can create/read/update/delete records
- [ ] Can search/filter using SP parameters
- [ ] Performance acceptable under normal load

---

## Quick Reference: File Locations

| Layer | Purpose | Path |
|-------|---------|------|
| **Database** | Stored Procedures | `backend/Spinrise.DBScripts/02 Stored Procedures/NN_usp_*.sql` |
| **Domain** | Entities | `backend/Spinrise.Domain/Areas/<Div>/<Module>/*.cs` |
| **Application** | DTOs | `backend/Spinrise.Application/Areas/<Div>/<Module>/DTOs/*.cs` |
| **Application** | Interfaces | `backend/Spinrise.Application/Areas/<Div>/<Module>/Interfaces/I*.cs` |
| **Application** | Service | `backend/Spinrise.Application/Areas/<Div>/<Module>/Services/*Service.cs` |
| **Application** | Mappings | `backend/Spinrise.Application/Areas/<Div>/<Module>/Mappings/*Mappings.cs` |
| **Infrastructure** | Repository | `backend/Spinrise.Infrastructure/Areas/<Div>/<Module>/*Repository.cs` |
| **API** | Controller | `backend/Spinrise.API/Areas/<Div>/Controllers/*Controller.cs` |
| **Frontend** | Feature Service | `frontend/spinrise-web/src/features/<Module>/services/*Service.ts` |
| **Frontend** | Component/Page | `frontend/spinrise-web/src/features/<Module>/pages/*.tsx` |
| **Frontend** | Generated API | `frontend/spinrise-web/src/api/generated/*.ts` (auto-generated) |

---

## How to Use This Guide

1. **Before starting ANY feature:** Complete [Pre-Development Verification Checklist](#pre-development-verification-checklist)
2. **When creating DB procedure:** Follow [Safe Database Extension Rules](#safe-database-extension-rules)
3. **For architectural questions:** Review [End-to-End Integration Flow](#end-to-end-integration-flow)
4. **When implementing feature:** Follow [Implementation Workflow Guide](#implementation-workflow-guide) in order
5. **When using AI assistance:** Copy relevant [AI Assistance Prompt](#ai-assistance-integration-prompts) 
6. **Troubleshooting:** Check [Common Pitfalls & Solutions](#common-pitfalls--solutions)

---

## Support & Questions

- **Database issues:** Check existing SPs in `backend/Spinrise.DBScripts/02 Stored Procedures/`
- **Backend pattern questions:** Reference `backend/PROJECT_GUIDE.md` and `User` module
- **Frontend integration:** Check `frontend/spinrise-web/FRONTEND_API_INTEGRATION_GUIDE.md`
- **Deployment questions:** See `backend/SETUP_AND_DEPLOYMENT.md`

---

**Version:** 1.0  
**Last Updated:** April 2026  
**Author:** Development Team  
**For:** Complete safe development with existing production database
