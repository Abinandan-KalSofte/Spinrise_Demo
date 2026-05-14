import { App, Alert, Modal, Select, Skeleton, Spin, Typography, Space } from 'antd'
import {
  CheckOutlined, CloseOutlined, DeleteOutlined, DoubleLeftOutlined,
  DoubleRightOutlined, LeftOutlined, PlusOutlined, PrinterOutlined,
  RightOutlined, SearchOutlined, UnorderedListOutlined,
} from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import { usePRFormCore } from '../hooks/usePRFormCore'
import { PRDocBand, PRVariantBadge, TbBtn, TbSep } from '../components/pr-form/PRToolbar'
import { PRHeaderV2 } from '../components/pr-form/PRHeaderV2'
import { PRKPIStrip } from '../components/pr-form/PRKPIStrip'
import { PRLineItemsTable } from '../components/pr-form/PRLineItemsTable'

export default function RequisitionV2NewPage() {
  const { message } = App.useApp()
  const navigate    = useNavigate()

  const {
    headerForm, depCode, authUser,
    items, setItems,
    savedPrNo, savedPr, prStatus,
    deleting, pageBusy,
    preCheckResult, preCheckMsg, preCheckLoading,
    deleteReasons, selectedDeleteReason, setSelectedDeleteReason,
    deleteModalOpen, setDeleteModalOpen,
    warnings, setWarnings,
    departments, employees, machines,
    lookupsLoaded, lookupsLoading, lookupsError, loadAll,
    validLines, totalCost, totalQtyDisplay,
    doSave, handleDeleteClick, handleDeleteConfirm,
  } = usePRFormCore()

  if (lookupsLoading) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading reference data…">
          <Skeleton active paragraph={{ rows: 8 }} />
        </Spin>
      </div>
    )
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', height: '100%', background: '#f5f5f3' }}>

      {/* ── Blue gradient header band ─────────────────────────────────────── */}
      <PRDocBand savedPrNo={savedPrNo} prStatus={prStatus} variant="Variant B" />

      {/* ── Toolbar ──────────────────────────────────────────────────────── */}
      <div style={{
        background: '#fff', borderBottom: '1px solid #e2e2e2',
        display: 'flex', alignItems: 'center', gap: 3,
        padding: '0 12px', height: 44, flexShrink: 0,
      }}>
        <PRVariantBadge label="Variant B" sub="Two-Panel Card Layout" />
        <TbSep />
        <TbBtn
          variant="primary"
          icon={<PlusOutlined style={{ fontSize: 11 }} />}
          label="New PR" kbd="F3"
          disabled={!!savedPrNo}
          onClick={() => navigate('/purchase/requisition/v1/new')}
        />
        <TbBtn
          variant="success"
          icon={<CheckOutlined style={{ fontSize: 11 }} />}
          label="Save" kbd="Ctrl+S"
          disabled={pageBusy}
          onClick={() => void doSave('submit')}
        />
        <TbBtn
          icon={<CloseOutlined style={{ fontSize: 11 }} />}
          label="Cancel" kbd="Esc"
          disabled={pageBusy}
          onClick={() => navigate('/purchase/requisition')}
        />
        <TbBtn
          variant="danger"
          icon={<DeleteOutlined style={{ fontSize: 11 }} />}
          label="Delete" kbd="Ctrl+D"
          disabled={!savedPrNo || pageBusy}
          onClick={handleDeleteClick}
        />
        <TbSep />
        <TbBtn
          icon={<PrinterOutlined style={{ fontSize: 11 }} />}
          label="Print" kbd="Ctrl+P"
          disabled={!savedPrNo}
        />
        <TbBtn
          icon={<SearchOutlined style={{ fontSize: 11 }} />}
          label="Find" kbd="Ctrl+F"
          onClick={() => navigate('/purchase/requisition')}
        />
        <TbBtn
          icon={<UnorderedListOutlined style={{ fontSize: 11 }} />}
          label="List" kbd="Ctrl+L"
          onClick={() => navigate('/purchase/requisition')}
        />
        <TbSep />
        <TbBtn variant="icon" icon={<DoubleLeftOutlined  style={{ fontSize: 10 }} />} disabled title="First record" />
        <TbBtn variant="icon" icon={<LeftOutlined        style={{ fontSize: 10 }} />} disabled title="Previous record" />
        <TbBtn variant="icon" icon={<RightOutlined       style={{ fontSize: 10 }} />} disabled title="Next record" />
        <TbBtn variant="icon" icon={<DoubleRightOutlined style={{ fontSize: 10 }} />} disabled title="Last record" />
      </div>

      {/* ── Alerts ───────────────────────────────────────────────────────── */}
      {lookupsError && (
        <Alert type="error" showIcon banner message={lookupsError}
          action={<span style={{ fontSize: 12, color: '#185FA5', cursor: 'pointer' }} onClick={() => void loadAll()}>Retry</span>}
        />
      )}
      {preCheckMsg && <Alert type="warning" showIcon banner message={preCheckMsg} />}
      {preCheckLoading && (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '6px 16px', background: '#fff' }}>
          <Spin size="small" />
          <span style={{ fontSize: 12, color: '#888' }}>Running pre-checks…</span>
        </div>
      )}
      {warnings.map((warn) => (
        <Alert key={warn} type="warning" showIcon banner message={warn} closable />
      ))}

      {/* ── Header (two-panel cards) ──────────────────────────────────────── */}
      <Skeleton active loading={!lookupsLoaded && !lookupsError}>
        <PRHeaderV2
          form={headerForm}
          departments={departments}
          employees={employees}
          savedPrNo={savedPrNo}
          disabled={pageBusy}
          requireRequesterName
          requireRefNo={preCheckResult?.requireRefNo ?? false}
          budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
          budgetBalance={savedPr?.budgetBalance ?? null}
          preCheckResult={preCheckResult}
          createdBy={savedPr?.createdBy ?? authUser?.userId ?? null}
        />
      </Skeleton>

      {/* ── KPI Strip ────────────────────────────────────────────────────── */}
      <PRKPIStrip
        validLinesCount={validLines.length}
        totalQtyDisplay={totalQtyDisplay}
        totalCost={totalCost}
        prStatus={prStatus}
        savedPrNo={savedPrNo}
      />

      {/* ── Item Grid ────────────────────────────────────────────────────── */}
      <div style={{ flex: 1, overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
        <PRLineItemsTable
          items={items}
          machines={machines}
          depCode={depCode}
          prDate={headerForm.getFieldValue('prDate')?.format('YYYY-MM-DD')}
          preCheckResult={preCheckResult}
          disabled={pageBusy}
          savedPrNo={savedPrNo ?? undefined}
          deleteReasons={deleteReasons}
          onAdd={(item) => {
            setItems((prev) => {
              if (prev.some((l) => l.itemCode === item.itemCode)) {
                void message.warning(`Item "${item.itemName}" (${item.itemCode}) is already in the list.`)
                return prev
              }
              return [...prev, item]
            })
          }}
          onUpdate={(updated) => setItems((prev) => prev.map((l) => l.key === updated.key ? updated : l))}
          onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
          onWarning={(msg) => {
            setWarnings((prev) => [...new Set([...prev, msg])])
            setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
          }}
        />
      </div>

      {/* ── Delete Modal ─────────────────────────────────────────────────── */}
      <Modal
        title={<Space><DeleteOutlined style={{ color: '#dc2626' }} />Delete Purchase Requisition</Space>}
        open={deleteModalOpen}
        onCancel={() => setDeleteModalOpen(false)}
        onOk={() => void handleDeleteConfirm()}
        okText="Confirm Delete"
        okButtonProps={{ danger: true }}
        confirmLoading={deleting}
        width={440}
        destroyOnClose
      >
        <Typography.Paragraph style={{ color: '#374151', marginBottom: 16 }}>
          You are about to delete{' '}
          <Typography.Text strong>PR #{savedPrNo}</Typography.Text>. This action cannot be undone. Please select a reason.
        </Typography.Paragraph>
        <Select
          placeholder="Select delete reason…"
          value={selectedDeleteReason}
          onChange={setSelectedDeleteReason}
          options={deleteReasons.map((r) => ({ value: r.reasonCode, label: `${r.reasonCode} – ${r.reasonDesc}` }))}
          style={{ width: '100%' }}
        />
      </Modal>
    </div>
  )
}
