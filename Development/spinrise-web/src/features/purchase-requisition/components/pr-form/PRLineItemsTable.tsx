/**
 * PRLineItemsTable — REFACTORED
 * Enterprise Grid Architecture:
 * - View Mode: Text-only rows (read-only display)
 * - Row Edit Mode: Only active row editable, others show text
 * - New Row Mode: Trailing row for adding new items
 * - Compact density, sticky headers/footers, optimized keyboard workflow
 */

import {
  forwardRef,
  useCallback,
  useEffect,
  useImperativeHandle,
  useMemo,
  useRef,
  useState,
  memo,
} from 'react'
import {
  Button, Checkbox, DatePicker, Drawer, Empty, Input, InputNumber,
  type InputRef, Modal, Select, Space, Spin, Tag, Table, Tooltip, Typography,
} from 'antd'
import {
  DeleteOutlined, EyeOutlined, FileImageOutlined, HistoryOutlined, SearchOutlined, ClockCircleOutlined,
} from '@ant-design/icons'
import { ItemPickerModal } from './ItemPickerModal'
import dayjs from 'dayjs'
import { purchaseRequisitionApi } from '../../api/purchaseRequisitionApi'
import { getFYBounds } from '@/shared/lib/dateUtils'
import { useLookupStore } from '../../store/useLookupStore'
import { generateUUID } from '@/shared/lib/uuid'
import type {
  ItemLookup, MachineLookup, PRItemHistoryDto, PRLineFormItem, PreCheckResult,
} from '../../types'

// ── Types ─────────────────────────────────────────────────────────────────────

export interface PRLineItemsTableHandle {
  flushEdit: () => Promise<void>
}

interface PRLineItemsTableProps {
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

// ── Constants ──────────────────────────────────────────────────────────────────

const CELL_PADDING = '4px 6px'
const ROW_HEIGHT = '28px'

const TH: React.CSSProperties = {
  padding: '6px 8px',
  fontSize: 10,
  fontWeight: 700,
  letterSpacing: '0.06em',
  color: '#f1f5f9',
  background: '#1e293b',
  borderBottom: '2px solid #0f172a',
  whiteSpace: 'nowrap',
  position: 'sticky',
  top: 0,
  zIndex: 10,
}

const TD: React.CSSProperties = {
  padding: CELL_PADDING,
  verticalAlign: 'middle',
  borderBottom: '1px solid #f0f0f0',
  height: ROW_HEIGHT,
}

const TD_TEXT: React.CSSProperties = {
  ...TD,
  fontSize: 11,
  color: '#1e293b',
}


// ── Helpers ────────────────────────────────────────────────────────────────────

function makeEmptyRow(): PRLineFormItem {
  return {
    key: generateUUID(),
    itemCode: '', itemName: '', uom: '',
    currentStock: null, minLevel: null, qtyRequired: 0, requiredDate: null,
    place: '', approxCost: null, remarks: '', machineNo: '',
    costCentreCode: '', budgetGroupCode: '', subCostCode: null,
    isSample: false, lastPoRate: null, lastPoDate: null,
    lastPoSupplierCode: null, lastPoSupplierName: null,
    categoryCode: '', model: '', maxCost: null, rate: null,
    drawNo: '', catNo: '',
  }
}

function calcApproxCost(rate: number | null, qty: number): number {
  if (!rate || rate <= 0) return 0
  return parseFloat((rate * qty).toFixed(2))
}

// ── Cell Renderers ────────────────────────────────────────────────────────────

interface ReadOnlyCellProps {
  value?: any
  type?: 'text' | 'number' | 'currency' | 'date'
  precision?: number
  placeholder?: string
}

function ReadOnlyCell({ value, type = 'text', precision = 3, placeholder: _placeholder }: ReadOnlyCellProps) {
  if (value === null || value === undefined || value === '') {
    return <span style={{ color: '#d1d5db' }}>—</span>
  }

  switch (type) {
    case 'number':
      return <span style={{ fontVariantNumeric: 'tabular-nums' }}>{Number(value).toFixed(precision)}</span>
    case 'currency':
      return <span style={{ fontVariantNumeric: 'tabular-nums', textAlign: 'right', display: 'block' }}>
        ₹ {Number(value).toLocaleString('en-IN', { minimumFractionDigits: precision, maximumFractionDigits: precision })}
      </span>
    case 'date':
      return <span>{value ? dayjs(value).format('DD-MMM-YYYY') : '—'}</span>
    default:
      return <span style={{ color: '#1e293b' }}>{value}</span>
  }
}

// ── Read-Only Row Renderer ─────────────────────────────────────────────────────

interface ReadOnlyRowProps {
  row: PRLineFormItem
  idx: number
  machines: MachineLookup[]
  subCosts: { sccCode: number; sccName: string }[]
  onView: (row: PRLineFormItem) => void
}

const ReadOnlyRow = memo(({ row, idx, machines, subCosts, onView }: ReadOnlyRowProps) => {
  const approxCost = (() => {
    const r = row.rate && row.rate > 0 ? row.rate : (row.lastPoRate ?? 0)
    return r * row.qtyRequired
  })()
  const machineLabel = machines.find((m) => m.macNo === row.machineNo)?.description
  const subCostLabel = row.subCostName || subCosts.find((s) => s.sccCode === row.subCostCode)?.sccName

  return (
    <>
      <td style={{ ...TD_TEXT, width: 30, textAlign: 'center', color: '#94a3b8' }}>{idx + 1}</td>
      <td style={{ ...TD_TEXT, width: 88, fontFamily: 'monospace', fontWeight: 700 }}>{row.itemCode}</td>
      <td style={{ ...TD_TEXT, minWidth: 150 }}>
        <div>{row.itemName}</div>
        {row.itemGroup && <div style={{ fontSize: 9, color: '#888', marginTop: 1 }}>{row.itemGroup}</div>}
      </td>
      <td style={{ ...TD_TEXT, width: 46, textAlign: 'center' }}><ReadOnlyCell value={row.uom} /></td>
      <td style={{ ...TD_TEXT, width: 82, textAlign: 'right' }}><ReadOnlyCell value={row.qtyRequired} type="number" precision={3} /></td>
      <td style={{ ...TD_TEXT, width: 118, textAlign: 'right' }}><ReadOnlyCell value={row.rate} type="number" precision={4} /></td>
      <td style={{ ...TD_TEXT, width: 130, textAlign: 'right' }}><ReadOnlyCell value={approxCost} type="currency" precision={2} /></td>
      <td style={{ ...TD_TEXT, width: 148 }}><ReadOnlyCell value={row.requiredDate} type="date" /></td>
      <td style={{ ...TD_TEXT, width: 120, fontSize: 10 }}><ReadOnlyCell value={machineLabel} /></td>
      <td style={{ ...TD_TEXT, width: 140, fontSize: 10 }}><ReadOnlyCell value={subCostLabel} /></td>
      <td style={{ ...TD_TEXT, minWidth: 110, fontSize: 10, maxWidth: '150px', overflow: 'hidden', textOverflow: 'ellipsis' }}>
        <ReadOnlyCell value={row.remarks} />
      </td>
      <td style={{ ...TD_TEXT, width: 52, textAlign: 'center' }}>{row.isSample ? '✓' : ''}</td>
      <td style={{ ...TD_TEXT, width: 60, textAlign: 'center' }}>
        <Tooltip title="View Details">
          <Button tabIndex={-1} type="text" size="small" icon={<EyeOutlined style={{ color: '#7c3aed', fontSize: 12 }} />} onClick={() => onView(row)} />
        </Tooltip>
      </td>
    </>
  )
}, (prev, next) => prev.row === next.row && prev.idx === next.idx)
ReadOnlyRow.displayName = 'ReadOnlyRow'

// ── Editable Row Renderer ──────────────────────────────────────────────────────

interface EditableRowProps {
  row: PRLineFormItem
  idx: number
  machines: MachineLookup[]
  subCosts: { sccCode: number; sccName: string }[]
  qtyError: boolean
  isLast: boolean
  isFirstRow: boolean
  isLastRow:  boolean
  onUpdate: (field: keyof PRLineFormItem, value: any) => void
  onView: (row: PRLineFormItem) => void
  onDelete: () => void
  onHistory: () => void
  onTabToNext: () => void
  onTabToPrev: () => void
}

const EditableRow = memo(({ row, idx, machines, subCosts, qtyError, isLast, isFirstRow, isLastRow, onUpdate, onView, onDelete, onHistory, onTabToNext, onTabToPrev }: EditableRowProps) => {
  const approxCost = (() => {
    const r = row.rate && row.rate > 0 ? row.rate : (row.lastPoRate ?? 0)
    return r * row.qtyRequired
  })()

  const subCostOpts = useMemo(() => subCosts.map((s) => ({ value: s.sccCode, label: `${s.sccCode} – ${s.sccName}` })), [subCosts])
  const machineOpts = useMemo(() => machines.map((m) => ({ value: m.macNo, label: `${m.macNo} – ${m.description}` })), [machines])
  const deleteDisable = isLast
  const deleteTip = isLast ? 'At least one line item is required' : 'Delete line'

  const minL = row.minLevel ?? 0
  const qtyTooltip = qtyError
    ? minL > 0
      ? `Qty must exceed min level (${Number(minL).toFixed(3)})`
      : 'Qty must be greater than 0'
    : ''

  return (
    <>
      <td style={{ ...TD, width: 30, textAlign: 'center', color: '#94a3b8' }}>{idx + 1}</td>
      <td style={{ ...TD, width: 88, fontFamily: 'monospace', fontWeight: 700, color: '#1e293b' }}>{row.itemCode}</td>
      <td style={{ ...TD, minWidth: 150, fontSize: 11, color: '#1e293b' }}>
        <div>{row.itemName}</div>
        {row.itemGroup && <div style={{ fontSize: 9, color: '#888' }}>{row.itemGroup}</div>}
      </td>
      <td style={{ ...TD, width: 46, textAlign: 'center' }}>
        {row.uom ? <Tag style={{ fontSize: 11, margin: 0, padding: '0 4px' }}>{row.uom}</Tag> : <span style={{ color: '#d1d5db' }}>—</span>}
      </td>
      <td style={{ ...TD, width: 82 }} data-qty-for={row.key}>
        <Tooltip title={qtyTooltip} open={qtyError} color="#ff4d4f">
          <InputNumber
            size="small"
            value={row.qtyRequired}
            min={0}
            precision={3}
            style={{ width: '100%', height: '24px' }}
            status={qtyError ? 'error' : undefined}
            onChange={(v) => onUpdate('qtyRequired', v ?? 0)}
            onKeyDown={(e) => {
              // Shift+Tab on the first editable field: navigate to previous row's Remarks.
              // Only intercept when a previous row exists; otherwise let Tab bubble naturally
              // to the form header (first row edge case).
              if (e.key === 'Tab' && e.shiftKey && !isFirstRow) {
                e.preventDefault()
                onTabToPrev()
              }
            }}
            onBlur={(e) => {
              if (!qtyError) return
              const related = e.relatedTarget as HTMLElement | null
              // Allow: any button, Ant Design dropdowns, modal content
              if (
                related?.tagName === 'BUTTON' ||
                related?.closest('button') ||
                related?.closest('.ant-modal-content') ||
                related?.closest('.ant-select-dropdown') ||
                related?.closest('.ant-picker-dropdown')
              ) return
              const input = e.target as HTMLInputElement
              requestAnimationFrame(() => input.focus())
            }}
          />
        </Tooltip>
      </td>
      <td style={{ ...TD, width: 118 }}>
        <Space.Compact style={{ width: '100%' }}>
          <InputNumber
            size="small"
            tabIndex={-1}
            value={row.rate}
            min={0}
            precision={4}
            style={{ width: '100%', height: '24px' }}
            onChange={(v) => onUpdate('rate', v ?? null)}
          />
          <Tooltip title="Rate History">
            <Button tabIndex={-1} size="small" icon={<HistoryOutlined style={{ fontSize: 11 }} />} onClick={onHistory} />
          </Tooltip>
        </Space.Compact>
      </td>
      <td style={{ ...TD, width: 130, textAlign: 'right', fontVariantNumeric: 'tabular-nums', fontWeight: 600 }}>
        {approxCost > 0 ? `₹ ${approxCost.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}` : <span style={{ color: '#d1d5db' }}>—</span>}
      </td>
      <td style={{ ...TD, width: 148 }}>
        <DatePicker
          size="small"
          value={row.requiredDate ? dayjs(row.requiredDate) : null}
          format="DD-MMM-YYYY"
          style={{ width: '100%', height: '24px' }}
          onChange={(d) => onUpdate('requiredDate', d ? d.format('YYYY-MM-DD') : null)}
        />
      </td>
      <td style={{ ...TD, width: 120 }}>
        <Select
          size="small"
          value={row.machineNo || null}
          options={machineOpts}
          allowClear
          showSearch
          style={{ width: '100%', height: '24px' }}
          placeholder="Machine…"
          onChange={(v) => onUpdate('machineNo', v ?? '')}
        />
      </td>
      <td style={{ ...TD, width: 140 }}>
        <Select
          size="small"
          value={row.subCostCode ?? null}
          options={subCostOpts}
          allowClear
          showSearch
          style={{ width: '100%', height: '24px' }}
          placeholder="Sub cost…"
          onChange={(v) => onUpdate('subCostCode', v ?? null)}
        />
      </td>
      <td style={{ ...TD, minWidth: 110 }} data-remarks-for={row.key}>
        <Input
          size="small"
          value={row.remarks}
          maxLength={500}
          placeholder="Remarks…"
          style={{ height: '24px' }}
          onChange={(e) => onUpdate('remarks', e.target.value)}
          onKeyDown={(e) => {
            // Tab on the last editable field: activate next row and focus its Qty.
            // Only intercept when a next row exists; otherwise Tab bubbles naturally
            // to the trailing search input (last row edge case).
            if (e.key === 'Tab' && !e.shiftKey && !isLastRow) {
              e.preventDefault()
              onTabToNext()
            }
          }}
        />
      </td>
      <td style={{ ...TD, width: 52, textAlign: 'center' }}>
        <Checkbox tabIndex={-1} checked={row.isSample} onChange={(e) => onUpdate('isSample', e.target.checked)} />
      </td>
      <td style={{ ...TD, width: 60, textAlign: 'center' }}>
        <Space size={2}>
          <Tooltip title="View Details">
            <Button tabIndex={-1} type="text" size="small" icon={<EyeOutlined style={{ color: '#7c3aed', fontSize: 12 }} />} onClick={() => onView(row)} />
          </Tooltip>
          <Tooltip title={deleteTip}>
            <Button
              tabIndex={-1}
              type="text" size="small" danger
              icon={<DeleteOutlined style={{ fontSize: 12 }} />}
              disabled={deleteDisable}
              onClick={onDelete}
            />
          </Tooltip>
        </Space>
      </td>
    </>
  )
})
EditableRow.displayName = 'EditableRow'

// ── Grid Summary Bar ───────────────────────────────────────────────────────────

// interface GridSummaryBarProps {
//   validCount: number
//   totalQty: number
//   subtotal: number
// }

// function GridSummaryBar({ validCount, totalQty, subtotal }: GridSummaryBarProps) {
//   return (
//     <div style={SUMMARY_BAR}>
//       <span><strong style={{ color: '#1e293b' }}>Lines:</strong> {validCount}</span>
//       <span>|</span>
//       <span><strong style={{ color: '#1e293b' }}>Qty:</strong> {totalQty.toFixed(3)}</span>
//       <span>|</span>
//       <span><strong style={{ color: '#185FA5' }}>Amount:</strong> ₹ {subtotal.toLocaleString('en-IN', { minimumFractionDigits: 2 })}</span>
//     </div>
//   )
// }

// ── Main Component ────────────────────────────────────────────────────────────────

export const PRLineItemsTable = forwardRef<PRLineItemsTableHandle, PRLineItemsTableProps>(
function PRLineItemsTable({
  items, machines, depCode, prDate, preCheckResult: _preCheckResult, disabled,
  savedPrNo, deleteReasons: _deleteReasons = [],
  onAdd, onUpdate, onDelete, onWarning: _onWarning,
}, ref) {
  const { subCosts } = useLookupStore()

  // Always-current ref so async callbacks read live item state, not stale closures
  const itemsRef = useRef<PRLineFormItem[]>(items)
  useEffect(() => { itemsRef.current = items }, [items])

  // ── Row edit state ────────────────────────────────────────────────────────
  const [editingRowKey, setEditingRowKey] = useState<string | null>(null)
  const [qtyErrorKeys, setQtyErrorKeys] = useState<Set<string>>(new Set())
  const [focusQtyKey, setFocusQtyKey] = useState<string | null>(null)
  const [focusRemarksKey, setFocusRemarksKey] = useState<string | null>(null)

  // ── Trailing row (new item) ───────────────────────────────────────────────
  const [_trailing, setTrailing] = useState<PRLineFormItem>(makeEmptyRow)
  const [_trailingDays, setTrailingDays] = useState<number | null>(null)
  const [_trailingText, setTrailingText] = useState('')
  const [_trailingItemError, setTrailingItemError] = useState(false)
  const [pickerOpen, setPickerOpen] = useState(false)

  // ── Modal states ──────────────────────────────────────────────────────────
  // Key-based: always reflects the current item state, not a stale snapshot
  const [viewRowKey, setViewRowKey] = useState<string | null>(null)
  const viewRow = viewRowKey ? (items.find((i) => i.key === viewRowKey) ?? null) : null
  const [historyOpen, setHistoryOpen] = useState(false)
  const [historyItem, setHistoryItem] = useState('')
  const [historyStock, setHistoryStock] = useState<number | null>(null)
  const [historyData, setHistoryData] = useState<PRItemHistoryDto[]>([])
  const [historyLoading, setHistoryLoading] = useState(false)
  const [_historyItemCode, setHistoryItemCode] = useState('')

  const [lineDeleteRow, setLineDeleteRow] = useState<PRLineFormItem | null>(null)
  const [lineDeleting, setLineDeleting] = useState(false)
  const [deptMachines, setDeptMachines] = useState<MachineLookup[]>([])

  const searchInputRef = useRef<InputRef>(null)

  // ── Effects ───────────────────────────────────────────────────────────────
  useEffect(() => {
    void (async () => setDeptMachines(depCode ? machines.filter((m) => !m.macNo || m.macNo.startsWith(depCode)) : machines))()
  }, [depCode, machines])

  // When drawer opens for an item missing drawNo/catNo, fetch from getItemInfo
  useEffect(() => {
    if (!viewRowKey || !depCode) return
    const item = itemsRef.current.find((i) => i.key === viewRowKey)
    if (!item || (item.drawNo && item.catNo)) return
    const { yfDate, ylDate } = getFYBounds()
    void (async () => {
      try {
        const info = await purchaseRequisitionApi.getItemInfo(depCode, item.itemCode, yfDate, ylDate, false, false)
        const current = itemsRef.current.find((i) => i.key === viewRowKey)
        if (!current || (!info.drawNo && !info.catNo)) return
        onUpdate({ ...current, drawNo: info.drawNo || current.drawNo, catNo: info.catNo || current.catNo })
      } catch { /* non-critical */ }
    })()
  }, [viewRowKey]) // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    if (!focusQtyKey) return
    const t = setTimeout(() => {
      const td = document.querySelector<HTMLTableCellElement>(`td[data-qty-for="${focusQtyKey}"]`)
      const input = td?.querySelector<HTMLInputElement>('input')
      input?.focus()
      input?.select()
      setFocusQtyKey(null)
    }, 80)
    return () => clearTimeout(t)
  }, [focusQtyKey])

  // Mirrors focusQtyKey but targets the Remarks field — used when Shift+Tab navigates
  // backward from a row's Qty to the previous row's last editable field.
  useEffect(() => {
    if (!focusRemarksKey) return
    const t = setTimeout(() => {
      const td = document.querySelector<HTMLTableCellElement>(`td[data-remarks-for="${focusRemarksKey}"]`)
      const input = td?.querySelector<HTMLInputElement>('input')
      input?.focus()
      setFocusRemarksKey(null)
    }, 80)
    return () => clearTimeout(t)
  }, [focusRemarksKey])

  useImperativeHandle(ref, () => ({
    flushEdit: async () => { /* inline edits commit on every change */ },
  }), [])

  // ── Row edit callbacks ────────────────────────────────────────────────────
  const handleRowEdit = useCallback((rowKey: string) => {
    setEditingRowKey(rowKey)
  }, [])

  const handleRowUpdate = useCallback((rowKey: string, field: keyof PRLineFormItem, value: any) => {
    const row = items.find((r) => r.key === rowKey)
    if (!row) return
    const updated = { ...row, [field]: value }
    if ((field === 'rate' || field === 'qtyRequired')) {
      updated.approxCost = calcApproxCost(
        field === 'rate' ? (value as number | null) : row.rate,
        field === 'qtyRequired' ? (value as number) : row.qtyRequired,
      )
    }
    if (field === 'subCostCode') {
      updated.subCostName = value != null
        ? (subCosts.find((s) => s.sccCode === value)?.sccName ?? null)
        : null
    }
    onUpdate(updated)
    if (field === 'qtyRequired') {
      const minL = row.minLevel ?? 0
      if ((value ?? 0) > minL) {
        setQtyErrorKeys((prev) => { const s = new Set(prev); s.delete(rowKey); return s })
      } else {
        setQtyErrorKeys((prev) => new Set([...prev, rowKey]))
      }
    }
  }, [items, onUpdate, subCosts])

  const handleRowDelete = useCallback((rowKey: string) => {
    const row = items.find((r) => r.key === rowKey)
    if (!row) return
    if (savedPrNo && row.prSNo) {
      setLineDeleteRow(row)
    } else {
      onDelete(rowKey)
    }
  }, [items, onDelete, savedPrNo])

  // ── History modal ─────────────────────────────────────────────────────────
  const historyColumns = useMemo(() => [
    { title: 'PO No',    dataIndex: 'poNo',         key: 'poNo',         width: 90 },
    { title: 'Date',     dataIndex: 'poDate',       key: 'poDate',       width: 90,
      render: (v: string) => v ? dayjs(v).format('DD-MMM-YYYY') : '—' },
    { title: 'Supplier', dataIndex: 'supplierName', key: 'supplierName', ellipsis: true },
    { title: 'Rate', dataIndex: 'rate', key: 'rate', width: 90, align: 'right' as const,
      render: (v: number) => v != null ? `₹ ${Number(v).toFixed(4)}` : '—' },
    { title: 'Ordered',  dataIndex: 'orderQty',     key: 'orderQty',     width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(3) : '—' },
    { title: 'Received', dataIndex: 'receivedQty',  key: 'receivedQty',  width: 72, align: 'right' as const,
      render: (v: number) => v != null ? Number(v).toFixed(3) : '—' },
  ], [])

  const openHistory = useCallback(async (row: PRLineFormItem) => {
    setHistoryItemCode(row.itemCode)
    setHistoryItem(row.itemCode)
    setHistoryStock(row.currentStock)
    setHistoryOpen(true)
    setHistoryLoading(true)
    try {
      const data = await purchaseRequisitionApi.getItemHistory(row.itemCode)
      setHistoryData(data)
    } catch {
      setHistoryData([])
    } finally {
      setHistoryLoading(false)
    }
  }, [])

  // ── Trailing row handlers ─────────────────────────────────────────────────
  const handleItemsFromModal = useCallback(async (picked: ItemLookup[]) => {
    const { yfDate, ylDate } = getFYBounds()
    let firstKey: string | null = null
    const newLines: PRLineFormItem[] = []

    picked.forEach((item) => {
      const newLine: PRLineFormItem = {
        ...makeEmptyRow(),
        itemCode:     item.itemCode,
        itemName:     item.itemName,
        uom:          item.uom,
        currentStock: item.currentStock ?? null,
        minLevel:     item.minLevel     ?? null,
        itemGroup:    item.itemGroup,
        drawNo:       item.drawNo       ?? '',
        catNo:        item.catNo        ?? '',
      }
      onAdd(newLine)
      newLines.push(newLine)
      if (firstKey === null) firstKey = newLine.key
      // Default qty is 0 — always invalid, flag error immediately
      setQtyErrorKeys((prev) => new Set([...prev, newLine.key]))
    })

    if (firstKey !== null) {
      setEditingRowKey(firstKey)
      setFocusQtyKey(firstKey)
    }
    setTrailing(makeEmptyRow())
    setTrailingDays(null)
    setTrailingText('')
    setTrailingItemError(false)
    setPickerOpen(false)

    // Fetch last PO rate for each picked item and populate rate + approxCost
    for (const newLine of newLines) {
      try {
        const info = await purchaseRequisitionApi.getItemInfo(
          depCode, newLine.itemCode, yfDate, ylDate, false, false,
        )
        // Read current item state — user may have already changed qty while the call was in-flight
        const current = itemsRef.current.find((i) => i.key === newLine.key)
        if (!current) continue
        const rate = info.lastPoRate ?? null
        onUpdate({
          ...current,
          rate,
          approxCost:         calcApproxCost(rate, current.qtyRequired),
          lastPoRate:         info.lastPoRate         ?? null,
          lastPoDate:         info.lastPoDate         ?? null,
          lastPoSupplierCode: info.lastPoSupplierCode ?? null,
          lastPoSupplierName: info.lastPoSupplierName ?? null,
          currentStock:       info.currentStock       ?? current.currentStock,
          drawNo:             info.drawNo             || current.drawNo,
          catNo:              info.catNo              || current.catNo,
        })
      } catch {
        // Non-critical — rate remains null if lookup fails
      }
    }
  }, [onAdd, onUpdate, depCode])

  // ── Cross-row keyboard navigation ────────────────────────────────────────
  // Called by Tab on the last editable field (Remarks) of a non-last row.
  const handleTabToNextRow = useCallback((rowKey: string) => {
    const idx = items.findIndex((r) => r.key === rowKey)
    const next = items[idx + 1]
    if (!next) return
    setEditingRowKey(next.key)
    setFocusQtyKey(next.key)
  }, [items])

  // Called by Shift+Tab on the first editable field (Qty) of a non-first row.
  const handleTabToPrevRow = useCallback((rowKey: string) => {
    const idx = items.findIndex((r) => r.key === rowKey)
    const prev = items[idx - 1]
    if (!prev) return
    setEditingRowKey(prev.key)
    setFocusRemarksKey(prev.key)
  }, [items])

  // ── Computations ──────────────────────────────────────────────────────────
  const validCount = items.filter((l) => l.itemCode.trim() !== '').length
  //const totalQty = useMemo(() => items.reduce((s, l) => s + (l.qtyRequired ?? 0), 0), [items])
  // const subtotal = useMemo(() => items.reduce((s, l) => {
  //   const r = l.rate && l.rate > 0 ? l.rate : (l.lastPoRate ?? 0)
  //   return s + r * l.qtyRequired
  // }, 0), [items])

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <div style={{ display: 'flex', flexDirection: 'column', flex: 1, minHeight: 0, background: '#fff', borderRadius: '4px', overflow: 'hidden', border: '1px solid #e2e2e2' }}>
      {/* Grid header bar */}
      <div style={{
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'space-between',
        padding: '8px 14px',
        borderBottom: '1px solid #e2e2e2',
        background: '#fafaf8',
        flexShrink: 0,
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <svg width="13" height="13" viewBox="0 0 16 16" style={{ stroke: '#185FA5', fill: 'none', strokeWidth: 1.8 }}>
            <rect x="2" y="2" width="12" height="12" rx="1.5"/><line x1="5" y1="6" x2="11" y2="6"/><line x1="5" y1="9" x2="11" y2="9"/>
          </svg>
          <span style={{ fontSize: 11, fontWeight: 600, color: '#185FA5', letterSpacing: '0.3px' }}>
            Item Lines
          </span>
          <span style={{ fontSize: 11, padding: '2px 8px', background: '#E6F1FB', color: '#185FA5', borderRadius: 20 }}>
            {validCount} {validCount === 1 ? 'item' : 'items'}
          </span>
        </div>
      </div>

      {/* Scrollable table */}
      <div style={{ flex: 1, minHeight: 0, overflowY: 'auto' }}>
        <table className="pr-items-grid" style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead style={{ position: 'sticky', top: 0, zIndex: 10 }}>
            <tr>
              <th style={{ ...TH, width: 30 }}>#</th>
              <th style={{ ...TH, width: 88 }}>Item Code</th>
              <th style={{ ...TH, minWidth: 150 }}>Description</th>
              <th style={{ ...TH, width: 46, textAlign: 'center' }}>Unit</th>
              <th style={{ ...TH, width: 82, textAlign: 'right' }}>Required Qty <span style={{ color: '#E24B4A' }}>*</span></th>
              <th style={{ ...TH, width: 118, textAlign: 'right' }}>Rate</th>
              <th style={{ ...TH, width: 130, textAlign: 'right' }}>Approx. Cost</th>
              <th style={{ ...TH, width: 148 }}>Required Date</th>
              <th style={{ ...TH, width: 120 }}>Machine</th>
              <th style={{ ...TH, width: 140 }}>Cost Centre</th>
              <th style={{ ...TH, minWidth: 110 }}>Remarks</th>
              <th style={{ ...TH, width: 52, textAlign: 'center' }}>Sample</th>
              <th style={{ ...TH, width: 60, textAlign: 'center' }} />
            </tr>
          </thead>
          <tbody>
            {items.map((row, idx) =>
              editingRowKey === row.key && !disabled ? (
                <tr key={row.key} className="pr-items-grid__editing" style={{ background: '#f0f7ff', border: '1px solid #bfdbfe' }}>
                  <EditableRow
                    row={row}
                    idx={idx}
                    machines={deptMachines}
                    subCosts={subCosts}
                    qtyError={qtyErrorKeys.has(row.key)}
                    isLast={items.length <= 1}
                    isFirstRow={idx === 0}
                    isLastRow={idx === items.length - 1}
                    onUpdate={(field, value) => handleRowUpdate(row.key, field, value)}
                    onView={(r) => setViewRowKey(r.key)}
                    onDelete={() => handleRowDelete(row.key)}
                    onHistory={() => openHistory(row)}
                    onTabToNext={() => handleTabToNextRow(row.key)}
                    onTabToPrev={() => handleTabToPrevRow(row.key)}
                  />
                </tr>
              ) : (
                <tr key={row.key} style={{ background: idx % 2 === 0 ? '#ffffff' : '#F0F5FF', cursor: !disabled ? 'pointer' : 'default' }} onClick={() => !disabled && handleRowEdit(row.key)}>
                  <ReadOnlyRow
                    row={row}
                    idx={idx}
                    machines={deptMachines}
                    subCosts={subCosts}
                    onView={(r) => setViewRowKey(r.key)}
                  />
                </tr>
              )
            )}
            {!disabled && (
              <tr style={{ background: '#f0f7ff', borderTop: '2px dashed #bfdbfe' }}>
                <td style={{ ...TD, textAlign: 'center', color: '#94a3b8' }}>{items.length + 1}</td>
                <td colSpan={12} style={{ ...TD, padding: '8px 14px' }}>
                  {!depCode ? (
                    <Typography.Text type="secondary" style={{ fontSize: 11 }}>Select department first</Typography.Text>
                  ) : (
                    <Input
                      size="small"
                      ref={searchInputRef}
                      placeholder="Search item by code or name (Enter to open picker)"
                      prefix={<SearchOutlined style={{ color: '#94a3b8' }} />}
                      onPressEnter={() => setPickerOpen(true)}
                      style={{ width: '300px', height: '24px' }}
                    />
                  )}
                </td>
              </tr>
            )}
            {items.length === 0 && disabled && (
              <tr>
                <td colSpan={13} style={{ textAlign: 'center', padding: '32px', color: '#888', fontSize: 12 }}>
                  No items added to this requisition.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      {/* {validCount > 0 && <GridSummaryBar validCount={validCount} totalQty={totalQty} subtotal={subtotal} />} */}

      {/* Item Picker Modal */}
      <ItemPickerModal
        open={pickerOpen}
        depCode={depCode}
        onSelectMultiple={handleItemsFromModal}
        onCancel={() => setPickerOpen(false)}
      />

      {/* Rate History Modal */}
      <Modal
        title={
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <ClockCircleOutlined style={{ color: '#7c3aed' }} />
            <span>
              Rate History — <span style={{ fontFamily: 'monospace', color: '#1677ff' }}>{historyItem}</span>
            </span>
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

      {/* Per-line Delete Modal (saved PRs only) */}
      <Modal
        title={`Delete Line — ${lineDeleteRow?.itemCode ?? ''}`}
        open={!!lineDeleteRow}
        onCancel={() => setLineDeleteRow(null)}
        onOk={async () => {
          if (!lineDeleteRow?.prSNo || !savedPrNo) return
          setLineDeleting(true)
          try {
            await purchaseRequisitionApi.deleteLine(
              savedPrNo, lineDeleteRow.prSNo, undefined, prDate, prDate,
            )
            onDelete(lineDeleteRow.key)
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

      {/* Line Detail Drawer (read-only supplementary info) */}
      <Drawer
        title={
          <span>
            Line Details —{' '}
            <span style={{ fontFamily: 'monospace', color: '#1677ff' }}>
              {viewRow?.itemCode ?? ''}
            </span>
          </span>
        }
        placement="left"
        width={360}
        open={!!viewRow}
        onClose={() => setViewRowKey(null)}
        footer={null}
        destroyOnClose
      >
        {viewRow && (
          <div style={{ display: 'flex', flexDirection: 'column' }}>
            {([
              { label: 'Item Name',     value: viewRow.itemName || '—' },
              { label: 'Current Stock', value: viewRow.currentStock != null ? String(viewRow.currentStock) : '—' },
              { label: 'Min Level',     value: viewRow.minLevel  != null ? String(viewRow.minLevel)        : '—' },
              { label: 'Cat. No',       value: viewRow.catNo  || '—' },
              { label: 'Draw No',       value: viewRow.drawNo || '—' },
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
                <Typography.Text
                  type="secondary"
                  style={{ fontSize: 12, fontWeight: 500, whiteSpace: 'nowrap', flexShrink: 0 }}
                >
                  {label}
                </Typography.Text>
                <Typography.Text style={{ fontSize: 13, textAlign: 'right', wordBreak: 'break-word' }}>
                  {value}
                </Typography.Text>
              </div>
            ))}

            {/* Item image placeholder */}
            <div
              style={{
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
                justifyContent: 'center',
                margin: '20px 8px',
                height: 200,
                border: '2px dashed #d9d9d9',
                borderRadius: 8,
                background: '#fafafa',
              }}
            >
              <FileImageOutlined style={{ fontSize: 40, color: '#bfbfbf' }} />
              <Typography.Text type="secondary" style={{ fontSize: 12, marginTop: 8 }}>
                Item Image
              </Typography.Text>
            </div>
          </div>
        )}
      </Drawer>
    </div>
  )
})

PRLineItemsTable.displayName = 'PRLineItemsTable'
