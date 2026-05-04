import { useCallback, useEffect, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { message } from 'antd'
import { usePurchaseOrderStore } from '../store/usePurchaseOrderStore'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import type { POListQuery } from '../types'

export function usePurchaseOrderList() {
  const navigate   = useNavigate()
  const store      = usePurchaseOrderStore()
  const filtersRef = useRef<POListQuery>({})

  const [deleteOpen,       setDeleteOpen]       = useState(false)
  const [deletingKey,      setDeletingKey]       = useState<{ contNo: number; contDt: string } | null>(null)
  const [deleteReason,     setDeleteReason]      = useState<string>('')
  const [deleteSubmitting, setDeleteSubmitting]  = useState(false)

  const load = useCallback((filters: POListQuery = {}, page = 1) => {
    filtersRef.current = filters
    void store.fetchPage({ ...filters, page, pageSize: 20 })
  }, [store])

  useEffect(() => {
    load()
    void store.fetchSummary()
    void store.fetchDeleteReasons()
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  const handleSearch     = useCallback((f: POListQuery) => load(f, 1), [load])
  const handleReset      = useCallback(() => load({}, 1), [load])
  const handlePageChange = useCallback((p: number) => load(filtersRef.current, p), [load])
  const handleEdit       = useCallback((contNo: number, contDt: string) => {
    navigate(`/purchase/order/edit/${contNo}/${encodeURIComponent(contDt)}`)
  }, [navigate])

  const handleOpenDelete = useCallback((contNo: number, contDt: string) => {
    setDeletingKey({ contNo, contDt })
    setDeleteReason('')
    setDeleteOpen(true)
  }, [])

  const handleCancelDelete = useCallback(() => {
    setDeleteOpen(false)
    setDeletingKey(null)
    setDeleteReason('')
  }, [])

  const handleConfirmDelete = useCallback(async () => {
    if (!deletingKey || !deleteReason) return
    setDeleteSubmitting(true)
    try {
      await purchaseOrderApi.delete(deletingKey.contNo, deletingKey.contDt, deleteReason)
      message.success('Purchase Order cancelled.')
      setDeleteOpen(false)
      setDeletingKey(null)
      load(filtersRef.current, store.page)
      void store.fetchSummary()
    } catch {
      message.error('Failed to cancel Purchase Order.')
    } finally {
      setDeleteSubmitting(false)
    }
  }, [deletingKey, deleteReason, store.page, store, load])

  return {
    rows:   store.rows,   total:         store.total,
    page:   store.page,   pageSize:      store.pageSize,
    loading:store.loading,summary:       store.summary,
    summaryLoading: store.summaryLoading,
    deleteReasons:  store.deleteReasons,
    deleteOpen, deletingKey, deleteReason, deleteSubmitting,
    setDeleteReason,
    handleSearch, handleReset, handlePageChange,
    handleEdit, handleOpenDelete, handleCancelDelete, handleConfirmDelete,
  }
}
