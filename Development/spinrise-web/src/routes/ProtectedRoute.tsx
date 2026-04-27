import { lazy, Suspense } from 'react'
import { Navigate } from 'react-router-dom'
import type { PropsWithChildren } from 'react'
import { useShallow } from 'zustand/react/shallow'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type { UserRole } from '@/features/auth/types'

// Render login inline (no URL redirect) so IIS doesn't 404 on /login
const LoginPage = lazy(() => import('@/features/auth/pages/LoginPage'))

interface ProtectedRouteProps extends PropsWithChildren {
  requiredRole?: UserRole
}

export default function ProtectedRoute({ children, requiredRole }: ProtectedRouteProps) {
  const { user, isAuthenticated } = useAuthStore(
    useShallow((state) => ({ user: state.user, isAuthenticated: state.isAuthenticated }))
  )

  if (!isAuthenticated || !user) {
    return (
      <Suspense fallback={null}>
        <LoginPage />
      </Suspense>
    )
  }

  if (requiredRole && user.role !== requiredRole) {
    return <Navigate to="/" replace />
  }

  return <>{children}</>
}
