import { useState } from 'react'
import { Card, Col, InputNumber, List, Row, Space, Tag, Typography, message } from 'antd'
import { Button } from '@/shared/ui'
import { purchaseReportService, type ReportFormat } from '../services/purchaseReportService'

const quickIds = [1001, 1008, 1015]

function triggerBrowserDownload(blob: Blob, fileName: string) {
  const downloadUrl = globalThis.URL.createObjectURL(blob)
  const anchor = document.createElement('a')

  anchor.href = downloadUrl
  anchor.download = fileName
  document.body.appendChild(anchor)
  anchor.click()
  anchor.remove()
  globalThis.URL.revokeObjectURL(downloadUrl)
}

export default function PurchaseRequisitionReportPage() {
  const [requestId, setRequestId] = useState<number>(1001)
  const [downloadingFormat, setDownloadingFormat] = useState<ReportFormat | null>(null)
  const [messageApi, contextHolder] = message.useMessage()

  const handleDownload = async (format: ReportFormat) => {
    if (!requestId || requestId <= 0) {
      void messageApi.warning('Enter a valid purchase requisition ID to continue.')
      return
    }

    try {
      setDownloadingFormat(format)
      const today = new Date().toISOString().split('T')[0]
      const { blob, fileName } = format === 'pdf'
        ? await purchaseReportService.downloadPurchaseRequisitionQuestPdf(requestId, today, today)
        : await purchaseReportService.downloadPurchaseRequisitionReport(requestId, format)

      triggerBrowserDownload(blob, fileName)
      void messageApi.success(`${fileName} is ready.`)
    } catch (error) {
      const description =
        error instanceof Error ? error.message : 'Unable to generate the report right now.'

      void messageApi.error(description)
    } finally {
      setDownloadingFormat(null)
    }
  }

  const isBusy = downloadingFormat !== null

  return (
    <div className="report-page">
      {contextHolder}

      <div className="report-page__hero">
        <div>
          <Tag color="blue">Purchase Division</Tag>
          <Typography.Title level={2}>Purchase Requisition Report</Typography.Title>
          <Typography.Paragraph>
            Generate Purchase Requisition reports straight from the backend and download them
            locally. Choose PDF for a formatted printout, Excel for editable data, or CSV for
            data pipelines.
          </Typography.Paragraph>
        </div>

        <div className="report-page__hero-stat">
          <span>Output</span>
          <strong>PDF · XLSX · CSV</strong>
          <small>/api/v1/purchase/reports/pr/{'{id}'}/&#123;format&#125;</small>
        </div>
      </div>

      <Row gutter={[20, 20]}>
        <Col xs={24} xl={15}>
          <Card className="report-card" title="Download Report">
            <Space direction="vertical" size="large" className="report-form">
              <div>
                <Typography.Text strong>Purchase Requisition ID</Typography.Text>
                <InputNumber
                  min={1}
                  value={requestId}
                  onChange={(value) => setRequestId(value ?? 0)}
                  className="report-form__input"
                  size="large"
                />
              </div>

              <div>
                <Typography.Text strong>Quick demo IDs</Typography.Text>
                <div className="report-form__chips">
                  {quickIds.map((id) => (
                    <button
                      key={id}
                      type="button"
                      className={`report-chip${requestId === id ? ' report-chip--active' : ''}`}
                      onClick={() => setRequestId(id)}
                    >
                      PR #{id}
                    </button>
                  ))}
                </div>
              </div>

              <div>
                <Typography.Text strong style={{ display: 'block', marginBottom: 12 }}>
                  Export format
                </Typography.Text>
                <Space wrap size="small">
                  <Button
                    type="primary"
                    size="large"
                    loading={downloadingFormat === 'pdf'}
                    disabled={isBusy && downloadingFormat !== 'pdf'}
                    onClick={() => void handleDownload('pdf')}
                  >
                    Download PDF
                  </Button>
                  <Button
                    size="large"
                    loading={downloadingFormat === 'excel'}
                    disabled={isBusy && downloadingFormat !== 'excel'}
                    onClick={() => void handleDownload('excel')}
                  >
                    Download Excel
                  </Button>
                  <Button
                    size="large"
                    loading={downloadingFormat === 'csv'}
                    disabled={isBusy && downloadingFormat !== 'csv'}
                    onClick={() => void handleDownload('csv')}
                  >
                    Download CSV
                  </Button>
                </Space>
                <Typography.Text type="secondary" style={{ display: 'block', marginTop: 10 }}>
                  Demo mode — the backend serves a sample dataset for all formats.
                </Typography.Text>
              </div>
            </Space>
          </Card>
        </Col>

        <Col xs={24} xl={9}>
          <Card className="report-card" title="What this page does">
            <List
              dataSource={[
                'Calls the Purchase report API with the selected requisition ID and format.',
                'PDF uses the FastReport .frx template for a formatted printout.',
                'Excel produces a .xlsx workbook via ClosedXML with auto-sized columns.',
                'CSV produces a UTF-8 encoded file via CsvHelper for data pipelines.',
                'All formats are streamed as blobs — no backend file system writes.',
                'The filename is taken from the Content-Disposition header when available.',
              ]}
              renderItem={(item) => <List.Item>{item}</List.Item>}
            />
          </Card>
        </Col>
      </Row>
    </div>
  )
}
