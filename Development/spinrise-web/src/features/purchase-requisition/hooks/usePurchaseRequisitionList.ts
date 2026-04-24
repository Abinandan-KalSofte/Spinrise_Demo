import { useCallback, useEffect, useRef, useState } from 'react'
import { App } from 'antd'
import type { TablePaginationConfig } from 'antd/es/table'
import type { SorterResult } from 'antd/es/table/interface'
import { prListService } from '../services/prListService'
import type { PRPaginatedFilters } from '../api/purchaseRequisitionApi'
import type { DepartmentLookup, EmployeeLookup, PRHeaderResponse, PRSummaryResponse } from '../types'
import { PAGE_SIZE } from '../components/pr-list/prListConfig'
import { getFYBounds } from '@/shared/lib/dateUtils'
import type { SearchFormValues } from '../components/pr-list/prListConfig'

export function usePurchaseRequisitionList() {
  const { message } = App.useApp()

  // ── Data ────────────────────────────────────────────────────────────────────
  const [rows,        setRows]        = useState<PRSummaryResponse[]>([])
  const [total,       setTotal]       = useState(0)
  const [page,        setPage]        = useState(1)
  const [loading,     setLoading]     = useState(false)

  // ── Lookups ─────────────────────────────────────────────────────────────────
  const [departments, setDepartments] = useState<DepartmentLookup[]>([])
  const [employees,   setEmployees]   = useState<EmployeeLookup[]>([])

  // ── View modal ──────────────────────────────────────────────────────────────
  const [viewOpen,    setViewOpen]    = useState(false)
  const [viewPr,      setViewPr]      = useState<PRHeaderResponse | null>(null)
  const [viewLoading, setViewLoading] = useState(false)

  // ── Download ────────────────────────────────────────────────────────────────
  const [downloading, setDownloading] = useState<number | null>(null)

  // ── Delete ──────────────────────────────────────────────────────────────────
  const [deleteOpen,       setDeleteOpen]       = useState(false)
  const [deletingPrNo,     setDeletingPrNo]     = useState<number | null>(null)
  const [deleteReasons,    setDeleteReasons]    = useState<Array<{ reasonCode: string; reasonDesc: string }>>([])
  const [deleteReason,     setDeleteReason]     = useState<string | undefined>(undefined)
  const [deleteSubmitting, setDeleteSubmitting] = useState(false)

  const activeFilters = useRef<PRPaginatedFilters>({})

  // ── Lookups on mount ────────────────────────────────────────────────────────
  useEffect(() => {
    void Promise.all([
      prListService.getDepartments().then(setDepartments).catch(() => undefined),
      prListService.getEmployees().then(setEmployees).catch(() => undefined),
    ])
  }, [])

  // ── Core fetch ──────────────────────────────────────────────────────────────
  const fetchPage = useCallback(async (pg: number, filters: PRPaginatedFilters) => {
    setLoading(true)
    try {
      const result = await prListService.getPaginated({ ...filters, page: pg, pageSize: PAGE_SIZE })
      setRows(result.items)
      setTotal(result.totalCount)
      setPage(pg)
      activeFilters.current = filters
    } catch {
      void message.error('Failed to load purchase requisitions.')
    } finally {
      setLoading(false)
    }
  }, [message])

  // ── Initial load with FY defaults ───────────────────────────────────────────
  useEffect(() => {
    const { yfDate, ylDate } = getFYBounds()
    void fetchPage(1, { startDate: yfDate, endDate: ylDate })
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Handlers ────────────────────────────────────────────────────────────────
  const handleSearch = useCallback(async (values: SearchFormValues) => {
    const { yfDate, ylDate } = getFYBounds()
    await fetchPage(1, {
      prNo:       values.prNo ? String(values.prNo) : undefined,
      startDate:  values.dateRange?.[0]?.format('YYYY-MM-DD') ?? yfDate,
      endDate:    values.dateRange?.[1]?.format('YYYY-MM-DD') ?? ylDate,
      depCode:    values.depCode    || undefined,
      reqName:    values.reqName    || undefined,
      status:     values.status     || undefined,
      searchText: values.searchText || undefined,
    })
  }, [fetchPage])

  const handleReset = useCallback(async () => {
    const { yfDate, ylDate } = getFYBounds()
    await fetchPage(1, { startDate: yfDate, endDate: ylDate })
  }, [fetchPage])

  const handleTableChange = useCallback(async (
    pagination: TablePaginationConfig,
    _filters: unknown,
    _sorter: SorterResult<PRSummaryResponse> | SorterResult<PRSummaryResponse>[],
  ) => {
    await fetchPage(pagination.current ?? 1, activeFilters.current)
  }, [fetchPage])

  const handleView = useCallback(async (prNo: number) => {
    setViewOpen(true)
    setViewPr(null)
    setViewLoading(true)
    try {
      const { startDate, endDate } = activeFilters.current
      const result = await prListService.getById(prNo, startDate, endDate)
      setViewPr(result)
    } catch {
      void message.error('Failed to load PR details.')
      setViewOpen(false)
    } finally {
      setViewLoading(false)
    }
  }, [message])

  const handleCloseView = useCallback(() => {
    setViewOpen(false)
    setViewPr(null)
  }, [])

  const handleDownload = useCallback(async (record: PRSummaryResponse) => {
    const { yfDate, ylDate } = getFYBounds()
    const startDate = activeFilters.current.startDate ?? yfDate
    const endDate   = activeFilters.current.endDate   ?? ylDate

    setDownloading(record.prNo)
    try {
      const { blob, fileName } = await prListService.downloadReport(record.prNo, startDate, endDate)
      const url = URL.createObjectURL(blob)
      const a   = document.createElement('a')
      a.href     = url
      a.download = fileName
      a.click()
      URL.revokeObjectURL(url)
    } catch {
      void message.error('Failed to download report.')
    } finally {
      setDownloading(null)
    }
  }, [message])

  const handleOpenDelete = useCallback(async (prNo: number) => {
    setDeletingPrNo(prNo)
    setDeleteReason(undefined)
    setDeleteOpen(true)
    if (deleteReasons.length === 0) {
      try {
        const reasons = await prListService.getDeleteReasons()
        setDeleteReasons(reasons)
      } catch {
        void message.error('Failed to load delete reasons.')
      }
    }
  }, [message, deleteReasons.length])

  const handleCancelDelete = useCallback(() => {
    setDeleteOpen(false)
    setDeletingPrNo(null)
    setDeleteReason(undefined)
  }, [])

  const handleConfirmDelete = useCallback(async () => {
    if (!deletingPrNo || !deleteReason) return
    setDeleteSubmitting(true)
    try {
      const { startDate, endDate } = activeFilters.current
      await prListService.deletePR(deletingPrNo, deleteReason, startDate, endDate)
      void message.success(`PR #${deletingPrNo} cancelled successfully.`)
      setDeleteOpen(false)
      setDeletingPrNo(null)
      setDeleteReason(undefined)
      await fetchPage(page, activeFilters.current)
    } catch {
      void message.error('Failed to cancel purchase requisition.')
    } finally {
      setDeleteSubmitting(false)
    }
  }, [deletingPrNo, deleteReason, message, fetchPage, page])

  return {
    // data
    rows, total, page, loading,
    departments, employees,
    // modal
    viewOpen, viewPr, viewLoading,
    // download
    downloading,
    // delete
    deleteOpen, deletingPrNo, deleteReasons, deleteReason, deleteSubmitting,
    setDeleteReason,
    // handlers
    handleSearch, handleReset, handleTableChange,
    handleView, handleCloseView, handleDownload,
    handleOpenDelete, handleCancelDelete, handleConfirmDelete,
  }
}
