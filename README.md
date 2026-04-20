# Spinrise ERP

Enterprise Resource Planning system built with ASP.NET Core 8 and React 18.

---

## Table of Contents

- [Overview](#overview)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Backend Setup](#backend-setup)
  - [Frontend Setup](#frontend-setup)
- [Architecture](#architecture)
  - [Backend](#backend)
  - [Frontend](#frontend)
- [Modules](#modules)
- [API Documentation](#api-documentation)
- [Database](#database)
- [Testing](#testing)
- [Deployment](#deployment)
- [Code Standards](#code-standards)

---

## Overview

Spinrise is a full-stack ERP platform designed for enterprise operations. It provides modules for Administration, Purchase, Inventory, and Security — all built on a clean layered architecture with SQL Server stored procedures as the exclusive data access layer.

---

## Tech Stack

### Backend
| Technology | Version | Purpose |
|---|---|---|
| ASP.NET Core | 8.0 | REST API, middleware, routing |
| Dapper | 2.1 | Micro-ORM for stored procedure execution |
| SQL Server | 2019+ | Primary database |
| JWT Bearer | 8.0 | Authentication & authorization |
| Swagger / Swashbuckle | 6.5 | API documentation |
| xUnit + Moq | Latest | Unit testing |

### Frontend
| Technology | Version | Purpose |
|---|---|---|
| React | 18.3 | UI framework |
| TypeScript | 5.9 (strict) | Type safety |
| Vite | 8.0 | Build tool & dev server |
| Ant Design | 5.29 | Component library |
| Zustand | 5.0 | State management |
| React Router | 7.13 | Client-side routing |
| Axios | 1.14 | HTTP client |
| Orval | 7.4 | API type generation from Swagger |
| Vitest + MSW | Latest | Unit testing & API mocking |

---

## Project Structure

```
Spinrise/
├── Development/
│   ├── Backend/                        # .NET solution
│   │   ├── Spinrise.API/               # HTTP layer — controllers, middleware, models
│   │   ├── Spinrise.Application/       # Business logic, DTOs, interfaces
│   │   ├── Spinrise.Infrastructure/    # Dapper repositories, Unit of Work
│   │   ├── Spinrise.Domain/            # Core entities
│   │   ├── Spinrise.Shared/            # Cross-cutting utilities
│   │   ├── Spinrise.DBScripts/         # SQL tables, stored procedures, seed data
│   │   └── Spinrise.Tests/             # xUnit unit tests
│   └── spinrise-web/                   # React frontend
│       └── src/
│           ├── features/               # Feature modules (auth, purchase, etc.)
│           ├── shared/                 # Shared UI, hooks, utils, API client
│           └── test/                   # MSW handlers, Vitest setup
├── Docs/                               # Design documents & FSD blueprints
├── CLAUDE.md                           # AI context & coding conventions
└── README.md
```

### Backend layer responsibilities

```
Controller → Service → Repository → Stored Procedure → SQL Server
```

| Project | Responsibility |
|---|---|
| `Spinrise.API` | HTTP routing, middleware pipeline, Swagger, response models |
| `Spinrise.Application` | Business logic, DTO definitions, service interfaces |
| `Spinrise.Infrastructure` | Dapper query execution, Unit of Work, SP calls |
| `Spinrise.Domain` | Core domain entities |
| `Spinrise.Shared` | Shared utilities, JWT helpers, extension methods |
| `Spinrise.DBScripts` | Versioned SQL scripts — tables, SPs, seed data |
| `Spinrise.Tests` | Unit tests for services and repositories |

All projects follow the folder convention: `Areas/<Division>/<Module>/`

---

## Getting Started

### Prerequisites

| Tool | Version |
|---|---|
| .NET SDK | 8.0+ |
| SQL Server | 2019+ |
| Node.js | 20+ |
| Visual Studio | 2022 (recommended) or VS Code |

### Backend Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Spinrise
   ```

2. **Configure the database connection**

   Create `Development/Backend/Spinrise.API/appsettings.Development.json`:
   ```json
   {
     "ConnectionStrings": {
       "DefaultConnection": "Server=YOUR_SERVER;Database=SpinriseDB;Trusted_Connection=True;"
     },
     "Jwt": {
       "SecretKey": "your-secret-key-min-32-chars",
       "Issuer": "SpinriseAPI",
       "Audience": "SpinriseClient",
       "AccessTokenExpiryMinutes": 60,
       "RefreshTokenExpiryDays": 7
     },
     "Cors": {
       "AllowedOrigins": ["http://localhost:5173"]
     }
   }
   ```

3. **Apply database scripts** (run in order)
   ```
   Development/Backend/Spinrise.DBScripts/Scripts/01 Tables/
   Development/Backend/Spinrise.DBScripts/Scripts/02 Stored Procedures/
   ```
   Or use the merge utility:
   ```bash
   cd Development/Backend/Spinrise.DBScripts
   merge.bat
   # then execute Scripts/00_Run_All.sql against your SQL Server instance
   ```

4. **Run the API**
   ```bash
   cd Development/Backend
   dotnet run --project Spinrise.API/Spinrise.API.csproj
   ```
   API is available at `https://localhost:5243`
   Swagger UI at `https://localhost:5243` (root)

### Frontend Setup

1. **Install dependencies**
   ```bash
   cd Development/spinrise-web
   npm install
   ```

2. **Configure environment**

   Create `.env` in `Development/spinrise-web/`:
   ```env
   VITE_API_BASE_URL=https://localhost:5243
   ```

3. **Generate API types** (requires the API to be running)
   ```bash
   npm run generate:api
   ```

4. **Start the dev server**
   ```bash
   npm run dev
   ```
   App runs at `http://localhost:5173`

---

## Architecture

### Backend

- **No Entity Framework** — all data access is through parameterized SQL Server stored procedures via Dapper
- **Unit of Work** pattern wraps all repository calls in a single transaction scope
- **JWT authentication** with access + refresh token flow
- **Rate limiting** middleware protects all endpoints
- **Correlation IDs** (`X-Correlation-ID`) on every request for end-to-end tracing
- **Centralized exception handling** via `ExceptionHandlingMiddleware`
- **Consistent API envelope**:
  ```json
  {
    "success": true,
    "message": "Operation completed.",
    "data": { ... },
    "errors": {}
  }
  ```
- **Pagination** implemented on all list endpoints

### Frontend

- **Feature-first structure** — each module owns its API calls, components, pages, store, and types
- **Shared UI layer** wraps Ant Design — never import Ant Design directly in feature code
- **Zustand** for lightweight global state (auth, notifications)
- **Orval** generates typed Axios hooks from the Swagger spec — no hand-written API types
- **Lazy-loaded routes** for all page-level components
- **Centralized error handling** via shared error handler

---

## Modules

| Division | Module | Status |
|---|---|---|
| Administration | Users | Active |
| Administration | Departments | Active |
| Administration | Lookups | Active |
| Security | Authentication | Active |
| Purchase | Purchase Requisition | Active |
| Purchase | Purchase Reports | Active |

---

## API Documentation

Swagger UI is served at the API root in Development mode:

```
https://localhost:5243
```

All endpoints require a Bearer token except:
- `GET /api/v1/health`
- `POST /api/v1/auth/login`
- `POST /api/v1/auth/refresh`

---

## Database

All schema changes follow this workflow:

1. Add table script → `Spinrise.DBScripts/Scripts/01 Tables/`
2. Add stored procedure → `Spinrise.DBScripts/Scripts/02 Stored Procedures/`
3. Update the merged run-all script → `Spinrise.DBScripts/Scripts/00_Run_All.sql`

**Rules:**
- Parameterized stored procedures only — no raw SQL string concatenation anywhere
- No schema changes via application code or ORM migrations

---

## Testing

### Backend

```bash
cd Development/Backend
dotnet test Spinrise.Tests/Spinrise.Tests.csproj
```

- Framework: xUnit + Moq + FluentAssertions
- Pattern: Arrange / Act / Assert
- All service and repository dependencies are mocked
- Target: 80%+ coverage on services and repositories

### Frontend

```bash
cd Development/spinrise-web
npm test
```

- Framework: Vitest + Testing Library + MSW
- MSW handlers mock all API calls at the network layer

---

## Deployment

### IIS (Production)

1. **Stop the application pool** before deploying (prevents DLL lock)
2. Publish the API:
   ```bash
   dotnet publish Spinrise.API/Spinrise.API.csproj -c Release -o ./publish
   ```
3. Copy `publish/` contents to the IIS site folder
4. **Start the application pool**

Build the frontend:
```bash
cd Development/spinrise-web
npm run build
# dist/ output goes to the configured IIS static files path
```

**Environment variables for production** (`appsettings.Production.json` or IIS environment):
- `ConnectionStrings__DefaultConnection`
- `Jwt__SecretKey`
- `Cors__AllowedOrigins`

### Health Check

```
GET /api/v1/health
```

---

## Code Standards

- **Security**: OWASP Top 10 compliant — no secrets in code, parameterized queries only, JWT with short-lived access tokens
- **Performance**: API response target < 500ms; all list endpoints paginated
- **Accessibility**: WCAG 2.1 AA on frontend components
- **TypeScript**: strict mode, no `any`
- **Commits**: conventional commit messages (`feat:`, `fix:`, `refactor:`, etc.)

For full coding conventions see [`CLAUDE.md`](./CLAUDE.md).
