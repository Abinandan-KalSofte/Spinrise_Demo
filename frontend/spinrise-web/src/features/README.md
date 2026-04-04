# Feature module structure

This repository now has a scalable feature-level layout for ~30 modules. Each feature should remain isolated and only import from `shared/*` or top-level providers.

## Current feature roots

- auth
- dashboard
- users
- customers
- orders
- products
- inventory
- billing
- payments
- finance
- analytics
- reports
- notifications
- settings
- roles
- permissions
- projects
- tasks
- calendar
- messages
- support
- help
- integrations
- marketing
- content
- crm
- operations
- system
- teams
- security

## Recommended structure inside each feature

Each feature should follow this convention:

```
features/<feature>/
  api/
  components/
  hooks/
  pages/
  store/
  types.ts
```

Use `shared/` only for truly cross-feature code:

- shared/api/client.ts
- shared/components/
- shared/hooks/
- shared/utils/
- shared/types/

## Routing and boundaries

- Keep route definitions in `src/routes`
- Use `ProtectedRoute` or `PublicRoute` wrappers instead of importing feature internals directly
- Avoid feature-to-feature imports; use shared abstractions instead

## Notes

This is a blueprint, not fully implemented feature logic. It is safe to start by adding only the modules you need and growing the others later.
