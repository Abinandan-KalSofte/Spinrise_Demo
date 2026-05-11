import { Button, Card, Flex, Modal, Select, Skeleton, Space, Tag, Typography } from 'antd'
import {
  CheckCircleOutlined,
  ClockCircleOutlined,
  ExclamationCircleOutlined,
  FileTextOutlined,
  PlusOutlined,
  StopOutlined,
} from '@ant-design/icons'
import { Link } from 'react-router-dom'

import { CARD_SHADOW } from '@/shared/styles/tokens'
import { usePurchaseRequisitionList } from '@/features/purchase-requisition/hooks/usePurchaseRequisitionList'
import { PRFilterBar } from '@/features/purchase-requisition/components/pr-list/PRFilterBar'
import { PRViewModal } from '@/features/purchase-requisition/components/pr-list/PRViewModal'
import { PRDataTableV2 } from '../components/pr-list/PRDataTableV2'

// ── Stats strip config ────────────────────────────────────────────────────────

const STATS = (summary: { totalCount: number; openCount: number; approvedCount: number; cancelledCount: number }) => [
  { label: 'Total PRs',  value: summary.totalCount,     color: '#1677ff', icon: <FileTextOutlined />    },
  { label: 'Open',       value: summary.openCount,      color: '#d97706', icon: <ClockCircleOutlined /> },
  { label: 'Approved',   value: summary.approvedCount,  color: '#16a34a', icon: <CheckCircleOutlined /> },
  { label: 'Cancelled',  value: summary.cancelledCount, color: '#dc2626', icon: <StopOutlined />        },
]

// ── Page ─────────────────────────────────────────────────────────────────────

export default function PurchaseRequisitionListPageV2() {
  const {
    rows, total, page, loading, summary,
    departments, employees,
    viewOpen, viewPr, viewLoading,
    downloading,
    deleteOpen, deletingPrNo, deleteReasons, deleteReason, deleteSubmitting,
    setDeleteReason,
    handleSearch, handleReset, handlePageChange,
    handleView, handleCloseView, handleDownload,
    handleOpenDelete, handleCancelDelete, handleConfirmDelete,
  } = usePurchaseRequisitionList()

  return (
    <Flex vertical gap={16}>

      {/* ── Page Header ─────────────────────────────────────────────────── */}
      <div style={{
        display:        'flex',
        alignItems:     'flex-start',
        justifyContent: 'space-between',
        paddingBottom:  16,
        borderBottom:   '1px solid #f0f0f0',
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

        <Link to="/purchase/requisition/v1/new">
          <Button
            type="primary"
            icon={<PlusOutlined />}
            style={{
              borderRadius: 8, paddingInline: 20, fontWeight: 600, height: 36,
              background: 'linear-gradient(135deg, #1677ff 0%, #0958d9 100%)',
              border: 'none',
              boxShadow: '0 4px 12px rgba(22,119,255,0.38), 0 1px 4px rgba(22,119,255,0.20)',
            }}
          >
            New PR
          </Button>
        </Link>
      </div>

      {/* ── Stats Strip ─────────────────────────────────────────────────── */}
      <div style={{
        display:      'flex',
        background:   '#ffffff',
        border:       '1px solid #e2e8f0',
        borderRadius: 10,
        boxShadow:    CARD_SHADOW,
        overflow:     'hidden',
      }}>
        {STATS(summary).map((stat, i) => (
          <div key={stat.label} style={{
            flex:        1,
            padding:     '16px 20px 14px',
            borderRight: i < 3 ? '1px solid #f1f5f9' : 'none',
            borderTop:   `3px solid ${stat.color}`,
          }}>
            {loading ? (
              <>
                <Skeleton.Input active size="small" style={{ width: 48, height: 22, marginBottom: 6 }} />
                <Skeleton.Input active size="small" style={{ width: 64, height: 12 }} />
              </>
            ) : (
              <>
                <div style={{ fontSize: 24, fontWeight: 700, color: '#1e293b', lineHeight: 1.2 }}>
                  {stat.value.toLocaleString()}
                </div>
                <div style={{ display: 'flex', alignItems: 'center', gap: 5, marginTop: 5 }}>
                  <span style={{ color: stat.color, fontSize: 12 }}>{stat.icon}</span>
                  <span style={{
                    fontSize:      10,
                    fontWeight:    700,
                    textTransform: 'uppercase',
                    letterSpacing: '0.08em',
                    color:         '#64748b',
                  }}>
                    {stat.label}
                  </span>
                </div>
              </>
            )}
          </div>
        ))}
      </div>

      {/* ── Filter Bar ──────────────────────────────────────────────────── */}
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

      {/* ── Data Table ──────────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: 0 } }}
      >
        <PRDataTableV2
          rows={rows}
          loading={loading}
          deletingPrNo={deletingPrNo}
          departments={departments}
          employees={employees}
          page={page}
          total={total}
          onPageChange={(pg) => void handlePageChange(pg)}
          onView={(prNo) => void handleView(prNo)}
          onDelete={(prNo) => void handleOpenDelete(prNo)}
          onDownload={(record) => void handleDownload(record)}
          downloading={downloading}
        />
      </Card>

      {/* ── Modals ──────────────────────────────────────────────────────── */}
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
            Delete Purchase Requisition
          </Space>
        }
        okText="Confirm Deletion"
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
