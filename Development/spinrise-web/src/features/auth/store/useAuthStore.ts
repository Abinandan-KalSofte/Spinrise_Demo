import { create } from 'zustand'
import { devtools, persist } from 'zustand/middleware'
import type { AuthTokens, AuthUser, UserRole } from '../types'

interface AuthState {
  user: AuthUser | null
  tokens: AuthTokens | null
  isAuthenticated: boolean
  setAuthSession: (payload: { user: AuthUser; tokens: AuthTokens }) => void
  clearAuthSession: () => void
  hasRole: (role: UserRole) => boolean
}

export const useAuthStore = create<AuthState>()(
  devtools(
    persist(
      (set, get) => ({
        user: null,
        tokens: null,
        isAuthenticated: false,
        setAuthSession: ({ user, tokens }) =>
          set(
            {
              user,
              tokens,
              isAuthenticated: true,
            },
            false,
            'auth/setAuthSession',
          ),
        clearAuthSession: () =>
          set(
            {
              user: null,
              tokens: null,
              isAuthenticated: false,
            },
            false,
            'auth/clearAuthSession',
          ),
        hasRole: (role) => get().user?.role === role,
      }),
      {
        name: 'spinrise-auth-v2',
        partialize: (state) => ({
          user: state.user,
          tokens: state.tokens,
          isAuthenticated: state.isAuthenticated,
        }),
      },
    ),
    { name: 'SpinriseAuthStore' },
  ),
)
