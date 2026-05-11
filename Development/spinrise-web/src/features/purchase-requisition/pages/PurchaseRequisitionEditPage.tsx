import { useEffect, useRef, useState } from 'react'
import {
  Alert, App, Form, Modal,
  Select, Skeleton, Spin,
} from 'antd'
import { generateUUID } from '@/shared/lib/uuid'
import {
  CheckOutlined,
  CloseOutlined,
  DeleteOutlined,
  DoubleLeftOutlined,
  DoubleRightOutlined,
  EditOutlined,
  FileTextOutlined,
  LeftOutlined,
  PlusOutlined,
  PrinterOutlined,
  RightOutlined,
  SearchOutlined,
  UnorderedListOutlined,
} from '@ant-design/icons'
import { useNavigate, useParams, useSearchParams } from 'react-router-dom'
import dayjs from 'dayjs'

import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { useLookupStore } from '../store/useLookupStore'
import { PRHeaderCards } from '../components/pr-form/PRHeaderCards'
import { PRLineItemsTable, type PRLineItemsTableHandle } from '../components/pr-form/PRLineItemsTable'
import { PR_STATUS_LABELS } from '../types'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  PreCheckResult,
  UpdatePRRequest,
} from '../types'

// ── CEO design tokens ─────────────────────────────────────────────────────────

const C = {
  blue:    '#185FA5',
  blueLt:  '#E6F1FB',
  green:   '#3B6D11',
  greenLt: '#EAF3DE',
  amber:   '#BA7517',
  amberLt: '#FAEEDA',
  red:     '#A32D2D',
  redLt:   '#FCEBEB',
  tealLt:  '#E1F5EE',
  teal:    '#0F6E56',
  bg:      '#f5f5f3',
  bg2:     '#fafaf8',
  border:  '#e2e2e2',
  border2: '#d0d0d0',
  text:    '#1a1a1a',
  text2:   '#4a4a4a',
  text3:   '#888',
} as const

// ── Toolbar button ─────────────────────────────────────────────────────────────

interface TbBtnProps {
  icon:       React.ReactNode
  label?:     string
  kbd?:       string
  onClick?:   () => void
  disabled?:  boolean
  variant?:   'default' | 'primary' | 'success' | 'danger' | 'icon'
  title?:     string
}
function TbBtn({ icon, label, kbd, onClick, disabled = false, variant = 'default', title }: TbBtnProps) {
  const base: React.CSSProperties = {
    display: 'inline-flex', alignItems: 'center', gap: 5,
    padding: variant === 'icon' ? '5px 8px' : '5px 11px',
    border: `1px solid ${C.border2}`, borderRadius: 6,
    background: '#fff', fontSize: 12, fontWeight: 500,
    cursor: disabled ? 'not-allowed' : 'pointer',
    color: C.text, opacity: disabled ? 0.35 : 1,
    fontFamily: 'inherit', whiteSpace: 'nowrap',
    transition: 'background 0.12s, opacity 0.12s',
  }
  const variants: Partial<Record<string, React.CSSProperties>> = {
    primary: { background: C.blue,   color: '#fff', borderColor: C.blue },
    success: { background: '#3B6D11', color: '#fff', borderColor: '#3B6D11' },
    danger:  { color: C.red, borderColor: '#E24B4A', background: '#fff' },
  }
  return (
    <button
      style={{ ...base, ...(variants[variant] ?? {}) }}
      onClick={!disabled ? onClick : undefined}
      disabled={disabled}
      title={title}
    >
      {icon}
      {label && <span>{label}</span>}
      {kbd && (
        <span style={{
          fontSize: 10, padding: '1px 4px',
          border: `1px solid ${C.border2}`, borderRadius: 3,
          color: C.text3, background: C.bg, fontFamily: 'monospace', marginLeft: 2,
        }}>{kbd}</span>
      )}
    </button>
  )
}
function TbSep() {
  return <div style={{ width: 1, height: 22, background: C.border, margin: '0 3px', flexShrink: 0 }} />
}

// ── Metric card ───────────────────────────────────────────────────────────────

function MetricCard({ label, value, sub, valueColor }: {
  label: string; value: React.ReactNode; sub?: string; valueColor?: string
}) {
  return (
    <div style={{ background: '#fff', border: `1px solid ${C.border}`, borderRadius: 10, padding: '10px 13px' }}>
      <div style={{ fontSize: 10, fontWeight: 600, color: C.text3, textTransform: 'uppercase', letterSpacing: '0.4px', marginBottom: 3 }}>
        {label}
      </div>
      <div style={{ fontSize: 18, fontWeight: 700, color: valueColor ?? C.text, lineHeight: 1.2, fontVariantNumeric: 'tabular-nums' }}>
        {value}
      </div>
      {sub && <div style={{ fontSize: 11, color: C.text3, marginTop: 2 }}>{sub}</div>}
    </div>
  )
}

// ── Approval pipeline ─────────────────────────────────────────────────────────

const PIPELINE_STEPS = [
  { label: 'Requested',    sub: 'PR raised' },
  { label: 'First Level',  sub: 'Dept head' },
  { label: 'Before Final', sub: 'Store verify' },
  { label: 'Final Level',  sub: 'GM / AGM' },
  { label: 'PO Created',   sub: 'Procurement' },
]

function pipelineStep(status: string | null): number {
  const map: Record<string, number> = {
    OPEN: 0, PENDING: 1, L1_APPROVED: 2, L2_APPROVED: 3,
    FINAL_APPROVED: 4, CONVERTED: 5, CANCELLED: 0,
  }
  return status ? (map[status] ?? 0) : 0
}

function statusPillStyle(status: string | null): React.CSSProperties {
  if (!status || status === 'OPEN')
    return { background: '#F1EFE8', color: '#5F5E5A' }
  if (status === 'PENDING' || status === 'L1_APPROVED')
    return { background: C.blueLt, color: C.blue }
  if (['L2_APPROVED', 'FINAL_APPROVED', 'CONVERTED'].includes(status))
    return { background: C.greenLt, color: C.green }
  if (status === 'CANCELLED')
    return { background: C.redLt, color: C.red }
  return { background: '#F1EFE8', color: '#5F5E5A' }
}

// ── Constants ─────────────────────────────────────────────────────────────────

const LOCKED_STATUSES = new Set(['L1_APPROVED', 'L2_APPROVED', 'FINAL_APPROVED', 'RECEIVED', 'CONVERTED', 'CANCELLED'])

// ── Helpers ───────────────────────────────────────────────────────────────────

function mapLine(line: PRLineResponse): PRLineFormItem {
  return {
    key:                generateUUID(),
    prSNo:              line.prSNo,
    itemCode:           line.itemCode,
    itemName:           line.itemName           ?? '',
    uom:                line.uom                ?? '',
    currentStock:       line.currentStock       ?? null,
    minLevel:           null,
    qtyRequired:        line.qtyRequired,
    requiredDate:       line.requiredDate        ?? null,
    place:              line.place               ?? '',
    approxCost:         line.approxCost          ?? null,
    remarks:            line.remarks             ?? '',
    machineNo:          line.machineNo           ?? '',
    costCentreCode:     line.costCentreCode      ?? '',
    budgetGroupCode:    line.budgetGroupCode     ?? '',
    subCostCode:        line.subCostCode         ?? null,
    subCostName:        line.subCostName         ?? null,
    isSample:           line.isSample,
    lastPoRate:         line.lastPoRate          ?? null,
    lastPoDate:         line.lastPoDate          ?? null,
    lastPoSupplierCode: line.lastPoSupplierCode  ?? null,
    lastPoSupplierName: line.lastPoSupplierName  ?? null,
    categoryCode:       line.categoryCode        ?? '',
    model:              line.model               ?? '',
    maxCost:            line.maxCost             ?? null,
    rate:               line.rate                ?? null,
    drawNo:             line.drawNo              ?? '',
    catNo:              line.catNo               ?? '',
  }
}

// ── Component ─────────────────────────────────────────────────────────────────

export default function PurchaseRequisitionEditPage() {
  const { prNo: prNoParam } = useParams<{ prNo: string }>()
  const prNo = Number(prNoParam)
  const navigate  = useNavigate()
  const [searchParams] = useSearchParams()
  const fromDate = searchParams.get('from') ?? undefined
  const toDate   = searchParams.get('to')   ?? undefined
  const { message } = App.useApp()
  const [headerForm]    = Form.useForm<PRHeaderFormValues>()
  const lineTableRef     = useRef<PRLineItemsTableHandle>(null)

  // ── State ──────────────────────────────────────────────────────────────────
  const [loadingPr,  setLoadingPr]  = useState(true)
  const [savedPr,    setSavedPr]    = useState<PRHeaderResponse | null>(null)
  const [items,      setItems]      = useState<PRLineFormItem[]>([])
  const [saving,     setSaving]     = useState(false)
  const [warnings,   setWarnings]   = useState<string[]>([])

  const [preCheckResult, setPreCheckResult] = useState<PreCheckResult | null>(null)

  const [cancelReasons,         setCancelReasons]         = useState<Array<{ reasonCode: string; reasonDesc: string }>>([])
  const [cancelModalOpen,       setCancelModalOpen]       = useState(false)
  const [selectedCancelReason,  setSelectedCancelReason]  = useState<string | null>(null)
  const [cancelling,            setCancelling]            = useState(false)

  // ── Lookups ────────────────────────────────────────────────────────────────
  const {
    departments, employees, poTypes, machines,
    loaded: lookupsLoaded, loading: lookupsLoading, loadAll,
  } = useLookupStore()

  useEffect(() => { void loadAll() }, [loadAll])

  useEffect(() => {
    void purchaseRequisitionApi.preChecks().then(setPreCheckResult).catch(() => undefined)
    void purchaseRequisitionApi.getDeleteReasons().then(setCancelReasons).catch(() => undefined)
  }, [])

  // ── Load existing PR ───────────────────────────────────────────────────────
  useEffect(() => {
    if (!prNo) return
    setLoadingPr(true)
    void purchaseRequisitionApi
      .getById(prNo, fromDate, toDate)
      .then((pr) => {
        setSavedPr(pr)
        headerForm.setFieldsValue({
          prDate:       dayjs(pr.prDate),
          depCode:      pr.depCode,
          section:      pr.section      ?? '',
          iType:        pr.iType        ?? '',
          reqName:      pr.reqName      ?? '',
          refNo:        pr.refNo        ?? '',
          poGroupCode:  pr.poGroupCode  ?? '',
          scopeCode:    pr.scopeCode    ?? '',
          saleOrderNo:  pr.saleOrderNo  ?? '',
          saleOrderDate: pr.saleOrderDate ? dayjs(pr.saleOrderDate) : null,
        })
        setItems(pr.lines.map(mapLine))
      })
      .catch(() => void message.error('Failed to load Purchase Requisition.'))
      .finally(() => setLoadingPr(false))
  }, [prNo]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Derived ────────────────────────────────────────────────────────────────
  const isLocked    = LOCKED_STATUSES.has(savedPr?.prStatus ?? '')
  const prStatus    = savedPr?.prStatus ?? null
  const pageBusy    = saving || cancelling
  const validLines  = items.filter((l) => l.itemCode.trim() !== '')
  const totalCost   = validLines.reduce((s, l) => s + (l.approxCost ?? 0), 0)
  const currentStep = pipelineStep(prStatus)
  const depCode     = savedPr?.depCode ?? ''

  // ── Build update payload ───────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): UpdatePRRequest => ({
    prNo,
    prDate:        values.prDate.format('YYYY-MM-DD'),
    depCode:       values.depCode,
    section:       values.section?.trim()      || undefined,
    iType:         values.iType?.trim()        || undefined,
    reqName:       values.reqName?.trim()      || undefined,
    refNo:         values.refNo?.trim().toUpperCase() || undefined,
    poGroupCode:   values.poGroupCode?.trim()  || undefined,
    scopeCode:     values.scopeCode?.trim()    || undefined,
    saleOrderNo:   values.saleOrderNo?.trim()  || undefined,
    saleOrderDate: values.saleOrderDate
      ? values.saleOrderDate.format('YYYY-MM-DD')
      : null,
    lines: items.map((l) => ({
      itemCode:           l.itemCode,
      itemName:           l.itemName            || undefined,
      uom:                l.uom                 || undefined,
      rate:               l.rate                ?? undefined,
      currentStock:       l.currentStock        ?? undefined,
      qtyRequired:        l.qtyRequired,
      requiredDate:       l.requiredDate        ?? null,
      approxCost:         l.approxCost          ?? undefined,
      machineNo:          l.machineNo           || undefined,
      remarks:            l.remarks             || undefined,
      place:              l.place               || undefined,
      costCentreCode:     l.costCentreCode      || undefined,
      budgetGroupCode:    l.budgetGroupCode     || undefined,
      subCostCode:        l.subCostCode         ?? undefined,
      isSample:           l.isSample,
      lastPoRate:         l.lastPoRate          ?? undefined,
      lastPoDate:         l.lastPoDate          ?? undefined,
      lastPoSupplierCode: l.lastPoSupplierCode  ?? undefined,
      lastPoSupplierName: l.lastPoSupplierName  ?? undefined,
      categoryCode:       l.categoryCode        || undefined,
      model:              l.model               || undefined,
      maxCost:            l.maxCost             ?? undefined,
      drawNo:             l.drawNo              || undefined,
      catNo:              l.catNo              || undefined,
    })),
  })

  // ── Handlers ───────────────────────────────────────────────────────────────
  const handleUpdate = async () => {
    if (validLines.length === 0) {
      void message.error('Please add at least one line item before saving.')
      return
    }
    await lineTableRef.current?.flushEdit()
    setSaving(true)
    try {
      const values = headerForm.getFieldsValue()
      await purchaseRequisitionApi.update(prNo, buildPayload(values))
      void message.success(`PR ${prNo} updated successfully.`)
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to save changes to the PR. Please try again.')
    } finally {
      setSaving(false)
    }
  }

  const handleCancelPr = async () => {
    if (!selectedCancelReason) {
      void message.error('Please select a cancellation reason before proceeding.')
      return
    }
    setCancelling(true)
    try {
      await purchaseRequisitionApi.deletePR(prNo, selectedCancelReason)
      void message.success(`PR ${prNo} cancelled.`)
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to cancel the PR. Please try again.')
    } finally {
      setCancelling(false)
      setCancelModalOpen(false)
    }
  }

  // Ctrl+S → save changes
  const handleUpdateRef = useRef(handleUpdate)
  handleUpdateRef.current = handleUpdate
  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      if (e.ctrlKey && e.key === 's') {
        e.preventDefault()
        if (!pageBusy && !isLocked) void handleUpdateRef.current()
      }
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [pageBusy, isLocked])

  // ── Loading ────────────────────────────────────────────────────────────────
  if (lookupsLoading || loadingPr) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading…">
          <Skeleton active paragraph={{ rows: 6 }} />
        </Spin>
      </div>
    )
  }

  // ── Render ─────────────────────────────────────────────────────────────────
  return (
    <div className="pr-page" style={{ background: C.bg }}>

      {/* ══ CEO-style toolbar ════════════════════════════════════════════════ */}
      <div style={{
        background: '#fff', borderBottom: `1px solid ${C.border}`,
        display: 'flex', alignItems: 'center', gap: 3,
        padding: '0 12px', height: 44, flexShrink: 0,
      }}>
        <TbBtn variant="primary" icon={<PlusOutlined style={{ fontSize: 11 }} />} label="New PR" kbd="Ctrl+A" onClick={() => navigate('/purchase/requisition/v1/new')} />
        <TbBtn variant="default" icon={<EditOutlined style={{ fontSize: 11 }} />} label="Modify" kbd="Ctrl+M" disabled={isLocked || pageBusy} />
        <TbBtn variant="danger" icon={<DeleteOutlined style={{ fontSize: 11 }} />} label="Delete" kbd="Ctrl+D" disabled={isLocked || pageBusy} onClick={() => { setSelectedCancelReason(null); setCancelModalOpen(true) }} />
        <TbSep />
        <TbBtn icon={<SearchOutlined style={{ fontSize: 11 }} />} label="Find" kbd="Ctrl+F" onClick={() => navigate('/purchase/requisition/v1')} />
        <TbBtn icon={<UnorderedListOutlined style={{ fontSize: 11 }} />} label="List" kbd="Ctrl+L" onClick={() => navigate('/purchase/requisition/v1')} />
        <TbSep />
        <TbBtn variant="icon" icon={<DoubleLeftOutlined style={{ fontSize: 10 }} />} disabled />
        <TbBtn variant="icon" icon={<LeftOutlined style={{ fontSize: 10 }} />} disabled />
        <TbBtn variant="icon" icon={<RightOutlined style={{ fontSize: 10 }} />} disabled />
        <TbBtn variant="icon" icon={<DoubleRightOutlined style={{ fontSize: 10 }} />} disabled />
        <TbSep />
        <TbBtn variant="success" icon={<CheckOutlined style={{ fontSize: 11 }} />} label="Save" kbd="Ctrl+S" disabled={pageBusy || isLocked || validLines.length === 0} onClick={() => void handleUpdate()} />
        <TbBtn icon={<CloseOutlined style={{ fontSize: 11 }} />} label="Cancel" kbd="Ctrl+Bksp" disabled={pageBusy} onClick={() => navigate('/purchase/requisition')} />
        <TbSep />
        <TbBtn icon={<PrinterOutlined style={{ fontSize: 11 }} />} label="Print" kbd="Ctrl+Y" disabled={!prNo} />
      </div>

      {/* ══ BODY ════════════════════════════════════════════════════════════ */}
      <div className="pr-page__body">

        {/* Alerts */}
        {isLocked && (
          <Alert
            type="warning" showIcon banner
            message={`This PR is ${PR_STATUS_LABELS[prStatus ?? '']?.label ?? prStatus} and cannot be edited.`}
          />
        )}
        {warnings.map((warn) => (
          <Alert key={warn} type="warning" showIcon banner message={warn} closable />
        ))}

        {/* ── Document Header ────────────────────────────────────────────── */}
        <div style={{ background: '#fff', borderBottom: `1px solid ${C.border}`, flexShrink: 0 }}>
          {/* Card header row */}
          <div style={{
            display: 'flex', alignItems: 'center', justifyContent: 'space-between',
            padding: '8px 16px', borderBottom: `1px solid ${C.border}`, background: C.bg2,
          }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <div style={{ width: 26, height: 26, borderRadius: 6, background: C.blueLt, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                <FileTextOutlined style={{ color: C.blue, fontSize: 12 }} />
              </div>
              <div>
                <div style={{ fontSize: 12, fontWeight: 600, color: C.text, textTransform: 'uppercase', letterSpacing: '0.3px' }}>
                  Document Header
                </div>
                <div style={{ fontSize: 10, color: C.text3 }}>
                  Fields auto-fill on selection · search icon opens item lookup
                </div>
              </div>
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <span style={{ fontSize: 12, padding: '2px 10px', background: C.bg2, border: `1px solid ${C.border}`, borderRadius: 4, color: C.text2, fontFamily: 'monospace' }}>
                {prNo ? `PR-${String(prNo).padStart(5, '0')}` : 'PR No: Auto-generated'}
              </span>
              <span style={{
                fontSize: 10, padding: '2px 9px', borderRadius: 20, fontWeight: 600,
                ...statusPillStyle(prStatus),
              }}>
                ● {prStatus ? (PR_STATUS_LABELS[prStatus]?.label ?? prStatus) : 'Draft'}
              </span>
            </div>
          </div>

          <Skeleton active loading={!lookupsLoaded}>
            <PRHeaderCards
              form={headerForm}
              departments={departments}
              employees={employees}
              poTypes={poTypes}
              savedPrNo={savedPr?.prNo ?? null}
              disabled={pageBusy || isLocked}
              requireRequesterName={true}
              requireRefNo={preCheckResult?.requireRefNo ?? false}
              pendingPoDetailsEnabled={preCheckResult?.pendingPoDetailsEnabled ?? false}
              backDateAllowed={preCheckResult?.backDateAllowed ?? true}
              budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
              budgetBalance={savedPr?.budgetBalance ?? null}
              approvalVisible={false}
            />
          </Skeleton>
        </div>

        {/* ── Metrics strip ──────────────────────────────────────────────── */}
        <div style={{ background: '#fff', padding: '10px 16px 12px', flexShrink: 0, borderBottom: `1px solid ${C.border}` }}>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: 10 }}>
            <MetricCard
              label="Total Lines"
              value={validLines.length}
              sub={`${validLines.length === 1 ? 'item' : 'items'} in this PR`}
              valueColor={C.blue}
            />
            <MetricCard
              label="Approx. Budget"
              value={`₹ ${totalCost.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`}
              sub="Indicative cost"
              valueColor={C.amber}
            />
            <MetricCard
              label="Created By"
              value={savedPr?.createdBy ?? '—'}
              sub={savedPr?.prDate ?? undefined}
            />
            <MetricCard
              label="Approval Status"
              value={prStatus ? (PR_STATUS_LABELS[prStatus]?.label ?? prStatus) : 'Draft'}
              sub={isLocked ? 'Read-only mode' : 'Editable'}
            />
          </div>
        </div>

        {/* ── Approval Pipeline ──────────────────────────────────────────── */}
        <div style={{ background: '#fff', padding: '8px 16px 10px', flexShrink: 0, borderBottom: `1px solid ${C.border}` }}>
          <div style={{ border: `1px solid ${C.border}`, borderRadius: 10, overflow: 'hidden' }}>
            <div style={{
              display: 'flex', alignItems: 'center', justifyContent: 'space-between',
              padding: '7px 14px', borderBottom: `1px solid ${C.border}`, background: C.bg2,
            }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
                <div style={{ width: 24, height: 24, borderRadius: 5, background: C.tealLt, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                  <CheckOutlined style={{ color: C.teal, fontSize: 11 }} />
                </div>
                <span style={{ fontSize: 11, fontWeight: 600, color: C.text, textTransform: 'uppercase', letterSpacing: '0.3px' }}>
                  Approval Pipeline
                </span>
              </div>
              <span style={{ fontSize: 10, padding: '2px 8px', borderRadius: 3, background: C.blueLt, color: C.blue, fontWeight: 600 }}>
                3-level workflow
              </span>
            </div>
            {/* Steps track */}
            <div style={{ display: 'flex', alignItems: 'center', padding: '10px 16px', gap: 0, overflowX: 'auto' }}>
              {PIPELINE_STEPS.map((step, i) => {
                const isDone    = i < currentStep
                const isCurrent = i === currentStep
                const nodeStyle: React.CSSProperties = isDone
                  ? { background: C.greenLt, color: C.green, borderColor: C.green }
                  : isCurrent
                  ? { background: C.blueLt, color: C.blue, borderColor: C.blue }
                  : { background: C.bg2, color: C.text3, borderColor: C.border2 }
                return (
                  <div key={i} style={{ display: 'contents' }}>
                    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 3, flexShrink: 0, minWidth: 72 }}>
                      <div style={{
                        width: 30, height: 30, borderRadius: '50%', display: 'flex',
                        alignItems: 'center', justifyContent: 'center',
                        fontSize: 12, fontWeight: 600, border: `2px solid ${C.border2}`,
                        ...nodeStyle,
                      }}>
                        {isDone ? '✓' : i + 1}
                      </div>
                      <div style={{ fontSize: 10, fontWeight: 500, color: C.text2, textAlign: 'center', lineHeight: 1.3 }}>{step.label}</div>
                      <div style={{ fontSize: 9, color: C.text3, textAlign: 'center' }}>{step.sub}</div>
                    </div>
                    {i < PIPELINE_STEPS.length - 1 && (
                      <div style={{ flex: 1, height: 2, background: isDone ? C.green : C.border, minWidth: 14, marginBottom: 22, flexShrink: 0 }} />
                    )}
                  </div>
                )
              })}
            </div>
          </div>
        </div>

        {/* ── Item Lines ─────────────────────────────────────────────────── */}
        <div style={{ flex: 1, overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
          <PRLineItemsTable
            ref={lineTableRef}
            items={items}
            machines={machines}
            depCode={depCode}
            prDate={savedPr?.prDate}
            preCheckResult={preCheckResult}
            disabled={pageBusy || isLocked}
            savedPrNo={savedPr?.prNo}
            deleteReasons={cancelReasons}
            onAdd={(item) => setItems((prev) => {
              if (prev.some((l) => l.itemCode === item.itemCode)) {
                void message.warning(`Item "${item.itemName}" (${item.itemCode}) is already in the list.`)
                return prev
              }
              return [...prev, item]
            })}
            onUpdate={(updated) => setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))}
            onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
            onWarning={(msg) => {
              setWarnings((prev) => [...new Set([...prev, msg])])
              setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
            }}
          />
        </div>
      </div>

      {/* Cancel PR modal */}
      <Modal
        title={`Delete PR #${prNo}`}
        open={cancelModalOpen}
        onCancel={() => setCancelModalOpen(false)}
        onOk={() => void handleCancelPr()}
        okText="Confirm Delete"
        okButtonProps={{ danger: true, loading: cancelling }}
        destroyOnClose
      >
        <p style={{ marginBottom: 12 }}>
          This will permanently delete the requisition. Select a reason:
        </p>
        <Select
          placeholder="Select reason…"
          value={selectedCancelReason}
          onChange={setSelectedCancelReason}
          options={cancelReasons.map((r) => ({
            value: r.reasonCode,
            label: `${r.reasonCode} – ${r.reasonDesc}`,
          }))}
          style={{ width: '100%' }}
        />
      </Modal>
    </div>
  )
}
