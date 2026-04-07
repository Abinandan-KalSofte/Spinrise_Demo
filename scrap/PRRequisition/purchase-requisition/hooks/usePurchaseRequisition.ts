import { useState, useEffect, useRef } from 'react'
import { useApi } from '@/shared/hooks/useApi'
import { purchaseRequisitionService } from '../services/purchaseRequisitionService'
import type { PRDetailDto } from '../types'

export function usePurchaseRequisition(divCode: string, prNo: string | null) {
  const [pr, setPr] = useState<PRDetailDto | null>(null)

  const divCodeRef = useRef(divCode)
  divCodeRef.current = divCode
  const prNoRef = useRef(prNo)
  prNoRef.current = prNo

  const { data, loading, error, execute: fetch } = useApi(
    () => purchaseRequisitionService.getById(divCodeRef.current, prNoRef.current!),
  )

  useEffect(() => { setPr(data ?? null) }, [data])

  useEffect(() => {
    if (divCode && prNo) void fetch()
  }, [divCode, prNo]) // fetch is stable

  return { pr, loading, error }
}
