import { createBrowserRouter } from 'react-router-dom'
import { authRoutes } from './auth.routes'
import { dashboardRoutes } from './dashboard.routes'
import ErrorPage from '@/shared/components/ErrorPage'

export const router = createBrowserRouter([
  ...authRoutes,
  ...dashboardRoutes,
  {
    path: '*',
    element: <ErrorPage />,
  },
])
