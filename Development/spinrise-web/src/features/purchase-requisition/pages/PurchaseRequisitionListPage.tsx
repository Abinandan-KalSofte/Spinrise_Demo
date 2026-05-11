import { Modal, Select, Space, Typography } from 'antd'
import {
  CheckCircleOutlined,
  ClockCircleOutlined,
  CloseOutlined,
  ExclamationCircleOutlined,
  FileTextOutlined,
  StopOutlined,
} from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'

import { usePurchaseRequisitionList } from '../hooks/usePurchaseRequisitionList'
import { PRFilterBar } from '../components/pr-list/PRFilterBar'
import { PRDataTable } from '../components/pr-list/PRDataTable'
import { PRViewModal } from '../components/pr-list/PRViewModal'

// ── Design tokens (mirrors V1 page) ──────────────────────────────────────────
const C = {
  blue:   '#185FA5',
  border: '#e2e2e2',
  bg:     '#f5f5f3',
  text3:  '#64748b',
} as const

// ── Inline KPI card (same pattern as PRKPIStrip's KPICard) ───────────────────
function KPICard({
  label, value, icon, accent,
}: {
  label:  string
  value:  number | string
  icon:   React.ReactNode
  accent: string
}) {
  return (
    <div style={{
      background:   '#fff',
      border:       `1px solid ${C.border}`,
      borderLeft:   `3px solid ${accent}`,
      borderRadius: 8,
      padding:      '8px 12px',
      display:      'flex',
      alignItems:   'center',
      gap:          10,
      flex:         1,
      minWidth:     0,
    }}>
      <div style={{
        width:          32,
        height:         32,
        borderRadius:   8,
        background:     `${accent}14`,
        display:        'flex',
        alignItems:     'center',
        justifyContent: 'center',
        color:          accent,
        fontSize:       15,
        flexShrink:     0,
      }}>
        {icon}
      </div>
      <div>
        <div style={{
          fontSize: 10, fontWeight: 600, color: C.text3,
          textTransform: 'uppercase', letterSpacing: '0.4px', marginBottom: 2,
        }}>
          {label}
        </div>
        <div style={{
          fontSize: 18, fontWeight: 700, color: accent,
          lineHeight: 1.1, fontVariantNumeric: 'tabular-nums',
        }}>
          {value}
        </div>
      </div>
    </div>
  )
}

// ── Helpers ───────────────────────────────────────────────────────────────────
export function isBackDate(processingDate?: string | null, lastPRDate?: string | null) {
  if (!processingDate || !lastPRDate) return false
  const procDay = dayjs(processingDate)
  const lastDay = dayjs(lastPRDate)
  if (!procDay.isValid() || !lastDay.isValid()) return false
  return procDay.startOf('day').isBefore(lastDay.startOf('day'))
}

// ── Page ──────────────────────────────────────────────────────────────────────
export default function PurchaseRequisitionListPage() {
  const navigate = useNavigate()

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
    <div style={{ display: 'flex', flexDirection: 'column', height: '100%', background: C.bg }}>

      {/* ── Blue band header ──────────────────────────────────────────────── */}
      <div style={{
        background:     'linear-gradient(135deg, #0C447C 0%, #185FA5 100%)',
        padding:        '8px 18px',
        display:        'flex',
        alignItems:     'center',
        justifyContent: 'space-between',
        flexShrink:     0,
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 24 }}>
          <div>
            <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 1 }}>Document</div>
            <div style={{ fontSize: 12, fontWeight: 700, color: '#fff', letterSpacing: '.3px' }}>
              Purchase Requisition
            </div>
          </div>
          <div>
            <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 1 }}>View</div>
            <div style={{ fontSize: 13, fontWeight: 700, color: '#fff', fontFamily: 'monospace' }}>
              List
            </div>
          </div>
        </div>
        <button
          onClick={() => navigate('/purchase/requisition/v1/new')}
          style={{
            display:      'flex',
            alignItems:   'center',
            gap:          6,
            padding:      '5px 14px',
            background:   'rgba(255,255,255,0.12)',
            border:       '1px solid rgba(255,255,255,0.35)',
            borderRadius: 6,
            color:        '#fff',
            fontSize:     12,
            fontWeight:   600,
            cursor:       'pointer',
            letterSpacing: '.2px',
          }}
          onMouseEnter={(e) => (e.currentTarget.style.background = 'rgba(255,255,255,0.22)')}
          onMouseLeave={(e) => (e.currentTarget.style.background = 'rgba(255,255,255,0.12)')}
        >
          <CloseOutlined style={{ fontSize: 10 }} />
          Close
        </button>
      </div>

     

      {/* ── KPI strip ────────────────────────────────────────────────────── */}
      <div style={{
        background:   '#fafaf8',
        borderBottom: `1px solid ${C.border}`,
        padding:      '10px 16px',
        flexShrink:   0,
      }}>
        <div style={{ display: 'flex', gap: 10 }}>
          <KPICard label="Total PRs"  value={loading ? '—' : summary.totalCount}     icon={<FileTextOutlined />}      accent="#185FA5" />
          <KPICard label="Open"       value={loading ? '—' : summary.openCount}       icon={<ClockCircleOutlined />}   accent="#d97706" />
          <KPICard label="Approved"   value={loading ? '—' : summary.approvedCount}   icon={<CheckCircleOutlined />}   accent="#16a34a" />
          <KPICard label="Cancelled"  value={loading ? '—' : summary.cancelledCount}  icon={<StopOutlined />}          accent="#dc2626" />
        </div>
      </div>

      {/* ── Filter bar ───────────────────────────────────────────────────── */}
      <div style={{
        background:    '#fff',
        borderBottom:  `1px solid ${C.border}`,
        padding:       '8px 16px',
        flexShrink:    0,
      }}>
        <PRFilterBar
          departments={departments}
          loading={loading}
          onSearch={handleSearch}
          onReset={handleReset}
        />
      </div>

      {/* ── Data table (flex-fill) ────────────────────────────────────────── */}
      <div style={{ flex: 1, minHeight: 0, background: '#fff', overflow: 'hidden' }}>
        <PRDataTable
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
      </div>

      {/* ── Modals ───────────────────────────────────────────────────────── */}
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

    </div>
  )
}
