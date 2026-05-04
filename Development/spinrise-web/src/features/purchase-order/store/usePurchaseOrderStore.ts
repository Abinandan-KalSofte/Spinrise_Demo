import { create } from 'zustand'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import type { POSummaryResponse, PagedResult, POSummaryCounts, PODeleteReasonDto, POListQuery } from '../types'

interface POListState {
  rows:               POSummaryResponse[]
  total:              number
  page:               number
  pageSize:           number
  loading:            boolean
  summary:            POSummaryCounts | null
  summaryLoading:     boolean
  deleteReasons:      PODeleteReasonDto[]
  deleteReasonsLoaded:boolean

  fetchPage:          (query: POListQuery) => Promise<void>
  fetchSummary:       () => Promise<void>
  fetchDeleteReasons: () => Promise<void>
  reset:              () => void
}

export const usePurchaseOrderStore = create<POListState>()((set, get) => ({
  rows:                [],
  total:               0,
  page:                1,
  pageSize:            20,
  loading:             false,
  summary:             null,
  summaryLoading:      false,
  deleteReasons:       [],
  deleteReasonsLoaded: false,

  fetchPage: async (query) => {
    set({ loading: true })
    try {
      const result: PagedResult<POSummaryResponse> = await purchaseOrderApi.getPaginated(query)
      set({ rows: result.items, total: result.totalCount, page: result.page, pageSize: result.pageSize })
    } finally {
      set({ loading: false })
    }
  },

  fetchSummary: async () => {
    set({ summaryLoading: true })
    try {
      const s = await purchaseOrderApi.getSummary()
      set({ summary: s })
    } catch {
      // non-critical
    } finally {
      set({ summaryLoading: false })
    }
  },

  fetchDeleteReasons: async () => {
    if (get().deleteReasonsLoaded) return
    const reasons = await purchaseOrderApi.getDeleteReasons()
    set({ deleteReasons: reasons, deleteReasonsLoaded: true })
  },

  reset: () => set({ rows: [], total: 0, page: 1, loading: false }),
}))
