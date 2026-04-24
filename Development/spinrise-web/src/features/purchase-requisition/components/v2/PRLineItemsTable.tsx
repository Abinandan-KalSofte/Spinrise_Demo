import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { AgGridReact } from 'ag-grid-react'
import type { ColDef, GridApi, GridReadyEvent, ICellRendererParams, CellStyle } from 'ag-grid-community'
import { AllCommunityModule, ModuleRegistry, themeQuartz } from 'ag-grid-community'
import {
  Button, Checkbox, Col, DatePicker, Drawer, Empty, Form, Input,
  InputNumber, Modal, Popconfirm, Row, Select, Spin,
  Table, Tag, Tooltip, Typography,
} from 'antd'
import {
  ClockCircleOutlined, DeleteOutlined, EditOutlined,
  FileAddOutlined, PlusOutlined, SettingOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { Dayjs } from 'dayjs'
import { lookupApi } from '../../api/lookupApi'
import { purchaseRequisitionApi } from '../../api/purchaseRequisitionApi'
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
    key: crypto.randomUUID(),
    itemCode: '', itemName: '', uom: '',
    currentStock: null, qtyRequired: 1, requiredDate: null,
    place: '', approxCost: null, remarks: '', machineNo: '',
    costCentreCode: '', budgetGroupCode: '', subCostCode: null,
    isSample: false, lastPoRate: null, lastPoDate: null,
    lastPoSupplierCode: null, lastPoSupplierName: null,
    categoryCode: '', model: '', maxCost: null, rate: null,
    drawNo: '', catNo: '',
  }
}

// ── AG Grid theme ─────────────────────────────────────────────────────────────

const gridTheme = themeQuartz.withParams({
  headerBackgroundColor: '#1e293b',
  headerTextColor:       '#f1f5f9',
  headerFontWeight:      700,
  headerFontSize:        11,
  rowHeight:             34,
  headerHeight:          38,
  oddRowBackgroundColor: '#f8fafc',
  rowHoverColor:         '#eff6ff',
  borderColor:           '#e5e7eb',
  cellTextColor:         '#1e293b',
  fontSize:              13,
  rowBorder:             true,
  columnBorder:          false,
})

const CELL: CellStyle = { display: 'flex', alignItems: 'center' }

// ── Input style helpers ───────────────────────────────────────────────────────

const INPUT_STYLE: React.CSSProperties = {
  background:  '#f8fafc',
  border:      '1px solid #d1d5db',
  borderRadius: 6,
}
const READONLY_STYLE: React.CSSProperties = {
  background: '#f1f5f9',
  border:     '1px solid #e2e8f0',
  color:      '#64748b',
  cursor:     'not-allowed',
  borderRadius: 6,
}
const LABEL_STYLE: React.CSSProperties = {
  fontWeight: 500,
  color:      '#374151',
  fontSize:   13,
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
  const [editingKey,    setEditingKey]    = useState<string | null>(null)  // null = add mode
  const [itemMeta,      setItemMeta]      = useState<{ itemName: string; uom: string; currentStock: number | null } | null>(null)
  const [itemOptions,   setItemOptions]   = useState<ItemSelectOption[]>([])
  const [itemSearching, setItemSearching] = useState(false)

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

  const machineOpts = machines.map((m) => ({ value: m.macNo, label: `${m.macNo} – ${m.description}` }))

  const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)
  const seqRef      = useRef(0)

  // No auto-empty row — entry form below handles adding items

  // ── Flash cleanup ─────────────────────────────────────────────────────────
  useEffect(() => {
    if (flashKey) { const t = setTimeout(() => setFlashKey(null), 700); return () => clearTimeout(t) }
  }, [flashKey])

  // ── Item search ───────────────────────────────────────────────────────────
  const handleItemSearch = useCallback((q: string) => {
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
    // Pre-fill rate from last PO if available (will be overridden by user)
    entryForm.setFieldValue('rate', null)

    // G11: Call getItemInfo to check for pending indents/PRs and get rate history
    if (prDate && depCode) {
      (async () => {
        try {
          const prDateObj = dayjs(prDate)
          // Calculate financial year: April to March
          const month = prDateObj.month() // 0-indexed
          const year = prDateObj.year()
          const fy = month >= 3 ? year : year - 1
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

          // Pre-fill rate from last PO
          if (info.lastPoRate) {
            entryForm.setFieldValue('rate', info.lastPoRate)
          }

          // Show warnings for pending indents/PRs if checks are enabled
          if (preCheckResult?.pendingIndentCheckEnabled && info.hasPendingIndent) {
            const msg = `Pending indent exists for this item — Qty: ${info.pendingIndentQty}`
            onWarning?.(msg)
          }
          if (preCheckResult?.pendingPRCheckEnabled && info.hasPendingPR) {
            const msg = `Open PR (${info.pendingPrNo}) dated ${dayjs(info.pendingPrDate).format('DD/MM/YYYY')} already exists for this item`
            onWarning?.(msg)
          }
        } catch {
          // Silently fail — getItemInfo is supplementary
        }
      })()
    }
  }, [entryForm, depCode, prDate, preCheckResult, onWarning])

  // ── Populate entry form for edit ──────────────────────────────────────────
  const startEdit = useCallback((row: PRLineFormItem) => {
    setEditingKey(row.key)
    setItemMeta({ itemName: row.itemName, uom: row.uom, currentStock: row.currentStock })
    if (row.itemCode) {
      setItemOptions([{
        value: row.itemCode,
        label: `${row.itemCode} – ${row.itemName}`,
        _item: { itemCode: row.itemCode, itemName: row.itemName, uom: row.uom, currentStock: row.currentStock ?? undefined },
      }])
    }
    entryForm.setFieldsValue({
      itemCode:     row.itemCode,
      qtyRequired:  row.qtyRequired,
      rate:         row.rate,
      requiredDate: row.requiredDate ? dayjs(row.requiredDate) : null,
      remarks:      row.remarks,
      machineNo:    row.machineNo || null,
      drawNo:       row.drawNo ?? '',
      catNo:        row.catNo ?? '',
      place:        row.place ?? '',
      isSample:     row.isSample ?? false,
    })
  }, [entryForm])

  const cancelEdit = useCallback(() => {
    setEditingKey(null)
    setItemMeta(null)
    setItemOptions([])
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
        drawNo:      values.drawNo ?? '',
        catNo:       values.catNo ?? '',
        place:       values.place ?? '',
        isSample:    values.isSample ?? false,
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
        itemCode:    values.itemCode,
        qtyRequired: values.qtyRequired,
        rate:        values.rate,
        requiredDate: values.requiredDate ? values.requiredDate.format('YYYY-MM-DD') : null,
        remarks:     values.remarks ?? '',
        machineNo:   values.machineNo ?? '',
        drawNo:      values.drawNo ?? '',
        catNo:       values.catNo ?? '',
        place:       values.place ?? '',
        isSample:    values.isSample ?? false,
        approxCost:  values.rate && values.qtyRequired
          ? parseFloat((values.rate * values.qtyRequired).toFixed(2))
          : null,
      }
      onAdd(row)
      setFlashKey(row.key)
      // Clear form and focus item code
      setItemMeta(null)
      setItemOptions([])
      entryForm.resetFields()
      setTimeout(() => {
        const el = document.querySelector<HTMLElement>('.pr-entry-item-select input')
        el?.focus()
      }, 80)
    }
  }, [editingKey, entryForm, itemMeta, onAdd, onUpdate, cancelEdit])

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

  // ── Column defs ───────────────────────────────────────────────────────────
  const colDefs = useMemo((): ColDef<PRLineFormItem>[] => [
    {
      headerName: '#',
      colId:      'idx',
      width:      46,
      sortable:   false,
      cellStyle:  { ...CELL, justifyContent: 'center', color: '#94a3b8', fontSize: 11 },
      valueGetter: ({ node }) => (node?.rowIndex ?? 0) + 1,
    },
    {
      headerName: 'Item Code',
      field:      'itemCode',
      width:      130,
      cellStyle:  { ...CELL, fontWeight: 700, color: '#1677ff', fontFamily: 'monospace', fontSize: 12 },
      valueFormatter: ({ value }) => value || '—',
    },
    {
      headerName: 'Description',
      field:      'itemName',
      flex:       1,
      minWidth:   160,
      cellStyle:  CELL,
      valueFormatter: ({ value }) => (value as string) || '—',
    },
    {
      headerName:  'Qty',
      field:       'qtyRequired',
      width:       76,
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 600 },
      headerClass: 'ag-right-aligned-header',
    },
    {
      headerName: 'UOM',
      field:      'uom',
      width:      66,
      cellStyle:  { ...CELL, justifyContent: 'center' },
      cellRenderer: ({ value }: ICellRendererParams) =>
        value
          ? <Tag style={{ fontSize: 11, margin: 0 }}>{value as string}</Tag>
          : <Typography.Text type="secondary" style={{ fontSize: 11 }}>—</Typography.Text>,
    },
    {
      headerName:  'Unit Price',
      field:       'rate',
      width:       108,
      cellStyle:   { ...CELL, justifyContent: 'flex-end' },
      headerClass: 'ag-right-aligned-header',
      valueFormatter: ({ value }) =>
        value != null ? `₹ ${Number(value).toFixed(2)}` : '—',
    },
    {
      headerName:  'Total',
      colId:       'total',
      width:       112,
      cellStyle:   { ...CELL, justifyContent: 'flex-end', fontWeight: 700, color: '#16a34a' },
      headerClass: 'ag-right-aligned-header',
      valueGetter: ({ data }) => data ? (data.rate ?? 0) * data.qtyRequired : 0,
      valueFormatter: ({ value }) =>
        Number(value) > 0
          ? `₹ ${Number(value).toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
      cellClassRules: { 'pr-cell-flash': ({ data }) => !!data && data.key === flashKey },
    },
    {
      headerName: 'Req. Date',
      field:      'requiredDate',
      width:      108,
      cellStyle:  CELL,
      valueFormatter: ({ value }) =>
        value ? dayjs(value as string).format('DD/MM/YY') : '—',
    },
    {
      headerName: '',
      colId:      'actions',
      width:      116,
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
            <Tooltip title="Rate History">
              <Button
                type="text" size="small"
                icon={<ClockCircleOutlined style={{ color: '#7c3aed' }} />}
                disabled={!data.itemCode}
                onClick={() => void openHistory(data)}
              />
            </Tooltip>
            <Tooltip title="Advanced">
              <Button
                type="text" size="small"
                icon={<SettingOutlined style={{ color: '#6b7280' }} />}
                disabled={disabled}
                onClick={() => openDrawer(data)}
              />
            </Tooltip>
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
  ], [disabled, flashKey, startEdit, openHistory, openDrawer, onDelete, editingKey, cancelEdit, savedPrNo])

  const defaultColDef = useMemo<ColDef>(() => ({ resizable: true, sortable: false, filter: false }), [])

  const onGridReady = useCallback((e: GridReadyEvent) => {
    apiRef.current = e.api
    e.api.sizeColumnsToFit()
  }, [])

  const getRowId = useCallback(({ data }: { data: PRLineFormItem }) => data.key, [])

  const getRowClass = useCallback(({ data }: { data?: PRLineFormItem }) =>
    data?.key === editingKey ? 'pr-row--editing' : '', [editingKey])

  const validCount = items.filter((l) => l.itemCode.trim() !== '').length
  const subtotal   = useMemo(() => items.reduce((s, l) => s + (l.rate ?? 0) * l.qtyRequired, 0), [items])

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
    { title: 'Pending',      dataIndex: 'pendingQty',    key: 'pendingQty',    width: 72, align: 'right' as const,
      render: (v: number) => v != null && v > 0 ? <Tag color="orange" style={{ fontVariantNumeric: 'tabular-nums' }}>{Number(v).toFixed(2)}</Tag> : '—' },
  ], [])

  return (
    <>
      <style>{`
        .pr-items-grid .ag-header { background: #1e293b !important; }
        .pr-items-grid .ag-header-cell {
          color: #f1f5f9 !important; font-weight: 700 !important;
          font-size: 11px !important; text-transform: uppercase; letter-spacing: 0.04em;
          border-right: 1px solid rgba(255,255,255,0.06) !important;
        }
        .pr-items-grid .ag-header-cell:last-child,
        .pr-items-grid .ag-pinned-right-header .ag-header-cell { border-right: none !important; }
        .pr-items-grid .ag-pinned-right-header { background: #1e293b !important; }
        .pr-items-grid .ag-row-even { background: #ffffff; }
        .pr-items-grid .ag-row-odd  { background: #f8fafc; }
        .pr-items-grid .ag-row:hover { background: #eff6ff !important; }
        .pr-items-grid .ag-pinned-right-cols-container .ag-row-even { background: #ffffff; }
        .pr-items-grid .ag-pinned-right-cols-container .ag-row-odd  { background: #f8fafc; }
        .pr-items-grid .ag-pinned-right-cols-container .ag-row:hover { background: #eff6ff !important; }
        .pr-items-grid .pr-row--editing { background: #eff6ff !important; outline: 2px solid #1677ff; outline-offset: -2px; }
        .pr-cell-flash { animation: prFlash 0.65s ease-out; }
        @keyframes prFlash { 0%,100%{background:transparent} 35%{background:#dcfce7} }
        .ag-right-aligned-header .ag-header-cell-label { justify-content: flex-end; }
        .pr-entry-form .ant-input,
        .pr-entry-form .ant-input-number,
        .pr-entry-form .ant-picker,
        .pr-entry-form .ant-select:not(.ant-select-disabled) .ant-select-selector {
          background: #f8fafc !important;
          border: 1px solid #d1d5db !important;
          border-radius: 6px !important;
        }
        .pr-entry-form .ant-input:focus,
        .pr-entry-form .ant-input-number-focused,
        .pr-entry-form .ant-picker-focused,
        .pr-entry-form .ant-select-focused .ant-select-selector {
          border-color: #1677ff !important;
          box-shadow: 0 0 0 2px rgba(22,119,255,0.15) !important;
        }
        .pr-entry-form .ant-form-item-label > label {
          font-weight: 500 !important;
          color: #374151 !important;
          font-size: 13px !important;
        }
      `}</style>

      {/* ── Item Entry Panel ────────────────────────────────────────────────── */}
      <div className="pr-entry-form" style={{
        background:   '#f8fafc',
        border:       '1px solid #e2e8f0',
        borderLeft:   '3px solid #1677ff',
        borderRadius: 8,
        padding:      '16px 20px',
      }}>
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 14 }}>
          <Typography.Text strong style={{ fontSize: 13, color: '#1e293b' }}>
            {editingKey ? 'Edit Item' : 'Item Entry'}
          </Typography.Text>
          {editingKey && (
            <Tag color="blue" style={{ fontSize: 11 }}>
              Editing row #{(items.findIndex((r) => r.key === editingKey) + 1)}
            </Tag>
          )}
        </div>

        <Form form={entryForm} layout="vertical" size="middle" disabled={disabled}>
          <Row gutter={[12, 0]}>
            {/* Item Code */}
            <Col xs={24} sm={12} md={6}>
              <Form.Item
                name="itemCode"
                label={<span style={LABEL_STYLE}>Item Code</span>}
                rules={[{ required: true, message: 'Required' }]}
                style={{ marginBottom: 12 }}
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
                  onClear={() => { setItemMeta(null); setItemOptions([]) }}
                />
              </Form.Item>
            </Col>

            {/* Description — auto-filled */}
            <Col xs={24} sm={12} md={7}>
              <Form.Item
                label={<span style={LABEL_STYLE}>Description</span>}
                style={{ marginBottom: 12 }}
              >
                <Input
                  value={itemMeta?.itemName ?? ''}
                  readOnly
                  style={READONLY_STYLE}
                  placeholder="Auto-filled on item select"
                />
              </Form.Item>
            </Col>

            {/* UOM + Stock badge */}
            <Col xs={12} sm={6} md={3}>
              <Form.Item
                label={<span style={LABEL_STYLE}>UOM</span>}
                style={{ marginBottom: 12 }}
              >
                <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                  <Input
                    value={itemMeta?.uom ?? ''}
                    readOnly
                    style={{ ...READONLY_STYLE, width: 70 }}
                    placeholder="—"
                  />
                  {itemMeta?.currentStock != null && (
                    <Tooltip title="Current stock">
                      <Tag color={itemMeta.currentStock > 0 ? 'green' : 'orange'} style={{ fontSize: 11, margin: 0 }}>
                        {itemMeta.currentStock} in stock
                      </Tag>
                    </Tooltip>
                  )}
                </div>
              </Form.Item>
            </Col>

            {/* Qty */}
            <Col xs={12} sm={6} md={3}>
              <Form.Item
                name="qtyRequired"
                label={<span style={LABEL_STYLE}>Qty</span>}
                rules={[{ required: true, message: 'Req.' }, { type: 'number', min: 0.001, message: '> 0' }]}
                initialValue={1}
                style={{ marginBottom: 12 }}
              >
                <InputNumber
                  style={{ width: '100%', ...INPUT_STYLE }}
                  min={0.001} precision={3}
                />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[12, 0]}>
            {/* Unit Price */}
            <Col xs={12} sm={8} md={5}>
              <Form.Item
                name="rate"
                label={<span style={LABEL_STYLE}>Unit Price (₹)</span>}
                rules={[{ type: 'number', min: 0, message: 'Must be ≥ 0' }]}
                style={{ marginBottom: 12 }}
              >
                <InputNumber
                  style={{ width: '100%', ...INPUT_STYLE }}
                  min={0} precision={2} placeholder="0.00"
                  prefix="₹"
                />
              </Form.Item>
            </Col>

            {/* Required Date */}
            <Col xs={12} sm={8} md={5}>
              <Form.Item
                name="requiredDate"
                label={<span style={LABEL_STYLE}>Required Date</span>}
                style={{ marginBottom: 12 }}
              >
                <DatePicker
                  style={{ width: '100%', ...INPUT_STYLE }}
                  format="DD/MM/YYYY"
                  placeholder="dd/mm/yyyy"
                />
              </Form.Item>
            </Col>

            {/* Remarks */}
            <Col xs={24} sm={8} md={9}>
              <Form.Item
                name="remarks"
                label={<span style={LABEL_STYLE}>Remarks</span>}
                style={{ marginBottom: 12 }}
              >
                <Input
                  style={INPUT_STYLE}
                  placeholder="Optional notes…"
                  maxLength={100}
                />
              </Form.Item>
            </Col>

            {/* Buttons */}
            <Col xs={24} sm={24} md={5} style={{ display: 'flex', alignItems: 'flex-end', paddingBottom: 12 }}>
              {editingKey ? (
                <div style={{ display: 'flex', gap: 8, width: '100%' }}>
                  <Button
                    type="primary"
                    style={{ flex: 1 }}
                    onClick={() => void handleAddOrUpdate()}
                    disabled={disabled}
                  >
                    Update Row
                  </Button>
                  <Button onClick={cancelEdit} disabled={disabled}>
                    Cancel
                  </Button>
                </div>
              ) : (
                <Button
                  type="primary"
                  icon={<PlusOutlined />}
                  style={{ width: '100%' }}
                  onClick={() => void handleAddOrUpdate()}
                  disabled={disabled}
                >
                  Add to List
                </Button>
              )}
            </Col>
          </Row>

          <Row gutter={[12, 0]}>
            {/* Machine */}
            <Col xs={24} sm={8} md={8}>
              <Form.Item
                name="machineNo"
                label={<span style={LABEL_STYLE}>Machine</span>}
                style={{ marginBottom: 12 }}
              >
                <Select
                  options={machineOpts}
                  allowClear showSearch
                  filterOption={(input, opt) =>
                    (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
                  }
                  placeholder="Select machine…"
                  style={INPUT_STYLE}
                />
              </Form.Item>
            </Col>

            {/* Drawing No. */}
            <Col xs={12} sm={8} md={8}>
              <Form.Item
                name="drawNo"
                label={<span style={LABEL_STYLE}>Drawing No.</span>}
                style={{ marginBottom: 12 }}
              >
                <Input style={INPUT_STYLE} placeholder="Drawing number…" maxLength={30} />
              </Form.Item>
            </Col>

            {/* Cat No. */}
            <Col xs={12} sm={8} md={8}>
              <Form.Item
                name="catNo"
                label={<span style={LABEL_STYLE}>Cat No.</span>}
                style={{ marginBottom: 12 }}
              >
                <Input style={INPUT_STYLE} placeholder="Catalogue number…" maxLength={30} />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[12, 0]}>
            {/* Place */}
            <Col xs={18} sm={16} md={10}>
              <Form.Item
                name="place"
                label={<span style={LABEL_STYLE}>Place</span>}
                style={{ marginBottom: 12 }}
              >
                <Input style={INPUT_STYLE} placeholder="Delivery place…" maxLength={50} />
              </Form.Item>
            </Col>

            {/* Sample */}
            <Col xs={6} sm={8} md={4} style={{ display: 'flex', alignItems: 'flex-end', paddingBottom: 12 }}>
              <Form.Item name="isSample" valuePropName="checked" style={{ marginBottom: 0 }}>
                <Checkbox>Sample</Checkbox>
              </Form.Item>
            </Col>
          </Row>
        </Form>
      </div>

      {/* ── Items Grid ─────────────────────────────────────────────────────── */}
      <div style={{
        background: '#ffffff', border: '1px solid #e5e7eb',
        borderRadius: 10, overflow: 'hidden',
        boxShadow: '0 1px 3px rgba(0,0,0,0.05)',
        marginTop: 12,
      }}>
        {/* Section header */}
        <div style={{
          display: 'flex', alignItems: 'center', justifyContent: 'space-between',
          padding: '10px 16px', borderBottom: '1px solid #e5e7eb', background: '#fafafa',
        }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <Typography.Text strong style={{ fontSize: 13, color: '#1e293b' }}>Added Items</Typography.Text>
            {validCount > 0 && (
              <span style={{
                fontSize: 11, fontWeight: 600, color: '#6366f1',
                background: 'rgba(99,102,241,0.08)', border: '1px solid rgba(99,102,241,0.20)',
                borderRadius: 10, padding: '1px 8px',
              }}>
                {validCount} {validCount === 1 ? 'item' : 'items'}
              </span>
            )}
          </div>
        </div>

        {/* AG Grid — read-only */}
        <div style={{ height: Math.max(120, Math.min(items.length * 34 + 40, 400)) }}>
          <AgGridReact<PRLineFormItem>
            ref={gridRef}
            className="pr-items-grid"
            theme={gridTheme}
            rowData={items}
            columnDefs={colDefs}
            defaultColDef={defaultColDef}
            getRowId={getRowId}
            getRowClass={getRowClass}
            onGridReady={onGridReady}
            domLayout="normal"
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
        </div>

        {/* Footer totals */}
        {validCount > 0 && (
          <div style={{
            display: 'flex', justifyContent: 'flex-end', alignItems: 'center', gap: 16,
            padding: '10px 16px', borderTop: '2px solid #e5e7eb', background: '#f8fafc',
          }}>
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>
              {validCount} line{validCount !== 1 ? 's' : ''}
            </Typography.Text>
            <span style={{ width: 1, height: 14, background: '#e5e7eb' }} />
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>Grand Total</Typography.Text>
            <Typography.Text strong style={{ fontSize: 16, color: '#16a34a', fontVariantNumeric: 'tabular-nums' }}>
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
          <div style={{
            background: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: 6,
            padding: '8px 14px', marginBottom: 14, display: 'flex', alignItems: 'center', gap: 8,
          }}>
            <Typography.Text style={{ fontSize: 13, color: '#166534' }}>
              Current Stock:
            </Typography.Text>
            <Typography.Text strong style={{ fontSize: 14, color: '#15803d' }}>
              {historyStock}
            </Typography.Text>
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
            <Input placeholder="Category code…" maxLength={10} />
          </Form.Item>
          <Form.Item name="remarks" label="Remarks">
            <Input.TextArea placeholder="Optional notes…" maxLength={100} rows={3} />
          </Form.Item>
          <Form.Item name="model" label="Model">
            <Input placeholder="Model…" maxLength={50} />
          </Form.Item>
          <Form.Item name="maxCost" label="Max Cost">
            <InputNumber style={{ width: '100%' }} min={0} precision={2} prefix="₹" />
          </Form.Item>
        </Form>
      </Drawer>
    </>
  )
}
