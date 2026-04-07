import { useState, useEffect, useRef } from 'react'
import { useApi } from '@/shared/hooks/useApi'
import { purchaseRequisitionService } from '../services/purchaseRequisitionService'
import type { PRSummaryDto } from '../types'

interface Filters {
  prNo?: string
  fromDate?: string
  toDate?: string
  depCode?: string
  status?: string
}

export function usePurchaseRequisitions(divCode: string, filters?: Filters) {
  const [prs, setPrs] = useState<PRSummaryDto[]>([])

  const divCodeRef = useRef(divCode)
  divCodeRef.current = divCode
  const filtersRef = useRef(filters)
  filtersRef.current = filters

  const { data, loading, error, execute: fetch } = useApi(
    () => purchaseRequisitionService.getAll(divCodeRef.current, filtersRef.current),
  )

  useEffect(() => { if (data) setPrs(data) }, [data])

  useEffect(() => {
    if (divCode) void fetch()
  }, [divCode]) // fetch is stable

  return { prs, loading, error, refetch: fetch }
}
