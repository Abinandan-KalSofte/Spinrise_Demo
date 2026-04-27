import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
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
  FileAddOutlined, HistoryOutlined, PlusOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { Dayjs } from 'dayjs'
import { lookupApi } from '../../api/lookupApi'
import { purchaseRequisitionApi } from '../../api/purchaseRequisitionApi'
import { useLookupStore } from '../../store/useLookupStore'
import type { ItemLookup, MachineLookup, PRItemHistoryDto, PRLineFormItem } from '../../types'

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

interface PRLineItemsTableProps {
  items:          PRLineFormItem[]
  machines:       MachineLookup[]
  depCode:        string
  prDate?:        string
  preCheckResult?: any
  disabled:       boolean
  savedPrNo?:     number
  deleteReasons?: { reasonCode: string; reasonDesc: string }[]
  onAdd:          (item: PRLineFormItem) => void
  onUpdate:       (item: PRLineFormItem) => void
  onDelete:       (key: string) => void
  onWarning?:     (msg: string) => void
}

// ── Helpers ───────────────────────────────────────────────────────────────────

function emptyRow(): PRLineFormItem {
  return {
    key: generateUUID(),
    itemCode: '', itemName: '', uom: '',
    currentStock: null, qtyRequired: 1, requiredDate: null,
    place: '', approxCost: null, remarks: '', machineNo: '',
    costCentreCode: '', budgetGroupCode: '', subCostCode: null,
    isSample: true, lastPoRate: null, lastPoDate: null,
    lastPoSupplierCode: null, lastPoSupplierName: null,
    categoryCode: '', model: '', maxCost: null, rate: null,
    drawNo: '', catNo: '',
  }
}

const CELL: CellStyle = { display: 'flex', alignItems: 'center' }

// ── Input style helpers ───────────────────────────────────────────────────────

const LABEL_STYLE: React.CSSProperties = {
  fontWeight:    700,
  fontSize:      11,
  textTransform: 'uppercase',
  letterSpacing: '0.04em',
}

// ── Component ─────────────────────────────────────────────────────────────────

export function PRLineItemsTable({
  items, machines, depCode, prDate, preCheckResult, disabled,
  savedPrNo, deleteReasons = [],
  onAdd, onUpdate, onDelete, onWarning,
}: PRLineItemsTableProps) {
  const gridRef    = useRef<AgGridReact<PRLineFormItem>>(null)
  const apiRef     = useRef<GridApi<PRLineFormItem> | null>(null)
  const itemsRef   = useRef(items)
  itemsRef.current = items

  const [entryForm]  = Form.useForm<EntryFormValues>()
  const [drawerForm] = Form.useForm()

  // ── Entry form state ──────────────────────────────────────────────────────
  const [editingKey,    setEditingKey]    = useState<string | null>(null)
  const [itemMeta,      setItemMeta]      = useState<{ itemName: string; uom: string; currentStock: number | null } | null>(null)
  const [lpoMeta,       setLpoMeta]       = useState<{ lastPoRate: number | null; lastPoDate: string | null; lastPoSupplierCode: string | null; lastPoSupplierName: string | null } | null>(null)
  const [itemOptions,   setItemOptions]   = useState<ItemSelectOption[]>([])
  const [itemSearching, setItemSearching] = useState(false)

  // ── Item master reference fields (auto-filled, display-only) ────────────
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

  // ── Per-line delete (for saved PRs) ──────────────────────────────────────
  const [lineDeleteRow,    setLineDeleteRow]    = useState<PRLineFormItem | null>(null)
  const [lineDeleteReason, setLineDeleteReason] = useState<string | null>(null)
  const [lineDeleting,     setLineDeleting]     = useState(false)

  // ── Flash total on rate change ────────────────────────────────────────────
  const [flashKey, setFlashKey] = useState<string | null>(null)

  const subCosts    = useLookupStore((s) => s.subCosts)
  const machineOpts  = machines.map((m) => ({ value: m.macNo, label: `${m.macNo} – ${m.description}` }))
  const subCostOpts  = subCosts.map((s) => ({ value: s.sccCode, label: `${s.sccCode} – ${s.sccName}` }))

  // R08: local state for days-from-today quick-fill
  const [daysInput, setDaysInput] = useState<number | null>(null)

  const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)
  const seqRef      = useRef(0)

  // No auto-empty row — entry form below handles adding items

  // ── Flash cleanup ─────────────────────────────────────────────────────────
  useEffect(() => {
    if (flashKey) { const t = setTimeout(() => setFlashKey(null), 700); return () => clearTimeout(t) }
  }, [flashKey])

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
          label: [
            `${i.itemCode} – ${i.itemName}`,
            i.pendingPrQty && i.pendingPrQty > 0 ? ` [PR:${i.pendingPrQty}]` : '',
            i.pendingPoQty && i.pendingPoQty > 0 ? ` [PO:${i.pendingPoQty}]` : '',
          ].join(''),
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
    }
    setItemMeta(meta)
    setItemDrawNo(opt._item.drawNo ?? '')
    setItemCatNo(opt._item.catNo   ?? '')
    setLpoMeta(null)                          // clear stale PO data from previous item
    entryForm.setFieldValue('rate', null)

    // Call getItemInfo on every item selection — divCode is resolved server-side from auth token,
    // so this works regardless of whether depCode has been filled in the header yet.
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

        // Pre-fill Unit Price from last PO; fall back to 0 when no prior PO exists
        entryForm.setFieldValue('rate', info.lastPoRate ?? 0)

        // Store LPO data so grid row and badge row can show it
        setLpoMeta({
          lastPoRate:         info.lastPoRate ?? null,
          lastPoDate:         info.lastPoDate ?? null,
          lastPoSupplierCode: info.lastPoSupplierCode ?? null,
          lastPoSupplierName: info.lastPoSupplierName ?? null,
        })

        // Show warnings for pending indents/PRs if checks are enabled
        if (preCheckResult?.pendingIndentCheckEnabled && info.hasPendingIndent) {
          onWarning?.(`Pending indent exists for this item — Qty: ${info.pendingIndentQty}`)
        }
        if (preCheckResult?.pendingPRCheckEnabled && info.hasPendingPR) {
          onWarning?.(`Open PR (${info.pendingPrNo}) dated ${dayjs(info.pendingPrDate).format('DD/MM/YYYY')} already exists for this item`)
        }
      } catch {
        // Silently fail — getItemInfo is supplementary; user can still enter price manually
      }
    })()
  }, [entryForm, depCode, prDate, preCheckResult, onWarning])

  // ── Populate entry form for edit ──────────────────────────────────────────
  const startEdit = useCallback((row: PRLineFormItem) => {
    setEditingKey(row.key)
    setItemMeta({ itemName: row.itemName, uom: row.uom, currentStock: row.currentStock })
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
      // Update existing row
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
      setFlashKey(editingKey)
      cancelEdit()
    } else {
      // Add new row
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
      setFlashKey(row.key)
      // Clear form and focus item code
      setItemMeta(null)
      setLpoMeta(null)
      setItemOptions([])
      setItemDrawNo('')
      setItemCatNo('')
      entryForm.resetFields()
      setTimeout(() => {
        const el = document.querySelector<HTMLElement>('.pr-entry-item-select input')
        el?.focus()
      }, 80)
    }
  }, [editingKey, entryForm, itemMeta, lpoMeta, onAdd, onUpdate, cancelEdit])

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

  // R07: Open rate history from the entry form for the currently selected item
  const openHistoryForEntryItem = useCallback(async () => {
    const itemCode = entryForm.getFieldValue('itemCode') as string | undefined
    if (!itemCode) return
    const opt = itemOptions.find((o) => o.value === itemCode)
    await openHistory({ ...emptyRow(), itemCode, currentStock: opt?._item.currentStock ?? null })
  }, [entryForm, itemOptions, openHistory])

  // ── Advanced drawer ───────────────────────────────────────────────────────
  const openDrawer = useCallback((row: PRLineFormItem) => {
    setDrawerRow(row)
    drawerForm.setFieldsValue({
      costCentreCode:  row.costCentreCode,
      budgetGroupCode: row.budgetGroupCode,
      subCostCode:     row.subCostCode ?? undefined,
      categoryCode:    row.categoryCode,
      remarks:         row.remarks,
      model:           row.model,
      maxCost:         row.maxCost,
    })
  }, [drawerForm])

  const saveDrawer = useCallback(() => {
    if (!drawerRow) return
    const vals = drawerForm.getFieldsValue()
    onUpdate({ ...drawerRow, ...vals })
    setDrawerRow(null)
  }, [drawerRow, drawerForm, onUpdate])

  // ── Column defs — R12: Item Code, Description, Last Rate, PO Date, Supplier Code, Supplier Name, Qty, UOM, Unit Price, Total, Actions ──
  const colDefs = useMemo((): ColDef<PRLineFormItem>[] => [
    {
      headerName: '#',
      colId:      'idx',
      width:      46,
      minWidth:   40,
      sortable:   false,
      cellStyle:  { ...CELL, justifyContent: 'center', fontSize: 11 },
      valueGetter: ({ node }) => (node?.rowIndex ?? 0) + 1,
    },
    {
      headerName: 'Item Code',
      field:      'itemCode',
      width:      120,
      minWidth:   92,
      cellStyle:  { ...CELL, fontWeight: 700, fontFamily: 'monospace', fontSize: 12 },
      valueFormatter: ({ value }) => value || '—',
    },
    {
      headerName: 'Description',
      field:      'itemName',
      flex:       1,
      minWidth:   120,
      cellStyle:  CELL,
      valueFormatter: ({ value }) => (value as string) || '—',
    },
    {
      headerName:  'Last Rate',
      field:       'lastPoRate',
      width:       100,
      minWidth:    88,
      cellStyle:   { ...CELL, justifyContent: 'flex-end' },
      headerClass: 'ag-right-aligned-header',
      valueFormatter: ({ value }) =>
        value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
    },
    {
      headerName: 'PO Date',
      field:      'lastPoDate',
      width:      90,
      minWidth:   76,
      cellStyle:  CELL,
      valueFormatter: ({ value }) =>
        value ? dayjs(value as string).format('DD/MM/YY') : '—',
    },
    {
      headerName: 'Supplier Code',
      field:      'lastPoSupplierCode',
      width:      150,
      minWidth:   112,
      cellStyle:  { ...CELL, fontFamily: 'monospace', fontSize: 12 },
      valueFormatter: ({ value }) => (value as string) || '—',
    },
    {
      headerName: 'Supplier Name',
      field:      'lastPoSupplierName',
      width:      140,
      minWidth:   112,
      cellStyle:  CELL,
      valueFormatter: ({ value }) => (value as string) || '—',
    },
    {
      headerName:  'Qty',
      field:       'qtyRequired',
      width:       70,
      minWidth:    52,
      pinned:      'right',
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 600 },
      headerClass: 'ag-right-aligned-header',
    },
    {
      headerName: 'UOM',
      field:      'uom',
      width:      90,
      minWidth:   52,
      pinned:     'right',
      cellStyle:  { ...CELL, justifyContent: 'center' },
      cellRenderer: ({ value }: ICellRendererParams) =>
        value
          ? <Tag style={{ fontSize: 11, margin: 0 }}>{value as string}</Tag>
          : <Typography.Text type="secondary" style={{ fontSize: 11 }}>—</Typography.Text>,
    },
    {
      headerName:  'Unit Price',
      field:       'rate',
      width:       120,
      minWidth:    90,
      pinned:      'right',
      cellStyle:   { ...CELL, justifyContent: 'flex-end' },
      headerClass: 'ag-right-aligned-header',
      valueFormatter: ({ value }) =>
        value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
    },
    {
      headerName:  'Total',
      colId:       'total',
      width:       108,
      minWidth:    80,
      pinned:      'right',
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 700 },
      headerClass: 'ag-right-aligned-header',
      valueGetter: ({ data }) => {
        if (!data) return 0
        const r = data.rate && data.rate > 0 ? data.rate : (data.lastPoRate ?? 0)
        return r * data.qtyRequired
      },
      valueFormatter: ({ value }) =>
        Number(value) > 0
          ? `₹ ${Number(value).toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
      cellClassRules: { 'pr-cell-flash': ({ data }) => !!data && data.key === flashKey },
    },
    {
      headerName: '',
      colId:      'actions',
      width:      90,
      minWidth:   88,
      sortable:   false,
      pinned:     'right',
      cellStyle:  { ...CELL, justifyContent: 'center', gap: 2 },
      cellRenderer: ({ data }: ICellRendererParams<PRLineFormItem>) => {
        if (!data) return null
        return (
          <div style={{ display: 'flex', gap: 2, alignItems: 'center' }}>
            <Tooltip title="Edit">
              <Button
                type="text" size="small"
                icon={<EditOutlined style={{ color: '#1677ff' }} />}
                disabled={disabled}
                onClick={() => startEdit(data)}
              />
            </Tooltip>
            {/* <Tooltip title="Advanced">
              <Button
                type="text" size="small"
                icon={<SettingOutlined style={{ color: '#6b7280' }} />}
                disabled={disabled}
                onClick={() => openDrawer(data)}
              />
            </Tooltip> */}
            {savedPrNo && data.prSNo ? (
              <Tooltip title="Delete line">
                <Button
                  type="text" size="small" danger icon={<DeleteOutlined />}
                  disabled={disabled}
                  onClick={() => { setLineDeleteRow(data); setLineDeleteReason(null) }}
                />
              </Tooltip>
            ) : (
              <Popconfirm
                title="Remove this item?"
                okText="Remove"
                okButtonProps={{ danger: true, size: 'small' }}
                disabled={disabled}
                onConfirm={() => {
                  onDelete(data.key)
                  if (editingKey === data.key) cancelEdit()
                }}
              >
                <Tooltip title="Delete">
                  <Button type="text" size="small" danger icon={<DeleteOutlined />} disabled={disabled} />
                </Tooltip>
              </Popconfirm>
            )}
          </div>
        )
      },
    },
  ], [disabled, flashKey, startEdit, openDrawer, onDelete, editingKey, cancelEdit, savedPrNo])

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

  // ── Rate history columns ──────────────────────────────────────────────────
  const historyColumns = useMemo(() => [
    { title: 'PO No',        dataIndex: 'poNo',          key: 'poNo',          width: 90  },
    { title: 'Date',         dataIndex: 'poDate',        key: 'poDate',        width: 90,
      render: (v: string) => v ? dayjs(v).format('DD/MM/YY') : '—' },
    { title: 'Supplier',     dataIndex: 'supplierName',  key: 'supplierName',  ellipsis: true },
    { title: 'Rate (₹)',    dataIndex: 'rate',           key: 'rate',          width: 90, align: 'right' as const,
      render: (v: number) => v != null ? `₹ ${Number(v).toFixed(2)}` : '—' },
    { title: 'Ordered',      dataIndex: 'orderQty',      key: 'orderQty',      width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(2) : '—' },
    { title: 'Received',     dataIndex: 'receivedQty',   key: 'receivedQty',   width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(2) : '—' },
  ], [])

  return (
    <>
      {/* ── Item Entry Panel ──────────────────────────────────────────────── */}
      <div className="pr-entry-form" style={{
        background:   '#ffffff',
        border:       '1px solid #f0f0f0',
        borderLeft:   '3px solid #4f46e5',
        borderRadius: 8,
        padding:      0,
        overflow:     'hidden',
        boxShadow:    '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)',
      }}>
        {/* Card header */}
        <div style={{ display: 'flex', alignItems: 'center', padding: '10px 20px', borderBottom: '1px solid #f0f0f0' }}>
          <Space size={8}>
            <AppstoreOutlined style={{ color: '#4f46e5', fontSize: 13 }} />
            <Typography.Text style={{ fontSize: 11, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em' }}>
              {editingKey ? 'Edit Item' : 'Item Entry'}
            </Typography.Text>
          </Space>
        </div>

        {/* Form body */}
        <div style={{ padding: '14px 20px 8px' }}>
        {!depCode && (
          <Alert
            message="Please select a Department in the header before adding items."
            type="warning"
            showIcon
            style={{ marginBottom: 12 }}
          />
        )}
        <Form form={entryForm} layout="vertical" size="middle" disabled={disabled}>
          {/* Row 1 — Item Code | Qty | Unit Price */}
          <Row gutter={[12, 0]}>
            <Col xs={24} sm={12} md={11}>
              <Form.Item
                name="itemCode"
                label={<span style={LABEL_STYLE}>Item Code</span>}
                rules={[{ required: true, message: 'Required' }]}
                style={{ marginBottom: 8 }}
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

            <Col xs={12} sm={5} md={5}>
              <Form.Item
                name="qtyRequired"
                label={<span style={LABEL_STYLE}>Qty</span>}
                initialValue={0}
                rules={[
                  { required: true, message: 'Req.' },
                  { type: 'number', min: 0.001, message: 'Must be > 0' },
                ]}
                style={{ marginBottom: 8 }}
              >
                <InputNumber
                  style={{ width: '100%' }}
                  min={0} precision={3}
                  onPressEnter={() => void handleAddOrUpdate()}
                />
              </Form.Item>
            </Col>

            <Col xs={12} sm={7} md={8}>
              <Form.Item
                label={<span style={LABEL_STYLE}>Unit Price (₹)</span>}
                style={{ marginBottom: 8 }}
              >
                <Space.Compact style={{ width: '100%' }}>
                  <Form.Item
                    name="rate"
                    noStyle
                    rules={[{ type: 'number', min: 0, message: 'Must be ≥ 0' }]}
                  >
                    <InputNumber
                      style={{ width: '100%' }}
                      min={0} precision={2} placeholder="0.00"
                      prefix="₹"
                    />
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
          </Row>

          {/* Context badges — all appear only after item is selected */}
          {itemMeta && (
            <div style={{ display: 'flex', flexWrap: 'wrap', gap: 8, marginBottom: 10 }}>
              <Tag style={{ fontSize: 12, padding: '2px 8px' }}>
                UOM: {itemMeta.uom || '—'}
              </Tag>
              <Tag
                color={itemMeta.currentStock != null && itemMeta.currentStock > 0 ? 'success' : 'error'}
                style={{ fontSize: 12, padding: '2px 8px', fontWeight: 600 }}
              >
                Stock: {itemMeta.currentStock ?? 0}
              </Tag>
              {lpoMeta?.lastPoRate != null && (
                <Tag color="green" style={{ fontSize: 12, padding: '2px 8px' }}>
                  Last Rate: ₹{lpoMeta.lastPoRate.toFixed(2)}
                </Tag>
              )}
              {lpoMeta !== null && lpoMeta.lastPoRate == null && (
                <Tag color="warning" style={{ fontSize: 12, padding: '2px 8px' }}>
                  No previous purchase data
                </Tag>
              )}
              <Tag color="purple" style={{ fontSize: 12, padding: '2px 8px' }}>
                Cat No: {itemCatNo || '—'}
              </Tag>
              <Tag color="geekblue" style={{ fontSize: 12, padding: '2px 8px' }}>
                Draw No: {itemDrawNo || '—'}
              </Tag>
            </div>
          )}

          {/* Row 2 — Required Date | Machine | Sub Cost Centre | Remarks | Sample */}
          <Row gutter={[12, 0]}>
            <Col xs={24} sm={10} md={7}>
              <Form.Item
                label={<span style={LABEL_STYLE}>Required Date</span>}
                style={{ marginBottom: 10 }}
              >
                <Space.Compact style={{ width: '100%' }}>
                  <Tooltip title="Days from today">
                    <InputNumber
                      placeholder="Days"
                      min={1} max={999} precision={0}
                      style={{ width: 72 }}
                      value={daysInput}
                      onChange={(v) => {
                        const days = v as number | null
                        setDaysInput(days)
                        if (days != null && days > 0) {
                          entryForm.setFieldValue('requiredDate', dayjs().add(days, 'day'))
                        }
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

            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="machineNo"
                label={<span style={LABEL_STYLE}>Machine</span>}
                style={{ marginBottom: 10 }}
              >
                <Select
                  options={machineOpts}
                  allowClear showSearch
                  filterOption={(input, opt) =>
                    (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
                  }
                  placeholder="Select machine…"
                  style={{ borderRadius: 6 }}
                />
              </Form.Item>
            </Col>

            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="subCostCode"
                label={<span style={LABEL_STYLE}>Sub Cost Centre</span>}
                style={{ marginBottom: 10 }}
              >
                <Select
                  showSearch allowClear
                  options={subCostOpts}
                  placeholder="Select sub cost…"
                  style={{ borderRadius: 6 }}
                  filterOption={(input, opt) =>
                    String(opt?.label ?? '').toLowerCase().includes(input.toLowerCase())
                  }
                />
              </Form.Item>
            </Col>

            <Col xs={24} sm={10} md={5}>
              <Form.Item
                name="remarks"
                label={<span style={LABEL_STYLE}>Remarks</span>}
                style={{ marginBottom: 10 }}
              >
                <Input style={{ borderRadius: 6 }} placeholder="Notes…" maxLength={500} />
              </Form.Item>
            </Col>

            <Col xs={12} sm={2} md={2} style={{ display: 'flex', alignItems: 'flex-end', paddingBottom: 10 }}>
              <Form.Item name="isSample"  initialValue={true} style={{ marginBottom: 0 }}>
                <Checkbox>Sample</Checkbox>
              </Form.Item>
            </Col>
          </Row>

          {/* Action row — separate last row */}
          <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8, marginTop: 12 }}>
            {editingKey ? (
              <>
                <Button onClick={cancelEdit} disabled={disabled}>Cancel</Button>
                <Button
                  type="primary"
                  icon={<PlusOutlined />}
                  onClick={() => void handleAddOrUpdate()}
                  disabled={disabled}
                >
                  Update Row
                </Button>
              </>
            ) : (
              <Button
                type="primary"
                icon={<PlusOutlined />}
                onClick={() => void handleAddOrUpdate()}
                disabled={disabled}
              >
                Add to List
              </Button>
            )}
          </div>
        </Form>
        </div>{/* /form body inner */}
      </div>

      {/* ── Items Grid ─────────────────────────────────────────────────────── */}
      <div style={{
        background:   '#ffffff',
        border:       '1px solid #f0f0f0',
        borderRadius: 8,
        overflow:     'hidden',
        marginTop:    12,
        boxShadow:    '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)',
      }}>
        {/* Grid header */}
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
        </div>

        {/* AG Grid — autoHeight: grows with rows, page scroll handles overflow */}
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
          noRowsOverlayComponent={() => (
            <div style={{ textAlign: 'center', padding: '24px 0' }}>
              <FileAddOutlined style={{ fontSize: 28, color: '#d1d5db', display: 'block', marginBottom: 8 }} />
              <Typography.Text type="secondary" style={{ fontSize: 13 }}>
                Fill the form above and click "Add to List"
              </Typography.Text>
            </div>
          )}
        />

        {/* Footer totals */}
        {validCount > 0 && (
          <div style={{
            display: 'flex', justifyContent: 'flex-end', alignItems: 'center', gap: 16,
            padding: '10px 16px', borderTop: '1px solid #f0f0f0',
          }}>
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>
              {validCount} line{validCount !== 1 ? 's' : ''}
            </Typography.Text>
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>Grand Total</Typography.Text>
            <Typography.Text strong style={{ fontSize: 16, fontVariantNumeric: 'tabular-nums' }}>
              ₹ {subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
            </Typography.Text>
          </div>
        )}
      </div>

      {/* ── Per-line Delete Modal (saved PRs only) ─────────────────────────── */}
      <Modal
        title={`Delete Line — ${lineDeleteRow?.itemCode ?? ''}`}
        open={!!lineDeleteRow}
        onCancel={() => setLineDeleteRow(null)}
        onOk={async () => {
          if (!lineDeleteReason || !lineDeleteRow?.prSNo || !savedPrNo) return
          setLineDeleting(true)
          try {
            await purchaseRequisitionApi.deleteLine(savedPrNo, lineDeleteRow.prSNo, lineDeleteReason)
            onDelete(lineDeleteRow.key)
            if (editingKey === lineDeleteRow.key) cancelEdit()
            setLineDeleteRow(null)
          } catch { /* error handled by global interceptor */ }
          finally { setLineDeleting(false) }
        }}
        okText="Delete Line"
        okButtonProps={{ danger: true, loading: lineDeleting, disabled: !lineDeleteReason }}
        destroyOnClose
      >
        <p style={{ marginBottom: 12 }}>Select a reason for deleting this line:</p>
        <Select
          placeholder="Select reason…"
          value={lineDeleteReason}
          onChange={setLineDeleteReason}
          options={deleteReasons.map((r) => ({ value: r.reasonCode, label: `${r.reasonCode} – ${r.reasonDesc}` }))}
          style={{ width: '100%' }}
        />
      </Modal>

      {/* ── Rate History Modal ──────────────────────────────────────────────── */}
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
}
