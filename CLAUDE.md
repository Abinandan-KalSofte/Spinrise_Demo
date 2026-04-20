# CLAUDE.md — Spinrise ERP

## Project Overview

Spinrise is an enterprise ERP system.

- **Backend**: ASP.NET Core 8, clean layered architecture, Dapper + SQL Server stored procedures (no Entity Framework)
- **Frontend**: React 18 + TypeScript, Vite, Ant Design 5, Zustand, React Router v7

Working directory layout:
```
Development/
├── backend/         # .NET solution (Spinrise.sln)
└── frontend/        # spinrise-web (Vite/React)
DOCs/                # Project documentation & guides
```

---

## Backend Architecture

**Flow**: `Controller → Service → Repository → Stored Procedure → SQL Server`

| Project | Responsibility |
|---|---|
| `Spinrise.API` | HTTP layer, routing, middleware, Swagger |
| `Spinrise.Application` | Business logic, DTOs, interfaces, mapping |
| `Spinrise.Infrastructure` | Dapper queries, SP execution, Unit of Work |
| `Spinrise.Domain` | Core entities |
| `Spinrise.Shared` | Cross-cutting utilities |
| `Spinrise.DBScripts` | SQL tables, stored procedures, seed data |
| `Spinrise.Tests` | xUnit + Moq unit tests |

**Folder convention**: `Areas/<Division>/<Module>/` across all layers.

**Reference module**: `User` (Administration division) — follow it exactly for all new modules.

### Key Files
- `Spinrise.API/Controllers/BaseApiController.cs` — all controllers inherit this
- `Spinrise.API/Middleware/ExceptionHandlingMiddleware.cs`
- `Spinrise.API/Models/ApiResponse.cs` / `ApiResponseOfT.cs`
- `Spinrise.Infrastructure/Data/UnitOfWork.cs`

### Rules
- All data access through parameterized stored procedures — no raw string SQL, no EF
- Never expose domain entities in API responses — always use DTOs
- Validate inputs via DataAnnotations on DTOs
- Use async/await throughout
- Implement pagination on all list endpoints
- Use correlation IDs for logging and error tracking
- DI registrations go in `Program.cs`

---

## Frontend Architecture

**Location**: `Development/frontend/spinrise-web/`

**Stack**: React 18, TypeScript (strict), Vite, Ant Design 5, Zustand, Axios, React Router v7, Vitest + MSW

**Feature module structure**:
```
src/features/<featureName>/
├── api/           # Axios API calls
├── components/    # UI components
├── pages/         # Route-level components
├── store/         # Zustand stores
├── services/      # Business logic hooks
└── types.ts       # TypeScript types
```

**Shared layer**: `src/shared/` — Axios client, design system wrappers, reusable hooks, utilities.

### Rules
- Strict TypeScript — no `any`
- Use Ant Design via the shared UI wrapper, not directly
- API types generated with `orval` from Swagger
- Errors handled centrally via shared error handler
- Lazy-load all route-level components

---

## Database Changes

1. Add table scripts → `Spinrise.DBScripts/01 Tables/`
2. Add stored procedures → `Spinrise.DBScripts/02 Stored Procedures/`
3. Update the merged script → `Spinrise.DBScripts/00_Run_All.sql`
4. Parameterized queries only — never string concatenation

---

## Adding a New Module

1. Create DB tables and stored procedures first
2. Implement layers in order: Domain → Infrastructure → Application → API
3. Register services and repositories in `Program.cs`
4. Write unit tests for service and repository layers (target 80%+ coverage)
5. Create frontend feature module following the structure above
6. Generate API types with `orval`

---

## Testing

- Framework: xUnit + Moq + FluentAssertions (backend), Vitest + MSW (frontend)
- Pattern: Arrange / Act / Assert
- Mock all dependencies in unit tests
- Test both success and error paths

---

## Quality Standards

- API response time: < 500ms
- Code coverage: 80%+ on services and repositories
- Security: OWASP Top 10 compliance; secrets in config, never in code
- Accessibility: WCAG 2.1 AA

---

## Key Documentation

- `Development/AI_CONTEXT.md` — architecture summary for AI context
- `Development/backend/PROJECT_GUIDE.md` — backend patterns reference
- `Development/backend/DEVELOPMENT_WORKFLOW_GUIDE.md` — dev workflow
- `Development/backend/TESTING_GUIDE.md` — testing conventions
- `Development/backend/SETUP_AND_DEPLOYMENT.md` — environment setup
- `Development/frontend/Guide.md` — frontend guide
- `DOCs/` — design documents and blueprints
