import { Breadcrumb, Button, Card, Col, Row, Space, Typography } from 'antd'
import { ArrowLeftOutlined, FileExcelOutlined, HomeOutlined, PlusOutlined } from '@ant-design/icons'
import { Link, useNavigate } from 'react-router-dom'

import { usePurchaseRequisitionList } from '../hooks/usePurchaseRequisitionList'
import { PRSearchForm } from '../components/pr-list/PRSearchForm'
import { PRDataTable } from '../components/pr-list/PRDataTable'
import { PRViewModal } from '../components/pr-list/PRViewModal'
import { CARD_STYLE } from '../components/pr-list/prListConfig'

export default function PurchaseRequisitionListPage() {
  const navigate = useNavigate()
  const {
    rows, total, page, loading,
    departments, employees,
    viewOpen, viewPr, viewLoading,
    downloading,
    handleSearch, handleReset, handleTableChange,
    handleView, handleCloseView, handleDownload,
  } = usePurchaseRequisitionList()

  return (
    <div style={{ padding: '20px 24px', display: 'flex', flexDirection: 'column', gap: 16 }}>

      {/* ── Page header ─────────────────────────────────────────────────────── */}
      <div>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 6 }}>
          <Button
            type="text" size="small" icon={<ArrowLeftOutlined />}
            onClick={() => navigate(-1)} style={{ color: '#595959' }}
          >
            Back
          </Button>
          <Breadcrumb items={[
            { title: <Link to="/"><HomeOutlined /></Link> },
            { title: 'Purchase' },
            { title: 'Requisitions' },
          ]} />
        </div>
        <Row justify="space-between" align="middle">
          <Col>
            <Typography.Title level={4} style={{ margin: 0, lineHeight: 1.3 }}>
              Purchase Requisitions
            </Typography.Title>
            <Typography.Text type="secondary" style={{ fontSize: 13 }}>
              Search, view and download purchase requisitions
            </Typography.Text>
          </Col>
          <Col>
            <Space wrap>
              {/* <DatePicker.RangePicker
                value={pdfRange}
                onChange={(dates) => setPdfRange(dates as [Dayjs, Dayjs] | null)}
                format="DD/MM/YYYY"
                allowClear={false}
                style={{ width: 240 }}
              />
              <Button
                icon={<FilePdfOutlined />}
                loading={downloadingPdf}
                disabled={!pdfRange}
                onClick={() => void handleDownloadPdf()}
              >
                PDF
              </Button> */}
              <Link to="/purchase/requisition/new-v2">
                <Button type="primary" icon={<PlusOutlined />}>New PR</Button>
              </Link>
              <Button
                icon={<FileExcelOutlined />}
                onClick={() => navigate('/purchase/reports/datewise')}
              >
                Report
              </Button>
            </Space>
          </Col>
        </Row>
      </div>

      {/* ── Search ──────────────────────────────────────────────────────────── */}
      <Card bordered={false} style={CARD_STYLE} styles={{ body: { padding: '16px 20px' } }}>
        <PRSearchForm
          departments={departments}
          employees={employees}
          loading={loading}
          onSearch={handleSearch}
          onReset={handleReset}
        />
      </Card>

      {/* ── Results ─────────────────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={CARD_STYLE}
        styles={{ body: { padding: 0 } }}
        title={
          <Space size={6}>
            <Typography.Text strong style={{ fontSize: 14 }}>Results</Typography.Text>
            {!loading && (
              <Typography.Text type="secondary" style={{ fontWeight: 400, fontSize: 12 }}>
                ({total.toLocaleString()} record{total !== 1 ? 's' : ''})
              </Typography.Text>
            )}
          </Space>
        }
      >
        <PRDataTable
          rows={rows}
          total={total}
          page={page}
          loading={loading}
          downloading={downloading}
          departments={departments}
          employees={employees}
          onView={(prNo) => void handleView(prNo)}
          onDownload={(record) => void handleDownload(record)}
          onPageChange={handleTableChange}
        />
      </Card>

      {/* ── View modal ───────────────────────────────────────────────────────── */}
      <PRViewModal
        open={viewOpen}
        pr={viewPr}
        loading={viewLoading}
        onClose={handleCloseView}
      />

    </div>
  )
}
