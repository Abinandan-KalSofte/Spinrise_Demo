import { useState, useCallback, useRef } from 'react'
import type { ApiErrorDetail } from '@/shared/api/client'

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

  // Keep latest asyncFunction and options in refs so execute never changes identity
  const asyncFunctionRef = useRef(asyncFunction)
  asyncFunctionRef.current = asyncFunction
  const optionsRef = useRef(options)
  optionsRef.current = options

  const execute = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const result = await asyncFunctionRef.current()
      setData(result)
      optionsRef.current?.onSuccess?.()
      return result
    } catch (err: unknown) {
      const apiError = err as ApiErrorDetail
      setError(apiError)
      optionsRef.current?.onError?.(apiError)
      throw apiError
    } finally {
      setLoading(false)
    }
  }, []) // stable — never recreated

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
