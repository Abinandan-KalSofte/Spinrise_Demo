import { useEffect, useState } from 'react'
import { getDashboardData } from '../services/dashboardService'
import type { DashboardData } from '../types'

export function useDashboard() {
  const [data,    setData]    = useState<DashboardData | null>(null)
  const [loading, setLoading] = useState(true)
  const [error,   setError]   = useState<string | null>(null)

  useEffect(() => {
    getDashboardData()
      .then(setData)
      .catch(() => setError('Failed to load dashboard data.'))
      .finally(() => setLoading(false))
  }, [])

  return { data, loading, error }
}
