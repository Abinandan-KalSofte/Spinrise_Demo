# GitHub Codex Usage Guide for Spinrise Project

## Overview
GitHub Codex is a powerful AI model for code generation, debugging, and technical problem-solving. Use Codex for complex code generation, debugging, and when you need more reasoning capability than Copilot.

## Best Practices for Limited Usage

### 1. Access Methods
- **GitHub Copilot Chat**: Use in VS Code with Copilot Chat extension
- **GitHub.com**: Use in GitHub issues, PRs, or discussions
- **API Access**: If available through GitHub's API

### 2. Context Preparation

#### Essential Context Files
- **AI_CONTEXT.md**: Project overview and patterns
- **PROJECT_GUIDE.md**: Architecture rules
- **IMPLEMENTATION_REQUIREMENTS.md**: Current status
- **Error Messages/Logs**: For debugging

#### Context Window Optimization
- **Be Specific**: Include exact file paths and method names
- **Reference Code**: Copy relevant code snippets
- **Define Scope**: Clearly state what's needed

### 3. Effective Prompting Strategies

#### Code Generation Template
```
Project: Spinrise ERP (ASP.NET Core 8 + React)
Context: [Brief description of current state]
Reference: [Copy relevant code pattern]
Task: [Specific, actionable request]
Constraints: [Technical requirements, patterns to follow]
Output: [Expected format]

[Task description]
```

#### Example Prompt
```
Project: Spinrise ERP
Context: Adding Purchase Requisition module following User module pattern
Reference: UserService.cs uses UnitOfWork for transactions
Task: Generate PurchaseRequisitionService.CreateAsync method
Constraints: Must validate PR dates, use stored procedures, follow exact UserService pattern
Output: Complete method with error handling

Generate the CreateAsync method for PurchaseRequisitionService.
```

### 4. Task-Specific Usage

#### Debugging Issues
```
"Debug this error in UserService: [error message]
Code: [relevant code snippet]
Context: ASP.NET Core 8 with Dapper, UnitOfWork pattern
Expected: Should create user and return DTO"
```

#### Code Review
```
"Review this PurchaseRequisitionController for adherence to our patterns:
[code snippet]
Check against: BaseApiController usage, route conventions, error handling"
```

#### Database Query Generation
```
"Generate stored procedure for PR_GetAll following usp_User_GetAll pattern:
Requirements: Filter by DivCode, PrNo, date range, department
Return: Header info with line count
Use: Exact same structure as user procedures"
```

#### Test Generation
```
"Generate unit tests for PurchaseRequisitionService.CreateAsync:
Mock: IUserRepository, IUnitOfWork, ILogger
Test cases: Valid creation, validation failure, database error
Follow: UserServiceTests pattern with FluentAssertions"
```

### 5. Complex Reasoning Tasks

#### Architecture Decisions
```
"Design the database schema for Purchase Requisition module:
Requirements: Header table (po_prh), Line table (po_prl), feature flags
Constraints: Follow existing table patterns, include proper relationships
Consider: Audit fields, soft deletes, indexing strategy"
```

#### Multi-Step Implementation
```
"Implement complete Purchase Requisition validation in service layer:
Rules: [list from PR guide section 13]
Pattern: Follow UserService validation approach
Output: Validation methods with appropriate error messages"
```

#### Performance Optimization
```
"Optimize this Dapper query for performance:
Current: [slow query code]
Context: SQL Server with stored procedures
Requirements: Maintain same functionality, improve execution time"
```

### 6. Integration with Development Workflow

#### Before Implementation
- **Design Review**: "Should I implement [feature] this way?"
- **Pattern Validation**: "Does this follow our layered architecture?"
- **Database Design**: "Review this table schema for ERP requirements"

#### During Implementation
- **Code Generation**: "Generate the repository method for PR CRUD"
- **Error Resolution**: "Fix this compilation error in the service"
- **Test Creation**: "Write integration tests for this endpoint"

#### After Implementation
- **Code Review**: "Review this implementation for security issues"
- **Optimization**: "Suggest performance improvements"
- **Documentation**: "Generate API documentation for these endpoints"

### 7. Efficiency Tips

#### Batch Requests
Instead of multiple queries:
```
"Generate all DTOs for Purchase Requisition: CreatePRHeaderDto, UpdatePRHeaderDto, PRHeaderResponseDto, PRLineResponseDto with validation attributes"
```

#### Follow-up Queries
```
"Take the PurchaseRequisitionService you generated and add the UpdateAsync method following the same pattern"
```

#### Context Reuse
- **Save Context**: Keep conversation context for related tasks
- **Reference Previous**: "Using the DTOs you just created..."

### 8. Quality Assurance

#### Validation Checklist
- [ ] Follows PROJECT_GUIDE.md patterns
- [ ] Proper error handling and logging
- [ ] Dependency injection setup
- [ ] Unit of work usage
- [ ] Database constraints and indexes
- [ ] TypeScript types (frontend)

#### Common Issues
- **Wrong Framework**: May suggest Entity Framework
- **Missing Context**: Needs explicit pattern references
- **Incomplete Implementation**: May need multiple iterations

### 9. Cost Optimization

#### Token Management
- **Be Precise**: Include only necessary context
- **Use References**: "following UserService pattern" instead of copying code
- **Batch Tasks**: Combine related requests
- **Validate First**: Check existing code before asking

#### Usage Limits
- **Plan Ahead**: Know what you need before asking
- **Prioritize**: Use for complex tasks, manual for simple ones
- **Review Output**: Ensure quality before accepting

### 10. Comparison with Other AIs

#### When to Use Codex vs Claude
- **Codex**: Code generation, debugging, technical questions
- **Claude**: Architecture design, complex reasoning, multi-step planning

#### When to Use Codex vs Copilot
- **Codex**: Complex problems, reasoning required, chat interface
- **Copilot**: Code completion in IDE, quick suggestions

### 11. Example Workflows

#### New Module Implementation
1. **Planning**: "Design the Purchase Requisition module architecture"
2. **Database**: "Generate SQL scripts for PR tables and procedures"
3. **Backend**: "Create the service layer with validation"
4. **API**: "Generate controller with proper routing"
5. **Testing**: "Write comprehensive unit tests"
6. **Review**: "Review all generated code for consistency"

#### Bug Fixing
1. **Diagnosis**: "Analyze this error: [error details]"
2. **Root Cause**: "Identify why this validation is failing"
3. **Solution**: "Generate the fix following our patterns"
4. **Testing**: "Create test case to prevent regression"

#### Feature Enhancement
1. **Requirements**: "Add pagination to PR list endpoint"
2. **Implementation**: "Modify repository and service for pagination"
3. **API Changes**: "Update controller with pagination parameters"
4. **Frontend**: "Generate React component with pagination"

### 12. Troubleshooting

#### Poor Quality Output
- **Add Context**: Include more specific requirements
- **Reference Examples**: Point to existing implementations
- **Break Down**: Split complex tasks into smaller ones

#### Inconsistent Suggestions
- **Clarify Patterns**: "Must follow UserController exactly"
- **Provide Constraints**: "Use Dapper, not EF; stored procedures only"
- **Validate**: Cross-reference with documentation

#### Context Loss
- **Maintain Thread**: Keep related requests in same conversation
- **Re-establish Context**: Re-reference key patterns periodically
- **Save Important**: Keep generated code for reference

---

**Remember**: Codex provides detailed reasoning and code generation but requires clear context and specific instructions. Use it for complex tasks where Copilot's suggestions aren't sufficient.