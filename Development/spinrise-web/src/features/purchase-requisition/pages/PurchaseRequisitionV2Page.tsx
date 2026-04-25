import { useEffect, useState } from 'react'
import {
  Alert,
  App,
  Breadcrumb,
  Button,
  Card,
  Divider,
  Dropdown,
  Form,
  Modal,
  Select,
  Skeleton,
  Space,
  Spin,
  Steps,
  Tag,
  Typography,
} from 'antd'
import {
  CloseOutlined,
  DeleteOutlined,
  DownOutlined,
  FormOutlined,
  PrinterOutlined,
  SaveOutlined,
  SendOutlined,
} from '@ant-design/icons'
import type { MenuProps } from 'antd'
import { Link, useNavigate } from 'react-router-dom'

import { useAuthStore }           from '@/features/auth/store/useAuthStore'
import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { useLookupStore }         from '../store/useLookupStore'
import { purchaseReportService }  from '@/features/purchase-reports/services/purchaseReportService'
import { PRHeaderCards }          from '../components/v2/PRHeaderCards'
import { PRLineItemsTable }       from '../components/v2/PRLineItemsTable'
import { PR_STATUS_LABELS }       from '../types'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  CreatePRRequest,
  PreCheckResult,
} from '../types'

// ── Status → Steps mapping ────────────────────────────────────────────────────

const PR_STEPS = [
  { title: 'Draft'     },
  { title: 'Submitted' },
  { title: 'Approved'  },
  { title: 'Converted' },
]

function statusToStep(status: string | null): number {
  if (!status) return 0
  const map: Record<string, number> = {
    OPEN: 1, PENDING: 1, APPROVED: 2, RECEIVED: 2, CONVERTED: 3, CANCELLED: 0,
  }
  return map[status] ?? 0
}

// ── Page ─────────────────────────────────────────────────────────────────────

export default function PurchaseRequisitionV2Page() {
  const { message } = App.useApp()
  const navigate    = useNavigate()
  const [headerForm] = Form.useForm<PRHeaderFormValues>()

  const divCode = useAuthStore((s) => s.user?.divCode ?? '')
  const depCode = (Form.useWatch('depCode', headerForm) as string | undefined) ?? ''

  // ── State ─────────────────────────────────────────────────────────────────
  const [items,      setItems]      = useState<PRLineFormItem[]>([])
  const [savedPrNo,  setSavedPrNo]  = useState<number | null>(null)
  const [savedPrId,  setSavedPrId]  = useState<number | null>(null)
  const [savedPr,    setSavedPr]    = useState<PRHeaderResponse | null>(null)
  const [prStatus,   setPrStatus]   = useState<string | null>(null)
  const [saving,     setSaving]     = useState(false)
  const [deleting,   setDeleting]   = useState(false)
  const [submitMode, setSubmitMode] = useState<'draft' | 'submit'>('draft')  // G19: Differentiate submit vs save

  const [preCheckResult,  setPreCheckResult]  = useState<PreCheckResult | null>(null)
  const [preCheckMsg,     setPreCheckMsg]     = useState<string | null>(null)
  const [preCheckLoading, setPreCheckLoading] = useState(false)

  const [deleteReasons,        setDeleteReasons]        = useState<{ reasonCode: string; reasonDesc: string }[]>([])
  const [selectedDeleteReason, setSelectedDeleteReason] = useState<string | null>(null)
  const [deleteModalOpen,      setDeleteModalOpen]      = useState(false)

  const [warnings, setWarnings] = useState<string[]>([])  // G11: Store item warnings

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    departments, employees, poTypes, machines,
    loaded:  lookupsLoaded,
    loading: lookupsLoading,
    error:   lookupsError,
    loadAll,
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
      if      (!result.itemMasterExists)    setPreCheckMsg('Item Master is not configured.')
      else if (!result.departmentExists)    setPreCheckMsg('No departments configured for this division.')
      else if (!result.docNumberConfigured) setPreCheckMsg('PR document number series is not configured.')
      else                                  setPreCheckMsg(null)
    } catch { /* non-critical */ } finally { setPreCheckLoading(false) }
  }

  // ── Map saved line to form item ───────────────────────────────────────────
  const mapSavedLine = (line: PRLineResponse): PRLineFormItem => ({
    key:                crypto.randomUUID(),
    prSNo:              line.prSNo,
    itemCode:           line.itemCode,
    itemName:           line.itemName           ?? '',
    uom:                line.uom                ?? '',
    currentStock:       line.currentStock       ?? null,
    qtyRequired:        line.qtyRequired,
    requiredDate:       line.requiredDate       ?? null,
    place:              line.place              ?? '',
    approxCost:         line.approxCost         ?? null,
    remarks:            line.remarks            ?? '',
    machineNo:          line.machineNo          ?? '',
    costCentreCode:     line.costCentreCode     ?? '',
    budgetGroupCode:    line.budgetGroupCode    ?? '',
    subCostCode:        line.subCostCode        ?? null,
    isSample:           line.isSample,
    lastPoRate:         line.lastPoRate         ?? null,
    lastPoDate:         line.lastPoDate         ?? null,
    lastPoSupplierCode: line.lastPoSupplierCode ?? null,
    lastPoSupplierName: line.lastPoSupplierName ?? null,
    categoryCode:       line.categoryCode       ?? '',
    model:              line.model              ?? '',
    maxCost:            line.maxCost            ?? null,
    rate:               line.rate               ?? null,
    drawNo:             line.drawNo             ?? '',
    catNo:              line.catNo              ?? '',
  })

  // ── Build payload ─────────────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): CreatePRRequest => ({
    prDate:        values.prDate.format('YYYY-MM-DD'),
    depCode:       values.depCode,
    section:       values.section?.trim()     || undefined,
    iType:         values.iType?.trim()       || undefined,
    reqName:       values.reqName?.trim()     || undefined,
    refNo:         values.refNo?.trim().toUpperCase() || undefined,
    poGroupCode:   values.poGroupCode?.trim() || undefined,
    scopeCode:     values.scopeCode?.trim()   || undefined,
    saleOrderNo:   values.saleOrderNo?.trim() || undefined,
    saleOrderDate: values.saleOrderDate?.format('YYYY-MM-DD') ?? null,
    lines: items
      .filter((l) => l.itemCode.trim() !== '')
      .map((l) => ({
        itemCode:           l.itemCode,
        itemName:           l.itemName           || undefined,
        uom:                l.uom                || undefined,
        rate:               l.rate               ?? undefined,
        currentStock:       l.currentStock       ?? undefined,
        qtyRequired:        l.qtyRequired,
        requiredDate:       l.requiredDate       ?? null,
        approxCost:         l.approxCost         ?? undefined,
        machineNo:          l.machineNo          || undefined,
        remarks:            l.remarks            || undefined,
        costCentreCode:     l.costCentreCode     || undefined,
        budgetGroupCode:    l.budgetGroupCode    || undefined,
        subCostCode:        l.subCostCode        ?? undefined,
        isSample:           l.isSample,
        lastPoRate:         l.lastPoRate         ?? undefined,
        lastPoDate:         l.lastPoDate         ?? undefined,
        lastPoSupplierCode: l.lastPoSupplierCode ?? undefined,
        lastPoSupplierName: l.lastPoSupplierName ?? undefined,
        categoryCode:       l.categoryCode       || undefined,
        model:              l.model              || undefined,
        maxCost:            l.maxCost            ?? undefined,
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
    if (validLines.length === 0) {
      message.error('At least one item is required.')
      return
    }
    setSaving(true)
    try {
      const payload = buildPayload(values)
      // G19: Include submit mode in payload for backend to set status appropriately
      ;(payload as any).submitForApproval = mode === 'submit'

      const result = await purchaseRequisitionApi.create(payload)
      setSavedPrNo(result.prNo)
      // G19: Set status based on submit mode
      setPrStatus(mode === 'submit' ? 'PENDING' : 'OPEN')
      const fullPr = await purchaseRequisitionApi.getById(result.prNo)
      setSavedPrId(fullPr.id)
      setSavedPr(fullPr)
      setItems(fullPr.lines.map(mapSavedLine))
      const action = mode === 'submit' ? 'submitted for approval' : 'saved as draft'
      message.success(`PR ${result.prNo} ${action}.`)
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Save failed.')
    } finally { setSaving(false) }
  }

  // ── Delete PR ─────────────────────────────────────────────────────────────
  const handleDeleteClick  = () => { if (!savedPrNo) return; setSelectedDeleteReason(null); setDeleteModalOpen(true) }
  const handleDeleteConfirm = async () => {
    if (!selectedDeleteReason || !savedPrNo) { message.error('Select a reason first.'); return }
    setDeleteModalOpen(false); setDeleting(true)
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, selectedDeleteReason)
      void message.success(`PR ${savedPrNo} deleted.`)
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Delete failed.')
    } finally { setDeleting(false) }
  }

  // ── Print ─────────────────────────────────────────────────────────────────
  const handlePrint = async (format: 'pdf' | 'excel' | 'csv') => {
    if (!savedPrNo || !savedPrId) return
    try {
      message.loading({ content: `Generating ${format.toUpperCase()}…`, key: 'print' })
      let blob: Blob, fileName: string
      if (format === 'pdf') {
        const pr = await purchaseRequisitionApi.getById(savedPrNo)
        const fy = new Date(pr.prDate).getMonth() >= 3 ? new Date(pr.prDate).getFullYear() : new Date(pr.prDate).getFullYear() - 1
        ;({ blob, fileName } = await purchaseReportService.downloadPurchaseRequisitionQuestPdf(savedPrId, `${fy}-04-01`, `${fy + 1}-03-31`))
      } else {
        ;({ blob, fileName } = await purchaseReportService.downloadPurchaseRequisitionReport(savedPrId, format))
      }
      const a = Object.assign(document.createElement('a'), { href: URL.createObjectURL(blob), download: fileName })
      a.click(); URL.revokeObjectURL(a.href)
      message.success({ content: `Downloaded ${fileName}`, key: 'print' })
    } catch { message.error({ content: 'Failed to generate report.', key: 'print' }) }
  }

  // ── Derived ───────────────────────────────────────────────────────────────
  const pageBusy   = saving || deleting
  const validItems = items.filter((l) => l.itemCode.trim() !== '')
  const subtotal   = validItems.reduce((s, l) => s + (l.rate ?? 0) * l.qtyRequired, 0)
  const statusInfo = prStatus ? (PR_STATUS_LABELS[prStatus] ?? null) : null
  const stepIndex  = statusToStep(prStatus)

  const printMenu: MenuProps = {
    items: [
      { key: 'pdf',   label: 'PDF Report'   },
      { key: 'excel', label: 'Excel Export' },
      { key: 'csv',   label: 'CSV Export'   },
    ],
    onClick: ({ key }) => void handlePrint(key as 'pdf' | 'excel' | 'csv'),
  }

  // ── Loading state ─────────────────────────────────────────────────────────
  if (lookupsLoading) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading reference data…">
          <Skeleton active paragraph={{ rows: 8 }} />
        </Spin>
      </div>
    )
  }

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <div className="pr-page">

      {/* ══ STICKY ACTION BAR ═══════════════════════════════════════════════ */}
      <div style={{
        position:      'sticky',
        top:           56,
        zIndex:        100,
        background:    '#ffffff',
        borderBottom:  '1px solid #e5e7eb',
        boxShadow:     '0 2px 8px rgba(15,23,42,0.07)',
        padding:       '0 24px',
        height:        60,
        display:       'flex',
        alignItems:    'center',
        justifyContent:'space-between',
        gap:           16,
      }}>
        {/* Left — accent bar + breadcrumb + title + badge */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 14, minWidth: 0 }}>
          <div style={{
            width: 4, height: 32, borderRadius: 2,
            background: '#1677ff', flexShrink: 0,
          }} />
          <div style={{ minWidth: 0 }}>
            <Breadcrumb
              style={{ fontSize: 11, lineHeight: 1 }}
              items={[
                { title: <Link to="/purchase/requisition" style={{ color: '#9ca3af', fontSize: 11 }}>Purchase</Link> },
                { title: <Link to="/purchase/requisition" style={{ color: '#9ca3af', fontSize: 11 }}>Requisitions</Link> },
                { title: <span style={{ color: '#6b7280', fontSize: 11 }}>{savedPrNo ? `PR-${String(savedPrNo).padStart(5,'0')}` : 'New'}</span> },
              ]}
            />
            <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginTop: 3 }}>
              <FormOutlined style={{ color: '#1677ff', fontSize: 13 }} />
              <Typography.Text strong style={{ fontSize: 15, color: '#111827', lineHeight: 1 }}>
                {savedPrNo
                  ? `Purchase Requisition — PR-${String(savedPrNo).padStart(5,'0')}`
                  : 'New Purchase Requisition'
                }
              </Typography.Text>
              {statusInfo
                ? <Tag color={statusInfo.color} style={{ fontWeight: 600, fontSize: 11 }}>{statusInfo.label}</Tag>
                : <Tag color="orange" style={{ fontWeight: 600, fontSize: 11 }}>Draft</Tag>
              }
            </div>
          </div>
        </div>

        {/* Center — steps */}
        <div style={{ flex: 1, display: 'flex', justifyContent: 'center', minWidth: 0 }}>
          <Steps
            size="small"
            current={stepIndex}
            items={PR_STEPS}
            style={{ maxWidth: 420, width: '100%' }}
          />
        </div>

        {/* Right — actions */}
        <Space size={6} style={{ flexShrink: 0 }}>
          <Button
            type="text"
            icon={<CloseOutlined />}
            disabled={pageBusy}
            onClick={() => navigate('/purchase/requisition')}
            style={{ color: '#6b7280' }}
          >
            Cancel
          </Button>

          <Button
            icon={<SaveOutlined />}
            loading={saving}
            disabled={pageBusy}
            onClick={() => void doSave('draft')}
          >
            Save Draft
          </Button>

          <Divider type="vertical" style={{ height: 24, margin: '0 2px', borderColor: '#e5e7eb' }} />

          <Button
            type="primary"
            icon={<SendOutlined />}
            loading={saving}
            disabled={pageBusy}
            onClick={() => void doSave('submit')}
            style={{ fontWeight: 600, paddingInline: 20 }}
          >
            Submit for Approval
          </Button>

          {savedPrNo && (
            <>
              <Divider type="vertical" style={{ height: 24, margin: '0 2px', borderColor: '#e5e7eb' }} />
              <Dropdown menu={printMenu} disabled={pageBusy}>
                <Button icon={<PrinterOutlined />}>
                  Print <DownOutlined />
                </Button>
              </Dropdown>
              <Button
                danger
                icon={<DeleteOutlined />}
                disabled={pageBusy}
                onClick={handleDeleteClick}
              >
                Delete
              </Button>
            </>
          )}
        </Space>
      </div>

      {/* ══ SCROLLABLE BODY ═════════════════════════════════════════════════ */}
      <div className="pr-page__body">

        {/* Alerts */}
        {lookupsError && (
          <Alert
            type="error"
            showIcon
            message={lookupsError}
            action={<Typography.Link onClick={() => void loadAll()}>Retry</Typography.Link>}
          />
        )}
        {preCheckMsg && (
          <Alert type="warning" showIcon message="Setup Incomplete" description={preCheckMsg} />
        )}
        {preCheckLoading && (
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <Spin size="small" />
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>Running pre-checks…</Typography.Text>
          </div>
        )}

        {/* G11: Item warnings */}
        {warnings.map((warn) => (
          <Alert key={warn} type="warning" showIcon message={warn} closable />
        ))}

        {/* Header cards */}
        <Skeleton active loading={!lookupsLoaded && !lookupsError}>
          <PRHeaderCards
            form={headerForm}
            departments={departments}
            employees={employees}
            poTypes={poTypes}
            savedPrNo={savedPrNo}
            disabled={pageBusy}
            requireRequesterName={preCheckResult?.requireRequesterName ?? false}
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
          />
        </Skeleton>

        {/* Items */}
        <PRLineItemsTable
          items={items}
          machines={machines}
          depCode={depCode}
          prDate={headerForm.getFieldValue('prDate')?.format('YYYY-MM-DD')}
          preCheckResult={preCheckResult}
          disabled={pageBusy}
          savedPrNo={savedPrNo ?? undefined}
          deleteReasons={deleteReasons}
          onAdd={(item) => setItems((prev) => [...prev, item])}
          onUpdate={(updated) => setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))}
          onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
          onWarning={(msg) => {
            setWarnings((prev) => [...new Set([...prev, msg])])
            setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
          }}
        />

        {/* Order summary */}
        {validItems.length > 0 && (
          <div style={{ display: 'flex', justifyContent: 'flex-end' }}>
            <Card
              bordered={false}
              style={{
                width:       340,
                borderRadius: 12,
                borderLeft:  '4px solid #16a34a',
                border:      '1px solid #e5e7eb',
                borderLeftWidth: 4,
                borderLeftColor: '#16a34a',
                boxShadow:   '0 1px 3px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.08)',
              }}
              styles={{ body: { padding: '20px 24px' } }}
            >
              <Typography.Text strong style={{ fontSize: 13, color: '#374151', display: 'block', marginBottom: 14, textTransform: 'uppercase', letterSpacing: '0.05em' }}>
                Order Summary
              </Typography.Text>

              <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: 10 }}>
                <Typography.Text style={{ color: '#6b7280', fontSize: 13 }}>
                  Items
                </Typography.Text>
                <Typography.Text style={{ fontSize: 13 }}>
                  {validItems.length} line{validItems.length !== 1 ? 's' : ''}
                </Typography.Text>
              </div>

              <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: 14 }}>
                <Typography.Text style={{ color: '#6b7280', fontSize: 13 }}>Subtotal</Typography.Text>
                <Typography.Text style={{ fontSize: 13, fontVariantNumeric: 'tabular-nums' }}>
                  ₹ {subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
                </Typography.Text>
              </div>

              <div style={{
                display:        'flex',
                justifyContent: 'space-between',
                alignItems:     'baseline',
                padding:        '12px 0 14px',
                borderTop:      '2px solid #e5e7eb',
                marginBottom:   16,
              }}>
                <Typography.Text strong style={{ fontSize: 15, color: '#111827' }}>Grand Total</Typography.Text>
                <Typography.Text strong style={{ fontSize: 20, color: '#16a34a', fontVariantNumeric: 'tabular-nums' }}>
                  ₹ {subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
                </Typography.Text>
              </div>

              <Typography.Text type="secondary" style={{ fontSize: 11, display: 'block', marginBottom: 16 }}>
                Estimates only. Final pricing confirmed at PO stage.
              </Typography.Text>

              <Button
                type="primary"
                block
                icon={<SendOutlined />}
                loading={saving}
                disabled={pageBusy}
                onClick={() => void doSave('submit')}
                style={{ height: 40, fontWeight: 600 }}
              >
                Submit for Approval
              </Button>
            </Card>
          </div>
        )}

      </div>

      {/* Delete modal */}
      <Modal
        title={
          <Space>
            <DeleteOutlined style={{ color: '#dc2626' }} />
            Delete Purchase Requisition
          </Space>
        }
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
          <Typography.Text strong>PR #{savedPrNo}</Typography.Text>.
          This action cannot be undone. Please select a reason.
        </Typography.Paragraph>
        <Select
          placeholder="Select delete reason…"
          value={selectedDeleteReason}
          onChange={setSelectedDeleteReason}
          options={deleteReasons.map((r) => ({
            value: r.reasonCode,
            label: `${r.reasonCode} – ${r.reasonDesc}`,
          }))}
          style={{ width: '100%' }}
        />
      </Modal>
    </div>
  )
  
}
