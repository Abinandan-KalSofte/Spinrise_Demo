# Claude AI Usage Guide for Spinrise Project

## Overview
Claude (by Anthropic) is excellent for complex reasoning, code generation, and maintaining context across conversations. Use Claude for architectural decisions, complex implementations, and multi-step tasks.

## Best Practices for Limited Usage

### 1. Preparation Phase (Before Asking Claude)
- **Read Context Files**: Always include relevant sections from `AI_CONTEXT.md`, `PROJECT_GUIDE.md`, and `IMPLEMENTATION_REQUIREMENTS.md`
- **Prepare Code Snippets**: Copy relevant existing code patterns (User module, BaseApiController, etc.)
- **Define Scope Clearly**: Know exactly what you need before asking

### 2. Prompt Engineering for Efficiency

#### Template for Code Generation
```
Context: [Brief project overview]
Pattern Reference: [Copy relevant code from existing modules]
Task: [Specific, actionable request]
Requirements: [Technical constraints, patterns to follow]
Output Format: [Expected structure]

[Task description]
```

#### Example Prompt
```
Context: Spinrise ERP - ASP.NET Core 8 with Dapper, layered architecture
Pattern Reference: Follow User module pattern exactly
Task: Create PurchaseRequisitionService with validation
Requirements: Use UnitOfWork, include all PR validation rules from guide
Output Format: Complete service class with methods

Implement PurchaseRequisitionService following the UserService pattern.
Include all validation rules from PR_Backend_Migration_Guide.md section 13.
```

### 3. Task-Specific Strategies

#### For New Module Implementation
```
"Create a complete [ModuleName] module following the User module pattern.
Include: Domain entities, DTOs, Service, Repository, Controller, Tests.
Use the exact folder structure: Areas/[Division]/[Module]/
Reference: [Copy relevant sections from PROJECT_GUIDE.md]
```

#### For Database Scripts
```
"Generate SQL scripts for [Entity] following the existing pattern.
Include: Table creation, stored procedures (usp_[Entity]_*), indexes.
Reference the Users table structure and stored procedures.
```

#### For Frontend Features
```
"Create a React feature module for [FeatureName] following the auth module pattern.
Include: API calls, Zustand store, components, pages, types.
Use the shared UI components and API client patterns.
```

### 4. Context Management

#### Essential Files to Reference
- `AI_CONTEXT.md` - Project overview and patterns
- `PROJECT_GUIDE.md` - Architecture rules and conventions
- `IMPLEMENTATION_REQUIREMENTS.md` - Current status and priorities
- `PR_Backend_Migration_Guide.md` - For Purchase Requisition
- Existing code examples (User module, auth feature)

#### Context Window Optimization
- **Start with Overview**: "This is a Spinrise ERP project with ASP.NET Core backend and React frontend"
- **Reference Patterns**: "Follow the User module pattern exactly"
- **Include Constraints**: "Use Dapper with stored procedures, no Entity Framework"
- **Specify Output**: "Generate complete, runnable code"

### 5. Common Claude Queries for Spinrise

#### Architecture Questions
```
"What architectural pattern should I follow for [new feature] in this layered ASP.NET Core application?"
"Review this code for adherence to our established patterns"
"How should I structure the database schema for [entity]?"
```

#### Code Generation
```
"Generate the complete PurchaseRequisitionController following the UserController pattern"
"Create DTOs and mappings for Product entity"
"Implement the repository layer for Customer management"
```

#### Testing
```
"Write comprehensive unit tests for UserService following the existing test patterns"
"Create integration tests for the authentication flow"
```

#### Frontend
```
"Build a React component for data table with sorting/pagination following our Ant Design patterns"
"Implement Zustand store for Product management"
```

### 6. Efficiency Tips

#### Batch Related Tasks
Instead of separate queries:
```
"Create the complete backend for Product management: entities, DTOs, service, repository, controller, and tests"
```

#### Use Follow-ups
```
"Take the code you just generated and add [specific modification]"
```

#### Validate Before Asking
- Check existing code first
- Use grep search for patterns
- Read documentation

### 7. Error Handling with Claude

#### When Claude Makes Mistakes
- **Provide More Context**: "Reference the UserService implementation"
- **Correct Patterns**: "Use the exact same structure as UserController"
- **Clarify Constraints**: "Must use stored procedures, not direct SQL"

#### Common Claude Issues
- Forgetting UnitOfWork pattern
- Using Entity Framework instead of Dapper
- Not following folder structure
- Missing dependency injection

### 8. Cost Optimization

#### Token-Efficient Prompts
- Be specific about what you need
- Reference existing code by name
- Use "following the [pattern] pattern" instead of copying code
- Ask for complete implementations in one query

#### When to Use Claude vs Other AIs
- **Claude**: Complex reasoning, multi-step tasks, architecture
- **Copilot**: Quick code completions, syntax help
- **Codex**: Code generation, debugging

### 9. Quality Assurance

#### Always Verify Claude Output
- Check against PROJECT_GUIDE.md rules
- Ensure proper folder structure
- Verify dependency injection setup
- Test the generated code

#### Integration Checklist
- [ ] Follows layered architecture
- [ ] Uses established patterns
- [ ] Includes proper error handling
- [ ] Has unit tests
- [ ] Updates DI registrations

### 10. Example Complete Workflow

1. **Planning**: Read IMPLEMENTATION_REQUIREMENTS.md
2. **Preparation**: Copy relevant code patterns
3. **Query**: "Create complete Product module backend following User pattern"
4. **Review**: Check generated code against guidelines
5. **Integration**: Add to project, run tests
6. **Documentation**: Update guides if needed

---

**Remember**: Claude has excellent reasoning but needs clear context. Always reference your established patterns and provide specific, actionable requests to maximize efficiency with limited usage.