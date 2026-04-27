import { Button, Card, Col, Flex, Modal, Row, Select, Space, Tag, Typography } from 'antd'
import {
  CheckCircleOutlined,
  ClockCircleOutlined,
  FileTextOutlined,
  PlusOutlined,
  ShoppingCartOutlined,
  StopOutlined,
  ExclamationCircleOutlined,
} from '@ant-design/icons'
import { Link } from 'react-router-dom'
import { usePurchaseOrderList } from '../hooks/usePurchaseOrderList'
import { POFilterBar } from '../components/po-list/POFilterBar'
import { PODataTable } from '../components/po-list/PODataTable'

const CARD_SHADOW = '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)'

export default function PurchaseOrderListPage() {
  const {
    rows, total, page, pageSize, loading,
    deleteReasons, deleteOpen, deletingKey, deleteReason, deleteSubmitting,
    setDeleteReason,
    handleSearch, handleReset, handlePageChange,
    handleEdit, handleOpenDelete, handleCancelDelete, handleConfirmDelete,
  } = usePurchaseOrderList()

  const kpis = [
    {
      label:  'Total POs',
      value:  total,
      icon:   <FileTextOutlined />,
      accent: '#1677ff',
      bg:     'rgba(22,119,255,0.08)',
      border: 'rgba(22,119,255,0.18)',
    },
    {
      label:  'Pending',
      value:  rows.filter((r) => r.firstAppFlg === 'N' && r.cancelFlg !== 'Y').length,
      icon:   <ClockCircleOutlined />,
      accent: '#d97706',
      bg:     'rgba(217,119,6,0.08)',
      border: 'rgba(217,119,6,0.18)',
    },
    {
      label:  'Approved',
      value:  rows.filter((r) => r.appFlg === 'Y').length,
      icon:   <CheckCircleOutlined />,
      accent: '#16a34a',
      bg:     'rgba(22,163,74,0.08)',
      border: 'rgba(22,163,74,0.18)',
    },
    {
      label:  'Cancelled',
      value:  rows.filter((r) => r.cancelFlg === 'Y').length,
      icon:   <StopOutlined />,
      accent: '#dc2626',
      bg:     'rgba(220,38,38,0.08)',
      border: 'rgba(220,38,38,0.18)',
    },
  ]

  return (
    <Flex vertical gap={20}>

      {/* ── Page Header ──────────────────────────────────────────────────── */}
      <div style={{
        display: 'flex', alignItems: 'flex-start',
        justifyContent: 'space-between', paddingBottom: 16, borderBottom: '1px solid #f0f0f0',
      }}>
        <div style={{ display: 'flex', alignItems: 'flex-start', gap: 12 }}>
          <div style={{
            width: 40, height: 40, borderRadius: 10,
            background: 'linear-gradient(135deg, #1677ff22, #1677ff11)',
            border: '1px solid #1677ff33', display: 'grid', placeItems: 'center', flexShrink: 0,
          }}>
            <ShoppingCartOutlined style={{ color: '#1677ff', fontSize: 18 }} />
          </div>
          <div>
            <Typography.Title level={4} style={{ margin: 0, lineHeight: 1.2 }}>
              RMI Purchase Orders
            </Typography.Title>
            <Typography.Text type="secondary" style={{ fontSize: 13 }}>
              {!loading && total > 0 ? (
                <>
                  <Tag color="blue" style={{ fontWeight: 600, fontSize: 11, marginRight: 4 }}>
                    {total.toLocaleString()}
                  </Tag>
                  record{total !== 1 ? 's' : ''} found
                </>
              ) : (
                'Manage raw material purchase orders'
              )}
            </Typography.Text>
          </div>
        </div>

        <Link to="/purchase/order/new">
          <Button
            type="primary"
            icon={<PlusOutlined />}
            style={{ borderRadius: 8, paddingInline: 18, fontWeight: 600, boxShadow: '0 2px 8px rgba(22,119,255,0.30)' }}
          >
            New PO
          </Button>
        </Link>
      </div>

      {/* ── KPI Cards ─────────────────────────────────────────────────────── */}
      <Row gutter={[16, 16]}>
        {kpis.map((kpi) => (
          <Col xs={12} sm={6} key={kpi.label}>
            <div style={{
              borderRadius: 12, background: '#ffffff',
              border: '1px solid #f0f0f0', borderLeft: `4px solid ${kpi.accent}`,
              boxShadow: CARD_SHADOW, padding: '16px 20px',
              display: 'flex', alignItems: 'center', gap: 14,
            }}>
              <div style={{
                width: 40, height: 40, borderRadius: 10,
                background: kpi.bg, border: `1px solid ${kpi.border}`,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                color: kpi.accent, fontSize: 18, flexShrink: 0,
              }}>
                {kpi.icon}
              </div>
              <div>
                <div style={{ fontSize: 26, fontWeight: 700, lineHeight: 1.1, fontVariantNumeric: 'tabular-nums' }}>
                  {loading ? '—' : kpi.value.toLocaleString()}
                </div>
                <Typography.Text type="secondary" style={{ fontSize: 12, marginTop: 2, fontWeight: 500 }}>
                  {kpi.label}
                </Typography.Text>
              </div>
            </div>
          </Col>
        ))}
      </Row>

      {/* ── Filter Bar ────────────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: '12px 16px' } }}
      >
        <POFilterBar loading={loading} onSearch={handleSearch} onReset={handleReset} />
      </Card>

      {/* ── Data Table ────────────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: 0 } }}
      >
        <PODataTable
          rows={rows}
          total={total}
          page={page}
          pageSize={pageSize}
          loading={loading}
          deletingKey={deletingKey}
          onEdit={handleEdit}
          onDelete={handleOpenDelete}
          onPageChange={handlePageChange}
        />
      </Card>

      {/* ── Delete Modal ──────────────────────────────────────────────────── */}
      <Modal
        open={deleteOpen}
        title={
          <Space>
            <ExclamationCircleOutlined style={{ color: '#dc2626' }} />
            Cancel Purchase Order
          </Space>
        }
        okText="Confirm Cancel"
        okButtonProps={{ danger: true, disabled: !deleteReason, loading: deleteSubmitting }}
        cancelText="Go Back"
        onOk={() => void handleConfirmDelete()}
        onCancel={handleCancelDelete}
        width={440}
        destroyOnClose
        styles={{
          header: { borderBottom: '1px solid #f0f0f0', paddingBottom: 12 },
          body:   { paddingTop: 16 },
        }}
      >
        <Typography.Paragraph style={{ marginBottom: 16 }}>
          You are about to cancel{' '}
          <Typography.Text strong>PO #{deletingKey?.contNo}</Typography.Text>.
          This action cannot be undone. Please select a reason to proceed.
        </Typography.Paragraph>
        <Select
          placeholder="Select cancellation reason"
          style={{ width: '100%' }}
          value={deleteReason || undefined}
          onChange={setDeleteReason}
          options={deleteReasons.map((r) => ({ value: r.code, label: r.description }))}
        />
      </Modal>

    </Flex>
  )
}
