/* eslint-disable react-refresh/only-export-components */
import { lazy } from 'react'
import type { RouteObject } from 'react-router-dom'
import ErrorPage from '@/shared/components/ErrorPage'

const LoginPage = lazy(() => import('@/features/auth/pages/LoginPage'))

export const authRoutes: RouteObject[] = [
  {
    path: '/login',
    element: <LoginPage />,
    errorElement: <ErrorPage />,
  },
]
