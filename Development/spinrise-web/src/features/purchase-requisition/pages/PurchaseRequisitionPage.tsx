import { useEffect, useState } from 'react'
import { Alert, App, Breadcrumb, Button, Card, Form, Skeleton, Space, Spin, Typography } from 'antd'
import { ArrowLeftOutlined, ExclamationCircleOutlined } from '@ant-design/icons'
import { Link, useNavigate } from 'react-router-dom'

import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { useLookupStore } from '../store/useLookupStore'
import { PRActionBar } from '../components/PRActionBar'
import { PRHeader } from '../components/PRHeader'
import { PRItemGrid } from '../components/PRItemGrid'
import { PRItemModal } from '../components/PRItemModal'
import { purchaseReportService } from '@/features/purchase-reports/services/purchaseReportService'

import type { PRHeaderFormValues, PRLineFormItem, CreatePRRequest } from '../types'

export default function PurchaseRequisitionPage() {
  const { message } = App.useApp()
  const navigate    = useNavigate()
  const [form] = Form.useForm<PRHeaderFormValues>()

  // Division code comes from the authenticated user's JWT — never from UI input.
  const divCode = useAuthStore((s) => s.user?.divCode ?? '')

  // ── PR state ──────────────────────────────────────────────────────────────
  const [savedPrNo, setSavedPrNo] = useState<number | null>(null)
  const [lines, setLines]               = useState<PRLineFormItem[]>([])
  const [saving, setSaving]             = useState(false)
  const [deleting, setDeleting]         = useState(false)

  // ── Pre-check warning ─────────────────────────────────────────────────────
  const [preCheckMsg, setPreCheckMsg]   = useState<string | null>(null)
  const [preCheckLoading, setPreCheckLoading] = useState(false)

  // ── Item modal ────────────────────────────────────────────────────────────
  const [itemModalOpen, setItemModalOpen] = useState(false)
  const [editingLine, setEditingLine]     = useState<PRLineFormItem | null>(null)

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    departments,
    employees,
    poTypes,
    machines,
    subCosts,
    loaded:   lookupsLoaded,
    loading:  lookupsLoading,
    error:    lookupsError,
    loadAll,
  } = useLookupStore()

  useEffect(() => {
    void loadAll()
  }, [loadAll])

  // Run pre-checks once divCode is available
  useEffect(() => {
    if (divCode) void runPreChecks()
  }, [divCode]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Pre-checks ────────────────────────────────────────────────────────────
  // divCode is injected by the server from JWT; no parameter needed here.
  const runPreChecks = async () => {
    setPreCheckLoading(true)
    try {
      await purchaseRequisitionApi.preChecks()
      setPreCheckMsg(null)
    } catch {
      // Non-critical — silently ignore pre-check failures
    } finally {
      setPreCheckLoading(false)
    }
  }

  // ── Save ──────────────────────────────────────────────────────────────────
  const handleSave = async () => {
    let values: PRHeaderFormValues
    try {
      values = await form.validateFields()
    } catch {
      message.error('Please complete all required fields before saving.')
      return
    }

    if (lines.length === 0) {
      message.error('At least one line item is required.')
      return
    }

    setSaving(true)
    try {
      const payload: CreatePRRequest = {
        prDate: values.prDate.format('YYYY-MM-DD'),
        depCode:       values.depCode,
        section:       values.section?.trim()       || undefined,
        subCost:       values.subCost ? Number(values.subCost) : undefined,
        iType:         values.iType?.trim()         || undefined,
        reqName:       values.reqName?.trim()       || undefined,
        refNo:         values.refNo?.trim()          || undefined,
        poGroupCode:   values.poGroupCode?.trim()   || undefined,
        scopeCode:     values.scopeCode?.trim()     || undefined,
        saleOrderNo:   values.saleOrderNo?.trim()   || undefined,
        saleOrderDate: values.saleOrderDate
          ? values.saleOrderDate.format('YYYY-MM-DD')
          : null,
        lines: lines.map((l) => ({
          itemCode:       l.itemCode,
          qtyRequired:    l.qtyRequired,
          requiredDate:   l.requiredDate ?? null,
          place:          l.place          || undefined,
          approxCost:     l.approxCost     ?? null,
          remarks:        l.remarks        || undefined,
          machineNo:      l.machineNo      || undefined,
          costCentreCode: l.costCentreCode || undefined,
          budgetGroupCode:l.budgetGroupCode|| undefined,
          isSample:       l.isSample,
        })),
      }

      const result = await purchaseRequisitionApi.create(payload)
      setSavedPrNo(result.prNo)
      message.success(`Purchase Requisition ${result.prNo} created successfully.`)
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : 'Failed to save. Please try again.'
      message.error(msg)
    } finally {
      setSaving(false)
    }
  }

  // ── Delete PR ─────────────────────────────────────────────────────────────
  const handleDelete = async () => {
    if (!savedPrNo) return
    setDeleting(true)
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, '')
      message.success(`PR ${savedPrNo} deleted.`)
      // Reset form
      form.resetFields()
      setLines([])
      setSavedPrNo(null)
      setPreCheckMsg(null)
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : 'Failed to delete.'
      message.error(msg)
    } finally {
      setDeleting(false)
    }
  }

  // ── Print ─────────────────────────────────────────────────────────────────
  const handlePrint = async (format: 'pdf' | 'excel' | 'csv') => {
    if (!savedPrNo) return
    // Find the numeric id — for now we re-fetch the PR to get the id
    // In a real scenario the id would be stored alongside savedPrNo
    try {
      message.loading({ content: `Generating ${format.toUpperCase()}…`, key: 'print' })
      const pr = await purchaseRequisitionApi.getById(savedPrNo)
      const today = new Date().toISOString().split('T')[0]
      const { blob, fileName } = format === 'pdf'
        ? await purchaseReportService.downloadPurchaseRequisitionQuestPdf(pr.id, today, today)
        : await purchaseReportService.downloadPurchaseRequisitionReport(pr.id, format)
      const url = URL.createObjectURL(blob)
      const a = document.createElement('a')
      a.href = url
      a.download = fileName
      a.click()
      URL.revokeObjectURL(url)
      message.success({ content: `Downloaded ${fileName}`, key: 'print' })
    } catch {
      message.error({ content: 'Failed to generate report.', key: 'print' })
    }
  }

  // ── Item modal handlers ───────────────────────────────────────────────────
  const openAddModal = () => {
    setEditingLine(null)
    setItemModalOpen(true)
  }

  const openEditModal = (line: PRLineFormItem) => {
    setEditingLine(line)
    setItemModalOpen(true)
  }

  const handleItemSave = (item: PRLineFormItem) => {
    setLines((prev) =>
      prev.some((l) => l.key === item.key)
        ? prev.map((l) => (l.key === item.key ? item : l))
        : [...prev, item],
    )
    setItemModalOpen(false)
    setEditingLine(null)
  }

  const handleItemDelete = (key: string) => {
    setLines((prev) => prev.filter((l) => l.key !== key))
  }

  // ── Derived state ─────────────────────────────────────────────────────────
  const isEditMode  = savedPrNo !== null
  const canSave     = !saving && !deleting && lines.length > 0
  const existingCodes = lines.map((l) => l.itemCode)

  // ── Render ────────────────────────────────────────────────────────────────
  if (lookupsLoading) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading reference data…">
          <Skeleton active paragraph={{ rows: 6 }} />
        </Spin>
      </div>
    )
  }

  return (
    <div style={{ paddingBottom: 40 }}>
      {/* ── Sticky action bar ──────────────────────────────────────────── */}
      <PRActionBar
        prNo={savedPrNo}
        isEditMode={isEditMode}
        saving={saving || deleting}
        canSave={canSave}
        onSave={() => void handleSave()}
        onAddItem={openAddModal}
        onDelete={isEditMode ? () => void handleDelete() : undefined}
        onPrint={isEditMode ? (fmt) => void handlePrint(fmt) : undefined}
      />

      <div style={{ padding: '20px 24px' }}>

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

        {/* ── Lookup error ───────────────────────────────────────────────── */}
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

        {/* ── Pre-check warning ──────────────────────────────────────────── */}
        {preCheckMsg && (
          <Alert
            type="warning"
            showIcon
            icon={<ExclamationCircleOutlined />}
            message="Pending Indent Warning"
            description={preCheckMsg}
            closable
            onClose={() => setPreCheckMsg(null)}
            style={{ marginBottom: 16 }}
          />
        )}

        {/* ── Saved PR confirmation ──────────────────────────────────────── */}
        {savedPrNo && (
          <Alert
            type="success"
            showIcon
            message={
              <Space>
                <span>Purchase Requisition</span>
                <Typography.Text strong>{savedPrNo}</Typography.Text>
                <span>has been saved.</span>
              </Space>
            }
            style={{ marginBottom: 16 }}
          />
        )}

        {/* ── Header form ────────────────────────────────────────────────── */}
        <Skeleton active loading={!lookupsLoaded && !lookupsError}>
          <PRHeader
            form={form}
            divCode={divCode}
            departments={departments}
            employees={employees}
            poTypes={poTypes}
            subCosts={subCosts}
            disabled={deleting}
          />
        </Skeleton>

        {/* ── Items section ──────────────────────────────────────────────── */}
        <Card size="small">
          <PRItemGrid
            lines={lines}
            onAddItem={openAddModal}
            onEditItem={openEditModal}
            onDeleteItem={handleItemDelete}
            disabled={deleting}
          />
        </Card>

        {/* Pre-check spinner — unobtrusive */}
        {preCheckLoading && (
          <Typography.Text type="secondary" style={{ marginTop: 8, display: 'block' }}>
            <Spin size="small" style={{ marginRight: 6 }} />
            Running pre-checks…
          </Typography.Text>
        )}
      </div>

      {/* ── Item add/edit modal ─────────────────────────────────────────── */}
      <PRItemModal
        open={itemModalOpen}
        editingItem={editingLine}
        machines={machines}
        existingItemCodes={existingCodes}
        onSave={handleItemSave}
        onCancel={() => {
          setItemModalOpen(false)
          setEditingLine(null)
        }}
      />
    </div>
  )
}

