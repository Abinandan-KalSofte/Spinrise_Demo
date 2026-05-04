import { apiHelpers } from '@/shared/api/client'
import type {
  PagedResult, POListQuery, POSummaryResponse,
  PODetailResponse, POSummaryCounts,
  PODefaultsDto, PODeleteReasonDto, GSTConfigDto,
  PRLineDto, PRLineFilter,
  POApprovalStatus, POApprovalAction,
  CreatePORequest,
} from '../types'

const BASE = 'rmi/po'

export const purchaseOrderApi = {
  getPaginated: (query: POListQuery) =>
    apiHelpers.get<PagedResult<POSummaryResponse>>(BASE, { params: query }),

  getSummary: () =>
    apiHelpers.get<POSummaryCounts>(`${BASE}/summary`),

  getDefaults: () =>
    apiHelpers.get<PODefaultsDto>(`${BASE}/defaults`),

  getDeleteReasons: () =>
    apiHelpers.get<PODeleteReasonDto[]>(`${BASE}/delete-reasons`),

  getGSTConfig: (supplierCode: string) =>
    apiHelpers.get<GSTConfigDto>(`${BASE}/gst-config`, { params: { supplierCode } }),

  getPRLines: (filter: PRLineFilter) =>
    apiHelpers.get<PRLineDto[]>(`${BASE}/pr-lines`, { params: filter }),

  getById: (contNo: number, contDt: string) =>
    apiHelpers.get<PODetailResponse>(`${BASE}/${contNo}/${encodeURIComponent(contDt)}`),

  create: (dto: CreatePORequest) =>
    apiHelpers.post<{ contNo: number; warnings: string[] }>(BASE, dto),

  delete: (contNo: number, contDt: string, deleteReasonCode: string) =>
    apiHelpers.delete(`${BASE}/${contNo}/${encodeURIComponent(contDt)}`, {
      data: { deleteReasonCode },
    }),

  getApprovalStatus: (contNo: number, contDt: string) =>
    apiHelpers.get<POApprovalStatus>(`${BASE}/${contNo}/${encodeURIComponent(contDt)}/approval`),

  approve: (contNo: number, contDt: string, action: POApprovalAction) =>
    apiHelpers.post(`${BASE}/${contNo}/${encodeURIComponent(contDt)}/approve`, action),
}
