import { apiHelpers } from '@/shared/api/client'
import type {
  CreatePRRequest,
  UpdatePRRequest,
  PRHeaderResponse,
  PRSummaryResponse,
  PreCheckResult,
  PRItemInfoDto,
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

  getItemInfo: (depCode: string, itemCode: string, yfDate: string, ylDate: string, pendingIndentCheckEnabled: boolean, pendingPRCheckEnabled: boolean) =>
    apiHelpers.get<PRItemInfoDto>(`${BASE}/item-info?depCode=${encodeURIComponent(depCode)}&itemCode=${encodeURIComponent(itemCode)}&yfDate=${encodeURIComponent(yfDate)}&ylDate=${encodeURIComponent(ylDate)}&pendingIndentCheckEnabled=${pendingIndentCheckEnabled}&pendingPRCheckEnabled=${pendingPRCheckEnabled}`),

  getAll: (filters: PRListFilters = {}) => {
    const params = new URLSearchParams()
    Object.entries(filters).forEach(([k, v]) => {
      if (v) params.set(k, v)
    })
    const qs = params.toString()
    return apiHelpers.get<PRSummaryResponse[]>(qs ? `${BASE}?${qs}` : BASE)
  },

  getById: (prNo: number) =>
    apiHelpers.get<PRHeaderResponse>(`${BASE}/${prNo}`),

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
