# Frontend to Backend API Map

## Routes that call APIs

| Frontend route | Frontend file | Backend API | Notes |
| --- | --- | --- | --- |
| `/login` | `src/features/auth/pages/LoginPage.tsx` | `POST /api/v1/auth/login` | Sends `{ email, password }`, receives the standard `{ success, message, data }` envelope with JWT tokens. |
| `/` | `src/shared/layouts/MainLayout.tsx` | `POST /api/v1/auth/logout` | Triggered when the user logs out. Sends `{ refreshToken }`. |
| Protected app shell | `src/routes/ProtectedRoute.tsx` | `POST /api/v1/auth/refresh` | Available for token rotation when the frontend needs a new access token. |

## Protected backend endpoints

These endpoints now require a bearer access token:

| Backend API | Existing controller |
| --- | --- |
| `GET /api/v1/users` | `backend/Spinrise.API/Controller/UserController.cs` |
| `GET /api/v1/users/{id}` | `backend/Spinrise.API/Controller/UserController.cs` |
| `POST /api/v1/users` | `backend/Spinrise.API/Controller/UserController.cs` |
| `PUT /api/v1/users` | `backend/Spinrise.API/Controller/UserController.cs` |
| `DELETE /api/v1/users/{id}` | `backend/Spinrise.API/Controller/UserController.cs` |

## Dev defaults

- Frontend base API URL defaults to `/api/v1`.
- Vite proxies `/api/*` to `http://localhost:5243` by default.
- Sample JWT login credentials come from `backend/Spinrise.API/appsettings.json`:
  - `admin@spinrise.com / password`
  - `user@example.com / password`
