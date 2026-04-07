import { apiHelpers } from '@/shared/api/client'
import type {
  CreatePRDto,
  UpdatePRDto,
  PRSummaryDto,
  PRDetailDto,
  PreCheckResult,
} from '../types'

const BASE = '/purchase-requisitions'

export const purchaseRequisitionService = {
  getAll: (divCode: string, params?: Record<string, string | undefined>) =>
    apiHelpers.get<PRSummaryDto[]>(`${BASE}?divCode=${divCode}${params ? `&${new URLSearchParams(Object.entries(params).filter(([, v]) => v !== undefined) as [string, string][]).toString()}` : ''}`),

  getById: (divCode: string, prNo: string) =>
    apiHelpers.get<PRDetailDto>(`${BASE}/${encodeURIComponent(prNo)}?divCode=${divCode}`),

  runPreChecks: (divCode: string) =>
    apiHelpers.get<PreCheckResult>(`${BASE}/pre-checks?divCode=${divCode}`),

  create: (dto: CreatePRDto) =>
    apiHelpers.post<{ prNo: string }>(BASE, dto),

  update: (prNo: string, dto: UpdatePRDto) =>
    apiHelpers.put<void>(`${BASE}/${encodeURIComponent(prNo)}`, dto),

  deletePR: (divCode: string, prNo: string) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}?divCode=${divCode}`),

  deleteLine: (divCode: string, prNo: string, lineNo: number) =>
    apiHelpers.delete(`${BASE}/${encodeURIComponent(prNo)}/lines/${lineNo}?divCode=${divCode}`),
}
