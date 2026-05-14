import { forwardRef, useCallback, useEffect, useImperativeHandle, useMemo, useRef, useState } from 'react'
import { AgGridReact } from 'ag-grid-react'
import type { ColDef, GridApi, GridReadyEvent, ICellRendererParams, CellStyle } from 'ag-grid-community'
import { AllCommunityModule, ModuleRegistry } from 'ag-grid-community'
import { spinriseGridTheme } from '@/shared/lib/agGridTheme'
import { generateUUID } from '@/shared/lib/uuid'
import {
  Alert, Button, Checkbox, Col, DatePicker, Drawer, Empty, Form, Input,
  InputNumber, Modal, Popconfirm, Row, Select, Space, Spin,
  Table, Tag, Tooltip, Typography,
} from 'antd'
import {
  AppstoreOutlined, ClockCircleOutlined, DeleteOutlined, EditOutlined,
  EyeOutlined, FileAddOutlined, HistoryOutlined, PlusOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { Dayjs } from 'dayjs'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import { purchaseRequisitionApi } from '@/features/purchase-requisition/api/purchaseRequisitionApi'
import { useLookupStore } from '@/features/purchase-requisition/store/useLookupStore'
import type { ItemLookup, MachineLookup, PRItemHistoryDto, PRLineFormItem, PreCheckResult } from '@/features/purchase-requisition/types'

ModuleRegistry.registerModules([AllCommunityModule])

// ── Types ─────────────────────────────────────────────────────────────────────

interface ItemSelectOption { value: string; label: string; _item: ItemLookup }

interface EntryFormValues {
  itemCode:     string
  qtyRequired:  number
  rate:         number | null
  requiredDate: Dayjs | null
  remarks:      string
  machineNo:    string | null
  subCostCode:  number | null
  drawNo:       string
  catNo:        string
  place:        string
  isSample:     boolean
}

export interface PRLineItemsTableV2Handle {
  flushEdit: () => Promise<void>
}

interface PRLineItemsTableV2Props {
  items:           PRLineFormItem[]
  machines:        MachineLookup[]
  depCode:         string
  prDate?:         string
  preCheckResult?: PreCheckResult | null
  disabled:        boolean
  savedPrNo?:      number
  deleteReasons?:  { reasonCode: string; reasonDesc: string }[]
  onAdd:           (item: PRLineFormItem) => void
  onUpdate:        (item: PRLineFormItem) => void
  onDelete:        (key: string) => void
  onWarning?:      (msg: string) => void
}

// ── Helpers ───────────────────────────────────────────────────────────────────

function emptyRow(): PRLineFormItem {
  return {
    key: generateUUID(),
    itemCode: '', itemName: '', uom: '',
    currentStock: null, minLevel: null, qtyRequired: 1, requiredDate: null,
    place: '', approxCost: null, remarks: '', machineNo: '',
    costCentreCode: '', budgetGroupCode: '', subCostCode: null,
    isSample: false, lastPoRate: null, lastPoDate: null,
    lastPoSupplierCode: null, lastPoSupplierName: null,
    categoryCode: '', model: '', maxCost: null, rate: null,
    drawNo: '', catNo: '',
  }
}

const CELL: CellStyle = { display: 'flex', alignItems: 'center' }

const LABEL_STYLE: React.CSSProperties = {
  fontWeight:    600,
  fontSize:      10,
  textTransform: 'uppercase',
  letterSpacing: '0.08em',
  color:         '#64748b',
}

// ── Component ─────────────────────────────────────────────────────────────────

export const PRLineItemsTableV2 = forwardRef<PRLineItemsTableV2Handle, PRLineItemsTableV2Props>(function PRLineItemsTableV2({
  items, machines, depCode, prDate, preCheckResult, disabled,
  savedPrNo, deleteReasons: _deleteReasons = [],
  onAdd, onUpdate, onDelete, onWarning,
}, ref) {
  const gridRef    = useRef<AgGridReact<PRLineFormItem>>(null)
  const apiRef     = useRef<GridApi<PRLineFormItem> | null>(null)
  const itemsRef   = useRef(items)
  itemsRef.current = items

  const [entryForm]  = Form.useForm<EntryFormValues>()
  const [drawerForm] = Form.useForm()

  // ── Entry form state ──────────────────────────────────────────────────────
  const [editingKey,    setEditingKey]    = useState<string | null>(null)
  const [itemMeta,      setItemMeta]      = useState<{ itemName: string; uom: string; currentStock: number | null; minLevel: number | null } | null>(null)
  const [lpoMeta,       setLpoMeta]       = useState<{ lastPoRate: number | null; lastPoDate: string | null; lastPoSupplierCode: string | null; lastPoSupplierName: string | null } | null>(null)
  const [itemOptions,   setItemOptions]   = useState<ItemSelectOption[]>([])
  const [itemSearching, setItemSearching] = useState(false)

  const [itemDrawNo, setItemDrawNo] = useState<string>('')
  const [itemCatNo,  setItemCatNo]  = useState<string>('')

  // ── Rate history modal ────────────────────────────────────────────────────
  const [historyOpen,    setHistoryOpen]    = useState(false)
  const [historyItem,    setHistoryItem]    = useState<string>('')
  const [historyData,    setHistoryData]    = useState<PRItemHistoryDto[]>([])
  const [historyLoading, setHistoryLoading] = useState(false)
  const [historyStock,   setHistoryStock]   = useState<number | null>(null)

  // ── Advanced drawer ───────────────────────────────────────────────────────
  const [drawerRow, setDrawerRow] = useState<PRLineFormItem | null>(null)

  // ── View-detail drawer (left, read-only) ──────────────────────────────────
  const [viewRow, setViewRow] = useState<PRLineFormItem | null>(null)

  // ── Per-line delete (for saved PRs) ──────────────────────────────────────
  const [lineDeleteRow, setLineDeleteRow] = useState<PRLineFormItem | null>(null)
  const [lineDeleting,  setLineDeleting]  = useState(false)

  const [flashKey, setFlashKey] = useState<string | null>(null)
  const [deptMachines, setDeptMachines] = useState<MachineLookup[]>([])

  const subCosts    = useLookupStore((s) => s.subCosts)
  const machineOpts = (depCode ? deptMachines : machines).map((m) => ({ value: m.macNo, label: `${m.macNo} – ${m.description}` }))
  const subCostOpts = subCosts.map((s) => ({ value: s.sccCode, label: `${s.sccCode} – ${s.sccName}` }))

  const [daysInput, setDaysInput] = useState<number | null>(null)

  const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)
  const seqRef      = useRef(0)

  useEffect(() => {
    if (flashKey) { const t = setTimeout(() => setFlashKey(null), 700); return () => clearTimeout(t) }
  }, [flashKey])

  useEffect(() => {
    if (!depCode) { setDeptMachines([]); return }
    void lookupApi.getMachines(depCode).then(setDeptMachines).catch(() => setDeptMachines([]))
  }, [depCode])

  // ── Item search ───────────────────────────────────────────────────────────
  const handleItemSearch = useCallback((q: string) => {
    if (!depCode) { setItemOptions([]); return }
    if (debounceRef.current) clearTimeout(debounceRef.current)
    if (q.trim().length < 2) { setItemOptions([]); return }
    const seq = ++seqRef.current
    setItemSearching(true)
    debounceRef.current = setTimeout(async () => {
      try {
        const results = await lookupApi.searchItems(q.trim(), depCode)
        if (seq !== seqRef.current) return
        setItemOptions(results.map((i) => ({
          value: i.itemCode,
          label: `${i.itemCode} – ${i.itemName}`,
          _item: i,
        })))
      } catch { if (seq === seqRef.current) setItemOptions([]) }
      finally  { if (seq === seqRef.current) setItemSearching(false) }
    }, 280)
  }, [depCode])

  const handleItemSelect = useCallback((_: string, option: unknown) => {
    const opt = option as ItemSelectOption
    const meta = {
      itemName:     opt._item.itemName,
      uom:          opt._item.uom,
      currentStock: opt._item.currentStock ?? null,
      minLevel:     opt._item.minLevel     ?? null,
    }
    setItemMeta(meta)
    setItemDrawNo(opt._item.drawNo ?? '')
    setItemCatNo(opt._item.catNo   ?? '')
    setLpoMeta(null)
    entryForm.setFieldValue('rate', null)

    ;(async () => {
      try {
        const prDateObj = dayjs(prDate ?? undefined)
        const month = prDateObj.month()
        const year  = prDateObj.year()
        const fy    = month >= 3 ? year : year - 1
        const yfDate = `${fy}-04-01`
        const ylDate = `${fy + 1}-03-31`

        const info = await purchaseRequisitionApi.getItemInfo(
          depCode,
          opt._item.itemCode,
          yfDate,
          ylDate,
          preCheckResult?.pendingIndentCheckEnabled ?? false,
          preCheckResult?.pendingPRCheckEnabled ?? false
        )

        entryForm.setFieldValue('rate', info.lastPoRate ?? 0)

        setLpoMeta({
          lastPoRate:         info.lastPoRate ?? null,
          lastPoDate:         info.lastPoDate ?? null,
          lastPoSupplierCode: info.lastPoSupplierCode ?? null,
          lastPoSupplierName: info.lastPoSupplierName ?? null,
        })

        if (preCheckResult?.pendingIndentCheckEnabled && info.hasPendingIndent) {
          onWarning?.(`Pending indent exists for this item — Qty: ${info.pendingIndentQty}`)
        }
        if (preCheckResult?.pendingPRCheckEnabled && info.hasPendingPR) {
          onWarning?.(`Open PR (${info.pendingPrNo}) dated ${dayjs(info.pendingPrDate).format('DD-MMM-YYYY')} already exists for this item`)
        }
      } catch { /* supplementary — silent fail */ }
    })()
  }, [entryForm, depCode, prDate, preCheckResult, onWarning])

  // ── Populate entry form for edit ──────────────────────────────────────────
  const startEdit = useCallback((row: PRLineFormItem) => {
    setEditingKey(row.key)
    setItemMeta({ itemName: row.itemName, uom: row.uom, currentStock: row.currentStock, minLevel: row.minLevel })
    setItemDrawNo(row.drawNo ?? '')
    setItemCatNo(row.catNo  ?? '')
    if (row.itemCode) {
      setItemOptions([{
        value: row.itemCode,
        label: `${row.itemCode} – ${row.itemName}`,
        _item: { itemCode: row.itemCode, itemName: row.itemName, uom: row.uom, currentStock: row.currentStock ?? undefined },
      }])
    }
    setDaysInput(null)
    setLpoMeta({
      lastPoRate:         row.lastPoRate,
      lastPoDate:         row.lastPoDate,
      lastPoSupplierCode: row.lastPoSupplierCode,
      lastPoSupplierName: row.lastPoSupplierName,
    })
    entryForm.setFieldsValue({
      itemCode:     row.itemCode,
      qtyRequired:  row.qtyRequired,
      rate:         row.rate,
      requiredDate: row.requiredDate ? dayjs(row.requiredDate) : null,
      remarks:      row.remarks,
      machineNo:    row.machineNo || null,
      subCostCode:  row.subCostCode ?? null,
      isSample:     row.isSample ?? false,
    })
  }, [entryForm])

  const cancelEdit = useCallback(() => {
    setEditingKey(null)
    setItemMeta(null)
    setLpoMeta(null)
    setItemOptions([])
    setDaysInput(null)
    setItemDrawNo('')
    setItemCatNo('')
    entryForm.resetFields()
  }, [entryForm])

  // ── Add / Update row ──────────────────────────────────────────────────────
  const handleAddOrUpdate = useCallback(async () => {
    let values: EntryFormValues
    try { values = await entryForm.validateFields() } catch { return }

    if (editingKey) {
      const existing = itemsRef.current.find((r) => r.key === editingKey)
      if (!existing) return
      onUpdate({
        ...existing,
        ...(itemMeta ?? {}),
        itemCode:    values.itemCode,
        qtyRequired: values.qtyRequired,
        rate:        values.rate,
        requiredDate: values.requiredDate ? values.requiredDate.format('YYYY-MM-DD') : null,
        remarks:     values.remarks ?? '',
        machineNo:   values.machineNo ?? '',
        subCostCode: values.subCostCode ?? null,
        isSample:    values.isSample ?? false,
        drawNo:      itemDrawNo || existing.drawNo,
        catNo:       itemCatNo  || existing.catNo,
        approxCost:  values.rate && values.qtyRequired
          ? parseFloat((values.rate * values.qtyRequired).toFixed(2))
          : null,
      })
      const minLvlUpd = itemMeta?.minLevel ?? existing.minLevel ?? null
      if (minLvlUpd && minLvlUpd > 0 && values.qtyRequired < minLvlUpd) {
        onWarning?.(`${itemMeta?.itemName ?? values.itemCode}: Required Quantity is below minimum stock level (${minLvlUpd}). Please confirm.`)
      }
      setFlashKey(editingKey)
      cancelEdit()
    } else {
      const row: PRLineFormItem = {
        ...emptyRow(),
        ...(itemMeta ?? {}),
        ...(lpoMeta  ?? {}),
        itemCode:    values.itemCode,
        qtyRequired: values.qtyRequired,
        rate:        values.rate,
        requiredDate: values.requiredDate ? values.requiredDate.format('YYYY-MM-DD') : null,
        remarks:     values.remarks ?? '',
        machineNo:   values.machineNo ?? '',
        subCostCode: values.subCostCode ?? null,
        isSample:    values.isSample ?? false,
        drawNo:      itemDrawNo,
        catNo:       itemCatNo,
        approxCost:  values.rate && values.qtyRequired
          ? parseFloat((values.rate * values.qtyRequired).toFixed(2))
          : null,
      }
      onAdd(row)
      if (row.minLevel && row.minLevel > 0 && values.qtyRequired < row.minLevel) {
        onWarning?.(`${row.itemName}: Required Quantity is below minimum stock level (${row.minLevel}). Please confirm.`)
      }
      setFlashKey(row.key)
      setItemMeta(null)
      setLpoMeta(null)
      setItemOptions([])
      setItemDrawNo('')
      setItemCatNo('')
      setDaysInput(null)
      entryForm.resetFields()
      setTimeout(() => {
        const el = document.querySelector<HTMLElement>('.pr-entry-item-select input')
        el?.focus()
      }, 80)
    }
  }, [editingKey, entryForm, itemMeta, lpoMeta, onAdd, onUpdate, cancelEdit])

  useImperativeHandle(ref, () => ({
    flushEdit: async () => {
      if (editingKey) await handleAddOrUpdate()
    },
  }), [editingKey, handleAddOrUpdate])

  // ── Rate history ──────────────────────────────────────────────────────────
  const openHistory = useCallback(async (row: PRLineFormItem) => {
    setHistoryItem(row.itemCode)
    setHistoryStock(row.currentStock)
    setHistoryOpen(true)
    setHistoryLoading(true)
    try {
      const data = await purchaseRequisitionApi.getItemHistory(row.itemCode)
      setHistoryData(data)
    } catch { setHistoryData([]) }
    finally  { setHistoryLoading(false) }
  }, [])

  const openHistoryForEntryItem = useCallback(async () => {
    const itemCode = entryForm.getFieldValue('itemCode') as string | undefined
    if (!itemCode) return
    const opt = itemOptions.find((o) => o.value === itemCode)
    await openHistory({ ...emptyRow(), itemCode, currentStock: opt?._item.currentStock ?? null })
  }, [entryForm, itemOptions, openHistory])

  const saveDrawer = useCallback(() => {
    if (!drawerRow) return
    const vals = drawerForm.getFieldsValue()
    onUpdate({ ...drawerRow, ...vals })
    setDrawerRow(null)
  }, [drawerRow, drawerForm, onUpdate])

  // ── Column defs (essential only) ──────────────────────────────────────────
  const colDefs = useMemo((): ColDef<PRLineFormItem>[] => [
    {
      headerName: 'Item ID',
      field:      'itemCode',
      width:      110,
      minWidth:   110,
      cellStyle:  { ...CELL, fontWeight: 700, fontFamily: 'monospace', fontSize: 12 },
      cellRenderer: ({ value, node }: ICellRendererParams) =>
        node?.rowPinned === 'bottom'
          ? <Typography.Text strong style={{ fontSize: 12, color: '#475569', textTransform: 'uppercase', letterSpacing: '0.06em' }}>Total</Typography.Text>
          : <span>{(value as string) || '—'}</span>,
    },
    {
      headerName: 'Item Description',
      field:      'itemName',
      flex:       1,
      minWidth:   160,
      cellStyle:  CELL,
      valueFormatter: ({ value }) => (value as string) || '—',
    },
    {
      headerName: 'UOM',
      field:      'uom',
      width:      70,
      minWidth:   70,
      cellStyle:  { ...CELL, justifyContent: 'center' },
      cellRenderer: ({ value, node }: ICellRendererParams) =>
        node?.rowPinned === 'bottom' ? null :
        value
          ? <Tag style={{ fontSize: 11, margin: 0 }}>{value as string}</Tag>
          : <Typography.Text type="secondary" style={{ fontSize: 11 }}>—</Typography.Text>,
    },
    {
      headerName:  'QTY',
      field:       'qtyRequired',
      width:       70,
      minWidth:    70,
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 600 },
      headerClass: 'ag-right-aligned-header',
    },
    {
      headerName:  'Unit Price',
      field:       'rate',
      width:       115,
      minWidth:    115,
      cellStyle:   { ...CELL, justifyContent: 'flex-end' },
      headerClass: 'ag-right-aligned-header',
      valueFormatter: ({ value }) =>
        value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
    },
    {
      headerName:  'Approx Cost',
      colId:       'approxCost',
      width:       130,
      minWidth:    130,
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 600 },
      headerClass: 'ag-right-aligned-header',
      valueGetter: ({ data, node }) => {
        if (!data) return null
        if (node?.rowPinned === 'bottom') {
          const s = (data as unknown as { _subtotal?: number })._subtotal ?? 0
          return s > 0 ? s : null
        }
        const r = data.rate && data.rate > 0 ? data.rate : (data.lastPoRate ?? 0)
        const v = r * data.qtyRequired
        return v > 0 ? v : null
      },
      valueFormatter: ({ value }) =>
        value != null
          ? `₹ ${Number(value).toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      headerName: 'Req. Date',
      field:      'requiredDate',
      width:      105,
      minWidth:   105,
      cellStyle:  CELL,
      valueFormatter: ({ value }) =>
        value ? dayjs(value as string).format('DD-MMM-YYYY') : '—',
    },
    {
      headerName: '',
      colId:      'actions',
      width:      116,
      minWidth:   116,
      sortable:   false,
      cellStyle:  { ...CELL, justifyContent: 'center', gap: 4 },
      cellRenderer: ({ data, node }: ICellRendererParams<PRLineFormItem>) => {
        if (!data || node?.rowPinned) return null
        const isLast         = itemsRef.current.length <= 1
        const deleteDisabled = disabled || isLast
        const deleteTooltip  = isLast ? 'At least one line item is required' : 'Delete line'
        const pill: React.CSSProperties = {
          display: 'inline-flex', alignItems: 'center', justifyContent: 'center',
          width: 26, height: 26, borderRadius: 6, border: 'none',
          cursor: 'pointer', fontSize: 12, padding: 0,
        }
        return (
          <div style={{ display: 'flex', gap: 4, alignItems: 'center' }}>
            <Tooltip title="View Details">
              <button style={{ ...pill, background: '#7c3aed14', color: '#7c3aed', boxShadow: '0 1px 4px rgba(124,58,237,0.22)' }} onClick={() => setViewRow(data)}>
                <EyeOutlined />
              </button>
            </Tooltip>
            <Tooltip title="Edit">
              <button
                style={{ ...pill, background: disabled ? '#f1f5f9' : '#1677ff14', color: disabled ? '#94a3b8' : '#1677ff', boxShadow: disabled ? 'none' : '0 1px 4px rgba(22,119,255,0.22)', cursor: disabled ? 'not-allowed' : 'pointer' }}
                onClick={() => !disabled && startEdit(data)}
              >
                <EditOutlined />
              </button>
            </Tooltip>
            {savedPrNo && data.prSNo ? (
              <Tooltip title={deleteTooltip}>
                <button
                  style={{ ...pill, background: deleteDisabled ? '#f1f5f9' : '#dc262614', color: deleteDisabled ? '#94a3b8' : '#dc2626', boxShadow: deleteDisabled ? 'none' : '0 1px 4px rgba(220,38,38,0.22)', cursor: deleteDisabled ? 'not-allowed' : 'pointer' }}
                  onClick={() => !deleteDisabled && setLineDeleteRow(data)}
                >
                  <DeleteOutlined />
                </button>
              </Tooltip>
            ) : (
              <Popconfirm
                title="Remove this item?"
                okText="Remove"
                okButtonProps={{ danger: true, size: 'small' }}
                disabled={deleteDisabled}
                onConfirm={() => {
                  onDelete(data.key)
                  if (editingKey === data.key) cancelEdit()
                }}
              >
                <Tooltip title={deleteTooltip}>
                  <button style={{ ...pill, background: deleteDisabled ? '#f1f5f9' : '#dc262614', color: deleteDisabled ? '#94a3b8' : '#dc2626', boxShadow: deleteDisabled ? 'none' : '0 1px 4px rgba(220,38,38,0.22)', cursor: deleteDisabled ? 'not-allowed' : 'pointer' }}>
                    <DeleteOutlined />
                  </button>
                </Tooltip>
              </Popconfirm>
            )}
          </div>
        )
      },
    },
  ], [disabled, startEdit, onDelete, editingKey, cancelEdit, savedPrNo, items])

  const defaultColDef = useMemo<ColDef>(() => ({ resizable: true, sortable: false, filter: false }), [])

  const onGridReady = useCallback((e: GridReadyEvent) => {
    apiRef.current = e.api
  }, [])

  const getRowId = useCallback(({ data }: { data: PRLineFormItem }) => data.key, [])

  const getRowClass = useCallback(({ data }: { data?: PRLineFormItem }) =>
    data?.key === editingKey ? 'pr-row--editing' : '', [editingKey])

  const validCount = items.filter((l) => l.itemCode.trim() !== '').length
  const subtotal   = useMemo(() => items.reduce((s, l) => {
    const r = l.rate && l.rate > 0 ? l.rate : (l.lastPoRate ?? 0)
    return s + r * l.qtyRequired
  }, 0), [items])
  const totalQty   = useMemo(() =>
    items.filter((l) => l.itemCode.trim() !== '').reduce((s, l) => s + l.qtyRequired, 0)
  , [items])

  const pinnedBottomRow = useMemo(() =>
    validCount > 0
      ? [{ key: '__total__', qtyRequired: totalQty, _subtotal: subtotal } as unknown as PRLineFormItem]
      : []
  , [validCount, totalQty, subtotal])

  const historyColumns = useMemo(() => [
    { title: 'PO No',    dataIndex: 'poNo',         key: 'poNo',         width: 90 },
    { title: 'Date',     dataIndex: 'poDate',       key: 'poDate',       width: 90,
      render: (v: string) => v ? dayjs(v).format('DD-MMM-YYYY') : '—' },
    { title: 'Supplier', dataIndex: 'supplierName', key: 'supplierName', ellipsis: true },
    { title: 'Rate (₹)', dataIndex: 'rate',         key: 'rate',         width: 90, align: 'right' as const,
      render: (v: number) => v != null ? `₹ ${Number(v).toFixed(2)}` : '—' },
    { title: 'Ordered',  dataIndex: 'orderQty',     key: 'orderQty',     width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(2) : '—' },
    { title: 'Received', dataIndex: 'receivedQty',  key: 'receivedQty',  width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(2) : '—' },
  ], [])

  return (
    <>
      {/* ── Item Entry Panel ──────────────────────────────────────────────── */}
      <div className="pr-entry-form" style={{
        background:   '#ffffff',
        border:       '1px solid #e2e8f0',
        borderLeft:   '4px solid #4f46e5',
        borderRadius: '0 8px 8px 0',
        padding:      0,
        overflow:     'hidden',
        boxShadow:    '0 1px 4px rgba(0,0,0,0.06)',
        marginBottom: 12,
      }}>
        <div style={{
          display:      'flex',
          alignItems:   'center',
          padding:      '10px 20px',
          borderBottom: '1px solid #f1f5f9',
          background:   editingKey ? 'linear-gradient(135deg, #faf5ff, #ffffff)' : 'linear-gradient(135deg, #f8faff, #ffffff)',
        }}>
          <Space size={8}>
            <AppstoreOutlined style={{ color: '#4f46e5', fontSize: 13 }} />
            <span style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.1em', color: '#4f46e5' }}>
              {editingKey ? 'Edit Line Item' : 'Add Line Item'}
            </span>
          </Space>
        </div>

        <div style={{ padding: '12px 16px 10px' }}>
          {!depCode && (
            <Alert
              message="Please select a Department in the header before adding items."
              type="warning"
              showIcon
              style={{ marginBottom: 10 }}
            />
          )}
          <Form form={entryForm} layout="vertical" size="small" disabled={disabled}>

            {/* ── Row 1: Item Code · Qty · Rate · Required Date ──────────── */}
            <Row gutter={[8, 0]}>
              <Col xs={24} sm={24} md={8}>
                <Form.Item
                  name="item Id"
                  label={<span style={LABEL_STYLE}>Item Code</span>}
                  rules={[{ required: true, message: 'Required' }]}
                  style={{ marginBottom: 6 }}
                >
                  <Select
                    className="pr-entry-item-select"
                    showSearch
                    placeholder="Type to search item…"
                    options={itemOptions}
                    onSearch={handleItemSearch}
                    onSelect={handleItemSelect}
                    loading={itemSearching}
                    filterOption={false}
                    notFoundContent={itemSearching ? <Spin size="small" /> : 'Type ≥ 2 chars to search'}
                    allowClear
                    disabled={!depCode}
                    onClear={() => { setItemMeta(null); setLpoMeta(null); setItemOptions([]); setItemDrawNo(''); setItemCatNo('') }}
                  />
                </Form.Item>
              </Col>

              <Col xs={8} sm={5} md={3}>
                <Form.Item
                  name="qtyRequired"
                  label={<span style={LABEL_STYLE}>Qty</span>}
                  initialValue={0}
                  rules={[
                    { required: true, message: 'Req.' },
                    { type: 'number', min: 0.001, message: '> 0' },
                  ]}
                  style={{ marginBottom: 6 }}
                >
                  <InputNumber
                    style={{ width: '100%' }}
                    min={0} precision={3}
                    onPressEnter={() => void handleAddOrUpdate()}
                  />
                </Form.Item>
              </Col>

              <Col xs={16} sm={8} md={6}>
                <Form.Item
                  label={<span style={LABEL_STYLE}>Unit Price (₹)</span>}
                  style={{ marginBottom: 6 }}
                >
                  <Space.Compact style={{ width: '100%' }}>
                    <Form.Item name="rate" noStyle rules={[{ type: 'number', min: 0, message: '≥ 0' }]}>
                      <InputNumber style={{ width: '100%' }} min={0} precision={4} placeholder="0.0000" prefix="₹" />
                    </Form.Item>
                    <Tooltip title="Rate History">
                      <Button
                        icon={<HistoryOutlined />}
                        disabled={!entryForm.getFieldValue('itemCode')}
                        onClick={() => void openHistoryForEntryItem()}
                      />
                    </Tooltip>
                  </Space.Compact>
                </Form.Item>
              </Col>

              <Col xs={24} sm={11} md={7}>
                <Form.Item
                  label={<span style={LABEL_STYLE}>Required Date</span>}
                  style={{ marginBottom: 6 }}
                >
                  <Space.Compact style={{ width: '100%' }}>
                    <Tooltip title="Days from today">
                      <InputNumber
                        placeholder="Days"
                        min={1} max={999} precision={0}
                        style={{ width: 64 }}
                        value={daysInput}
                        onChange={(v) => {
                          const days = v as number | null
                          setDaysInput(days)
                          if (days != null && days > 0)
                            entryForm.setFieldValue('requiredDate', dayjs().add(days, 'day'))
                        }}
                      />
                    </Tooltip>
                    <Form.Item name="requiredDate" noStyle>
                      <DatePicker
                        style={{ width: '100%' }}
                        format="DD/MM/YYYY"
                        placeholder="dd/mm/yyyy"
                        onChange={() => setDaysInput(null)}
                      />
                    </Form.Item>
                  </Space.Compact>
                </Form.Item>
              </Col>
            </Row>

            {/* Item context badges — compact */}
            {itemMeta && (
              <div style={{ display: 'flex', flexWrap: 'wrap', gap: 4, marginBottom: 8 }}>
                <Tag style={{ fontSize: 11, margin: 0 }}>UOM: {itemMeta.uom || '—'}</Tag>
                <Tag
                  color={itemMeta.currentStock != null && itemMeta.currentStock > 0 ? 'success' : 'error'}
                  style={{ fontSize: 11, fontWeight: 600, margin: 0 }}
                >
                  Stock: {itemMeta.currentStock ?? 0}
                </Tag>
                {lpoMeta?.lastPoRate != null && (
                  <Tag color="green" style={{ fontSize: 11, margin: 0 }}>Last ₹{lpoMeta.lastPoRate.toFixed(2)}</Tag>
                )}
                {lpoMeta !== null && lpoMeta.lastPoRate == null && (
                  <Tag color="warning" style={{ fontSize: 11, margin: 0 }}>No prev. purchase</Tag>
                )}
                <Tag color="purple" style={{ fontSize: 11, margin: 0 }}>Cat: {itemCatNo || '—'}</Tag>
                <Tag color="geekblue" style={{ fontSize: 11, margin: 0 }}>Draw: {itemDrawNo || '—'}</Tag>
              </div>
            )}

            {/* ── Row 2: Machine · Sub Cost · Remarks · Sample · Action ─── */}
            <Row gutter={[8, 0]} align="bottom">
              <Col xs={12} sm={5} md={5}>
                <Form.Item
                  name="machineNo"
                  label={<span style={LABEL_STYLE}>Machine</span>}
                  style={{ marginBottom: 0 }}
                >
                  <Select
                    options={machineOpts}
                    allowClear showSearch
                    filterOption={(input, opt) =>
                      (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
                    }
                    placeholder="Machine…"
                  />
                </Form.Item>
              </Col>

              <Col xs={12} sm={5} md={5}>
                <Form.Item
                  name="subCostCode"
                  label={<span style={LABEL_STYLE}>Sub Cost Centre</span>}
                  style={{ marginBottom: 0 }}
                >
                  <Select
                    showSearch allowClear
                    options={subCostOpts}
                    placeholder="Sub cost…"
                    filterOption={(input, opt) =>
                      String(opt?.label ?? '').toLowerCase().includes(input.toLowerCase())
                    }
                  />
                </Form.Item>
              </Col>

              <Col xs={24} sm={8} md={9}>
                <Form.Item
                  name="remarks"
                  label={<span style={LABEL_STYLE}>Remarks</span>}
                  style={{ marginBottom: 0 }}
                >
                  <Input placeholder="Notes…" maxLength={500} />
                </Form.Item>
              </Col>

              <Col xs={6} sm={3} md={2} style={{ display: 'flex', alignItems: 'flex-end', paddingBottom: 1 }}>
                <Form.Item name="isSample" valuePropName="checked" initialValue={false} style={{ marginBottom: 0 }}>
                  <Checkbox style={{ fontSize: 11 }}>Sample</Checkbox>
                </Form.Item>
              </Col>

              <Col xs={18} sm={3} md={3} style={{ display: 'flex', alignItems: 'flex-end', justifyContent: 'flex-end', gap: 6, paddingBottom: 1 }}>
                {editingKey ? (
                  <>
                    <Button
                      size="small"
                      onClick={cancelEdit}
                      disabled={disabled}
                      style={{ boxShadow: '0 2px 6px rgba(0,0,0,0.12)', fontWeight: 500 }}
                    >
                      Cancel
                    </Button>
                    <Button
                      type="primary" size="small"
                      icon={<PlusOutlined />}
                      onClick={() => void handleAddOrUpdate()}
                      disabled={disabled}
                      style={{
                        background:  'linear-gradient(135deg, #4f46e5, #3730a3)',
                        border:      'none',
                        boxShadow:   '0 3px 8px rgba(79,70,229,0.45)',
                        fontWeight:  600,
                      }}
                    >
                      Update
                    </Button>
                  </>
                ) : (
                  <Button
                    type="primary" size="small"
                    icon={<PlusOutlined />}
                    onClick={() => void handleAddOrUpdate()}
                    disabled={disabled}
                    style={{
                      background:  'linear-gradient(135deg, #4f46e5, #3730a3)',
                      border:      'none',
                      boxShadow:   '0 3px 8px rgba(79,70,229,0.45)',
                      fontWeight:  600,
                      paddingInline: 16,
                    }}
                  >
                    Add to List
                  </Button>
                )}
              </Col>
            </Row>

          </Form>
        </div>
      </div>

      {/* ── Items Grid ─────────────────────────────────────────────────────── */}
      <div style={{
        background:   '#ffffff',
        border:       '1px solid #e2e8f0',
        borderRadius: 8,
        overflow:     'hidden',
        boxShadow:    '0 1px 4px rgba(0,0,0,0.06)',
      }}>
        <div style={{
          display: 'flex', alignItems: 'center', justifyContent: 'space-between',
          padding: '10px 16px', borderBottom: '1px solid #f0f0f0',
        }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <Typography.Text style={{ fontSize: 11, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em' }}>Added Items</Typography.Text>
            {validCount > 0 && (
              <Tag color="blue" style={{ fontSize: 11, borderRadius: 10 }}>
                {validCount} {validCount === 1 ? 'item' : 'items'}
              </Tag>
            )}
          </div>
          {validCount > 0 && (
            <Typography.Text type="secondary" style={{ fontSize: 11 }}>
              Click <EyeOutlined style={{ color: '#7c3aed' }} /> on any row to view full details
            </Typography.Text>
          )}
        </div>

        <AgGridReact<PRLineFormItem>
          ref={gridRef}
          className="spinrise-ag-grid"
          theme={spinriseGridTheme}
          rowData={items}
          columnDefs={colDefs}
          defaultColDef={defaultColDef}
          getRowId={getRowId}
          getRowClass={getRowClass}
          onGridReady={onGridReady}
          domLayout="autoHeight"
          suppressRowClickSelection
          suppressScrollOnNewData
          pinnedBottomRowData={pinnedBottomRow}
          getRowStyle={({ node }) =>
            node.rowPinned === 'bottom'
              ? { background: '#f1f5f9', fontWeight: 700, borderTop: '2px solid #e2e8f0' }
              : undefined
          }
          noRowsOverlayComponent={() => (
            <div style={{ textAlign: 'center', padding: '24px 0' }}>
              <FileAddOutlined style={{ fontSize: 28, color: '#d1d5db', display: 'block', marginBottom: 8 }} />
              <Typography.Text type="secondary" style={{ fontSize: 13 }}>
                Fill the form above and click "Add to List"
              </Typography.Text>
            </div>
          )}
        />
      </div>

      {/* ── Per-line Delete Modal ──────────────────────────────────────────── */}
      <Modal
        title={`Delete Line — ${lineDeleteRow?.itemCode ?? ''}`}
        open={!!lineDeleteRow}
        onCancel={() => setLineDeleteRow(null)}
        onOk={async () => {
          if (!lineDeleteRow?.prSNo || !savedPrNo) return
          setLineDeleting(true)
          try {
            await purchaseRequisitionApi.deleteLine(savedPrNo, lineDeleteRow.prSNo, undefined, prDate, prDate)
            onDelete(lineDeleteRow.key)
            if (editingKey === lineDeleteRow.key) cancelEdit()
            setLineDeleteRow(null)
          } catch { /* handled by global interceptor */ }
          finally { setLineDeleting(false) }
        }}
        okText="Delete Line"
        okButtonProps={{ danger: true, loading: lineDeleting }}
        destroyOnClose
      >
        <p>Are you sure you want to delete this line item? This action cannot be undone.</p>
      </Modal>

      {/* ── Rate History Modal ─────────────────────────────────────────────── */}
      <Modal
        title={
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <ClockCircleOutlined style={{ color: '#7c3aed' }} />
            <span>Rate History — <span style={{ fontFamily: 'monospace', color: '#1677ff' }}>{historyItem}</span></span>
          </div>
        }
        open={historyOpen}
        onCancel={() => setHistoryOpen(false)}
        footer={<Button onClick={() => setHistoryOpen(false)}>Close</Button>}
        width={700}
        destroyOnClose
      >
        {historyStock != null && (
          <div style={{ marginBottom: 14 }}>
            <Typography.Text type="secondary" style={{ fontSize: 13 }}>Current Stock: </Typography.Text>
            <Typography.Text strong style={{ fontSize: 14 }}>{historyStock}</Typography.Text>
          </div>
        )}
        {historyLoading ? (
          <div style={{ textAlign: 'center', padding: '32px 0' }}><Spin /></div>
        ) : historyData.length === 0 ? (
          <Empty description="No purchase history found for this item" />
        ) : (
          <Table
            size="small"
            dataSource={historyData}
            columns={historyColumns}
            rowKey={(r) => `${r.poNo}-${r.poDate}`}
            pagination={false}
            scroll={{ x: 560 }}
          />
        )}
      </Modal>

      {/* ── Line Detail Drawer (left, read-only) ───────────────────────────── */}
      <Drawer
        title={
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <EyeOutlined style={{ color: '#7c3aed' }} />
            <span>
              Line Details —{' '}
              <span style={{ fontFamily: 'monospace', color: '#1677ff' }}>
                {viewRow?.itemCode ?? ''}
              </span>
            </span>
          </div>
        }
        placement="left"
        width={360}
        open={!!viewRow}
        onClose={() => setViewRow(null)}
        footer={null}
        destroyOnClose
      >
        {viewRow && (
          <div style={{ display: 'flex', flexDirection: 'column', gap: 0 }}>
            {([
              { label: 'Item Name',     value: viewRow.itemName || '—' },
              { label: 'UOM',           value: viewRow.uom || '—' },
              { label: 'Current Stock', value: viewRow.currentStock != null ? String(viewRow.currentStock) : '—' },
              { label: 'Min Level',     value: viewRow.minLevel != null ? String(viewRow.minLevel) : '—' },
              { label: 'Cat. No',       value: viewRow.catNo || '—' },
              { label: 'Draw No',       value: viewRow.drawNo || '—' },
              { label: 'Machine No',    value: viewRow.machineNo || '—' },
              { label: 'Sub Cost Code', value: viewRow.subCostCode != null ? String(viewRow.subCostCode) : '—' },
              { label: 'Sub Cost Name', value: viewRow.subCostName || '—' },
              { label: 'Remarks',       value: viewRow.remarks || '—' },
              { label: 'Category Code', value: viewRow.categoryCode || '—' },
              { label: 'Model',         value: viewRow.model || '—' },
              { label: 'Max Cost',      value: viewRow.maxCost != null ? `₹ ${Number(viewRow.maxCost).toFixed(2)}` : '—' },
              { label: 'Last PO Rate',  value: viewRow.lastPoRate != null ? `₹ ${Number(viewRow.lastPoRate).toFixed(2)}` : '—' },
              { label: 'Last PO Date',  value: viewRow.lastPoDate ? dayjs(viewRow.lastPoDate).format('DD-MMM-YYYY') : '—' },
              { label: 'Supplier Code', value: viewRow.lastPoSupplierCode || '—' },
              { label: 'Supplier Name', value: viewRow.lastPoSupplierName || '—' },
            ] as { label: string; value: string }[]).map(({ label, value }, idx) => (
              <div
                key={label}
                style={{
                  display:        'flex',
                  justifyContent: 'space-between',
                  alignItems:     'flex-start',
                  gap:            12,
                  padding:        '10px 8px',
                  borderBottom:   '1px solid #f0f0f0',
                  background:     idx % 2 === 0 ? '#fafafa' : '#ffffff',
                }}
              >
                <Typography.Text type="secondary" style={{ fontSize: 12, fontWeight: 500, whiteSpace: 'nowrap', flexShrink: 0 }}>
                  {label}
                </Typography.Text>
                <Typography.Text style={{ fontSize: 13, textAlign: 'right', wordBreak: 'break-word' }}>
                  {value}
                </Typography.Text>
              </div>
            ))}
          </div>
        )}
      </Drawer>

      {/* ── Advanced Fields Drawer ──────────────────────────────────────────── */}
      <Drawer
        title={`Advanced Fields — ${drawerRow?.itemCode || 'Row'}`}
        placement="right"
        width={400}
        open={!!drawerRow}
        onClose={() => setDrawerRow(null)}
        extra={<Button type="primary" size="small" onClick={saveDrawer}>Save</Button>}
      >
        <Form form={drawerForm} layout="vertical" size="small">
          <Form.Item name="costCentreCode" label="Cost Centre">
            <Input placeholder="Cost centre…" maxLength={20} />
          </Form.Item>
          <Form.Item name="budgetGroupCode" label="GL Account">
            <Input placeholder="GL account…" maxLength={20} />
          </Form.Item>
          <Form.Item name="subCostCode" label="Sub Cost Centre">
            <InputNumber style={{ width: '100%' }} min={0} precision={0} placeholder="Sub cost code…" />
          </Form.Item>
          <Form.Item name="categoryCode" label="Category">
            <Input placeholder="Category code…" maxLength={1} />
          </Form.Item>
          <Form.Item name="remarks" label="Remarks">
            <Input.TextArea placeholder="Optional notes…" maxLength={500} rows={3} />
          </Form.Item>
          <Form.Item name="model" label="Model">
            <Input placeholder="Model…" maxLength={100} />
          </Form.Item>
          <Form.Item name="maxCost" label="Max Cost">
            <InputNumber style={{ width: '100%' }} min={0} precision={2} prefix="₹" />
          </Form.Item>
        </Form>
      </Drawer>
    </>
  )
})
