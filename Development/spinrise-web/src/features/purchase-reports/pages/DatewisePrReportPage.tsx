import { useState } from 'react'
import { Button, Card, Col, DatePicker, List, Row, Space, Tag, Typography, message } from 'antd'
import type { Dayjs } from 'dayjs'
import {
  purchaseReportService,
  type DatewiseFormat,
} from '../services/purchaseReportService'

type DateRange = [Dayjs | null, Dayjs | null]

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

export default function DatewisePrReportPage() {
  const [dates, setDates] = useState<DateRange>([null, null])
  const [downloading, setDownloading] = useState<DatewiseFormat | null>(null)
  const [messageApi, contextHolder] = message.useMessage()

  const isBusy = downloading !== null

  const handleDownload = async (format: DatewiseFormat) => {
    const [start, end] = dates

    if (!start || !end) {
      void messageApi.warning('Select a date range to continue.')
      return
    }

    try {
      setDownloading(format)
      const { blob, fileName } = await purchaseReportService.downloadDatewisePrReport(
        start.format('YYYY-MM-DD'),
        end.format('YYYY-MM-DD'),
        format,
      )
      triggerBrowserDownload(blob, fileName)
      void messageApi.success(`${fileName} is ready.`)
    } catch (error) {
      void messageApi.error(
        error instanceof Error ? error.message : 'Unable to generate the report.',
      )
    } finally {
      setDownloading(null)
    }
  }

  const disabledDate = (current: Dayjs): boolean => {
    // Reject future dates
    if (current.isAfter(new Date(), 'day')) return true

    // Reject dates more than 365 days before the selected end date
    const [, end] = dates
    if (end && end.diff(current, 'day') > 365) return true

    return false
  }

  return (
    <div className="report-page">
      {contextHolder}

      <div className="report-page__hero">
        <div>
          <Tag color="blue">Purchase Division</Tag>
          <Typography.Title level={2}>Datewise PR Report</Typography.Title>
          <Typography.Paragraph>
            Download all Purchase Requisitions for your division within a selected date range.
            Excel output mirrors the Crystal Report grouped layout; CSV is a flat export for
            data pipelines.
          </Typography.Paragraph>
        </div>

        <div className="report-page__hero-stat">
          <span>Output</span>
          <strong>XLSX · CSV</strong>
          <small>/api/v1/purchase/reports/datewise/&#123;format&#125;</small>
        </div>
      </div>

      <Row gutter={[20, 20]}>
        <Col xs={24} xl={15}>
          <Card className="report-card" title="Download Report">
            <Space direction="vertical" size="large" className="report-form">
              <div>
                <Typography.Text strong>Date Range</Typography.Text>
                <DatePicker.RangePicker
                  size="large"
                  className="report-form__input"
                  disabledDate={disabledDate}
                  value={dates}
                  onChange={(range) =>
                    setDates(range ? [range[0] ?? null, range[1] ?? null] : [null, null])
                  }
                  format="DD/MM/YYYY"
                  allowClear
                />
              </div>

              <div>
                <Typography.Text strong style={{ display: 'block', marginBottom: 12 }}>
                  Export format
                </Typography.Text>
                <Space wrap size="small">
                  <Button
                    size="large"
                    loading={downloading === 'excel'}
                    disabled={isBusy && downloading !== 'excel'}
                    onClick={() => void handleDownload('excel')}
                  >
                    Download Excel
                  </Button>
                  <Button
                    size="large"
                    loading={downloading === 'csv'}
                    disabled={isBusy && downloading !== 'csv'}
                    onClick={() => void handleDownload('csv')}
                  >
                    Download CSV
                  </Button>
                </Space>
              </div>
            </Space>
          </Card>
        </Col>

        <Col xs={24} xl={9}>
          <Card className="report-card" title="What this page does">
            <List
              dataSource={[
                'Fetches all PRs for your division within the selected date range.',
                'Excel groups rows by PR Date then PR Number — mirrors the Crystal Report layout.',
                'Date group headers and alternating row colours are applied in the workbook.',
                'CSV is a flat UTF-8 export suitable for data pipelines or pivot tables.',
                'Both formats are streamed as blobs — no backend file system writes.',
                'Maximum range is 365 days. Future dates are disabled.',
              ]}
              renderItem={(item) => <List.Item>{item}</List.Item>}
            />
          </Card>
        </Col>
      </Row>
    </div>
  )
}
