import { useState, useCallback } from 'react'
import { AxiosError } from 'axios'
import { ApiErrorDetail } from '@/shared/api/client'

interface UseApiOptions {
  onSuccess?: () => void
  onError?: (error: ApiErrorDetail) => void
}

export function useApi<T>(
  asyncFunction: () => Promise<T>,
  options?: UseApiOptions
) {
  const [data, setData] = useState<T | null>(null)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<ApiErrorDetail | null>(null)

  const execute = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const result = await asyncFunction()
      setData(result)
      options?.onSuccess?.()
      return result
    } catch (err: unknown) {
      const apiError = err as ApiErrorDetail
      setError(apiError)
      options?.onError?.(apiError)
      throw apiError
    } finally {
      setLoading(false)
    }
  }, [asyncFunction, options])

  const reset = useCallback(() => {
    setData(null)
    setError(null)
  }, [])

  return {
    data,
    loading,
    error,
    execute,
    reset,
  }
}

export default useApi
