# AI Prompt Templates for Spinrise Project

This file contains ready-to-use prompt templates optimized for each AI tool. Copy and customize these templates for your specific needs.

## Claude Prompt Templates

### New Module Architecture Design
```
Context: Spinrise ERP project with ASP.NET Core 8 backend and React 18 frontend
Current Pattern: User module (see PROJECT_GUIDE.md)
Task: Design complete [ModuleName] module architecture
Requirements:
- Follow layered architecture: API → Application → Infrastructure → Domain
- Use Dapper with stored procedures
- Include Areas/[Division]/[Module] folder structure
- Implement CRUD operations with validation
- Add comprehensive unit tests

Design the architecture for [ModuleName] module including:
1. Database tables and relationships
2. API endpoints and DTOs
3. Service layer with business logic
4. Repository layer with Dapper queries
5. Frontend feature module structure
6. Testing strategy
```

### Code Implementation
```
Project: Spinrise ERP (ASP.NET Core 8 + React + TypeScript)
Reference Pattern: [Copy relevant code from existing module]
Task: Implement [specific component] following established patterns
Constraints:
- Must use [specific technologies/patterns]
- Follow [PROJECT_GUIDE.md] conventions
- Include proper error handling and logging

Generate the complete [component] with:
- [List specific requirements]
- Proper dependency injection
- Unit tests
- Documentation comments
```

### Code Review
```
Review this code for adherence to Spinrise patterns:
[code snippet]

Check against:
- PROJECT_GUIDE.md layered architecture
- User module implementation patterns
- Security best practices
- Error handling conventions
- Dependency injection setup

Provide specific recommendations for improvements.
```

## Copilot Comment Templates

### Controller Implementation
```csharp
// Create [Entity]Controller following UserController pattern
// Inherit from BaseApiController
// Use Areas/[Division] routing
// Include CRUD endpoints with proper authorization
// Handle validation and error responses
[Area("[Division]")]
[Route("api/v1/[division]/[entities]")]
public class [Entity]Controller : BaseApiController
{
    // Copilot will generate constructor and methods
}
```

### Service Implementation
```csharp
// Implement [Entity]Service following UserService pattern
// Use UnitOfWork for transactions
// Include business logic validation
// Handle logging and error management
public class [Entity]Service : I[Entity]Service
{
    private readonly I[Entity]Repository _repo;
    private readonly IUnitOfWork _uow;
    private readonly ILogger<[Entity]Service> _logger;

    // Constructor with dependency injection
    // CRUD methods with transaction management
    // Validation logic
}
```

### Repository Implementation
```csharp
// Create [Entity]Repository following UserRepository pattern
// Use Dapper with stored procedures
// Include UnitOfWork integration
// Handle database operations safely
public class [Entity]Repository : I[Entity]Repository
{
    private readonly IUnitOfWork _uow;

    // Constructor
    // CRUD methods using Dapper
    // Stored procedure calls
}
```

### DTO Creation
```csharp
// Create [Entity] DTOs following User DTO patterns
// Include validation attributes
// Match database schema
// Separate Create/Update/Response DTOs
public class Create[Entity]Dto
{
    // Properties with validation
}

public class Update[Entity]Dto
{
    // Properties with validation
}

public class [Entity]ResponseDto
{
    // Response properties
}
```

### Frontend Component
```tsx
// Create [Feature] component following auth module pattern
// Use Ant Design components
// Include proper TypeScript types
// Handle loading and error states
export default function [Feature]Component() {
    // Component logic with hooks
    // Form handling
    // API integration
}
```

### Zustand Store
```ts
// Create [feature] store following auth store pattern
// Include state management
// Use persist middleware
// Handle async actions
interface [Feature]State {
    // State properties
    // Actions
}

export const use[Feature]Store = create<[Feature]State>()(
    // Store implementation
)
```

## Codex Prompt Templates

### Database Schema Design
```
Design database schema for [Entity] in Spinrise ERP:
Requirements:
- Follow existing table naming conventions
- Include audit fields (CreatedAt, ModifiedAt, etc.)
- Proper relationships and constraints
- Soft delete capability
- Division-based multi-tenancy

Generate:
1. Table creation scripts
2. Indexes for performance
3. Relationships and constraints
4. Seed data structure
```

### Stored Procedure Generation
```
Generate stored procedures for [Entity] CRUD operations:
Reference: usp_User_* procedures
Requirements:
- Follow naming convention: usp_[Entity]_[Action]
- Include proper parameters
- Handle transactions appropriately
- Return appropriate result sets

Generate procedures for:
- GetAll (with filtering/pagination)
- GetById
- Insert
- Update
- Delete (soft delete)
```

### Unit Test Generation
```
Generate comprehensive unit tests for [Component]:
Mock dependencies: [List mocks needed]
Test scenarios:
- Success cases
- Validation failures
- Exception handling
- Edge cases

Follow UserServiceTests pattern with:
- xUnit framework
- Moq for mocking
- FluentAssertions for assertions
- Proper test naming convention
```

### API Integration Test
```
Generate integration tests for [Controller] endpoints:
Test scenarios:
- Successful CRUD operations
- Validation error responses
- Authentication/authorization
- Database integration

Use:
- TestServer setup
- HttpClient for requests
- Assert proper response formats
- Clean up test data
```

### Frontend API Service
```
Generate API service for [Feature] following shared API patterns:
Include:
- Axios integration with interceptors
- Proper TypeScript types
- Error handling
- Request/response transformation

Methods needed:
- [List specific API calls]
```

## Error Debugging Templates

### Backend Error Analysis
```
Debug this error in [Component]:
Error: [error message]
Code: [relevant code snippet]
Context: [what was happening when error occurred]
Expected behavior: [what should happen]

Analyze:
1. Root cause identification
2. Solution options
3. Code fix with explanation
4. Prevention measures
```

### Frontend Error Resolution
```
Fix this React error:
Error: [error message]
Component: [component code]
Context: [when/where error occurs]

Provide:
1. Root cause analysis
2. Code fix
3. Best practices to prevent
4. Testing recommendations
```

### Database Query Optimization
```
Optimize this slow query:
Current query: [SQL code]
Execution context: [when/how it's called]
Performance issue: [symptoms]

Suggestions:
1. Query analysis
2. Index recommendations
3. Query restructuring
4. Alternative approaches
```

## Architecture Review Templates

### Code Architecture Review
```
Review this implementation for architectural compliance:
Code: [code to review]
Context: Spinrise ERP layered architecture
Requirements: Follow PROJECT_GUIDE.md patterns

Evaluate:
- Layer separation
- Dependency injection
- Error handling
- Security considerations
- Performance implications
- Testability
```

### Security Assessment
```
Security review for this code:
Code: [code snippet]
Context: [where it's used]
Security requirements: [specific concerns]

Check for:
- Input validation
- SQL injection prevention
- Authentication/authorization
- Data exposure risks
- Secure coding practices
```

## Performance Optimization Templates

### Backend Performance
```
Optimize this slow method:
Code: [method code]
Performance issue: [bottleneck description]
Usage context: [how/when called]

Optimization options:
1. Database query optimization
2. Caching strategies
3. Async/await improvements
4. Algorithm improvements
```

### Frontend Performance
```
Optimize this React component:
Code: [component code]
Performance issue: [lag/slow rendering]
User impact: [how it affects UX]

Optimization suggestions:
1. Memoization strategies
2. Lazy loading
3. State management improvements
4. Rendering optimizations
```

## Documentation Templates

### API Documentation
```
Generate OpenAPI documentation for [Controller]:
Endpoints: [list endpoints]
Request/Response formats: [DTOs used]
Authentication: [requirements]
Error responses: [possible errors]

Include:
- Parameter descriptions
- Response examples
- Error codes and messages
```

### Code Documentation
```
Generate comprehensive documentation for [Component]:
Purpose: [what it does]
Dependencies: [what it needs]
Usage: [how to use it]
Important notes: [gotchas/caveats]

Include:
- Method descriptions
- Parameter explanations
- Return value details
- Exception conditions
```

---

## Usage Tips

1. **Customize Templates**: Replace placeholders with your specific requirements
2. **Add Context**: Always include project-specific context
3. **Reference Patterns**: Mention existing code patterns to follow
4. **Be Specific**: Clear requirements reduce back-and-forth
5. **Validate Output**: Always test and review generated code

## Template Categories

- **🧠 Claude**: Complex reasoning, architecture, multi-step tasks
- **⚡ Copilot**: Code completion, boilerplate, IDE productivity
- **🔧 Codex**: Debugging, optimization, technical problem-solving

Choose the right template based on your task complexity and available AI access.