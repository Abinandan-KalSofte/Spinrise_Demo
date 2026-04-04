import axios, { AxiosError, type AxiosInstance, type AxiosRequestConfig } from 'axios'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { handleApiError } from '@/shared/lib/errorHandler'

export interface ApiErrorDetail {
  message: string
  errors?: Record<string, string[]> | object
  correlationId?: string
  status?: number
}

export interface ApiResponse<T> {
  success: boolean
  message: string
  data?: T
  errors?: Record<string, string[]> | object
}

export const api: AxiosInstance = axios.create({
  baseURL: import.meta.env.VITE_BACKEND_ORIGIN || 'http://localhost:5243/api/v1',
  headers: {
    'Content-Type': 'application/json',
  },
  timeout: 30000,
})

// Request interceptor
api.interceptors.request.use((config) => {
  const token = useAuthStore.getState().tokens?.accessToken

  if (token && config.headers) {
    config.headers.Authorization = `Bearer ${token}`
  }

  return config
})

// Response interceptor
api.interceptors.response.use(
  (response) => response,
  (error: AxiosError<ApiResponse<unknown>>) => {
    if (error.response?.status === 401) {
      useAuthStore.getState().clearAuthSession()
    }

    const correlationId = error.response?.headers['x-correlation-id'] as string
    const apiError: ApiErrorDetail = {
      message: error.response?.data?.message || error.message || 'An unexpected error occurred',
      errors: error.response?.data?.errors,
      correlationId,
      status: error.response?.status,
    }

    console.error(`[${correlationId}] API Error:`, apiError.message, apiError.errors)

    return Promise.reject(handleApiError(error))
  },
)

// Helper methods for typed API calls
export const apiHelpers = {
  async get<T>(url: string, config?: AxiosRequestConfig): Promise<T> {
    const response = await api.get<ApiResponse<T>>(url, config)
    return response.data.data as T
  },

  async post<T>(url: string, payload: unknown, config?: AxiosRequestConfig): Promise<T> {
    const response = await api.post<ApiResponse<T>>(url, payload, config)
    return response.data.data as T
  },

  async put<T>(url: string, payload: unknown, config?: AxiosRequestConfig): Promise<T> {
    const response = await api.put<ApiResponse<T>>(url, payload, config)
    return response.data.data as T
  },

  async patch<T>(url: string, payload: unknown, config?: AxiosRequestConfig): Promise<T> {
    const response = await api.patch<ApiResponse<T>>(url, payload, config)
    return response.data.data as T
  },

  async delete(url: string, config?: AxiosRequestConfig): Promise<void> {
    await api.delete(url, config)
  },
}

export default api
