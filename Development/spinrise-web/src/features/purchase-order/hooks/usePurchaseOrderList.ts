import { useCallback, useEffect, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { message } from 'antd'
import dayjs from 'dayjs'
import { usePurchaseOrderStore } from '../store/usePurchaseOrderStore'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import type { POListQuery } from '../types'

export interface POListFilters {
  searchText?: string
  fromDate?: string
  toDate?: string
  supplierCode?: string
}

export function usePurchaseOrderList() {
  const navigate  = useNavigate()
  const store     = usePurchaseOrderStore()
  const filtersRef = useRef<POListFilters>({})

  const [deleteOpen,        setDeleteOpen]        = useState(false)
  const [deletingKey,       setDeletingKey]        = useState<{ contNo: string; contDt: string } | null>(null)
  const [deleteReason,      setDeleteReason]       = useState<string>('')
  const [deleteSubmitting,  setDeleteSubmitting]   = useState(false)

  const load = useCallback((filters: POListFilters = {}, page = 1) => {
    filtersRef.current = filters
    const q: POListQuery = { ...filters, page, pageSize: 20 }
    void store.fetchPage(q)
  }, [store])

  useEffect(() => {
    load()
    void store.fetchDeleteReasons()
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  const handleSearch = useCallback((filters: POListFilters) => load(filters, 1), [load])
  const handleReset  = useCallback(() => load({}, 1), [load])

  const handlePageChange = useCallback((page: number) => {
    load(filtersRef.current, page)
  }, [load])

  const handleEdit = useCallback((contNo: string, contDt: string) => {
    navigate(`/purchase/order/edit/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}`)
  }, [navigate])

  const handleOpenDelete = useCallback((contNo: string, contDt: string) => {
    setDeletingKey({ contNo, contDt })
    setDeleteReason('')
    setDeleteOpen(true)
    void store.fetchDeleteReasons()
  }, [store])

  const handleCancelDelete = useCallback(() => {
    setDeleteOpen(false)
    setDeletingKey(null)
    setDeleteReason('')
  }, [])

  const handleConfirmDelete = useCallback(async () => {
    if (!deletingKey || !deleteReason) return
    setDeleteSubmitting(true)
    try {
      await purchaseOrderApi.delete(deletingKey.contNo, deletingKey.contDt, { deleteReasonCode: deleteReason })
      message.success('Purchase Order deleted.')
      setDeleteOpen(false)
      setDeletingKey(null)
      load(filtersRef.current, store.page)
    } catch {
      message.error('Failed to delete Purchase Order.')
    } finally {
      setDeleteSubmitting(false)
    }
  }, [deletingKey, deleteReason, store.page, load])

  return {
    rows:            store.rows,
    total:           store.total,
    page:            store.page,
    pageSize:        store.pageSize,
    loading:         store.loading,
    deleteReasons:   store.deleteReasons,
    deleteOpen,
    deletingKey,
    deleteReason,
    deleteSubmitting,
    setDeleteReason,
    handleSearch,
    handleReset,
    handlePageChange,
    handleEdit,
    handleOpenDelete,
    handleCancelDelete,
    handleConfirmDelete,
  }
}

export function formatContDt(dt: string | null | undefined): string {
  if (!dt) return '—'
  return dayjs(dt).format('DD-MMM-YYYY')
}
