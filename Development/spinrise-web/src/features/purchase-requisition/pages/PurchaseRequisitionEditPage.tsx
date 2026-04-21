import { useEffect, useState } from 'react'
import {
  Alert, App, Breadcrumb, Button, Card, Form, Modal,
  Select, Skeleton, Space, Spin, Tag, Typography, theme,
} from 'antd'
import {
  ArrowLeftOutlined,
  CloseCircleOutlined,
  SaveOutlined,
} from '@ant-design/icons'
import { Link, useNavigate, useParams } from 'react-router-dom'
import dayjs from 'dayjs'

import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { useLookupStore } from '../store/useLookupStore'
import { PRHeaderV2 } from '../components/v2/PRHeaderV2'
import { PRItemFormV2 } from '../components/v2/PRItemFormV2'
import { PRItemTableV2 } from '../components/v2/PRItemTableV2'
import { PR_STATUS_LABELS } from '../types'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  PreCheckResult,
  UpdatePRRequest,
} from '../types'

// ── Constants ─────────────────────────────────────────────────────────────────

const LOCKED_STATUSES = new Set(['APPROVED', 'RECEIVED', 'CONVERTED', 'CANCELLED'])

// ── Helpers ───────────────────────────────────────────────────────────────────

function mapLine(line: PRLineResponse): PRLineFormItem {
  return {
    key:                crypto.randomUUID(),
    itemCode:           line.itemCode,
    itemName:           line.itemName           ?? '',
    uom:                line.uom                ?? '',
    currentStock:       line.currentStock       ?? null,
    qtyRequired:        line.qtyRequired,
    requiredDate:       line.requiredDate        ?? null,
    place:              line.place               ?? '',
    approxCost:         line.approxCost          ?? null,
    remarks:            line.remarks             ?? '',
    machineNo:          line.machineNo           ?? '',
    costCentreCode:     line.costCentreCode      ?? '',
    budgetGroupCode:    line.budgetGroupCode     ?? '',
    subCostCode:        line.subCostCode         ?? null,
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
  const { message } = App.useApp()
  const { token } = theme.useToken()
  const [headerForm] = Form.useForm<PRHeaderFormValues>()

  // ── State ──────────────────────────────────────────────────────────────────
  const [loadingPr,    setLoadingPr]    = useState(true)
  const [savedPr,      setSavedPr]      = useState<PRHeaderResponse | null>(null)
  const [items,        setItems]        = useState<PRLineFormItem[]>([])
  const [editingKey,   setEditingKey]   = useState<string | null>(null)
  const [isHeaderSaved, setIsHeaderSaved] = useState(false)
  const [saving,       setSaving]       = useState(false)

  const [preCheckResult, setPreCheckResult] = useState<PreCheckResult | null>(null)

  const [cancelReasons,       setCancelReasons]       = useState<Array<{ reasonCode: string; reasonDesc: string }>>([])
  const [cancelModalOpen,     setCancelModalOpen]     = useState(false)
  const [selectedCancelReason, setSelectedCancelReason] = useState<string | null>(null)
  const [cancelling,          setCancelling]          = useState(false)

  // ── Lookups ────────────────────────────────────────────────────────────────
  const {
    departments, employees, poTypes, machines, subCosts,
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
      .getById(prNo)
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
        setIsHeaderSaved(true)
      })
      .catch(() => message.error('Failed to load Purchase Requisition.'))
      .finally(() => setLoadingPr(false))
  }, [prNo]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Derived ────────────────────────────────────────────────────────────────
  const isLocked         = LOCKED_STATUSES.has(savedPr?.prStatus ?? '')
  const statusInfo       = savedPr
    ? (PR_STATUS_LABELS[savedPr.prStatus] ?? { label: savedPr.prStatus, color: 'default' as const })
    : null
  const pageBusy         = saving || cancelling
  const canSave          = isHeaderSaved && items.length > 0 && !pageBusy && !isLocked
  const editingItem      = items.find((l) => l.key === editingKey) ?? null
  const existingItemCodes = items
    .filter((l) => l.key !== editingKey)
    .map((l) => l.itemCode)

  // ── Build update payload ───────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): UpdatePRRequest => ({
    prNo,
    prDate:        values.prDate.format('YYYY-MM-DD'),
    depCode:       values.depCode,
    section:       values.section?.trim()      || undefined,
    iType:         values.iType?.trim()        || undefined,
    reqName:       values.reqName?.trim()      || undefined,
    refNo:         values.refNo?.trim()        || undefined,
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
      categoryCode:       l.categoryCode         || undefined,
      model:              l.model               || undefined,
      maxCost:            l.maxCost             ?? undefined,
    })),
  })

  // ── Handlers ───────────────────────────────────────────────────────────────
  const handleSaveHeader = async () => {
    try {
      await headerForm.validateFields()
      setIsHeaderSaved(true)
    } catch { /* inline field errors */ }
  }

  const handleUpdate = async () => {
    if (items.length === 0) { void message.error('At least one item is required.'); return }
    setSaving(true)
    try {
      const values = headerForm.getFieldsValue()
      await purchaseRequisitionApi.update(prNo, buildPayload(values))
      const refreshed = await purchaseRequisitionApi.getById(prNo)
      setSavedPr(refreshed)
      setItems(refreshed.lines.map(mapLine))
      void message.success(`PR ${prNo} updated successfully.`)
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
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to cancel.')
    } finally {
      setCancelling(false)
      setCancelModalOpen(false)
    }
  }

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
    <div style={{ display: 'flex', flexDirection: 'column', minHeight: '100%' }}>
      <div style={{ flex: 1, padding: '20px 24px', paddingBottom: 8 }}>

        {/* Back nav */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 16 }}>
          <Button
            type="text" size="small" icon={<ArrowLeftOutlined />}
            onClick={() => navigate('/purchase/requisition')}
            style={{ color: '#595959' }}
          >
            Back
          </Button>
          <Breadcrumb items={[
            { title: <Link to="/purchase/requisition">Requisitions</Link> },
            { title: `Edit PR #${prNo}` },
          ]} />
        </div>

        {/* Lock banner */}
        {isLocked && (
          <Alert
            type="warning"
            showIcon
            message={`This PR is ${statusInfo?.label ?? savedPr?.prStatus} and cannot be edited.`}
            style={{ marginBottom: 16 }}
          />
        )}

        {/* Header form */}
        <Skeleton active loading={!lookupsLoaded}>
          <PRHeaderV2
            form={headerForm}
            departments={departments}
            employees={employees}
            poTypes={poTypes}
            isHeaderSaved={isHeaderSaved}
            onSaveHeader={() => void handleSaveHeader()}
            onEditHeader={() => setIsHeaderSaved(false)}
            disabled={pageBusy || isLocked}
            purTypeFlgEnabled={preCheckResult?.purTypeFlgEnabled ?? false}
            approvalStatusVisible={preCheckResult?.approvalStatusVisible ?? false}
            budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
            savedPr={savedPr}
          />
        </Skeleton>

        {/* Item section */}
        {isHeaderSaved && (
          <Space direction="vertical" style={{ width: '100%' }} size={16}>
            {!isLocked && (
              <PRItemFormV2
                machines={machines}
                subCosts={subCosts}
                headerForm={headerForm}
                editingItem={editingItem}
                existingItemCodes={existingItemCodes}
                onAdd={(item) => setItems((prev) => [...prev, item])}
                onUpdate={(updated) => {
                  setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))
                  setEditingKey(null)
                }}
                onCancelEdit={() => setEditingKey(null)}
                disabled={pageBusy}
                pendingIndentCheckEnabled={preCheckResult?.pendingIndentCheckEnabled ?? false}
                pendingPRCheckEnabled={preCheckResult?.pendingPRCheckEnabled ?? false}
              />
            )}

            {items.length > 0 && (
              <Card
                size="small"
                title={
                  <Space>
                    Line Items
                    <Typography.Text type="secondary" style={{ fontWeight: 'normal', fontSize: 12 }}>
                      ({items.length})
                    </Typography.Text>
                  </Space>
                }
              >
                <PRItemTableV2
                  lines={items}
                  editingKey={editingKey}
                  onEdit={(item) => setEditingKey(item.key)}
                  onDelete={(key) => {
                    if (editingKey === key) setEditingKey(null)
                    setItems((prev) => prev.filter((l) => l.key !== key))
                  }}
                  disabled={pageBusy || isLocked}
                />
              </Card>
            )}
          </Space>
        )}
      </div>

      {/* Sticky footer */}
      <div
        style={{
          position: 'sticky',
          bottom: 0,
          zIndex: 100,
          background: token.colorBgContainer,
          borderTop: `1px solid ${token.colorBorderSecondary}`,
          padding: '10px 24px',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-between',
          boxShadow: '0 -2px 8px rgba(0,0,0,0.06)',
        }}
      >
        <Space size={8}>
          <Typography.Title level={5} style={{ margin: 0 }}>
            PR #{prNo}
          </Typography.Title>
          {statusInfo && (
            <Tag color={statusInfo.color} style={{ marginLeft: 4 }}>
              {statusInfo.label}
            </Tag>
          )}
        </Space>

        <Space>
          {!isLocked && savedPr?.prStatus === 'OPEN' && (
            <Button
              icon={<CloseCircleOutlined />}
              danger
              disabled={pageBusy}
              onClick={() => { setSelectedCancelReason(null); setCancelModalOpen(true) }}
            >
              Cancel PR
            </Button>
          )}
          {!isLocked && (
            <Button
              type="primary"
              icon={<SaveOutlined />}
              loading={saving}
              disabled={!canSave}
              onClick={() => void handleUpdate()}
            >
              Save Changes
            </Button>
          )}
        </Space>
      </div>

      {/* Cancel PR modal */}
      <Modal
        title={`Cancel PR #${prNo}`}
        open={cancelModalOpen}
        onCancel={() => setCancelModalOpen(false)}
        onOk={() => void handleCancelPr()}
        okText="Confirm Cancel"
        okButtonProps={{ danger: true, loading: cancelling }}
        destroyOnClose
      >
        <p style={{ marginBottom: 12 }}>
          This will permanently cancel the requisition. Select a reason:
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
