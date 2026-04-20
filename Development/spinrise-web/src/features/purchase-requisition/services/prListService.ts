import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import type { PRPaginatedFilters } from '../api/purchaseRequisitionApi'
import { lookupApi } from '../api/lookupApi'
import { purchaseReportService } from '@/features/purchase-reports/services/purchaseReportService'

/**
 * Service layer for the PR list page.
 * Centralises all external API dependencies so the hook has a single import point.
 */
export const prListService = {
  getPaginated:   (filters: PRPaginatedFilters)  => purchaseRequisitionApi.getPaginated(filters),
  getById:        (prNo: number, startDate?: string, endDate?: string) => purchaseRequisitionApi.getById(prNo, startDate, endDate),
  getDepartments: ()                             => lookupApi.getDepartments(),
  getEmployees:   ()                             => lookupApi.getEmployees(),
  downloadReport: (prNo: number, startDate: string, endDate: string) =>
    purchaseReportService.downloadPurchaseRequisitionQuestPdf(prNo, startDate, endDate),
}
