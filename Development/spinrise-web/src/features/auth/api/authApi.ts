import { api } from '@/shared/api/client'
import type { ApiResponse } from '@/shared/api/types'
import type { AuthResponse, LoginDto } from '../types'

export const authApi = {
  login: (data: LoginDto) => api.post<ApiResponse<AuthResponse>>('auth/login', data),

  refreshToken: (refreshToken: string) =>
    api.post<ApiResponse<AuthResponse>>('auth/refresh', { refreshToken }),

  logout: (refreshToken?: string) =>
    api.post('auth/logout', { refreshToken }),
}
