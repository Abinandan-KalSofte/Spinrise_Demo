import { useEffect, useMemo, useRef, useState } from 'react'
import {
  Alert, App, Button, Form, Modal,
  Select, Skeleton, Space, Spin,
} from 'antd'
import { SaveOutlined } from '@ant-design/icons'
import { Link, useNavigate, useParams, useSearchParams } from 'react-router-dom'
import dayjs from 'dayjs'

import { PageTitleBar } from '@/shared/components/PageTitleBar'
import { generateUUID } from '@/shared/lib/uuid'
import { purchaseRequisitionApi } from '@/features/purchase-requisition/api/purchaseRequisitionApi'
import { useLookupStore } from '@/features/purchase-requisition/store/useLookupStore'
import { PR_STATUS_LABELS } from '@/features/purchase-requisition/types'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  PreCheckResult,
  UpdatePRRequest,
} from '@/features/purchase-requisition/types'
import { PRHeaderCardsV2 } from '../components/pr-form/PRHeaderCardsV2'
import { PRLineItemsTableV2 } from '../components/pr-form/PRLineItemsTableV2'
import type { PRLineItemsTableV2Handle } from '../components/pr-form/PRLineItemsTableV2'

const LOCKED_STATUSES = new Set(['L1_APPROVED', 'L2_APPROVED', 'FINAL_APPROVED', 'RECEIVED', 'CONVERTED', 'CANCELLED'])

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

export default function PurchaseRequisitionEditPageV2() {
  const { prNo: prNoParam } = useParams<{ prNo: string }>()
  const prNo     = Number(prNoParam)
  const navigate = useNavigate()
  const [searchParams]  = useSearchParams()
  const fromDate = searchParams.get('from') ?? undefined
  const toDate   = searchParams.get('to')   ?? undefined

  const { message } = App.useApp()
  const [headerForm]   = Form.useForm<PRHeaderFormValues>()
  const lineTableRef    = useRef<PRLineItemsTableV2Handle>(null)

  // ── State ──────────────────────────────────────────────────────────────────
  const [loadingPr, setLoadingPr]  = useState(true)
  const [savedPr,   setSavedPr]    = useState<PRHeaderResponse | null>(null)
  const [items,     setItems]      = useState<PRLineFormItem[]>([])
  const [saving,    setSaving]     = useState(false)
  const [warnings,  setWarnings]   = useState<string[]>([])

  const [preCheckResult, setPreCheckResult] = useState<PreCheckResult | null>(null)

  const [cancelReasons,        setCancelReasons]        = useState<Array<{ reasonCode: string; reasonDesc: string }>>([])
  const [cancelModalOpen,      setCancelModalOpen]      = useState(false)
  const [selectedCancelReason, setSelectedCancelReason] = useState<string | null>(null)
  const [cancelling,           setCancelling]           = useState(false)

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
      .catch(() => message.error('Failed to load Purchase Requisition.'))
      .finally(() => setLoadingPr(false))
  }, [prNo]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Derived ────────────────────────────────────────────────────────────────
  const isLocked   = LOCKED_STATUSES.has(savedPr?.prStatus ?? '')
  const statusInfo = savedPr
    ? (PR_STATUS_LABELS[savedPr.prStatus] ?? { label: savedPr.prStatus, color: 'default' as const })
    : null
  const pageBusy = saving || cancelling
  const canSave  = items.length > 0 && !pageBusy && !isLocked

  // ── Document summary ────────────────────────────────────────────────────────
  const validCount = useMemo(() => items.filter((l) => l.itemCode.trim() !== '').length, [items])
  const totalQty   = useMemo(() => items.reduce((s, l) => s + l.qtyRequired, 0), [items])
  const subtotal   = useMemo(() => items.reduce((s, l) => {
    const r = l.rate && l.rate > 0 ? l.rate : (l.lastPoRate ?? 0)
    return s + r * l.qtyRequired
  }, 0), [items])

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
    saleOrderDate: values.saleOrderDate ? values.saleOrderDate.format('YYYY-MM-DD') : null,
    lines: items.map((l) => ({
      itemCode: l.itemCode, itemName: l.itemName || undefined, uom: l.uom || undefined,
      rate: l.rate ?? undefined, currentStock: l.currentStock ?? undefined,
      qtyRequired: l.qtyRequired, requiredDate: l.requiredDate ?? null,
      approxCost: l.approxCost ?? undefined, machineNo: l.machineNo || undefined,
      remarks: l.remarks || undefined, place: l.place || undefined,
      costCentreCode: l.costCentreCode || undefined, budgetGroupCode: l.budgetGroupCode || undefined,
      subCostCode: l.subCostCode ?? undefined, isSample: l.isSample,
      lastPoRate: l.lastPoRate ?? undefined, lastPoDate: l.lastPoDate ?? undefined,
      lastPoSupplierCode: l.lastPoSupplierCode ?? undefined, lastPoSupplierName: l.lastPoSupplierName ?? undefined,
      categoryCode: l.categoryCode || undefined, model: l.model || undefined,
      maxCost: l.maxCost ?? undefined, drawNo: l.drawNo || undefined, catNo: l.catNo || undefined,
    })),
  })

  const handleUpdate = async () => {
    if (items.length === 0) { void message.error('At least one item is required.'); return }
    await lineTableRef.current?.flushEdit()
    setSaving(true)
    try {
      const values = headerForm.getFieldsValue()
      await purchaseRequisitionApi.update(prNo, buildPayload(values))
      void message.success(`PR ${prNo} updated successfully.`)
      navigate('/purchase/requisition-v2')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to update.')
    } finally {
      setSaving(false)
    }
  }

  const handleCancelPr = async () => {
    if (!selectedCancelReason) { void message.error('Please select a reason.'); return }
    setCancelling(true)
    try {
      await purchaseRequisitionApi.deletePR(prNo, selectedCancelReason)
      void message.success(`PR ${prNo} cancelled.`)
      navigate('/purchase/requisition-v2')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to cancel.')
    } finally {
      setCancelling(false)
      setCancelModalOpen(false)
    }
  }

  if (lookupsLoading || loadingPr) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading…">
          <Skeleton active paragraph={{ rows: 6 }} />
        </Spin>
      </div>
    )
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', minHeight: '100%' }}>

      {/* ══ STICKY TITLE BAR ════════════════════════════════════════════════ */}
      <PageTitleBar
        breadcrumb={[
          { title: <Link to="/purchase/requisition-v2" style={{ color: '#9ca3af', fontSize: 11 }}>Requisitions</Link> },
          { title: <span style={{ color: '#6b7280', fontSize: 11 }}>Edit PR #{prNo}</span> },
        ]}
        title={`Edit Purchase Requisition — PR #${prNo}`}
        statusTag={statusInfo ?? undefined}
        onBack={() => navigate('/purchase/requisition-v2')}
        actions={
          <Space>
            {!isLocked && (
              <Button
                type="primary"
                icon={<SaveOutlined />}
                loading={saving}
                disabled={!canSave}
                onClick={() => void handleUpdate()}
                style={{
                  height: 34, fontWeight: 600, paddingInline: 20,
                  background: canSave ? 'linear-gradient(135deg, #1677ff 0%, #0958d9 100%)' : undefined,
                  border: 'none',
                  boxShadow: canSave ? '0 4px 12px rgba(22,119,255,0.38), 0 1px 4px rgba(22,119,255,0.20)' : 'none',
                }}
              >
                Save Changes
              </Button>
            )}
          </Space>
        }
      />

      {/* ══ BODY ════════════════════════════════════════════════════════════ */}
      <div style={{ flex: 1, padding: '20px 24px', paddingBottom: 16 }}>

        {/* ── Full-width alerts ─────────────────────────────────────────── */}
        {isLocked && (
          <Alert
            type="warning"
            showIcon
            message={`This PR is ${statusInfo?.label ?? savedPr?.prStatus} and cannot be edited.`}
            style={{ marginBottom: 12 }}
          />
        )}
        {warnings.map((warn) => (
          <Alert key={warn} type="warning" showIcon message={warn} closable style={{ marginBottom: 8 }} />
        ))}

        {/* ── Side-by-side layout ───────────────────────────────────────── */}
        <div style={{ display: 'flex', gap: 16, alignItems: 'flex-start' }}>

          {/* ── LEFT: Document header + summary panel ─────────────────── */}
          <div style={{ width: 380, flexShrink: 0 }}>
            <Skeleton active loading={!lookupsLoaded}>
              <PRHeaderCardsV2
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
                approvalVisible={preCheckResult?.approvalStatusVisible ?? false}
                level1ApproverName={savedPr?.level1ApproverName ?? null}
                level1ApprovedAt={savedPr?.level1ApprovedAt ?? null}
                level2ApproverName={savedPr?.level2ApproverName ?? null}
                level2ApprovedAt={savedPr?.level2ApprovedAt ?? null}
                finalApproverName={savedPr?.finalApproverName ?? null}
                finalApprovedAt={savedPr?.finalApprovedAt ?? null}
                createdBy={savedPr?.createdBy ?? null}
              />
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
              depCode={savedPr?.depCode ?? ''}
              prDate={savedPr?.prDate}
              preCheckResult={preCheckResult}
              disabled={pageBusy || isLocked}
              savedPrNo={savedPr?.prNo}
              deleteReasons={cancelReasons}
              onAdd={(item) => setItems((prev) => [...prev, item])}
              onUpdate={(updated) => setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))}
              onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
              onWarning={(msg) => {
                setWarnings((prev) => [...new Set([...prev, msg])])
                setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
              }}
            />
          </div>

        </div>
      </div>

      {/* ── Cancel PR modal ─────────────────────────────────────────────── */}
      <Modal
        title={`Delete PR #${prNo}`}
        open={cancelModalOpen}
        onCancel={() => setCancelModalOpen(false)}
        onOk={() => void handleCancelPr()}
        okText="Confirm Deletion"
        okButtonProps={{ danger: true, loading: cancelling }}
        destroyOnClose
      >
        <p style={{ marginBottom: 12 }}>This will permanently delete the requisition. Select a reason:</p>
        <Select
          placeholder="Select reason…"
          value={selectedCancelReason}
          onChange={setSelectedCancelReason}
          options={cancelReasons.map((r) => ({ value: r.reasonCode, label: `${r.reasonCode} – ${r.reasonDesc}` }))}
          style={{ width: '100%' }}
        />
      </Modal>
    </div>
  )
}
