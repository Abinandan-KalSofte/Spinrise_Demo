import { create } from 'zustand'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import type { POSummaryDto, POListQuery, PagedResult, DeleteReasonDto } from '../types'

interface POListState {
  rows: POSummaryDto[]
  total: number
  page: number
  pageSize: number
  loading: boolean
  deleteReasons: DeleteReasonDto[]
  deleteReasonsLoaded: boolean

  fetchPage: (query: POListQuery) => Promise<void>
  fetchDeleteReasons: () => Promise<void>
  reset: () => void
}

export const usePurchaseOrderStore = create<POListState>()((set, get) => ({
  rows: [],
  total: 0,
  page: 1,
  pageSize: 20,
  loading: false,
  deleteReasons: [],
  deleteReasonsLoaded: false,

  fetchPage: async (query) => {
    set({ loading: true })
    try {
      const result: PagedResult<POSummaryDto> = await purchaseOrderApi.getPaginated(query)
      set({
        rows:     result.items,
        total:    result.totalCount,
        page:     result.page,
        pageSize: result.pageSize,
      })
    } finally {
      set({ loading: false })
    }
  },

  fetchDeleteReasons: async () => {
    if (get().deleteReasonsLoaded) return
    const reasons = await purchaseOrderApi.getDeleteReasons()
    set({ deleteReasons: reasons, deleteReasonsLoaded: true })
  },

  reset: () =>
    set({ rows: [], total: 0, page: 1, loading: false }),
}))
