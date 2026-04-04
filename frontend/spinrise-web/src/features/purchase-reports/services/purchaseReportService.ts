import { api } from '@/shared/api/client'

export type ReportFormat = 'pdf' | 'excel' | 'csv'

const defaultExtension: Record<ReportFormat, string> = {
  pdf: 'pdf',
  excel: 'xlsx',
  csv: 'csv',
}

export const purchaseReportService = {
  /**
   * Downloads a Purchase Requisition report in the requested format.
   *
   * Routes:
   *   GET /purchase/reports/pr/{id}/pdf
   *   GET /purchase/reports/pr/{id}/excel
   *   GET /purchase/reports/pr/{id}/csv
   *
   * The filename is extracted from the Content-Disposition response header
   * when available, and falls back to a sensible default otherwise.
   */
  async downloadPurchaseRequisitionReport(id: number, format: ReportFormat) {
    const response = await api.get(`/purchase/reports/pr/${id}/${format}`, {
      responseType: 'blob',
    })

    const disposition = response.headers['content-disposition'] as string | undefined
    const fileNameMatch = disposition?.match(/filename="?([^";\s]+)"?/)

    return {
      blob: response.data as Blob,
      fileName: fileNameMatch?.[1] ?? `PurchaseRequisition-${id}.${defaultExtension[format]}`,
    }
  },
}
