import { Navigate } from 'react-router-dom'
import type { PropsWithChildren } from 'react'
import { useShallow } from 'zustand/react/shallow'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type { UserRole } from '@/features/auth/types'

interface ProtectedRouteProps extends PropsWithChildren {
  requiredRole?: UserRole
}

export default function ProtectedRoute({ children, requiredRole }: ProtectedRouteProps) {
  const { user, isAuthenticated } = useAuthStore(
    useShallow((state) => ({ user: state.user, isAuthenticated: state.isAuthenticated }))
  )

  if (!isAuthenticated || !user) {
    return <Navigate to="/login" replace />
  }

  if (requiredRole && user.role !== requiredRole) {
    return <Navigate to="/" replace />
  }

  return <>{children}</>
}
