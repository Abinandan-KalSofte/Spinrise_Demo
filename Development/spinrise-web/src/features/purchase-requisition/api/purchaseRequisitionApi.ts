import { apiHelpers } from '@/shared/api/client'
import type {
  CreatePRRequest,
  UpdatePRRequest,
  PRHeaderResponse,
  PRSummaryResponse,
  PreCheckResult,
  PRItemInfoDto,
  PRItemHistoryDto,
} from '../types'

const BASE = 'purchase-requisitions'

// divCode is NOT passed from the frontend — the backend extracts it from the
// authenticated user's JWT claim (SpinriseClaims.DivCode = "div_code").

export interface PRPaginatedFilters {
  prNo?: string
  startDate?: string
  endDate?: string
  depCode?: string
  reqName?: string
  status?: string
  page?: number
  pageSize?: number
}

export interface PagedResult<T> {
  items: T[]
  totalCount: number
  page: number
  pageSize: number
  totalPages: number
}

export const purchaseRequisitionApi = {
  getPaginated: (filters: PRPaginatedFilters = {}) => {
    const params = new URLSearchParams()
    Object.entries(filters).forEach(([k, v]) => {
      if (v !== undefined && v !== null && v !== '') params.set(k, String(v))
    })
    const qs = params.toString()
    return apiHelpers.get<PagedResult<PRSummaryResponse>>(qs ? `${BASE}/paginated?${qs}` : `${BASE}/paginated`)
  },

  preChecks: () =>
    apiHelpers.get<PreCheckResult>(`${BASE}/pre-checks`),

  getItemInfo: (depCode: string, itemCode: string, yfDate: string, ylDate: string, pendingIndentCheckEnabled: boolean, pendingPRCheckEnabled: boolean) =>
    apiHelpers.get<PRItemInfoDto>(`${BASE}/item-info?depCode=${encodeURIComponent(depCode)}&itemCode=${encodeURIComponent(itemCode)}&yfDate=${encodeURIComponent(yfDate)}&ylDate=${encodeURIComponent(ylDate)}&pendingIndentCheckEnabled=${pendingIndentCheckEnabled}&pendingPRCheckEnabled=${pendingPRCheckEnabled}`),

  getItemHistory: (itemCode: string) =>
    apiHelpers.get<PRItemHistoryDto[]>(`${BASE}/item-history?itemCode=${encodeURIComponent(itemCode)}`),

  getById: (prNo: number, startDate?: string, endDate?: string) => {
    const params = new URLSearchParams()
    if (startDate) params.set('startDate', startDate)
    if (endDate)   params.set('endDate',   endDate)
    const qs = params.toString()
    return apiHelpers.get<PRHeaderResponse>(qs ? `${BASE}/${prNo}?${qs}` : `${BASE}/${prNo}`)
  },

  create: (dto: CreatePRRequest) =>
    apiHelpers.post<{ prNo: number }>(BASE, dto),

  update: (prNo: number, dto: UpdatePRRequest) =>
    apiHelpers.put<void>(`${BASE}/${prNo}`, dto),

  getDeleteReasons: () =>
    apiHelpers.get<Array<{ reasonCode: string; reasonDesc: string }>>(`${BASE}/delete-reasons`),

  deletePR: (prNo: number, deleteReasonCode: string) =>
    apiHelpers.delete(`${BASE}/${prNo}?deleteReasonCode=${encodeURIComponent(deleteReasonCode)}`),

  deleteLine: (prNo: number, lineNo: number, deleteReasonCode: string) =>
    apiHelpers.delete(`${BASE}/${prNo}/lines/${lineNo}?deleteReasonCode=${encodeURIComponent(deleteReasonCode)}`),
}
