# Spinrise Web — Technical Specification

## 1. Project overview

`spinrise-web` is a Vite-powered React application built with TypeScript and designed for enterprise-grade modular scaling.

The current implementation includes:
- React 19
- Ant Design 5 UI library
- Zustand for client-side local state
- Axios for API requests
- React Router v7 with lazy route loading
- Vitest + MSW for unit and integration test setup

The app is arranged into feature modules under `src/features/` so each domain remains isolated and maintainable.

---

## 2. Core stack

### Runtime dependencies
- `react`, `react-dom`
- `react-router-dom`
- `antd`, `@ant-design/pro-components`
- `axios`
- `zustand`
- `dayjs`, `clsx`

### Build / development dependencies
- `vite`
- `@vitejs/plugin-react`
- `vite-tsconfig-paths`
- `typescript`
- `eslint`, `@eslint/js`, `eslint-plugin-react-hooks`, `eslint-plugin-react-refresh`
- `vitest`
- `@testing-library/react`, `@testing-library/jest-dom`
- `msw`, `jsdom`

---

## 3. Project structure

```
spinrise-web/
  package.json
  tsconfig.app.json
  tsconfig.json
  vite.config.ts
  src/
    app/
    assets/
    features/
    layouts/
    routes/
    shared/
    test/
    App.tsx
    main.tsx
    index.css
```

### Important folders

- `src/app/`
  - Intended for app-wide providers, context setup, and root configuration.
- `src/features/`
  - Business domains and feature modules.
- `src/layouts/`
  - Page shells and shared layout components.
- `src/routes/`
  - Router configuration and route protection.
- `src/shared/`
  - Cross-feature shared API, reusable components, hooks, utilities, and types.
- `src/test/`
  - Test setup, MSW server, and request handlers.

---

## 4. Feature modules

Current feature roots under `src/features/`:

- `analytics`
- `auth`
- `billing`
- `calendar`
- `content`
- `crm`
- `customers`
- `dashboard`
- `finance`
- `help`
- `integrations`
- `inventory`
- `marketing`
- `messages`
- `notifications`
- `operations`
- `orders`
- `payments`
- `permissions`
- `products`
- `projects`
- `reports`
- `roles`
- `security`
- `settings`
- `support`
- `system`
- `tasks`
- `teams`
- `users`

A shared feature guide is available in `src/features/README.md`.

---

## 5. Folder conventions for each module

Each feature should follow this internal layout:

```
src/features/<feature>/
  api/
  components/
  hooks/
  pages/
  store/
  types.ts
```

This keeps each module self-contained and prevents feature-to-feature coupling.

---

## 6. Routing and page flow

### `src/routes/index.tsx`
- Uses `createBrowserRouter`
- Loads pages lazily with `React.lazy`
- Defines a public login route and a protected dashboard route

### `src/routes/ProtectedRoute.tsx`
- Reads authentication state from `useAuthStore`
- Redirects unauthenticated users to `/login`

### `src/App.tsx`
- Wraps routes with Ant Design `ConfigProvider`
- Provides a global theme token
- Uses `Suspense` for lazy route fallback

### `src/main.tsx`
- Renders the root app with `React.StrictMode`
- Imports Ant Design reset styles
- Loads the global app stylesheet

---

## 7. State management

### `src/features/auth/store/useAuthStore.ts`
- Uses Zustand for minimal auth state
- Stores `user` and `setUser`
- Keeps auth state local to the feature module

This pattern is ideal for feature-specific state and scales cleanly.

---

## 8. API layer

### `src/shared/api/client.ts`
- Configures Axios with a `baseURL` from `VITE_API_URL`
- Enables `withCredentials`
- Adds auth token header from `localStorage`
- Handles `401` responses in a global interceptor

This is the central HTTP client for all future feature API modules.

---

## 9. TypeScript configuration

### `tsconfig.app.json`
- `strict` mode enabled
- `baseUrl` set to `./src`
- Path alias `@/*` mapped to `src/*`
- `jsx` set to `react-jsx`
- Modern target: `ES2023`

### `tsconfig.json`
- References `tsconfig.app.json`
- References `tsconfig.node.json`

---

## 10. Vite configuration

### `vite.config.ts`
- Uses `@vitejs/plugin-react`
- Uses `vite-tsconfig-paths` for alias resolution
- Configures Vitest via `defineConfig` from `vitest/config`
- `test` environment: `jsdom`
- `setupFiles` points to `./src/test/setup.ts`

---

## 11. Testing setup

- `src/test/setup.ts`
  - Loads `@testing-library/jest-dom`
  - Starts and tears down the MSW server
- `src/test/server.ts`
  - Exposes `server` from `msw/node`
- `src/test/handlers/` contains request handlers

This supports component and API mocking via MSW with Vitest.

---

## 12. Build and development commands

- `npm install`
- `npm run dev`
- `npm run build`
- `npm test`
- `npm run lint`
- `npm run preview`

---

## 13. Future scaling recommendations

1. Keep `shared/` as the only cross-feature dependency.
2. Add feature-level `index.ts` barrels only when required.
3. Use lazy routes per feature to keep initial bundle size low.
4. Move global providers into `src/app/providers/`.
5. Keep business logic in hooks/store/api — keep components presentational.
6. Add `src/shared/ui/` for reusable design-system primitives.
7. Enforce rule: no feature imports another feature directly.

---

## 14. What this document covers

- current stack and dependencies
- app architecture and folder layout
- route flow and auth protection
- feature module pattern for large apps
- test runner setup and build config
- practical next steps for scaling

If you want, I can also generate a second document with a visual folder-tree diagram and a `src/app/providers` implementation plan.