import { useEffect, useState } from 'react'
import { Alert, App, Breadcrumb, Button, Card, Form, Modal, Select, Skeleton, Space, Spin, Typography } from 'antd'
import { ArrowLeftOutlined } from '@ant-design/icons'
import { Link, useNavigate } from 'react-router-dom'

import { useAuthStore }            from '@/features/auth/store/useAuthStore'
import { purchaseRequisitionApi }  from '../api/purchaseRequisitionApi'
import { useLookupStore }          from '../store/useLookupStore'
import { purchaseReportService }   from '@/features/purchase-reports/services/purchaseReportService'
import { PRHeaderV2 }    from '../components/v2/PRHeaderV2'
import { PRItemFormV2 }  from '../components/v2/PRItemFormV2'
import { PRItemTableV2 } from '../components/v2/PRItemTableV2'
import { PRActionBarV2 } from '../components/v2/PRActionBarV2'
import type { PrintFormat } from '../components/v2/PRActionBarV2'

import type { PRHeaderFormValues, PRLineFormItem, PRLineResponse, CreatePRRequest, PreCheckResult } from '../types'

export default function PurchaseRequisitionV2Page() {
  const { message } = App.useApp()
  const navigate    = useNavigate()
  const [headerForm] = Form.useForm<PRHeaderFormValues>()

  const divCode = useAuthStore((s) => s.user?.divCode ?? '')

  // ── State ─────────────────────────────────────────────────────────────────
  const [isHeaderSaved, setIsHeaderSaved] = useState(false)
  const [items,         setItems]         = useState<PRLineFormItem[]>([])
  const [editingKey,    setEditingKey]    = useState<string | null>(null)

  const [savedPrNo, setSavedPrNo] = useState<number | null>(null)
  const [prStatus,  setPrStatus]  = useState<string | null>(null)
  const [saving,    setSaving]    = useState(false)
  const [deleting,  setDeleting]  = useState(false)

  const [preCheckResult,  setPreCheckResult]  = useState<PreCheckResult | null>(null)
  const [preCheckMsg,     setPreCheckMsg]     = useState<string | null>(null)
  const [preCheckLoading, setPreCheckLoading] = useState(false)

  const [deleteReasons,   setDeleteReasons]   = useState<Array<{ reasonCode: string; reasonDesc: string }>>([])
  const [selectedDeleteReason, setSelectedDeleteReason] = useState<string | null>(null)
  const [deleteModalOpen, setDeleteModalOpen] = useState(false)

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    departments,
    employees,
    poTypes,
    machines,
    subCosts,
    loaded:  lookupsLoaded,
    loading: lookupsLoading,
    error:   lookupsError,
    loadAll,
  } = useLookupStore()

  useEffect(() => { void loadAll() }, [loadAll])

  useEffect(() => {
    if (divCode) void runPreChecks()
  }, [divCode]) // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    const loadDeleteReasons = async () => {
      try {
        const reasons = await purchaseRequisitionApi.getDeleteReasons()
        setDeleteReasons(reasons)
      } catch {
        /* non-critical */
      }
    }
    void loadDeleteReasons()
  }, [])

  // ── Pre-checks ────────────────────────────────────────────────────────────
  const runPreChecks = async () => {
    setPreCheckLoading(true)
    try {
      const result = await purchaseRequisitionApi.preChecks()
      setPreCheckResult(result)

      // Surface blocking setup failures so the user knows before they start
      if (!result.itemMasterExists) {
        setPreCheckMsg('Item Master is not configured. Contact your administrator.')
      } else if (!result.departmentExists) {
        setPreCheckMsg('No departments are configured for this division. Contact your administrator.')
      } else if (!result.docNumberConfigured) {
        setPreCheckMsg('Document number series for Purchase Requisition is not configured. Contact your administrator.')
      } else {
        setPreCheckMsg(null)
      }
    } catch { /* non-critical */ }
    finally { setPreCheckLoading(false) }
  }

  // ── Header save / unlock ──────────────────────────────────────────────────
  const handleSaveHeader = async () => {
    try {
      await headerForm.validateFields()
      setIsHeaderSaved(true)
    } catch {
      // Ant Design shows inline field errors automatically
    }
  }

  const handleEditHeader = () => {
    setIsHeaderSaved(false)
  }

  // ── Item CRUD ─────────────────────────────────────────────────────────────
  const handleItemAdd = (item: PRLineFormItem) => {
    setItems((prev) => [...prev, item])
  }

  const handleItemUpdate = (updated: PRLineFormItem) => {
    setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))
    setEditingKey(null)
  }

  const handleStartEdit = (item: PRLineFormItem) => {
    setEditingKey(item.key)
  }

  const handleCancelEdit = () => {
    setEditingKey(null)
  }

  const handleItemDelete = (key: string) => {
    if (editingKey === key) setEditingKey(null)
    setItems((prev) => prev.filter((l) => l.key !== key))
  }

  // ── Map saved line response back to form state ────────────────────────────
  const mapSavedLine = (line: PRLineResponse): PRLineFormItem => ({
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
    model:              '',
    maxCost:            null,
    rate:               line.rate               ?? null,
  })

  // ── Build API payload ─────────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): CreatePRRequest => ({
    prDate:        values.prDate.format('YYYY-MM-DD'),
    depCode:       values.depCode,
    section:       values.section?.trim()       || undefined,
    iType:         values.iType?.trim()         || undefined,
    reqName:       values.reqName?.trim()       || undefined,
    refNo:         values.refNo?.trim()         || undefined,
    poGroupCode:   values.poGroupCode?.trim()   || undefined,
    scopeCode:     values.scopeCode?.trim()     || undefined,
    saleOrderNo:   values.saleOrderNo?.trim()   || undefined,
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
      budgetGroupCode:    l.budgetGroupCode      || undefined,
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

  // ── Save Draft ────────────────────────────────────────────────────────────
  const handleSaveDraft = async () => {
    if (!isHeaderSaved) {
      message.error('Save the header first.')
      return
    }
    if (items.length === 0) {
      message.error('At least one item is required.')
      return
    }
    setSaving(true)
    try {
      const values = headerForm.getFieldsValue()
      const result = await purchaseRequisitionApi.create(buildPayload(values))
      setSavedPrNo(result.prNo)
      setPrStatus('OPEN')
      const fullPr = await purchaseRequisitionApi.getById(result.prNo)
      if (fullPr?.lines) {
        setItems(fullPr.lines.map(mapSavedLine))
      }
      message.success(`PR ${result.prNo} saved.`)
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to save draft.')
    } finally {
      setSaving(false)
    }
  }

  // ── Submit ────────────────────────────────────────────────────────────────
  const handleSubmit = async () => {
    if (!isHeaderSaved) {
      message.error('Save the header first.')
      return
    }
    if (items.length === 0) {
      message.error('At least one item is required.')
      return
    }
    setSaving(true)
    try {
      const values = headerForm.getFieldsValue()
      const result = await purchaseRequisitionApi.create(buildPayload(values))
      setSavedPrNo(result.prNo)
      setPrStatus('OPEN')
      const fullPr = await purchaseRequisitionApi.getById(result.prNo)
      if (fullPr?.lines) {
        setItems(fullPr.lines.map(mapSavedLine))
      }
      message.success(`Purchase Requisition ${result.prNo} submitted successfully.`)
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to submit.')
    } finally {
      setSaving(false)
    }
  }

  // ── Delete PR (with reason selection) ─────────────────────────────────────
  const handleDeleteClick = () => {
    if (!savedPrNo) return
    setSelectedDeleteReason(null)
    setDeleteModalOpen(true)
  }

  const handleDeleteConfirm = async () => {
    if (!selectedDeleteReason || !savedPrNo) {
      message.error('Please select a delete reason.')
      return
    }
    setDeleteModalOpen(false)
    setDeleting(true)
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, selectedDeleteReason)
      void message.success(`PR ${savedPrNo} deleted.`)
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to delete.')
    } finally {
      setDeleting(false)
    }
  }

  // ── Print ─────────────────────────────────────────────────────────────────
  const handlePrint = async (format: PrintFormat) => {
    if (!savedPrNo) return
    try {
      message.loading({ content: `Generating ${format.toUpperCase()}…`, key: 'print' })
      const pr = await purchaseRequisitionApi.getById(savedPrNo)

      let blob: Blob
      let fileName: string

      if (format === 'pdf') {
        // Use the PR's own financial year as the date scope
        const prDate   = new Date(pr.prDate)
        const fyYear   = prDate.getMonth() >= 3 ? prDate.getFullYear() : prDate.getFullYear() - 1
        const startDate = `${fyYear}-04-01`
        const endDate   = `${fyYear + 1}-03-31`
        ;({ blob, fileName } = await purchaseReportService.downloadPurchaseRequisitionQuestPdf(pr.id, startDate, endDate))
      } else {
        ;({ blob, fileName } = await purchaseReportService.downloadPurchaseRequisitionReport(pr.id, format))
      }

      const url = URL.createObjectURL(blob)
      const a   = document.createElement('a')
      a.href     = url
      a.download = fileName
      a.click()
      URL.revokeObjectURL(url)
      message.success({ content: `Downloaded ${fileName}`, key: 'print' })
    } catch {
      message.error({ content: 'Failed to generate report.', key: 'print' })
    }
  }

  // ── Derived ───────────────────────────────────────────────────────────────
  const editingItem       = items.find((l) => l.key === editingKey) ?? null
  const existingItemCodes = items
    .filter((l) => l.key !== editingKey)   // exclude the row being edited
    .map((l) => l.itemCode)
  const pageBusy          = saving || deleting
  const canSave           = isHeaderSaved && items.length > 0 && !pageBusy

  // ── Loading skeleton ──────────────────────────────────────────────────────
  if (lookupsLoading) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading reference data…">
          <Skeleton active paragraph={{ rows: 6 }} />
        </Spin>
      </div>
    )
  }

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <div style={{ display: 'flex', flexDirection: 'column', minHeight: '100%' }}>
      <div style={{ flex: 1, padding: '20px 24px', paddingBottom: 8 }}>

        {/* Back nav */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 16 }}>
          <Button
            type="text" size="small" icon={<ArrowLeftOutlined />}
            onClick={() => navigate(-1)} style={{ color: '#595959' }}
          >
            Back
          </Button>
          <Breadcrumb items={[
            { title: <Link to="/purchase/requisition">Requisitions</Link> },
            { title: 'New PR' },
          ]} />
        </div>

        {/* Alerts */}
        {lookupsError && (
          <Alert
            type="error"
            showIcon
            message={lookupsError}
            style={{ marginBottom: 16 }}
            action={
              <Typography.Link onClick={() => void loadAll()}>Retry</Typography.Link>
            }
          />
        )}

        {preCheckMsg && (
          <Alert
            type="error"
            showIcon
            message="Setup Incomplete"
            description={preCheckMsg}
            style={{ marginBottom: 16 }}
          />
        )}

        {savedPrNo && (
          <Alert
            type="success"
            showIcon
            message={`Purchase Requisition ${savedPrNo} saved successfully.`}
            style={{ marginBottom: 16 }}
          />
        )}

        {preCheckLoading && (
          <Typography.Text type="secondary" style={{ display: 'block', marginBottom: 12 }}>
            <Spin size="small" style={{ marginRight: 6 }} />
            Running pre-checks…
          </Typography.Text>
        )}

        {/* Header */}
        <Skeleton active loading={!lookupsLoaded && !lookupsError}>
          <PRHeaderV2
            form={headerForm}
            departments={departments}
            employees={employees}
            poTypes={poTypes}
            isHeaderSaved={isHeaderSaved}
            onSaveHeader={() => void handleSaveHeader()}
            onEditHeader={handleEditHeader}
            disabled={pageBusy}
            pendingPoDetailsEnabled={preCheckResult?.pendingPoDetailsEnabled ?? false}
            purTypeFlgEnabled={preCheckResult?.purTypeFlgEnabled ?? false}
          />
        </Skeleton>

        {/* Item section — gated behind header save */}
        {isHeaderSaved ? (
          <Space direction="vertical" style={{ width: '100%' }} size={16}>
            {/* Inline add/edit form */}
            <PRItemFormV2
              machines={machines}
              subCosts={subCosts}
              headerForm={headerForm}
              editingItem={editingItem}
              existingItemCodes={existingItemCodes}
              onAdd={handleItemAdd}
              onUpdate={handleItemUpdate}
              onCancelEdit={handleCancelEdit}
              disabled={pageBusy}
              pendingIndentCheckEnabled={preCheckResult?.pendingIndentCheckEnabled ?? false}
              pendingPRCheckEnabled={preCheckResult?.pendingPRCheckEnabled ?? false}
            />

            {/* Items table */}
            {items.length > 0 && (
              <Card size="small" title={
                <Space>
                  Line Items
                  <Typography.Text type="secondary" style={{ fontWeight: 'normal', fontSize: 12 }}>
                    ({items.length})
                  </Typography.Text>
                </Space>
              }>
                <PRItemTableV2
                  lines={items}
                  editingKey={editingKey}
                  onEdit={handleStartEdit}
                  onDelete={handleItemDelete}
                  disabled={pageBusy}
                />
              </Card>
            )}
          </Space>
        ) : (
          <Card
            size="small"
            style={{ textAlign: 'center', color: '#8c8c8c', padding: 32 }}
          >
            <Typography.Text type="secondary">
              Complete and save the header to start adding items.
            </Typography.Text>
          </Card>
        )}
      </div>

      {/* Sticky footer */}
      <PRActionBarV2
        prNo={savedPrNo}
        prStatus={prStatus}
        saving={pageBusy}
        canSave={canSave}
        onSaveDraft={() => void handleSaveDraft()}
        onSubmit={() => void handleSubmit()}
        onDelete={savedPrNo ? handleDeleteClick : undefined}
        onPrint={savedPrNo ? (fmt) => void handlePrint(fmt) : undefined}
      />

      {/* Delete confirmation modal */}
      <Modal
        title="Delete Purchase Requisition"
        open={deleteModalOpen}
        onCancel={() => setDeleteModalOpen(false)}
        onOk={() => void handleDeleteConfirm()}
        okText="Delete"
        okButtonProps={{ danger: true }}
        loading={deleting}
      >
        <div style={{ marginBottom: 16 }}>
          <p>Please select a delete reason:</p>
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
        </div>
      </Modal>
    </div>
  )
}
