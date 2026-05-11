import { useEffect, useMemo, useRef, useState } from 'react'
import {
  Alert, App, Button, Divider, Form, Modal,
  Select, Skeleton, Space, Spin, Typography,
} from 'antd'
import { CloseOutlined, DeleteOutlined, SendOutlined } from '@ant-design/icons'
import { Link, useNavigate } from 'react-router-dom'

import { PageTitleBar } from '@/shared/components/PageTitleBar'
import { generateUUID } from '@/shared/lib/uuid'
import { getFYBounds } from '@/shared/lib/dateUtils'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { purchaseRequisitionApi } from '@/features/purchase-requisition/api/purchaseRequisitionApi'
import { useLookupStore } from '@/features/purchase-requisition/store/useLookupStore'
import { PR_STATUS_LABELS } from '@/features/purchase-requisition/types'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  CreatePRRequest,
  PreCheckResult,
} from '@/features/purchase-requisition/types'
import { PRLineItemsTableV2 } from '../components/pr-form/PRLineItemsTableV2'
import type { PRLineItemsTableV2Handle } from '../components/pr-form/PRLineItemsTableV2'

// ── Status → Steps mapping ────────────────────────────────────────────────────

const PR_STEPS = [
  { title: 'Draft' },
  { title: 'Submitted' },
  { title: 'Approved' },
  { title: 'Converted' },
]

function statusToStep(status: string | null): number {
  if (!status) return 0
  const map: Record<string, number> = {
    OPEN:           1,
    PENDING:        1,
    L1_APPROVED:    2,
    L2_APPROVED:    2,
    FINAL_APPROVED: 2,
    RECEIVED:       2,
    CONVERTED:      3,
    CANCELLED:      0,
  }
  return map[status] ?? 0
}

// ── Page ─────────────────────────────────────────────────────────────────────

export default function PurchaseRequisitionNewPageV2() {
  const { message } = App.useApp()
  const navigate    = useNavigate()
  const [headerForm] = Form.useForm<PRHeaderFormValues>()
  const lineTableRef = useRef<PRLineItemsTableV2Handle>(null)

  const divCode = useAuthStore((s) => s.user?.divCode ?? '')
  const depCode = (Form.useWatch('depCode', headerForm) as string | undefined) ?? ''

  // ── State ─────────────────────────────────────────────────────────────────
  const [items,    setItems]    = useState<PRLineFormItem[]>([])
  const [savedPrNo, setSavedPrNo] = useState<number | null>(null)
  const [_savedPr,  setSavedPr]   = useState<PRHeaderResponse | null>(null)
  const [prStatus,  setPrStatus]  = useState<string | null>(null)
  const [saving,    setSaving]    = useState(false)
  const [deleting,  setDeleting]  = useState(false)

  const [preCheckResult,  setPreCheckResult]  = useState<PreCheckResult | null>(null)
  const [preCheckMsg,     setPreCheckMsg]     = useState<string | null>(null)
  const [preCheckLoading, setPreCheckLoading] = useState(false)

  const [deleteReasons,        setDeleteReasons]        = useState<{ reasonCode: string; reasonDesc: string }[]>([])
  const [selectedDeleteReason, setSelectedDeleteReason] = useState<string | null>(null)
  const [deleteModalOpen,      setDeleteModalOpen]      = useState(false)

  const [warnings, setWarnings] = useState<string[]>([])

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    machines,
    loaded: lookupsLoaded, loading: lookupsLoading, error: lookupsError, loadAll,
  } = useLookupStore()

  useEffect(() => { void loadAll() }, [loadAll])
  useEffect(() => { if (divCode) void runPreChecks() }, [divCode]) // eslint-disable-line react-hooks/exhaustive-deps
  useEffect(() => {
    void (async () => {
      try { setDeleteReasons(await purchaseRequisitionApi.getDeleteReasons()) } catch { /* non-critical */ }
    })()
  }, [])

  // ── Pre-checks ────────────────────────────────────────────────────────────
  const runPreChecks = async () => {
    setPreCheckLoading(true)
    try {
      const result = await purchaseRequisitionApi.preChecks()
      setPreCheckResult(result)
      if (!result.itemMasterExists)       setPreCheckMsg('Item Master is not configured.')
      else if (!result.departmentExists)  setPreCheckMsg('No departments configured for this division.')
      else if (!result.docNumberConfigured) setPreCheckMsg('PR document number series is not configured.')
      else setPreCheckMsg(null)
    } catch { /* non-critical */ }
    finally  { setPreCheckLoading(false) }
  }

  const mapSavedLine = (line: PRLineResponse): PRLineFormItem => ({
    key: generateUUID(), prSNo: line.prSNo,
    itemCode: line.itemCode, itemName: line.itemName ?? '', uom: line.uom ?? '',
    currentStock: line.currentStock ?? null, minLevel: null,
    qtyRequired: line.qtyRequired, requiredDate: line.requiredDate ?? null,
    place: line.place ?? '', approxCost: line.approxCost ?? null,
    remarks: line.remarks ?? '', machineNo: line.machineNo ?? '',
    costCentreCode: line.costCentreCode ?? '', budgetGroupCode: line.budgetGroupCode ?? '',
    subCostCode: line.subCostCode ?? null, subCostName: line.subCostName ?? null,
    isSample: line.isSample, lastPoRate: line.lastPoRate ?? null,
    lastPoDate: line.lastPoDate ?? null, lastPoSupplierCode: line.lastPoSupplierCode ?? null,
    lastPoSupplierName: line.lastPoSupplierName ?? null, categoryCode: line.categoryCode ?? '',
    model: line.model ?? '', maxCost: line.maxCost ?? null, rate: line.rate ?? null,
    drawNo: line.drawNo ?? '', catNo: line.catNo ?? '',
  })

  const buildPayload = (values: PRHeaderFormValues): CreatePRRequest => ({
    prDate: values.prDate.format('YYYY-MM-DD'),
    depCode: values.depCode,
    section: values.section?.trim() || undefined,
    iType: values.iType?.trim() || undefined,
    reqName: values.reqName?.trim() || undefined,
    refNo: values.refNo?.trim().toUpperCase() || undefined,
    poGroupCode: values.poGroupCode?.trim() || undefined,
    scopeCode: values.scopeCode?.trim() || undefined,
    saleOrderNo: values.saleOrderNo?.trim() || undefined,
    saleOrderDate: values.saleOrderDate?.format('YYYY-MM-DD') ?? null,
    lines: items.filter((l) => l.itemCode.trim() !== '').map((l) => ({
      itemCode: l.itemCode, itemName: l.itemName || undefined, uom: l.uom || undefined,
      rate: l.rate ?? undefined, currentStock: l.currentStock ?? undefined,
      qtyRequired: l.qtyRequired, requiredDate: l.requiredDate ?? null,
      approxCost: l.approxCost ?? undefined, machineNo: l.machineNo || undefined,
      remarks: l.remarks || undefined, costCentreCode: l.costCentreCode || undefined,
      budgetGroupCode: l.budgetGroupCode || undefined, subCostCode: l.subCostCode ?? undefined,
      isSample: l.isSample, lastPoRate: l.lastPoRate ?? undefined,
      lastPoDate: l.lastPoDate ?? undefined, lastPoSupplierCode: l.lastPoSupplierCode ?? undefined,
      lastPoSupplierName: l.lastPoSupplierName ?? undefined, categoryCode: l.categoryCode || undefined,
      model: l.model || undefined, maxCost: l.maxCost ?? undefined,
    })),
  })

  // ── Save / Submit ─────────────────────────────────────────────────────────
  const doSave = async (mode: 'draft' | 'submit' = 'draft') => {
    let values: PRHeaderFormValues
    try { values = await headerForm.validateFields() } catch {
      message.error('Please complete the required header fields.')
      return
    }
    const validLines = items.filter((l) => l.itemCode.trim() !== '')
    if (validLines.length === 0) { message.error('At least one item is required.'); return }
    await lineTableRef.current?.flushEdit()
    setSaving(true)
    try {
      const payload = buildPayload(values)
      payload.submitForApproval = mode === 'submit'
      const result = await purchaseRequisitionApi.create(payload)
      setSavedPrNo(result.prNo)
      setPrStatus(mode === 'submit' ? 'PENDING' : 'OPEN')
      const { yfDate, ylDate } = getFYBounds()
      const fullPr = await purchaseRequisitionApi.getById(result.prNo, yfDate, ylDate)
      setSavedPr(fullPr)
      setItems(fullPr.lines.map(mapSavedLine))
      message.success(`PR ${result.prNo} ${mode === 'submit' ? 'submitted for approval' : 'saved as draft'}.`)
      if (mode === 'submit') navigate('/purchase/requisition-v2')
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Save failed.')
    } finally {
      setSaving(false)
    }
  }

  // ── Delete PR ─────────────────────────────────────────────────────────────
  const handleDeleteClick = () => {
    if (!savedPrNo) return
    setSelectedDeleteReason(null)
    setDeleteModalOpen(true)
  }
  const handleDeleteConfirm = async () => {
    if (!selectedDeleteReason || !savedPrNo) { message.error('Select a reason first.'); return }
    setDeleteModalOpen(false)
    setDeleting(true)
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, selectedDeleteReason)
      void message.success(`PR ${savedPrNo} deleted.`)
      navigate('/purchase/requisition-v2')
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Delete failed.')
    } finally {
      setDeleting(false)
    }
  }

  // ── Document summary ─────────────────────────────────────────────────────
  const validCount = useMemo(() => items.filter((l) => l.itemCode.trim() !== '').length, [items])
  const totalQty   = useMemo(() => items.reduce((s, l) => s + l.qtyRequired, 0), [items])
  const subtotal   = useMemo(() => items.reduce((s, l) => {
    const r = l.rate && l.rate > 0 ? l.rate : (l.lastPoRate ?? 0)
    return s + r * l.qtyRequired
  }, 0), [items])

  const pageBusy   = saving || deleting
  const statusInfo = prStatus ? (PR_STATUS_LABELS[prStatus] ?? null) : null
  const stepIndex  = statusToStep(prStatus)

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
    <div className="pr-page">
      {/* ══ STICKY TITLE BAR ════════════════════════════════════════════════ */}
      <PageTitleBar
        breadcrumb={[
          { title: <Link to="/purchase/requisition-v2" style={{ color: '#9ca3af', fontSize: 11 }}>Purchase</Link> },
          { title: <Link to="/purchase/requisition-v2" style={{ color: '#9ca3af', fontSize: 11 }}>Requisitions</Link> },
          { title: <span style={{ color: '#6b7280', fontSize: 11 }}>{savedPrNo ? `PR-${String(savedPrNo).padStart(5, '0')}` : 'New'}</span> },
        ]}
        title={savedPrNo ? `Purchase Requisition — PR-${String(savedPrNo).padStart(5, '0')}` : 'New Purchase Requisition'}
        statusTag={statusInfo ?? { label: 'Draft', color: 'orange' }}
        steps={PR_STEPS}
        currentStep={stepIndex}
        actions={
          <Space size={6}>
            <Button type="text" icon={<CloseOutlined />} disabled={pageBusy} onClick={() => navigate('/purchase/requisition-v2')} style={{ color: '#6b7280' }}>
              Cancel
            </Button>
            <Divider type="vertical" style={{ height: 24, margin: '0 2px', borderColor: '#e5e7eb' }} />
            {(!prStatus || prStatus === 'OPEN') && (
              <Button
                type="primary" icon={<SendOutlined />} loading={saving} disabled={pageBusy}
                onClick={() => void doSave('submit')}
                style={{
                  fontWeight: 600, paddingInline: 20, height: 34,
                  background: 'linear-gradient(135deg, #1677ff 0%, #0958d9 100%)',
                  border: 'none',
                  boxShadow: '0 4px 12px rgba(22,119,255,0.38), 0 1px 4px rgba(22,119,255,0.20)',
                }}
              >
                Submit for Approval
              </Button>
            )}
            {savedPrNo && (
              <>
                <Divider type="vertical" style={{ height: 24, margin: '0 2px', borderColor: '#e5e7eb' }} />
                <Button
                  danger icon={<DeleteOutlined />} disabled={pageBusy} onClick={handleDeleteClick}
                  style={{ boxShadow: '0 2px 8px rgba(220,38,38,0.25)', height: 34 }}
                >
                  Delete
                </Button>
              </>
            )}
          </Space>
        }
      />

      {/* ══ BODY ════════════════════════════════════════════════════════════ */}
      <div className="pr-page__body">

        {/* ── Full-width alerts ──────────────────────────────────────────── */}
        {lookupsError && (
          <Alert type="error" showIcon message={lookupsError}
            action={<Typography.Link onClick={() => void loadAll()}>Retry</Typography.Link>}
            style={{ marginBottom: 12 }}
          />
        )}
        {preCheckMsg && (
          <Alert type="warning" showIcon message="Setup Incomplete" description={preCheckMsg} style={{ marginBottom: 12 }} />
        )}
        {preCheckLoading && (
          <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 8 }}>
            <Spin size="small" />
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>Running pre-checks…</Typography.Text>
          </div>
        )}
        {warnings.map((warn) => (
          <Alert key={warn} type="warning" showIcon message={warn} closable style={{ marginBottom: 8 }} />
        ))}

        {/* ── Side-by-side layout ────────────────────────────────────────── */}
        <div style={{ display: 'flex', gap: 16, alignItems: 'flex-start' }}>

          {/* ── LEFT: Document header + summary panel ─────────────────── */}
          <div style={{ width: 380, flexShrink: 0 }}>
            <Skeleton active loading={!lookupsLoaded && !lookupsError}>
              {/* <PRHeaderCardsV2
                form={headerForm}
                departments={departments}
                employees={employees}
                poTypes={poTypes}
                savedPrNo={savedPrNo}
                disabled={pageBusy}
                requireRequesterName={true}
                requireRefNo={preCheckResult?.requireRefNo ?? false}
                pendingPoDetailsEnabled={preCheckResult?.pendingPoDetailsEnabled ?? false}
                backDateAllowed={preCheckResult?.backDateAllowed ?? true}
                budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
                budgetBalance={savedPr?.budgetBalance ?? null}
                approvalVisible={preCheckResult?.approvalStatusVisible ?? false}
                level1ApproverName={savedPr?.level1ApproverName ?? null}
                level1ApprovedAt={savedPr?.level1ApprovedAt ?? null}
                level2ApproverName={savedPr?.level2ApproverName ?? null}
                level2ApprovedAt={savedPr?.level2ApprovedAt ?? null}
                finalApproverName={savedPr?.finalApproverName ?? null}
                finalApprovedAt={savedPr?.finalApprovedAt ?? null}
              /> */}
            </Skeleton>

            {/* Vertical summary panel */}
            {validCount > 0 && (
              <div style={{
                background:   '#ffffff',
                border:       '1px solid #e2e8f0',
                borderLeft:   '4px solid #4f46e5',
                borderRadius: '0 8px 8px 0',
                boxShadow:    '0 1px 4px rgba(0,0,0,0.06)',
                overflow:     'hidden',
              }}>
                {([
                  { label: 'Line Items',      value: String(validCount),                                                           accent: '#4f46e5' },
                  { label: 'Total Qty',       value: totalQty.toLocaleString('en-IN', { maximumFractionDigits: 3 }),                accent: '#0891b2' },
                  { label: 'Estimated Value', value: `₹ ${subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`,        accent: '#16a34a' },
                ] as { label: string; value: string; accent: string }[]).map((stat, i) => (
                  <div key={stat.label} style={{
                    display:      'flex',
                    alignItems:   'center',
                    gap:          12,
                    padding:      '12px 18px',
                    borderBottom: i < 2 ? '1px solid #f1f5f9' : 'none',
                  }}>
                    <div style={{ width: 3, height: 30, background: stat.accent, borderRadius: 2, flexShrink: 0 }} />
                    <div>
                      <div style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.08em', color: '#64748b' }}>
                        {stat.label}
                      </div>
                      <div style={{ fontSize: 17, fontWeight: 700, color: '#1e293b', lineHeight: 1.3 }}>
                        {stat.value}
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* ── RIGHT: Line items entry + grid ────────────────────────── */}
          <div style={{ flex: 1, minWidth: 0 }}>
            <PRLineItemsTableV2
              ref={lineTableRef}
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
              onUpdate={(updated) => setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))}
              onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
              onWarning={(msg) => {
                setWarnings((prev) => [...new Set([...prev, msg])])
                setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
              }}
            />

            {(!prStatus || prStatus === 'OPEN') && (
              <div style={{ display: 'flex', justifyContent: 'flex-end', marginTop: 14 }}>
                <Button
                  type="primary" icon={<SendOutlined />} loading={saving} disabled={pageBusy}
                  onClick={() => void doSave('submit')}
                  style={{
                    height: 40, fontWeight: 600, paddingInline: 24,
                    background: 'linear-gradient(135deg, #1677ff 0%, #0958d9 100%)',
                    border: 'none',
                    boxShadow: '0 4px 14px rgba(22,119,255,0.40), 0 2px 6px rgba(22,119,255,0.20)',
                  }}
                >
                  Submit for Approval
                </Button>
              </div>
            )}
          </div>

        </div>
      </div>

      {/* ── Delete modal ────────────────────────────────────────────────── */}
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
          You are about to delete <Typography.Text strong>PR #{savedPrNo}</Typography.Text>. This action cannot be undone. Please select a reason.
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
