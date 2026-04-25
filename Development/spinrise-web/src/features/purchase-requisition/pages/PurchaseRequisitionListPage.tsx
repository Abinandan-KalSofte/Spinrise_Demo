import { Button, Card, Col, Flex, Modal, Row, Select, Space, Tag, Typography } from 'antd'
import {
  CheckCircleOutlined,
  ClockCircleOutlined,
  ExclamationCircleOutlined,
  FileTextOutlined,
  PlusOutlined,
  StopOutlined,
} from '@ant-design/icons'
import { Link } from 'react-router-dom'

import { usePurchaseRequisitionList } from '../hooks/usePurchaseRequisitionList'
import { PRFilterBar } from '../components/pr-list/PRFilterBar'
import { PRDataTable } from '../components/pr-list/PRDataTable'
import { PRViewModal } from '../components/pr-list/PRViewModal'

const CARD_SHADOW = '0 1px 4px rgba(15,23,42,0.08), 0 0 0 1px rgba(15,23,42,0.04)'

export default function PurchaseRequisitionListPage() {
  const {
    rows, total, loading,
    departments, employees,
    viewOpen, viewPr, viewLoading,
    downloading,
    deleteOpen, deletingPrNo, deleteReasons, deleteReason, deleteSubmitting,
    setDeleteReason,
    handleSearch, handleReset,
    handleView, handleCloseView, handleDownload,
    handleOpenDelete, handleCancelDelete, handleConfirmDelete,
  } = usePurchaseRequisitionList()

  return (
    <Flex vertical gap={20}>

      {/* ── Page Header ──────────────────────────────────────────────────── */}
      <div style={{
        display:        'flex',
        alignItems:     'flex-start',
        justifyContent: 'space-between',
        paddingBottom:  16,
        borderBottom:   '1px solid #f1f5f9',
      }}>
        <div style={{ display: 'flex', alignItems: 'flex-start', gap: 12 }}>
          <div style={{
            width: 40, height: 40, borderRadius: 10,
            background: 'linear-gradient(135deg, #1677ff22, #1677ff11)',
            border: '1px solid #1677ff33',
            display: 'grid', placeItems: 'center', flexShrink: 0,
          }}>
            <FileTextOutlined style={{ color: '#1677ff', fontSize: 18 }} />
          </div>
          <div>
            <Typography.Title level={4} style={{ margin: 0, lineHeight: 1.2 }}>
              Purchase Requisitions
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
                'Search and manage purchase requisitions'
              )}
            </Typography.Text>
          </div>
        </div>

        <Link to="/purchase/requisition/new-v2">
          <Button
            type="primary"
            icon={<PlusOutlined />}
            style={{
              borderRadius:  8,
              paddingInline: 18,
              fontWeight:    600,
              boxShadow:     '0 2px 8px rgba(22,119,255,0.30)',
            }}
          >
            New PR
          </Button>
        </Link>
      </div>

      {/* ── KPI Cards ─────────────────────────────────────────────────────── */}
      <Row gutter={[16, 16]}>
        {[
          {
            label:  'Total PRs',
            value:  total,
            icon:   <FileTextOutlined />,
            accent: '#1677ff',
            bg:     'rgba(22,119,255,0.08)',
            border: 'rgba(22,119,255,0.18)',
          },
          {
            label:  'Open',
            value:  rows.filter((r) => r.prStatus === 'OPEN').length,
            icon:   <ClockCircleOutlined />,
            accent: '#d97706',
            bg:     'rgba(217,119,6,0.08)',
            border: 'rgba(217,119,6,0.18)',
          },
          {
            label:  'Approved',
            value:  rows.filter((r) => r.prStatus === 'APPROVED').length,
            icon:   <CheckCircleOutlined />,
            accent: '#16a34a',
            bg:     'rgba(22,163,74,0.08)',
            border: 'rgba(22,163,74,0.18)',
          },
          {
            label:  'Cancelled',
            value:  rows.filter((r) => r.isDeleted).length,
            icon:   <StopOutlined />,
            accent: '#dc2626',
            bg:     'rgba(220,38,38,0.08)',
            border: 'rgba(220,38,38,0.18)',
          },
        ].map((kpi) => (
          <Col xs={12} sm={6} key={kpi.label}>
            <div style={{
              borderRadius: 12,
              border:       `1px solid #e5e7eb`,
              borderLeft:   `4px solid ${kpi.accent}`,
              boxShadow:    '0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.08)',
              padding:      '16px 20px',
              display:      'flex',
              alignItems:   'center',
              gap:          14,
              background:   '#ffffff',
            }}>
              <div style={{
                width:          40,
                height:         40,
                borderRadius:   10,
                background:     kpi.bg,
                border:         `1px solid ${kpi.border}`,
                display:        'flex',
                alignItems:     'center',
                justifyContent: 'center',
                color:          kpi.accent,
                fontSize:       18,
                flexShrink:     0,
              }}>
                {kpi.icon}
              </div>
              <div>
                <div style={{
                  fontSize:    26,
                  fontWeight:  700,
                  lineHeight:  1.1,
                  color:       '#0f172a',
                  fontVariantNumeric: 'tabular-nums',
                }}>
                  {loading ? '—' : kpi.value.toLocaleString()}
                </div>
                <div style={{ fontSize: 12, color: '#6b7280', marginTop: 2, fontWeight: 500 }}>
                  {kpi.label}
                </div>
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
        <PRFilterBar
          departments={departments}
          loading={loading}
          onSearch={handleSearch}
          onReset={handleReset}
        />
      </Card>

      {/* ── Data Table ────────────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: 0 } }}
      >
        <PRDataTable
          rows={rows}
          loading={loading}
          deletingPrNo={deletingPrNo}
          departments={departments}
          employees={employees}
          onView={(prNo) => void handleView(prNo)}
          onDelete={(prNo) => void handleOpenDelete(prNo)}
          onDownload={(record) => void handleDownload(record)}
          downloading={downloading}
        />
      </Card>

      <PRViewModal
        open={viewOpen}
        pr={viewPr}
        loading={viewLoading}
        onClose={handleCloseView}
      />

      <Modal
        open={deleteOpen}
        title={
          <Space>
            <ExclamationCircleOutlined style={{ color: '#dc2626' }} />
            Cancel Purchase Requisition
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
          header: { borderBottom: '1px solid #f1f5f9', paddingBottom: 12 },
          body:   { paddingTop: 16 },
        }}
      >
        <Typography.Paragraph style={{ marginBottom: 16, color: '#374151' }}>
          You are about to cancel{' '}
          <Typography.Text strong>PR #{deletingPrNo}</Typography.Text>.
          This action cannot be undone. Please select a reason to proceed.
        </Typography.Paragraph>
        <Select
          placeholder="Select cancellation reason"
          style={{ width: '100%' }}
          value={deleteReason}
          onChange={setDeleteReason}
          options={deleteReasons.map((r) => ({ value: r.reasonCode, label: r.reasonDesc }))}
        />
      </Modal>

    </Flex>
  )
}
