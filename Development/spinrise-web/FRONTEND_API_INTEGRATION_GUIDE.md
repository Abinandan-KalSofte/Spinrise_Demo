# Frontend API Integration Guide

This guide covers how to use the Spinrise API client and auto-generated types in your React components.

## Setup

### 1. Generate API Types from Swagger

Before using the API, you need to generate TypeScript types from the backend Swagger/OpenAPI schema:

```bash
npm run generate:api
```

This will:
- Generate fully typed API methods
- Create DTOs for all endpoints
- Generate types based on your API schema

**Generated files location**: `src/api/generated/`

### 2. Environment Configuration

Create a `.env.local` file or update `.env.development`:

```env
VITE_BACKEND_ORIGIN=http://localhost:5243
```

## Usage

### Using the API Client

The API client is pre-configured with:
- Automatic JWT token injection from auth store
- Correlation ID tracking for debugging
- Comprehensive error handling
- Request/response interceptors

#### Example 1: Basic GET Request

```typescript
import { apiHelpers } from '@/shared/api/client'

interface User {
  id: number
  name: string
  email: string
}

// Using helper method (returns typed data directly)
const users = await apiHelpers.get<User[]>('/api/v1/users')
```

#### Example 2: POST Request with Data

```typescript
interface CreateUserPayload {
  name: string
  email: string
}

interface CreateUserResponse {
  id: number
  name: string
  email: string
}

const newUser = await apiHelpers.post<CreateUserResponse>(
  '/api/v1/users',
  { name: 'John Doe', email: 'john@example.com' } as CreateUserPayload
)
```

#### Example 3: Using Generated API Methods

Once you run `npm run generate:api`, you'll have generated methods:

```typescript
import { useGetAllUsers, useCreateUser } from '@/api/generated/users'

// In your React component
const { data: users, isLoading, error } = useGetAllUsers()

const { mutate: createUser, isPending } = useCreateUser({
  onSuccess: () => {
    console.log('User created!')
  },
})
```

### Using the useApi Hook

For custom API calls with loading and error state management:

```typescript
import { useApi, apiHelpers } from '@/shared/api/client'
import { useApi as useApiHook } from '@/shared/hooks/useApi'

function UsersList() {
  const { data, loading, error, execute } = useApiHook(
    () => apiHelpers.get<User[]>('/api/v1/users'),
    {
      onSuccess: () => console.log('Users loaded'),
      onError: (error) => console.error('Failed to load users', error.correlationId),
    }
  )

  return (
    <div>
      {loading && <div>Loading...</div>}
      {error && <div>Error: {error.message}</div>}
      {data && data.map(user => <div key={user.id}>{user.name}</div>)}
    </div>
  )
}
```

### Error Handling

All API errors are caught and formatted consistently:

```typescript
interface ApiErrorDetail {
  message: string
  errors?: Record<string, string[]> | object
  correlationId?: string  // Use this for debugging with backend logs
  status?: number
}

// Errors include:
// - Validation errors (field-specific)
// - Business logic errors
// - Server errors
// - Network errors

try {
  const user = await apiHelpers.post('/api/v1/users', payload)
} catch (error: ApiErrorDetail) {
  console.error(`[${error.correlationId}] ${error.message}`)
  if (error.errors) {
    // Handle validation errors
    Object.entries(error.errors).forEach(([field, messages]) => {
      console.error(`${field}: ${messages}`)
    })
  }
}
```

### Pagination

For paginated endpoints:

```typescript
interface PaginatedResponse<T> {
  Items: T[]
  TotalCount: number
  PageNumber: number
  PageSize: number
  TotalPages: number
  HasNextPage: boolean
  HasPreviousPage: boolean
}

// Get first page
const page1 = await apiHelpers.get<PaginatedResponse<User>>(
  '/api/v1/users/paginated?pageNumber=1&pageSize=10'
)

console.log(`Page ${page1.PageNumber} of ${page1.TotalPages}`)
console.log(`Total users: ${page1.TotalCount}`)
```

### Authentication

The API client automatically injects JWT tokens from the auth store:

```typescript
// Auth token is automatically added to all requests
// No need to manually set headers

// To set auth token after login
useAuthStore.setState({ tokens: { accessToken: 'your-jwt-token' } })

// To clear auth (logout)
useAuthStore.getState().clearAuthSession()
```

## Best Practices

### 1. Use TypeScript Interfaces

Always define interfaces for your API payloads:

```typescript
interface CreateUserPayload {
  name: string
  email: string
}

interface UserResponse {
  id: number
  name: string
  email: string
}

const response = await apiHelpers.post<UserResponse>(
  '/api/v1/users',
  payload as CreateUserPayload
)
```

### 2. Handle Correlation IDs for Debugging

When reporting bugs, always include the correlation ID:

```typescript
try {
  // API call
} catch (error) {
  // Log with correlation ID
  console.error(`Issue occurred. Correlation ID: ${error.correlationId}`)
  // Share this with backend team for debugging
}
```

### 3. Use Query Parameters for Filtering

```typescript
const filteredUsers = await apiHelpers.get<PaginatedResponse<User>>(
  `/api/v1/users/paginated?pageNumber=1&pageSize=20&sortBy=Name&ascending=true`
)
```

### 4. Handle Different Error Types

```typescript
try {
  const user = await apiHelpers.post('/api/v1/users', payload)
} catch (error) {
  if (error.status === 400) {
    // Validation error - show to user
    showValidationErrors(error.errors)
  } else if (error.status === 401) {
    // Unauthorized - redirect to login
    redirectToLogin()
  } else if (error.status === 429) {
    // Rate limited
    showMessage('Too many requests, please wait')
  } else {
    // Other errors
    showErrorMessage(error.message)
  }
}
```

## Regenerating API Types

Whenever your backend API changes:

1. Ensure backend is running at `http://localhost:5243`
2. Run: `npm run generate:api`
3. Commit generated types to version control
4. Import and use new types

## Troubleshooting

### API client returning 404

- Verify backend is running
- Check `VITE_BACKEND_ORIGIN` environment variable
- Ensure endpoint path is correct

### CORS Errors

- Check backend CORS configuration
- Verify origin is in allowed origins list
- Backend should be accessible from frontend

### "No response from server"

- Verify network connection
- Check if backend is running
- Verify URL is correct

### Correlation ID not showing up

- Check network tab in browser dev tools
- Look for `X-Correlation-ID` header in response
- Use this ID when reporting issues to backend team

## Example: Complete User Management Component

```typescript
import { useState, useEffect } from 'react'
import { apiHelpers, PaginatedResponse, ApiErrorDetail } from '@/shared/api/client'

interface User {
  id: number
  name: string
  email: string
}

export function UserManagement() {
  const [users, setUsers] = useState<User[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<ApiErrorDetail | null>(null)

  const fetchUsers = async (pageNum: number) => {
    setLoading(true)
    try {
      const response = await apiHelpers.get<PaginatedResponse<User>>(
        `/api/v1/users/paginated?pageNumber=${pageNum}&pageSize=10`
      )
      setUsers(response.Items)
      setTotal(response.TotalCount)
      setPage(pageNum)
      setError(null)
    } catch (err) {
      setError(err as ApiErrorDetail)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    fetchUsers(1)
  }, [])

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error: {error.message}</div>

  return (
    <div>
      <h2>Users ({total})</h2>
      <ul>
        {users.map(user => (
          <li key={user.id}>{user.name} ({user.email})</li>
        ))}
      </ul>
      <button onClick={() => fetchUsers(page - 1)} disabled={page === 1}>Previous</button>
      <span>Page {page}</span>
      <button onClick={() => fetchUsers(page + 1)}>Next</button>
    </div>
  )
}
```

---

**Last Updated**: April 3, 2026
**Related Files**: `orval.config.ts`, `src/shared/api/client.ts`, `src/shared/hooks/useApi.ts`
