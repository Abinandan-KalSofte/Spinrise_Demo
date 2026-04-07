# SPINRISE Development Guide
> For AI-assisted development using Claude Code or any AI assistant.  
> Stack: ASP.NET Core 8 · Dapper · SQL Server · React 18 · TypeScript · Ant Design 5

---

## 1. Pre-Development Verification Checklist

Before writing any new code or stored procedure, confirm the following:

### Database
- [ ] **Identify existing tables** involved — check `/backend/Spinrise.DBScripts/01 Tables/` and query the live `saranya` DB
- [ ] **Check existing SPs** in `/backend/Spinrise.DBScripts/02 Stored Procedures/` — avoid name collisions (`usp_<Module>_<Action>` convention)
- [ ] **Confirm no ALTER TABLE** is required — new features must work with existing columns or use separate tables
- [ ] **Confirm referenced tables exist** — e.g. `in_dep`, `in_item`, `in_cc`, `in_bgrp`, `mm_macmas` are in the live DB but not in DBScripts
- [ ] **Verify SP parameters** match what the backend will pass (data types, nullable fields, defaults)
- [ ] **Run merged.sql** on a test DB before running on `saranya`

### Backend
- [ ] **Check existing service/repo** for the same module — files under `Spinrise.Infrastructure/Areas/<Division>/<Module>/`
- [ ] **Confirm DI registrations** exist in `Program.cs` for the repo/service you will add
- [ ] **Confirm connection string** is reachable — `Server=172.16.16.52\sql2016;Database=saranya`
- [ ] **Review `BaseApiController`** response methods so new controllers use `Success<T>()` / `Failure()`
- [ ] **Check JWT policy** — new controllers need `[Authorize]` unless they are public

### Frontend
- [ ] **Check if API types are generated** — run `npm run generate-api` in `/frontend/spinrise-web/` after any new backend endpoint
- [ ] **Verify base URL** in `.env.development` matches running backend port (`http://localhost:5243/api/v1`)
- [ ] **Check Zustand auth store** — confirm `accessToken` is populated before calling secured endpoints
- [ ] **Check existing feature folder** — `/src/features/<featureName>/` may already exist

---

## 2. Safe DB Extension Rules (No Schema Changes)

Since you are using an **existing production DB (`saranya`)**, follow these rules strictly:

| Rule | Detail |
|------|--------|
| **No ALTER TABLE** | Never modify existing column names, types, or nullability |
| **No DROP** | Never drop or rename existing tables, columns, or SPs |
| **Use CREATE OR ALTER PROCEDURE** | Safe to redeploy SPs without dropping them |
| **Additive-only queries** | SELECT from existing tables; INSERT/UPDATE only rows your module owns |
| **Use SP parameters defensively** | Add `= NULL` defaults to all SP params so old callers are not broken |
| **Prefix SP names** | `usp_<Module>_<Action>` e.g. `usp_Inventory_GetItemList` |
| **Script goes in DBScripts first** | Write the `.sql` file in `02 Stored Procedures/` before calling from backend |

### SP Script Template
```sql
-- File: 02 Stored Procedures/01_usp_<Module>_<Action>.sql
CREATE OR ALTER PROCEDURE dbo.usp_<Module>_<Action>
    @DivCode       NVARCHAR(10),
    @Param1        NVARCHAR(100) = NULL,   -- always provide defaults
    @Param2        INT           = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- validation
    IF @DivCode IS NULL
    BEGIN
        RAISERROR('DivCode is required', 16, 1);
        RETURN;
    END

    -- main query
    SELECT
        col1,
        col2
    FROM dbo.existing_table
    WHERE DivCode = @DivCode
      AND (@Param1 IS NULL OR col1 = @Param1);
END
GO
```

---

## 3. Full-Stack Integration: How the Layers Connect

```
[React Page]
    ↓  calls hook
[useApi hook]          /src/shared/hooks/useApi.ts
    ↓  calls service
[Feature Service]      /src/features/<name>/services/<name>Service.ts
    ↓  uses axios helper
[API Client]           /src/shared/api/client.ts  (auto-attaches JWT)
    ↓  HTTP request
[ASP.NET Controller]   /backend/Spinrise.API/Areas/<Div>/Controllers/
    ↓  calls service
[Application Service]  /backend/Spinrise.Application/Areas/<Div>/<Module>/Services/
    ↓  calls repository
[Repository]           /backend/Spinrise.Infrastructure/Areas/<Div>/<Module>/
    ↓  Dapper ExecuteAsync / QueryAsync
[Stored Procedure]     dbo.usp_<Module>_<Action>  (in saranya DB)
```

---

## 4. Step-by-Step: Adding a New Feature

Follow this exact order every time.

### Step 1 — Write the Stored Procedure(s)

1. Create file `backend/Spinrise.DBScripts/02 Stored Procedures/NN_usp_<Module>_<Action>.sql`
2. Use `CREATE OR ALTER PROCEDURE`
3. Test manually against the live DB via SSMS
4. Re-run `merge.bat` to update `merged.sql`

### Step 2 — Add the Domain Entity

File: `backend/Spinrise.Domain/Areas/<Division>/<Module>/<EntityName>.cs`

```csharp
namespace Spinrise.Domain.Areas.<Division>.<Module>;

public class <EntityName>
{
    public string DivCode { get; set; } = string.Empty;
    public int Id { get; set; }
    // ... columns matching SP result set
}
```

### Step 3 — Add DTOs

File: `backend/Spinrise.Application/Areas/<Division>/<Module>/DTOs/`

```csharp
// <EntityName>Dto.cs  — what the API returns
// Create<EntityName>Request.cs — what the API accepts on POST
// Update<EntityName>Request.cs — what the API accepts on PUT
```

Add a mapper (extension method) in `<EntityName>Mappings.cs`:

```csharp
public static <EntityName>Dto ToDto(this <EntityName> entity) => new() { ... };
```

### Step 4 — Define the Repository Interface

File: `backend/Spinrise.Application/Areas/<Division>/<Module>/Interfaces/I<EntityName>Repository.cs`

```csharp
public interface I<EntityName>Repository
{
    Task<IEnumerable<<EntityName>>> GetAllAsync(string divCode, CancellationToken ct = default);
    Task<<EntityName>?> GetByIdAsync(string divCode, int id, CancellationToken ct = default);
    Task<int> InsertAsync(<EntityName> entity, CancellationToken ct = default);
    Task UpdateAsync(<EntityName> entity, CancellationToken ct = default);
    Task DeleteAsync(string divCode, int id, CancellationToken ct = default);
}
```

### Step 5 — Implement the Repository (Dapper)

File: `backend/Spinrise.Infrastructure/Areas/<Division>/<Module>/<EntityName>Repository.cs`

```csharp
public sealed class <EntityName>Repository(IDbConnectionFactory dbFactory) : I<EntityName>Repository
{
    public async Task<IEnumerable<<EntityName>>> GetAllAsync(string divCode, CancellationToken ct = default)
    {
        using var conn = await dbFactory.CreateAsync(ct);
        return await conn.QueryAsync<<EntityName>>(
            "usp_<Module>_GetAll",
            new { DivCode = divCode },
            commandType: CommandType.StoredProcedure);
    }

    public async Task<int> InsertAsync(<EntityName> entity, CancellationToken ct = default)
    {
        using var conn = await dbFactory.CreateAsync(ct);
        return await conn.ExecuteScalarAsync<int>(
            "usp_<Module>_Insert",
            new { entity.DivCode, entity.Field1, entity.Field2 },
            commandType: CommandType.StoredProcedure);
    }
    // ... remaining methods
}
```

### Step 6 — Define the Service Interface

File: `backend/Spinrise.Application/Areas/<Division>/<Module>/Interfaces/I<EntityName>Service.cs`

```csharp
public interface I<EntityName>Service
{
    Task<IEnumerable<<EntityName>Dto>> GetAllAsync(string divCode, CancellationToken ct = default);
    Task<<EntityName>Dto?> GetByIdAsync(string divCode, int id, CancellationToken ct = default);
    Task<int> CreateAsync(Create<EntityName>Request request, CancellationToken ct = default);
    Task UpdateAsync(int id, Update<EntityName>Request request, CancellationToken ct = default);
    Task DeleteAsync(string divCode, int id, CancellationToken ct = default);
}
```

### Step 7 — Implement the Service

File: `backend/Spinrise.Application/Areas/<Division>/<Module>/Services/<EntityName>Service.cs`

```csharp
public sealed class <EntityName>Service(I<EntityName>Repository repo) : I<EntityName>Service
{
    public async Task<IEnumerable<<EntityName>Dto>> GetAllAsync(string divCode, CancellationToken ct = default)
    {
        var items = await repo.GetAllAsync(divCode, ct);
        return items.Select(x => x.ToDto());
    }
    // ... remaining methods
}
```

### Step 8 — Register DI in Program.cs

File: `backend/Spinrise.API/Program.cs`

```csharp
// In the DI section, grouped with other module registrations:
builder.Services.AddScoped<I<EntityName>Repository, <EntityName>Repository>();
builder.Services.AddScoped<I<EntityName>Service, <EntityName>Service>();
```

### Step 9 — Add the Controller

File: `backend/Spinrise.API/Areas/<Division>/Controllers/<EntityName>Controller.cs`

```csharp
[ApiController]
[Route("api/v1/<entity-route>")]
[Authorize]
public sealed class <EntityName>Controller(I<EntityName>Service service) : BaseApiController
{
    [HttpGet]
    public async Task<IActionResult> GetAll([FromQuery] string divCode, CancellationToken ct)
    {
        var result = await service.GetAllAsync(divCode, ct);
        return Success(result);
    }

    [HttpGet("{id:int}")]
    public async Task<IActionResult> GetById(string divCode, int id, CancellationToken ct)
    {
        var result = await service.GetByIdAsync(divCode, id, ct);
        return result is null ? Failure("Not found") : Success(result);
    }

    [HttpPost]
    public async Task<IActionResult> Create([FromBody] Create<EntityName>Request request, CancellationToken ct)
    {
        var id = await service.CreateAsync(request, ct);
        return Success(new { id }, "Created successfully");
    }

    [HttpPut("{id:int}")]
    public async Task<IActionResult> Update(int id, [FromBody] Update<EntityName>Request request, CancellationToken ct)
    {
        await service.UpdateAsync(id, request, ct);
        return SuccessMessage("Updated successfully");
    }

    [HttpDelete("{id:int}")]
    public async Task<IActionResult> Delete([FromQuery] string divCode, int id, CancellationToken ct)
    {
        await service.DeleteAsync(divCode, id, ct);
        return SuccessMessage("Deleted successfully");
    }
}
```

### Step 10 — Generate Frontend API Types

```bash
cd frontend/spinrise-web
npm run generate-api    # reads swagger from localhost:5243 → generates src/api/generated/
```

> Backend must be running for this to work.

### Step 11 — Add Frontend Feature Module

```
src/features/<featureName>/
├── api/
│   └── <featureName>Api.ts        # wraps generated axios client or manual calls
├── components/
│   └── <FeatureName>Table.tsx     # Ant Design ProTable or Table
│   └── <FeatureName>Form.tsx      # Ant Design Form
├── pages/
│   └── <FeatureName>Page.tsx      # route-level component
├── store/
│   └── use<FeatureName>Store.ts   # Zustand store (optional)
├── hooks/
│   └── use<FeatureName>.ts        # useApi wrapper
└── types.ts                       # local TypeScript types
```

**API service pattern** (`<featureName>Api.ts`):
```typescript
import { apiHelpers } from '@/shared/api/client';
import type { <EntityName>Dto, Create<EntityName>Request } from '@/api/generated';

export const <featureName>Api = {
  getAll: (divCode: string) =>
    apiHelpers.get<<EntityName>Dto[]>(`/<entity-route>?divCode=${divCode}`),

  getById: (divCode: string, id: number) =>
    apiHelpers.get<<EntityName>Dto>(`/<entity-route>/${id}?divCode=${divCode}`),

  create: (payload: Create<EntityName>Request) =>
    apiHelpers.post<<EntityName>Dto>(`/<entity-route>`, payload),

  update: (id: number, payload: Partial<Create<EntityName>Request>) =>
    apiHelpers.put(`/<entity-route>/${id}`, payload),

  delete: (divCode: string, id: number) =>
    apiHelpers.delete(`/<entity-route>/${id}?divCode=${divCode}`),
};
```

**Hook pattern** (`use<FeatureName>.ts`):
```typescript
import { useApi } from '@/shared/hooks/useApi';
import { <featureName>Api } from '../api/<featureName>Api';

export function use<FeatureName>List(divCode: string) {
  const { data, loading, error, execute } = useApi(
    () => <featureName>Api.getAll(divCode),
    { immediate: true }
  );
  return { items: data ?? [], loading, error, refresh: execute };
}
```

### Step 12 — Register the Route

File: `frontend/spinrise-web/src/routes/`

```typescript
{
  path: '/<feature-path>',
  element: <lazy(() => import('@/features/<featureName>/pages/<FeatureName>Page'))>,
}
```

---

## 5. Key File Locations (Quick Reference)

| What | Where |
|------|-------|
| Connection string | `backend/Spinrise.API/appsettings.json` |
| DI registrations | `backend/Spinrise.API/Program.cs` |
| DB connection factory | `backend/Spinrise.Infrastructure/Data/DbConnectionFactory.cs` |
| Unit of Work | `backend/Spinrise.Infrastructure/Data/UnitOfWork.cs` |
| Base controller | `backend/Spinrise.API/Controllers/BaseApiController.cs` |
| Exception middleware | `backend/Spinrise.API/Middleware/ExceptionHandlingMiddleware.cs` |
| Axios client + helpers | `frontend/spinrise-web/src/shared/api/client.ts` |
| useApi hook | `frontend/spinrise-web/src/shared/hooks/useApi.ts` |
| Auth Zustand store | `frontend/spinrise-web/src/features/auth/store/` |
| Orval config | `frontend/spinrise-web/orval.config.ts` |
| DB scripts root | `backend/Spinrise.DBScripts/` |
| Existing PR repository | `backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/` |

---

## 6. SP Naming Convention

```
usp_<ModulePrefix>_<Action>

Examples:
  usp_PR_GetAll
  usp_PR_Insert
  usp_Inv_GetItemList
  usp_User_GetAllPaginated
  usp_Auth_ValidateUser
```

---

## 7. Response Envelope (Always Use)

All API responses use this structure:

```json
{
  "success": true,
  "message": "Operation successful",
  "data": { ... },
  "errors": null
}
```

Use `BaseApiController` methods:
- `Success(data)` — 200 with data
- `Success(data, "Custom message")` — 200 with message
- `SuccessMessage("Done")` — 200 no data
- `Failure("Error message")` — 400 with message

---

## 8. Authentication Quick Reference

| Token | Lifetime | Storage |
|-------|----------|---------|
| Access token | 30 minutes | Zustand (memory) |
| Refresh token | 7 days | Zustand (persisted) |

- Backend: `[Authorize]` on controller = JWT required
- Backend: `[AllowAnonymous]` = no JWT required (login endpoint)
- Frontend: Axios interceptor auto-attaches `Authorization: Bearer <token>`
- Frontend: 401 response → `clearAuthSession()` → redirect to login

---

## 9. Common Mistakes to Avoid

| Mistake | Correct Approach |
|---------|-----------------|
| Calling `DROP PROCEDURE` in scripts | Use `CREATE OR ALTER PROCEDURE` |
| Returning entities directly from controller | Always map to DTOs |
| String concatenation in SQL | Always use `@Param` placeholders |
| `ALTER TABLE` on existing tables | Add a new table instead, or use optional joins |
| Hardcoding DivCode | Always pass DivCode as parameter |
| Not disposing DB connections | Always use `using var conn = await dbFactory.CreateAsync()` |
| Calling `execute()` inside `useEffect` without cleanup | Use `useApi` hook's `immediate` flag |
| Forgetting to run `generate-api` after new endpoints | Run after every new controller route |

---

## 10. Development Commands

```bash
# Backend
cd backend
dotnet build Spinrise.sln
dotnet run --project Spinrise.API          # runs on http://localhost:5243
dotnet test Spinrise.Tests                 # run all unit tests

# Frontend
cd frontend/spinrise-web
npm install
npm run dev                                # runs on http://localhost:5173
npm run generate-api                       # regenerate API types from swagger
npm run build                              # production build
npm run test                               # vitest

# DB Scripts
cd backend/Spinrise.DBScripts
merge.bat                                  # rebuilds merged.sql from numbered files
```

---

## 11. Telling the AI What to Build (Prompt Template)

When asking Claude Code or another AI to implement a new feature, provide this context block:

```
Feature: <Feature Name>
Module prefix: <e.g. INV, PO, HR>
Division: <e.g. Inventory, Purchase, HR>
Existing DB tables involved: <list them>
New SP(s) needed: <usp_XX_GetAll, usp_XX_Insert, etc.>
Fields to expose: <list columns>
Endpoints needed: GET /api/v1/<route>, POST /api/v1/<route>, etc.
Auth required: yes / no
Frontend page: <list/form/both>

Follow DEV_GUIDE.md Step 1–12 in order.
Do not ALTER any existing tables.
Use CREATE OR ALTER PROCEDURE for all SPs.
```

---

*Last updated: 2026-04-06 | Stack: ASP.NET Core 8 · Dapper · SQL Server · React 18 · TypeScript · Ant Design 5*
