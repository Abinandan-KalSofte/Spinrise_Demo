# AI Reference Folder

This folder contains comprehensive guides for efficiently using AI assistance tools with the Spinrise ERP project, optimized for limited AI usage quotas.

## Contents

### 📋 AI_Assistance_Overview.md
**Primary Guide** - Decision framework for choosing the right AI tool for each task type. Includes cost optimization strategies, workflow integration, and quality assurance processes.

### 🤖 Claude_Usage_Guide.md
**For Complex Tasks** - Detailed guide for using Claude (Anthropic) for:
- Architectural design and planning
- Multi-step implementations
- Code review and validation
- Complex reasoning tasks

### 💻 Copilot_Usage_Guide.md
**For Daily Development** - Guide for GitHub Copilot usage in VS Code:
- Code completion and boilerplate generation
- IDE-based productivity enhancement
- Pattern-following code generation
- Rapid prototyping

### 🔧 Codex_Usage_Guide.md
**For Problem Solving** - Guide for GitHub Codex usage:
- Debugging and error resolution
- Technical problem solving
- Code optimization
- Complex code generation

## Quick Reference

| Task Type | Recommended AI | Why |
|-----------|----------------|-----|
| **Architecture Design** | Claude | Excellent reasoning and planning |
| **Code Completion** | Copilot | Fast, context-aware suggestions |
| **Debugging** | Codex | Detailed analysis and solutions |
| **Boilerplate Code** | Copilot | Rapid generation of repetitive code |
| **Complex Logic** | Manual + Claude | Ensure accuracy for business rules |
| **Database Design** | Claude | Comprehensive schema planning |
| **Testing** | Copilot/Codex | Test structure generation |

## Usage Strategy

### 1. **Preparation**
- Always read `AI_CONTEXT.md` and `PROJECT_GUIDE.md` first
- Identify which existing code patterns to reference
- Plan your AI usage to maximize limited quotas

### 2. **Task Execution**
- **Simple Tasks**: Use Copilot for immediate productivity
- **Complex Tasks**: Use Claude for planning and generation
- **Problems**: Use Codex for debugging and optimization

### 3. **Quality Assurance**
- Always validate AI-generated code against established patterns
- Test functionality thoroughly
- Review for security and performance

## Essential Project Files

Before using any AI, ensure you have read:
- `../AI_CONTEXT.md` - Project overview and patterns
- `../PROJECT_GUIDE.md` - Architecture rules and conventions
- `../IMPLEMENTATION_REQUIREMENTS.md` - Current status and priorities

## Cost Optimization

- **Copilot**: Use extensively for daily development (unlimited in IDE)
- **Claude**: Reserve for complex planning and architecture (limited queries)
- **Codex**: Use for critical debugging and problem-solving (limited access)

## Getting Started

1. **New to Project**: Read `AI_Assistance_Overview.md` first
2. **Daily Development**: Use `Copilot_Usage_Guide.md`
3. **Complex Tasks**: Follow `Claude_Usage_Guide.md`
4. **Problem Solving**: Reference `Codex_Usage_Guide.md`

## Best Practices

- **Context First**: Always provide project context in prompts
- **Pattern Reference**: Explicitly reference existing code patterns
- **Validation**: Never commit AI-generated code without review
- **Documentation**: Update guides when you discover better prompting techniques

## Support

If you need help with AI usage or discover better strategies:
1. Update these guides with your findings
2. Share effective prompts with the team
3. Document successful workflows

---

**Remember**: These AIs are tools to enhance productivity, not replace development expertise. Always prioritize code quality, security, and adherence to established patterns.