import { useEffect, useRef, useState } from 'react'
import { App, Alert, Modal, Select, Skeleton, Spin, Typography, Space } from 'antd'
import {
  CheckOutlined, CloseOutlined, DeleteOutlined, DoubleLeftOutlined,
  DoubleRightOutlined, EditOutlined, LeftOutlined, PlusOutlined, PrinterOutlined,
  RightOutlined, SearchOutlined, UnorderedListOutlined,
} from '@ant-design/icons'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { usePRFormCore } from '../hooks/usePRFormCore'
import { PRDocBand, TbBtn, TbSep } from '../components/pr-form/PRToolbar'
import { PRHeaderV1 } from '../components/pr-form/PRHeaderV1'
import { PRKPIStrip } from '../components/pr-form/PRKPIStrip'
import { PRLineItemsTable } from '../components/pr-form/PRLineItemsTable'

// Statuses that block editing a loaded PR
const BLOCKED_STATUSES = new Set([
  'L1_APPROVED', 'L2_APPROVED', 'FINAL_APPROVED', 'CANCELLED', 'CONVERTED', 'RECEIVED',
])

export default function RequisitionV1NewPage() {
  const { message } = App.useApp()
  const navigate      = useNavigate()
  const [searchParams] = useSearchParams()

  const {
    headerForm, depCode, authUser,
    items, setItems,
    savedPrNo, savedPr, prStatus,
    deleting, pageBusy, navLoading,
    preCheckResult, preCheckMsg, preCheckLoading,
    deleteReasons, selectedDeleteReason, setSelectedDeleteReason,
    deleteModalOpen, setDeleteModalOpen,
    warnings, setWarnings,
    departments, employees, machines,
    lookupsLoaded, lookupsLoading, lookupsError, loadAll,
    validLines, totalCost, totalQtyDisplay,
    mode, setMode,
    isDirty, markDirty, clearDirty,
    doSave, handleDeleteClick, handleDeleteConfirm,
    navigateRecord, loadRecord, loadLastRecord, initNewMode,
  } = usePRFormCore()

  const [dirtyConfirmOpen, setDirtyConfirmOpen] = useState(false)
  const pendingActionRef = useRef<(() => void) | null>(null)

  // ── Load record on mount (direct link with prNo) or fall back to last ────
  useEffect(() => {
    const prNoParam = searchParams.get('prNo')
    const modeParam = searchParams.get('mode')
    if (prNoParam) {
      void (async () => {
        const status = await loadRecord(Number(prNoParam))
        if (modeParam === 'edit' && status && !BLOCKED_STATUSES.has(status)) {
          setMode('edit')
        }
      })()
    } else {
      void loadLastRecord()
    }
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Guard navigation with dirty check ────────────────────────────────────
  const guardDirty = (action: () => void) => {
    if (isDirty) {
      pendingActionRef.current = action
      setDirtyConfirmOpen(true)
    } else {
      action()
    }
  }

  const confirmDirtyLeave = () => {
    setDirtyConfirmOpen(false)
    clearDirty()
    pendingActionRef.current?.()
    pendingActionRef.current = null
  }

  // Cancel: discard edits and return to view — never navigate away
  const handleCancel = () => {
    if (mode === 'edit' && savedPrNo) {
      guardDirty(() => void loadRecord(savedPrNo))
    } else {
      guardDirty(() => void loadLastRecord())
    }
  }

  // ── Keyboard shortcuts ────────────────────────────────────────────────────
  // Ref keeps the handler stable (registered once) while always reading fresh state
  const shortcutRef = useRef({ guardDirty, initNewMode, navigateRecord, handleCancel, mode, savedPrNo, pageBusy, handleDeleteClick })
  shortcutRef.current = { guardDirty, initNewMode, navigateRecord, handleCancel, mode, savedPrNo, pageBusy, handleDeleteClick }

  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      const s   = shortcutRef.current
      const tag = (e.target as HTMLElement)?.tagName?.toLowerCase()
      const inInput = tag === 'input' || tag === 'textarea'

      // F3 — New (fires even when focus is in a field)
      if (e.key === 'F3') {
        e.preventDefault()
        s.guardDirty(s.initNewMode)
        return
      }

      // Alt+X — Cancel / discard edits (fires from anywhere, no browser conflict)
      if (e.altKey && e.key === 'x') {
        e.preventDefault()
        s.handleCancel()
        return
      }

      if (e.ctrlKey && !e.shiftKey && !e.altKey) {
        switch (e.key) {
          // ── Navigation — skip when focus is inside a text input to preserve
          //    native word-cursor shortcuts (Ctrl+Arrow) and home/end behaviour
          case 'ArrowLeft':
            if (!inInput) { e.preventDefault(); s.guardDirty(() => void s.navigateRecord('PREV')) }
            break
          case 'ArrowRight':
            if (!inInput) { e.preventDefault(); s.guardDirty(() => void s.navigateRecord('NEXT')) }
            break
          case 'Home':
            if (!inInput) { e.preventDefault(); s.guardDirty(() => void s.navigateRecord('FIRST')) }
            break
          case 'End':
            if (!inInput) { e.preventDefault(); s.guardDirty(() => void s.navigateRecord('LAST')) }
            break

          // ── Document actions — fire from anywhere (prevent browser defaults) ──
          case 'd':
            e.preventDefault()
            if (s.mode === 'view' && s.savedPrNo && !s.pageBusy) s.handleDeleteClick()
            break
          case 'p':
            e.preventDefault()
            if (s.savedPrNo && !s.pageBusy) navigate(`/purchase/requisition/v1/print-preview/${s.savedPrNo}`)
            break
          case 'f':
            e.preventDefault()
            navigate('/purchase/requisition')
            break
          case 'l':
            e.preventDefault()
            navigate('/purchase/requisition')
            break
        }
      }
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [navigate]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Derived state ─────────────────────────────────────────────────────────
  const canModify   = mode === 'view' && savedPrNo !== null && !BLOCKED_STATUSES.has(prStatus ?? '')
  const formDisabled = mode === 'view' || pageBusy

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
    <div className="pr-page" style={{ display: 'flex', flexDirection: 'column', height: '100%', background: '#f5f5f3' }}>

      {/* ── Header band ──────────────────────────────────────────────────── */}
      <PRDocBand savedPrNo={savedPrNo} prStatus={prStatus} variant="" />

      {/* ── Toolbar ──────────────────────────────────────────────────────── */}
      <div style={{
        background: '#fff', borderBottom: '1px solid #e2e2e2',
        display: 'flex', alignItems: 'center', gap: 3,
        padding: '0 12px', height: 44, flexShrink: 0,
      }}>
        {/* <PRVariantBadge label="Variant A" sub="Compact Power User" /> */}
        <TbSep />

        {/* ── Document actions ── */}
        <TbBtn
          variant="primary"
          icon={<PlusOutlined style={{ fontSize: 11 }} />}
          label="New" kbd="F3"
          disabled={pageBusy}
          onClick={() => guardDirty(initNewMode)}
        />
        <TbBtn
          variant="success"
          icon={<CheckOutlined style={{ fontSize: 11 }} />}
          label="Save" kbd="Ctrl+S"
          disabled={mode === 'view' || pageBusy}
          onClick={() => void doSave('submit')}
        />
        <TbBtn
          icon={<EditOutlined style={{ fontSize: 11 }} />}
          label="Modify"
          disabled={!canModify || pageBusy}
          onClick={() => setMode('edit')}
        />
        <TbBtn
          icon={<CloseOutlined style={{ fontSize: 11 }} />}
          label="Cancel" kbd="Alt+X"
          disabled={pageBusy}
          onClick={handleCancel}
        />
        <TbBtn
          variant="danger"
          icon={<DeleteOutlined style={{ fontSize: 11 }} />}
          label="Delete" kbd="Ctrl+D"
          disabled={mode !== 'view' || !savedPrNo || pageBusy}
          onClick={handleDeleteClick}
        />
        <TbSep />

        {/* ── Utility actions ── */}
        <TbBtn
          icon={<PrinterOutlined style={{ fontSize: 11 }} />}
          label="Print" kbd="Ctrl+P"
          disabled={!savedPrNo}
          onClick={() => navigate(`/purchase/requisition/v1/print-preview/${savedPrNo}`)}
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

        {/* ── Navigation ── */}
        <TbBtn variant="icon" icon={<DoubleLeftOutlined  style={{ fontSize: 10 }} />}
          disabled={pageBusy}
          title="First record (Ctrl+Home)"
          onClick={() => guardDirty(() => void navigateRecord('FIRST'))}
        />
        <TbBtn variant="icon" icon={<LeftOutlined        style={{ fontSize: 10 }} />}
          disabled={pageBusy}
          title="Previous record (Ctrl+←)"
          onClick={() => guardDirty(() => void navigateRecord('PREV'))}
        />
        <TbBtn variant="icon" icon={<RightOutlined       style={{ fontSize: 10 }} />}
          disabled={pageBusy}
          title="Next record (Ctrl+→)"
          onClick={() => guardDirty(() => void navigateRecord('NEXT'))}
        />
        <TbBtn variant="icon" icon={<DoubleRightOutlined style={{ fontSize: 10 }} />}
          disabled={pageBusy}
          title="Last record (Ctrl+End)"
          onClick={() => guardDirty(() => void navigateRecord('LAST'))}
        />
      </div>

      {/* ── Status bars ──────────────────────────────────────────────────── */}
      {navLoading && (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '4px 16px', background: '#e6f4ff', flexShrink: 0 }}>
          <Spin size="small" />
          <span style={{ fontSize: 12, color: '#1677ff' }}>Loading record…</span>
        </div>
      )}
      {lookupsError && (
        <Alert type="error" showIcon banner message={lookupsError}
          action={<span style={{ fontSize: 12, color: '#185FA5', cursor: 'pointer' }} onClick={() => void loadAll()}>Retry</span>}
        />
      )}
      {preCheckMsg && <Alert type="warning" showIcon banner message={preCheckMsg} />}
      {preCheckLoading && (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '6px 16px', background: '#fff', flexShrink: 0 }}>
          <Spin size="small" />
          <span style={{ fontSize: 12, color: '#888' }}>Running pre-checks…</span>
        </div>
      )}
      {warnings.map((warn) => (
        <Alert key={warn} type="warning" showIcon banner message={warn} closable />
      ))}

      {/* ── Header form ──────────────────────────────────────────────────── */}
      <Skeleton active loading={!lookupsLoaded && !lookupsError}>
        <PRHeaderV1
          form={headerForm}
          departments={departments}
          employees={employees}
          savedPrNo={savedPrNo}
          disabled={formDisabled}
          requireRequesterName
          requireRefNo={preCheckResult?.requireRefNo ?? false}
          budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
          budgetBalance={savedPr?.budgetBalance ?? null}
          preCheckResult={preCheckResult}
          createdBy={savedPr?.createdBy ?? authUser?.userId ?? null}
          onValuesChange={markDirty}
        />
      </Skeleton>

      {/* ── Item grid (flex-fill) ─────────────────────────────────────────── */}
      <div style={{ flex: 1, minHeight: 0, overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
        <PRLineItemsTable
          items={items}
          machines={machines}
          depCode={depCode}
          prDate={headerForm.getFieldValue('prDate')?.format('YYYY-MM-DD')}
          preCheckResult={preCheckResult}
          disabled={formDisabled}
          savedPrNo={savedPrNo ?? undefined}
          deleteReasons={deleteReasons}
          onAdd={(item) => {
            markDirty()
            setItems((prev) => {
              if (prev.some((l) => l.itemCode === item.itemCode)) {
                void message.warning(`Item "${item.itemName}" (${item.itemCode}) is already in the list.`)
                return prev
              }
              return [...prev, item]
            })
          }}
          onUpdate={(updated) => {
            markDirty()
            setItems((prev) => prev.map((l) => l.key === updated.key ? updated : l))
          }}
          onDelete={(key) => {
            markDirty()
            setItems((prev) => prev.filter((l) => l.key !== key))
          }}
          onWarning={(msg) => {
            setWarnings((prev) => [...new Set([...prev, msg])])
            setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
          }}
        />
      </div>

      {/* ── KPI strip ────────────────────────────────────────────────────── */}
      <PRKPIStrip
        validLinesCount={validLines.length}
        totalQtyDisplay={totalQtyDisplay}
        totalCost={totalCost}
        createdBy={savedPr?.createdBy ?? authUser?.userId ?? '—'}
        prStatus={prStatus}
        savedPrNo={savedPrNo}
      />

      {/* ── Unsaved-changes confirmation ──────────────────────────────────── */}
      <Modal
        title="Unsaved Changes"
        open={dirtyConfirmOpen}
        onOk={confirmDirtyLeave}
        onCancel={() => { setDirtyConfirmOpen(false); pendingActionRef.current = null }}
        okText="Leave without saving"
        cancelText="Stay"
        width={400}
        destroyOnClose
      >
        <Typography.Text>You have unsaved changes. Are you sure you want to leave without saving?</Typography.Text>
      </Modal>

      {/* ── Delete confirmation ───────────────────────────────────────────── */}
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
