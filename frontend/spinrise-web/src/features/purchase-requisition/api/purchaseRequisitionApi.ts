import { apiHelpers } from '@/shared/api/client'
import type {
  CreatePRRequest,
  UpdatePRRequest,
  PRHeaderResponse,
  PRSummaryResponse,
  PreCheckResult,
} from '../types'

const BASE = 'purchase-requisitions'

// divCode is NOT passed from the frontend — the backend extracts it from the
// authenticated user's JWT claim (SpinriseClaims.DivCode = "div_code").

export interface PRListFilters {
  prNo?: string
  fromDate?: string
  toDate?: string
  depCode?: string
  status?: string
}

export const purchaseRequisitionApi = {
  preChecks: () =>
    apiHelpers.get<PreCheckResult>(`${BASE}/pre-checks`),

  getAll: (filters: PRListFilters = {}) => {
    const params = new URLSearchParams()
    Object.entries(filters).forEach(([k, v]) => {
      if (v) params.set(k, v)
    })
    const qs = params.toString()
    return apiHelpers.get<PRSummaryResponse[]>(qs ? `${BASE}?${qs}` : BASE)
  },

  getById: (prNo: string) =>
    apiHelpers.get<PRHeaderResponse>(`${BASE}/${encodeURIComponent(prNo)}`),

  create: (dto: CreatePRRequest) =>
    apiHelpers.post<{ prNo: string }>(BASE, dto),

  update: (prNo: string, dto: UpdatePRRequest) =>
    apiHelpers.put<void>(`${BASE}/${encodeURIComponent(prNo)}`, dto),

  deletePR: (prNo: string) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}`),

  deleteLine: (prNo: string, lineNo: number) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}/lines/${lineNo}`),
}
