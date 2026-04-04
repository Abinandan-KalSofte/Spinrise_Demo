# GitHub Copilot Usage Guide for Spinrise Project

## Overview
GitHub Copilot is ideal for code completion, quick implementations, and productivity within your IDE. Use Copilot for syntax help, boilerplate code, and rapid prototyping.

## Best Practices for Limited Usage

### 1. IDE Setup
- **Install Copilot Extension**: Ensure GitHub Copilot is installed in VS Code
- **Context Awareness**: Open relevant files to provide context
- **Reference Files**: Keep PROJECT_GUIDE.md and AI_CONTEXT.md open

### 2. Effective Prompting Techniques

#### Code Completion
- **Start with Comments**: Write descriptive comments before code
- **Use Type Hints**: Define interfaces/types first
- **Follow Patterns**: Reference existing code in comments

#### Example:
```csharp
// Create PurchaseRequisitionService following UserService pattern
// Use UnitOfWork for transactions
// Include validation for PR dates and required fields
public class PurchaseRequisitionService : IPurchaseRequisitionService
{
    // Copilot will suggest the constructor and methods
}
```

#### Method Implementation
```csharp
// Implement Create method with validation
// Follow UserService.Create pattern
// Use UnitOfWork with transaction
public async Task<(bool Success, string Message, string? PrNo)> CreateAsync(
    CreatePRHeaderDto dto, string createdBy)
{
    // Copilot generates the implementation
}
```

### 3. Context Window Management

#### Open Relevant Files
- **Base Classes**: Keep BaseApiController, UserService open
- **Similar Code**: Open User module files when implementing new modules
- **Documentation**: Keep PROJECT_GUIDE.md visible

#### Tab Organization
- Tab 1: Documentation (PROJECT_GUIDE.md)
- Tab 2: Reference implementation (UserService.cs)
- Tab 3: New file being implemented

### 4. Task-Specific Copilot Usage

#### Controller Implementation
```csharp
// PurchaseRequisitionController following UserController pattern
// Inherit from BaseApiController
// Use Areas/Purchase routing
[Area("Purchase")]
[Route("api/v1/purchase-requisitions")]
public class PurchaseRequisitionController : BaseApiController
{
    // Copilot suggests constructor and methods
}
```

#### DTO Creation
```csharp
// CreatePRHeaderDto following CreateUserDto pattern
// Include validation attributes
// Match database table structure
public class CreatePRHeaderDto
{
    // Copilot generates properties with validation
}
```

#### Repository Methods
```csharp
// PurchaseRequisitionRepository following UserRepository pattern
// Use Dapper with stored procedures
// Include UnitOfWork
public async Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, string prNo)
{
    // Copilot generates the Dapper query
}
```

#### Frontend Components
```tsx
// PurchaseRequisitionForm following LoginPage pattern
// Use Ant Design Form with validation
// Include proper TypeScript types
export default function PurchaseRequisitionForm() {
    // Copilot suggests the form structure
}
```

### 5. Copilot Slash Commands

#### Code Generation
- `/fix` - Fix syntax errors
- `/explain` - Explain selected code
- `/doc` - Generate documentation
- `/tests` - Generate unit tests

#### Example Usage
```csharp
// /tests
// Generate unit tests for this method
public async Task CreateAsync(CreatePRHeaderDto dto, string createdBy)
```

### 6. Efficiency Strategies

#### Rapid Prototyping
- **Start Simple**: Let Copilot generate basic structure
- **Iterate**: Accept suggestions, then refine
- **Pattern Matching**: Use existing code as templates

#### Error Correction
- **Fix Syntax**: Use `/fix` for compilation errors
- **Pattern Alignment**: Reference correct patterns in comments
- **Validation**: Check against PROJECT_GUIDE.md rules

### 7. Integration with Other Tools

#### Use with Claude
- **Claude for Planning**: Use Claude to design the structure
- **Copilot for Implementation**: Use Copilot to write the actual code
- **Claude for Review**: Use Claude to review Copilot-generated code

#### Use with Manual Coding
- **Boilerplate**: Let Copilot handle repetitive code
- **Complex Logic**: Write business logic manually
- **Testing**: Use Copilot for test generation

### 8. Common Copilot Queries for Spinrise

#### Backend
```csharp
// Create repository method for PR CRUD operations
// Use Dapper ExecuteScalarAsync for INSERT
// Follow UserRepository pattern
```

```csharp
// Implement service validation method
// Check department exists using repository
// Return appropriate error messages
```

#### Frontend
```tsx
// Create Zustand store for PR management
// Include actions for CRUD operations
// Use persist middleware
```

```tsx
// Build API service for PR endpoints
// Use shared API client
// Include error handling
```

### 9. Quality Assurance

#### Code Review Checklist
- [ ] Follows established patterns
- [ ] Proper error handling
- [ ] Dependency injection setup
- [ ] Unit of work usage
- [ ] TypeScript types (frontend)

#### Common Copilot Issues
- **Wrong Patterns**: May suggest Entity Framework instead of Dapper
- **Missing Context**: Without reference files, may generate incorrect code
- **Incomplete Code**: May need manual completion for complex logic

### 10. Cost Optimization

#### Free Tier Usage
- **Accept/Reject Wisely**: Only accept relevant suggestions
- **Manual Override**: Write code yourself for complex business logic
- **Review Before Commit**: Check generated code quality

#### When to Use Copilot
- **Boilerplate Code**: Controllers, DTOs, basic CRUD
- **Syntax Help**: Method signatures, imports
- **Test Generation**: Unit test structure
- **UI Components**: Basic form structures

#### When NOT to Use Copilot
- **Complex Business Logic**: Write manually for accuracy
- **Security-Critical Code**: Review carefully
- **Database Scripts**: Use Claude for SQL generation

### 11. Workflow Integration

#### Daily Development
1. **Plan**: Read IMPLEMENTATION_REQUIREMENTS.md
2. **Reference**: Open relevant existing code
3. **Generate**: Use Copilot for boilerplate
4. **Refine**: Manually implement business logic
5. **Test**: Generate and run unit tests
6. **Review**: Check against patterns

#### File Creation Workflow
1. **Create File**: Use correct folder structure
2. **Add Comments**: Describe what the code should do
3. **Accept Suggestions**: Let Copilot generate structure
4. **Manual Implementation**: Add business logic
5. **Validation**: Ensure pattern compliance

### 12. Troubleshooting

#### Copilot Not Suggesting
- **Check Context**: Ensure relevant files are open
- **Add Comments**: More descriptive comments help
- **Restart Extension**: Sometimes needs restart

#### Incorrect Suggestions
- **Provide More Context**: Reference specific patterns
- **Use Comments**: Guide Copilot with detailed instructions
- **Manual Correction**: Override when Copilot is wrong

---

**Remember**: Copilot excels at productivity but needs guidance. Always reference your established patterns and validate generated code against your architectural rules.