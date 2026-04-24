import { api } from '@/shared/api/client'

export type ReportFormat = 'pdf' | 'excel' | 'csv'
export type DatewiseFormat = 'excel' | 'csv'

const defaultExtension: Record<ReportFormat, string> = {
  pdf: 'pdf',
  excel: 'xlsx',
  csv: 'csv',
}

export const purchaseReportService = {
  /**
   * Downloads a Purchase Requisition as a PDF using QuestPDF,
   * scoped to the active search date range.
   *
   * Route: GET /purchase/reports/pr/{id}/pdf/quest?startDate=yyyy-MM-dd&endDate=yyyy-MM-dd
   */
  async downloadPurchaseRequisitionQuestPdf(prNo: number, startDate: string, endDate: string) {
    const response = await api.get(`purchase/reports/pr/${prNo}/pdf/quest`, {
      params: { startDate, endDate },
      responseType: 'blob',
    })

    const disposition  = response.headers['content-disposition'] as string | undefined
    const fileNameMatch = disposition?.match(/filename="?([^";\s]+)"?/)

    return {
      blob:     response.data as Blob,
      fileName: fileNameMatch?.[1] ?? `PurchaseRequisition-${prNo}.pdf`,
    }
  },

  /**
   * Downloads a Purchase Requisition in Excel or CSV format.
   *
   * Routes:
   *   GET /purchase/reports/pr/{id}/excel
   *   GET /purchase/reports/pr/{id}/csv
   */
  async downloadPurchaseRequisitionReport(id: number, format: Exclude<ReportFormat, 'pdf'>) {
    const response = await api.get(`purchase/reports/pr/${id}/${format}`, {
      responseType: 'blob',
    })

    const disposition  = response.headers['content-disposition'] as string | undefined
    const fileNameMatch = disposition?.match(/filename="?([^";\s]+)"?/)

    return {
      blob:     response.data as Blob,
      fileName: fileNameMatch?.[1] ?? `PurchaseRequisition-${id}.${defaultExtension[format]}`,
    }
  },

  /**
   * Downloads all PRs for the authenticated division within a date range as a merged PDF.
   *
   * Route: GET /purchase/reports/pr/pdf?startDate=yyyy-MM-dd&endDate=yyyy-MM-dd
   */
  async downloadPurchaseRequisitionPdfByRange(startDate: string, endDate: string) {
    const response = await api.get('purchase/reports/pr/pdf', {
      params: { startDate, endDate },
      responseType: 'blob',
    })

    const disposition  = response.headers['content-disposition'] as string | undefined
    const fileNameMatch = disposition?.match(/filename="?([^";\s]+)"?/)

    return {
      blob:     response.data as Blob,
      fileName: fileNameMatch?.[1] ?? `PurchaseRequisition_${startDate}_${endDate}.pdf`,
    }
  },

  /**
   * Downloads all PRs for the authenticated division within a date range.
   *
   * Routes:
   *   GET /purchase/reports/datewise/excel?startDate=yyyy-MM-dd&endDate=yyyy-MM-dd
   *   GET /purchase/reports/datewise/csv?startDate=yyyy-MM-dd&endDate=yyyy-MM-dd
   */
  async downloadDatewisePrReport(startDate: string, endDate: string, format: DatewiseFormat) {
    const response = await api.get(`purchase/reports/datewise/${format}`, {
      params: { startDate, endDate },
      responseType: 'blob',
    })

    const disposition  = response.headers['content-disposition'] as string | undefined
    const match        = disposition?.match(/filename="?([^";\s]+)"?/)
    const ext          = format === 'excel' ? 'xlsx' : 'csv'

    return {
      blob:     response.data as Blob,
      fileName: match?.[1] ?? `PRDatewise_${startDate}_${endDate}.${ext}`,
    }
  },
}
