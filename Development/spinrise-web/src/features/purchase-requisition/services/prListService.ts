import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import type { PRPaginatedFilters } from '../api/purchaseRequisitionApi'
type SummaryFilters = Omit<PRPaginatedFilters, 'page' | 'pageSize'>
import { lookupApi } from '../api/lookupApi'
import { purchaseReportService } from '@/features/purchase-reports/services/purchaseReportService'

/**
 * Service layer for the PR list page.
 * Centralises all external API dependencies so the hook has a single import point.
 */
export const prListService = {
  getSummary:        (filters: SummaryFilters)      => purchaseRequisitionApi.getSummary(filters),
  getPaginated:      (filters: PRPaginatedFilters)  => purchaseRequisitionApi.getPaginated(filters),
  getById:           (prNo: number, startDate?: string, endDate?: string) => purchaseRequisitionApi.getById(prNo, startDate, endDate),
  getDepartments:    ()                             => lookupApi.getDepartments(),
  getEmployees:      ()                             => lookupApi.getEmployees(),
  downloadReport:    (prNo: number, startDate: string, endDate: string) =>
    purchaseReportService.downloadPurchaseRequisitionQuestPdf(prNo, startDate, endDate),
  getDeleteReasons:  ()                             => purchaseRequisitionApi.getDeleteReasons(),
  deletePR:          (prNo: number, reasonCode: string, startDate?: string, endDate?: string) => purchaseRequisitionApi.deletePR(prNo, reasonCode, startDate, endDate),
}
