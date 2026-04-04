# Spinrise Project Context for AI Assistants

## Project Overview
Spinrise is an enterprise ERP system built with ASP.NET Core 8 backend and React 18 frontend. The system follows a clean layered architecture with Dapper ORM and stored procedures for data access.

## Architecture Principles

### Backend (ASP.NET Core 8)
- **Layered Architecture**: API → Application → Infrastructure → Domain
- **Data Access**: Dapper with SQL Server stored procedures (no Entity Framework)
- **Authentication**: JWT tokens with refresh token support
- **API Design**: RESTful with standardized response envelopes
- **Error Handling**: Global exception middleware with correlation IDs
- **Testing**: xUnit + Moq for unit tests, FluentAssertions for assertions

### Frontend (React 18 + TypeScript)
- **Build Tool**: Vite with TypeScript strict mode
- **State Management**: Zustand with persistence middleware
- **UI Library**: Ant Design 5 with custom design system wrapper
- **API Client**: Axios with interceptors for auth and error handling
- **Testing**: Vitest + MSW for mocking
- **Routing**: React Router v7 with lazy loading

## Key Patterns & Conventions

### Backend Patterns
1. **Controller Inheritance**: All controllers inherit from `BaseApiController`
2. **Service Layer**: Business logic with Unit of Work for transactions
3. **Repository Pattern**: Dapper queries wrapped in repositories
4. **DTO Mapping**: Extension methods for entity ↔ DTO conversion
5. **Stored Procedures**: All data access through parameterized SPs
6. **Division-Based Organization**: `Areas/Division/Module/` structure

### Frontend Patterns
1. **Feature Modules**: Each domain in `src/features/featureName/`
2. **Shared Layer**: Cross-feature utilities in `src/shared/`
3. **UI Components**: Wrapped Ant Design components
4. **API Services**: Feature-specific API calls
5. **Custom Hooks**: Business logic extraction
6. **Type Safety**: Strict TypeScript with generated API types

## Current Implementation Status

### ✅ Completed
- User management (CRUD, auth, pagination)
- JWT authentication with roles
- Database infrastructure (Unit of Work, Dapper)
- API standardization (BaseApiController, middleware)
- Frontend auth flow and routing
- Testing setup (unit tests, MSW)
- Build configurations

### 🚧 In Progress
- Purchase Requisition module (detailed guide exists)
- Frontend error boundaries and loading states
- Integration tests

### 📋 Planned
- Additional ERP modules 
- Advanced features ( reports, notifications)
- Production deployment configurations

## Common Tasks & Solutions

### Adding a New Module
1. Follow the User module pattern exactly
2. Create database tables and stored procedures first
3. Implement Domain → Infrastructure → Application → API layers
4. Add unit tests for service and repository layers
5. Update DI registrations in Program.cs
6. Add frontend feature module with API integration

### Database Changes
1. Add scripts to `Spinrise.DBScripts/01 Tables/`
2. Add stored procedures to `Spinrise.DBScripts/02 Stored Procedures/`
3. Update merged script `00_Run_All.sql`
4. Use parameterized queries only (no string concatenation)

### API Integration
1. Use `orval` to generate types from Swagger
2. Add API calls to feature's `api/` folder
3. Handle errors through shared error handler
4. Use correlation IDs for debugging

### Testing
1. Mock all dependencies in unit tests
2. Use FluentAssertions for readable assertions
3. Test both success and error paths
4. Follow AAA pattern (Arrange, Act, Assert)

## Critical Rules

### Security
- Never expose entities directly in APIs (use DTOs)
- Validate all inputs on DTOs with DataAnnotations
- Use parameterized queries to prevent SQL injection
- Store secrets in configuration, not code

### Performance
- Use async/await throughout the stack
- Implement pagination for list endpoints
- Use transactions only when necessary
- Profile and optimize database queries

### Maintainability
- Keep methods small and focused
- Use dependency injection everywhere
- Log important operations with correlation IDs
- Write comprehensive unit tests

### Scalability
- Design for horizontal scaling
- Use background jobs for long-running tasks
- Implement caching where appropriate
- Monitor performance metrics

## File Structure Reference

```
backend/
├── Spinrise.API/                    # HTTP layer
│   ├── Controllers/BaseApiController.cs
│   ├── Middleware/ExceptionHandlingMiddleware.cs
│   └── Areas/Division/Controllers/
├── Spinrise.Application/           # Business logic
│   ├── Areas/Division/Module/Services/
│   ├── Areas/Division/Module/DTOs/
│   └── Interfaces/
├── Spinrise.Infrastructure/        # Data access
│   ├── Areas/Division/Module/Repositories/
│   └── Data/UnitOfWork.cs
├── Spinrise.Domain/                # Entities
│   └── Areas/Division/Module/
├── Spinrise.DBScripts/             # Database artifacts
└── Spinrise.Tests/                 # Test suite

frontend/spinrise-web/
├── src/
│   ├── features/                   # Business domains
│   │   └── featureName/
│   │       ├── api/                # API calls
│   │       ├── components/         # UI components
│   │       ├── pages/              # Route components
│   │       ├── store/              # Zustand stores
│   │       ├── types.ts            # TypeScript types
│   │       └── services/           # Business logic
│   ├── shared/                     # Cross-feature code
│   │   ├── api/client.ts           # Axios setup
│   │   ├── ui/                     # Design system
│   │   ├── hooks/                  # Reusable hooks
│   │   └── lib/                    # Utilities
│   ├── routes/                     # Router configuration
│   └── App.tsx                     # Root component
└── package.json
```

## Development Workflow

1. **Planning**: Review PROJECT_GUIDE.md and existing patterns
2. **Database**: Create tables and stored procedures first
3. **Backend**: Implement layers from Domain → API
4. **Testing**: Write unit tests alongside implementation
5. **Frontend**: Create feature module with API integration
6. **Integration**: Test end-to-end functionality
7. **Documentation**: Update guides and add comments

## Troubleshooting

### Common Issues
- **Build Errors**: Check vite.config.ts imports and TypeScript strict mode
- **API 401**: Verify JWT token in request headers
- **DB Connection**: Check connection string and SQL Server availability
- **CORS Errors**: Verify frontend origin in CORS policy
- **Test Failures**: Check mock setups and async handling

### Debugging
- Use correlation IDs from API responses
- Check application logs with structured logging
- Use browser dev tools for frontend debugging
- Use SQL Server Profiler for database queries

## Quality Standards

- **Code Coverage**: Target 80%+ for services and repositories
- **Performance**: API responses under 500ms
- **Security**: OWASP Top 10 compliance
- **Accessibility**: WCAG 2.1 AA compliance
- **Documentation**: All public APIs documented

---

*This context file should be updated whenever significant architectural changes are made to the project.*