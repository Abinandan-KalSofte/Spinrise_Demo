import { apiHelpers } from '@/shared/api/client'
import type {
  PagedResult,
  PODefaultsDto,
  POPreCheckResultDto,
  POSummaryDto,
  PODetailDto,
  PRLineDto,
  PRLineFilterQuery,
  POApprovalStatusDto,
  POApprovalActionRequest,
  PODeleteRequest,
  DeleteReasonDto,
  CreatePORequest,
  UpdatePORequest,
} from '../types'

const BASE = 'rmi/po'

function buildQS(params: Record<string, string | number | boolean | undefined | null>): string {
  const p = new URLSearchParams()
  for (const [k, v] of Object.entries(params)) {
    if (v !== undefined && v !== null && v !== '') p.set(k, String(v))
  }
  return p.toString()
}

export const purchaseOrderApi = {
  getPaginated: (query: {
    page?: number
    pageSize?: number
    searchText?: string
    fromDate?: string
    toDate?: string
    supplierCode?: string
  } = {}) => {
    const qs = buildQS(query)
    return apiHelpers.get<PagedResult<POSummaryDto>>(qs ? `${BASE}?${qs}` : BASE)
  },

  getDefaults: () =>
    apiHelpers.get<PODefaultsDto>(`${BASE}/defaults`),

  preChecks: () =>
    apiHelpers.get<POPreCheckResultDto>(`${BASE}/pre-checks`),

  getDeleteReasons: () =>
    apiHelpers.get<DeleteReasonDto[]>(`${BASE}/delete-reasons`),

  getPRLines: (filter: PRLineFilterQuery) => {
    const qs = buildQS(filter as Record<string, string | number | boolean | undefined | null>)
    return apiHelpers.get<PRLineDto[]>(qs ? `${BASE}/pr-lines?${qs}` : `${BASE}/pr-lines`)
  },

  getById: (contNo: string, contDt: string) =>
    apiHelpers.get<PODetailDto>(`${BASE}/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}`),

  create: (dto: CreatePORequest) =>
    apiHelpers.post<{ contNo: string }>(`${BASE}`, dto),

  update: (contNo: string, contDt: string, dto: UpdatePORequest) =>
    apiHelpers.put<void>(`${BASE}/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}`, dto),

  delete: (contNo: string, contDt: string, dto: PODeleteRequest) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}`, { data: dto }),

  getApprovalStatus: (contNo: string, contDt: string) =>
    apiHelpers.get<POApprovalStatusDto>(`${BASE}/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}/approval`),

  approve: (contNo: string, contDt: string, dto: POApprovalActionRequest) =>
    apiHelpers.post<void>(`${BASE}/${encodeURIComponent(contNo)}/${encodeURIComponent(contDt)}/approve`, dto),
}
