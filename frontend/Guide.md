🚀 STEP 0 — Create the Project (Vite + React 18 + TS)
npm create vite@latest spinrise-web -- --template react-ts
cd spinrise-web
npm install
📦 STEP 1 — Install Core Dependencies
Core stack
npm install react-router-dom axios zustand antd @ant-design/pro-components
Dev & testing
npm install -D vitest @testing-library/react @testing-library/jest-dom msw jsdom
Optional but recommended
npm install dayjs clsx
⚙️ STEP 2 — Setup TypeScript Strict Mode

Update tsconfig.json:

{
  "compilerOptions": {
    "strict": true,
    "baseUrl": "./src",
    "paths": {
      "@/*": ["*"]
    }
  }
}

👉 This gives you clean imports like:

import { api } from '@/shared/api/client'
🧱 STEP 3 — Create Base Folder Structure

Inside src/:

src/
├── app/
├── shared/
│   ├── api/
│   ├── components/
│   ├── hooks/
│   ├── utils/
│   └── types/
│
├── features/
│   └── auth/
│       ├── api/
│       ├── store/
│       ├── components/
│       ├── hooks/
│       ├── pages/
│       └── types.ts
│
├── layouts/
├── routes/
└── main.tsx

👉 You now have feature isolation from day 1

🌐 STEP 4 — Setup Axios (Enterprise-grade)
src/shared/api/client.ts
import axios from 'axios'

export const api = axios.create({
  baseURL: import.meta.env.VITE_API_URL,
  withCredentials: true,
})

// Request interceptor
api.interceptors.request.use((config) => {
  const token = localStorage.getItem('token')

  if (token) {
    config.headers.Authorization = `Bearer ${token}`
  }

  return config
})

// Response interceptor
api.interceptors.response.use(
  (response) => response,
  (error) => {
    if (error.response?.status === 401) {
      // global logout logic later
      console.warn('Unauthorized - redirecting...')
    }
    return Promise.reject(error)
  }
)
🧠 STEP 5 — Setup Zustand (Auth Store First)
features/auth/store/useAuthStore.ts
import { create } from 'zustand'

interface User {
  id: number
  email: string
}

interface AuthState {
  user: User | null
  setUser: (user: User | null) => void
}

export const useAuthStore = create<AuthState>((set) => ({
  user: null,
  setUser: (user) => set({ user }),
}))

👉 Keep it minimal initially — don’t over-engineer

🔐 STEP 6 — Setup Routing (React Router v6)
Install lazy loading mindset early
src/routes/index.tsx
import { lazy } from 'react'
import { createBrowserRouter } from 'react-router-dom'
import ProtectedRoute from './ProtectedRoute'

const LoginPage = lazy(() => import('@/features/auth/pages/LoginPage'))

export const router = createBrowserRouter([
  {
    path: '/login',
    element: <LoginPage />,
  },
  {
    path: '/',
    element: (
      <ProtectedRoute>
        <div>Dashboard</div>
      </ProtectedRoute>
    ),
  },
])
Protected Route
// src/routes/ProtectedRoute.tsx
import { Navigate } from 'react-router-dom'
import { PropsWithChildren } from 'react'
import { useAuthStore } from '@/features/auth/store/useAuthStore'

export default function ProtectedRoute({ children }: PropsWithChildren) {
  const user = useAuthStore((s) => s.user)

  if (!user) return <Navigate to="/login" replace />

  return children
}
🧩 STEP 7 — Wire App Entry
src/main.tsx
import React from 'react'
import ReactDOM from 'react-dom/client'
import { RouterProvider } from 'react-router-dom'
import { router } from './routes'
import 'antd/dist/reset.css'

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
)
🎨 STEP 8 — Setup Ant Design (Cleanly)

👉 Don’t configure everything globally yet.

Later you’ll wrap with:

<ConfigProvider theme={{ token: { colorPrimary: '#1677ff' } }}>
📄 STEP 9 — Create First Feature (Auth)
Types
// features/auth/types.ts
export interface LoginDto {
  email: string
  password: string
}
API
// features/auth/api/authApi.ts
import { api } from '@/shared/api/client'
import { LoginDto } from '../types'

export const authApi = {
  login: (data: LoginDto) => api.post('/auth/login', data),
}
Page
// features/auth/pages/LoginPage.tsx
import { Button, Form, Input } from 'antd'
import { authApi } from '../api/authApi'
import { useAuthStore } from '../store/useAuthStore'

export default function LoginPage() {
  const setUser = useAuthStore((s) => s.setUser)

  const onFinish = async (values: any) => {
    const res = await authApi.login(values)
    setUser(res.data.user)
  }

  return (
    <Form onFinish={onFinish} layout="vertical">
      <Form.Item name="email" label="Email">
        <Input />
      </Form.Item>

      <Form.Item name="password" label="Password">
        <Input.Password />
      </Form.Item>

      <Button htmlType="submit" type="primary">
        Login
      </Button>
    </Form>
  )
}
🧪 STEP 10 — Setup Testing (Vitest + MSW)
vite.config.ts
/// <reference types="vitest" />
export default defineConfig({
  test: {
    environment: 'jsdom',
    setupFiles: './src/test/setup.ts',
  },
})
MSW Setup
src/test/
├── setup.ts
├── server.ts
└── handlers/
🔥 STEP 11 — Enforce Architecture (THIS IS SENIOR LEVEL)

Add rules (mentally or via ESLint):

👉 Features cannot import each other directly
👉 Shared is the only cross-feature layer
👉 API calls only inside /api
👉 No business logic inside components