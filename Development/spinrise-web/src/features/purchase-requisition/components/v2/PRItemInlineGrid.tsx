import {
  forwardRef,
  useCallback,
  useImperativeHandle,
  useRef,
  useState,
} from 'react'
import {
  Button,
  DatePicker,
  Form,
  Input,
  InputNumber,
  Popconfirm,
  Select,
  Table,
  Tooltip,
} from 'antd'
import { CheckOutlined, CloseOutlined, DeleteOutlined, EditOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { Dayjs } from 'dayjs'
import { lookupApi } from '../../api/lookupApi'
import type { ItemLookup, MachineLookup, PRLineFormItem } from '../../types'

// ── Types ─────────────────────────────────────────────────────────────────────

interface ItemMeta {
  itemName:           string
  uom:                string
  currentStock:       number | null
  lastPoRate:         number | null
  lastPoDate:         string | null
  lastPoSupplierCode: string | null
  lastPoSupplierName: string | null
}

interface GridFormValues {
  itemCode:        string
  qtyRequired:     number
  rate:            number | null
  approxCost:      number | null
  requiredDate:    Dayjs | null
  categoryCode:    string
  costCentreCode:  string
  budgetGroupCode: string
  machineNo:       string
  remarks:         string
}

interface ItemSelectOption {
  value: string
  label: string
  _item: ItemLookup
}

export interface PRItemInlineGridRef {
  addRow:         () => void
  modifySelected: () => void
  deleteSelected: () => void
}

interface PRItemInlineGridProps {
  items:    PRLineFormItem[]
  machines: MachineLookup[]
  depCode:  string
  disabled: boolean
  onAdd:    (item: PRLineFormItem) => void
  onUpdate: (item: PRLineFormItem) => void
  onDelete: (key: string) => void
}

// ── Empty row factory ─────────────────────────────────────────────────────────

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

// ── Keyboard handler helper ───────────────────────────────────────────────────

function onKeyActions(
  save: () => void,
  cancel: () => void,
): React.KeyboardEventHandler {
  return (e) => {
    if (e.key === 'Enter')  { e.preventDefault(); save()   }
    if (e.key === 'Escape') { e.preventDefault(); cancel() }
  }
}

// ── Component ─────────────────────────────────────────────────────────────────

export const PRItemInlineGrid = forwardRef<PRItemInlineGridRef, PRItemInlineGridProps>(
  function PRItemInlineGrid(
    { items, machines, depCode, disabled, onAdd, onUpdate, onDelete },
    ref,
  ) {
    const [gridForm] = Form.useForm<GridFormValues>()

    // Edit state
    const [editingKey,  setEditingKey]  = useState<string | null>(null)
    const [selectedKey, setSelectedKey] = useState<string | null>(null)
    const [isNewRow,    setIsNewRow]    = useState(false)
    const [itemMeta,    setItemMeta]    = useState<ItemMeta | null>(null)

    // Item search state (for the actively-editing row)
    const [itemOptions,   setItemOptions]   = useState<ItemSelectOption[]>([])
    const [itemSearching, setItemSearching] = useState(false)
    const searchSeqRef  = useRef(0)
    const debounceRef   = useRef<ReturnType<typeof setTimeout> | null>(null)

    // Refs for stale-closure safety inside useImperativeHandle
    const editingKeyRef  = useRef<string | null>(null)
    const selectedKeyRef = useRef<string | null>(null)
    const itemsRef       = useRef<PRLineFormItem[]>(items)
    itemsRef.current     = items

    const setEK = (k: string | null) => { editingKeyRef.current = k;  setEditingKey(k)  }
    const setSK = (k: string | null) => { selectedKeyRef.current = k; setSelectedKey(k) }

    const machineOpts = machines.map((m) => ({
      value: m.macNo,
      label: `${m.macNo} – ${m.description}`,
    }))

    // ── Row edit helpers ─────────────────────────────────────────────────────

    const startEdit = useCallback(
      (record: PRLineFormItem, isNew = false) => {
        setEK(record.key)
        setSK(record.key)
        setIsNewRow(isNew)
        setItemMeta({
          itemName:           record.itemName,
          uom:                record.uom,
          currentStock:       record.currentStock,
          lastPoRate:         record.lastPoRate,
          lastPoDate:         record.lastPoDate,
          lastPoSupplierCode: record.lastPoSupplierCode,
          lastPoSupplierName: record.lastPoSupplierName,
        })
        if (record.itemCode) {
          setItemOptions([{
            value: record.itemCode,
            label: `${record.itemCode} – ${record.itemName}`,
            _item: { itemCode: record.itemCode, itemName: record.itemName, uom: record.uom },
          }])
        } else {
          setItemOptions([])
        }
        gridForm.setFieldsValue({
          itemCode:        record.itemCode || undefined,
          qtyRequired:     record.qtyRequired,
          rate:            record.rate,
          approxCost:      record.approxCost,
          requiredDate:    record.requiredDate ? dayjs(record.requiredDate) : null,
          categoryCode:    record.categoryCode,
          costCentreCode:  record.costCentreCode,
          budgetGroupCode: record.budgetGroupCode,
          machineNo:       record.machineNo || undefined,
          remarks:         record.remarks,
        })
      },
      [gridForm],
    )

    const cancelEdit = useCallback(() => {
      if (isNewRow && editingKeyRef.current) {
        onDelete(editingKeyRef.current)
      }
      setEK(null)
      setIsNewRow(false)
      setItemMeta(null)
      setItemOptions([])
      gridForm.resetFields()
    }, [isNewRow, onDelete, gridForm])

    const saveRow = useCallback(async () => {
      try {
        const values    = await gridForm.validateFields()
        const existing  = itemsRef.current.find((i) => i.key === editingKeyRef.current)
        if (!existing) return

        const updated: PRLineFormItem = {
          ...existing,
          ...(itemMeta ?? {}),
          itemCode:        values.itemCode ?? existing.itemCode,
          qtyRequired:     values.qtyRequired,
          rate:            values.rate,
          approxCost:      values.approxCost,
          requiredDate:    values.requiredDate
            ? (values.requiredDate as Dayjs).format('YYYY-MM-DD')
            : null,
          categoryCode:    values.categoryCode    ?? '',
          costCentreCode:  values.costCentreCode  ?? '',
          budgetGroupCode: values.budgetGroupCode ?? '',
          machineNo:       values.machineNo       ?? '',
          remarks:         values.remarks         ?? '',
        }

        onUpdate(updated)
        setEK(null)
        setIsNewRow(false)
        setItemMeta(null)
        setItemOptions([])
        gridForm.resetFields()
      } catch {
        // Validation error — keep editing
      }
    }, [gridForm, itemMeta, onUpdate])

    // ── Item search (debounced, stale-safe) ──────────────────────────────────

    const handleItemSearch = useCallback((query: string) => {
      if (debounceRef.current) clearTimeout(debounceRef.current)
      if (query.trim().length < 2) {
        setItemOptions([])
        return
      }
      const seq = ++searchSeqRef.current
      setItemSearching(true)

      debounceRef.current = setTimeout(async () => {
        try {
          const results = await lookupApi.searchItems(query.trim(), depCode)
          if (seq !== searchSeqRef.current) return
          setItemOptions(results.map((i) => ({
            value: i.itemCode,
            label: `${i.itemCode} – ${i.itemName}`,
            _item: i,
          })))
        } catch {
          if (seq === searchSeqRef.current) setItemOptions([])
        } finally {
          if (seq === searchSeqRef.current) setItemSearching(false)
        }
      }, 280)
    }, [depCode])

    const handleItemSelect = useCallback(
      (_: string, option: unknown) => {
        const opt = option as ItemSelectOption
        setItemMeta({
          itemName:           opt._item.itemName,
          uom:                opt._item.uom,
          currentStock:       opt._item.currentStock ?? null,
          lastPoRate:         null,
          lastPoDate:         null,
          lastPoSupplierCode: null,
          lastPoSupplierName: null,
        })
        gridForm.setFieldValue('rate', null)
      },
      [gridForm],
    )

    // ── Imperative handle (for toolbar buttons in parent) ────────────────────

    useImperativeHandle(
      ref,
      () => ({
        addRow: () => {
          if (disabled || editingKeyRef.current) return
          const row = emptyRow()
          onAdd(row)
          startEdit(row, true)
        },
        modifySelected: () => {
          if (disabled || editingKeyRef.current || !selectedKeyRef.current) return
          const record = itemsRef.current.find((i) => i.key === selectedKeyRef.current)
          if (record) startEdit(record, false)
        },
        deleteSelected: () => {
          if (disabled || editingKeyRef.current || !selectedKeyRef.current) return
          onDelete(selectedKeyRef.current)
          setSK(null)
        },
      }),
      [disabled, onAdd, onDelete, startEdit],
    )

    // ── Column definitions ───────────────────────────────────────────────────

    const kd = onKeyActions(() => void saveRow(), cancelEdit)

    const columns: ColumnsType<PRLineFormItem> = [
      {
        title: '#',
        key:   'index',
        width: 36,
        fixed: 'left',
        className: 'erp-grid__cell--center',
        render: (_: unknown, __: PRLineFormItem, i: number) => (
          <span className="erp-grid__row-num">{i + 1}</span>
        ),
      },
      {
        title:     'ITEM CODE',
        dataIndex: 'itemCode',
        key:       'itemCode',
        width:     120,
        fixed:     'left',
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="itemCode" noStyle rules={[{ required: true, message: '' }]}>
              <Select
                showSearch
                size="small"
                style={{ width: '100%' }}
                placeholder="F1 — type to search"
                options={itemOptions}
                onSearch={handleItemSearch}
                onSelect={handleItemSelect}
                loading={itemSearching}
                filterOption={false}
                notFoundContent={itemSearching ? 'Searching…' : 'Type ≥ 2 chars'}
                onKeyDown={kd}
                autoFocus
              />
            </Form.Item>
          ) : (
            <span className="erp-grid__code">{val || <span className="erp-grid__muted">—</span>}</span>
          ),
      },
      {
        title:     'DESCRIPTION',
        dataIndex: 'itemName',
        key:       'itemName',
        width:     180,
        ellipsis:  true,
        render: (_: unknown, record: PRLineFormItem) => {
          const name = editingKey === record.key
            ? (itemMeta?.itemName ?? record.itemName)
            : record.itemName
          return name
            ? <Tooltip title={name}><span className="erp-grid__ellipsis">{name}</span></Tooltip>
            : <span className="erp-grid__muted">—</span>
        },
      },
      {
        title:     'UOM',
        dataIndex: 'uom',
        key:       'uom',
        width:     54,
        align:     'center',
        render: (_: unknown, record: PRLineFormItem) => {
          const uom = editingKey === record.key
            ? (itemMeta?.uom ?? record.uom)
            : record.uom
          return uom || <span className="erp-grid__muted">—</span>
        },
      },
      {
        title:     'RATE',
        dataIndex: 'rate',
        key:       'rate',
        width:     90,
        align:     'right',
        render: (val: number | null, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="rate" noStyle>
              <InputNumber size="small" style={{ width: '100%' }} min={0} precision={2} onKeyDown={kd} />
            </Form.Item>
          ) : val != null
            ? <span className="erp-grid__num">RM {val.toFixed(2)}</span>
            : <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'STOCK',
        dataIndex: 'currentStock',
        key:       'currentStock',
        width:     64,
        align:     'right',
        render: (_: unknown, record: PRLineFormItem) => {
          const stock = editingKey === record.key
            ? (itemMeta?.currentStock ?? record.currentStock)
            : record.currentStock
          return stock != null
            ? <span className="erp-grid__num erp-grid__cell--readonly">{stock}</span>
            : <span className="erp-grid__muted">—</span>
        },
      },
      {
        title:     'QTY',
        dataIndex: 'qtyRequired',
        key:       'qtyRequired',
        width:     72,
        align:     'right',
        render: (val: number, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="qtyRequired" noStyle rules={[{ required: true, message: '' }, { type: 'number', min: 0.001, message: '' }]}>
              <InputNumber size="small" style={{ width: '100%' }} min={0.001} precision={3} onKeyDown={kd} />
            </Form.Item>
          ) : <strong className="erp-grid__num">{val}</strong>,
      },
      {
        title:     'CATEGORY',
        dataIndex: 'categoryCode',
        key:       'categoryCode',
        width:     80,
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="categoryCode" noStyle>
              <Input size="small" maxLength={10} onKeyDown={kd} />
            </Form.Item>
          ) : val || <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'COST CENTRE',
        dataIndex: 'costCentreCode',
        key:       'costCentreCode',
        width:     96,
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="costCentreCode" noStyle>
              <Input size="small" maxLength={20} onKeyDown={kd} />
            </Form.Item>
          ) : val || <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'BUDGET GRP',
        dataIndex: 'budgetGroupCode',
        key:       'budgetGroupCode',
        width:     96,
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="budgetGroupCode" noStyle>
              <Input size="small" maxLength={20} onKeyDown={kd} />
            </Form.Item>
          ) : val || <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'MACHINE',
        dataIndex: 'machineNo',
        key:       'machineNo',
        width:     100,
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="machineNo" noStyle>
              <Select
                size="small"
                style={{ width: '100%' }}
                options={machineOpts}
                allowClear
                showSearch
                filterOption
                placeholder="—"
                onKeyDown={kd}
              />
            </Form.Item>
          ) : val || <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'REQ. DATE',
        dataIndex: 'requiredDate',
        key:       'requiredDate',
        width:     110,
        render: (val: string | null, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="requiredDate" noStyle>
              <DatePicker
                size="small"
                style={{ width: '100%' }}
                format="DD-MM-YYYY"
                onKeyDown={(e) => { if (e.key === 'Escape') cancelEdit() }}
              />
            </Form.Item>
          ) : val
            ? dayjs(val).format('DD-MM-YYYY')
            : <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'APPROX COST',
        dataIndex: 'approxCost',
        key:       'approxCost',
        width:     100,
        align:     'right',
        render: (val: number | null, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="approxCost" noStyle>
              <InputNumber size="small" style={{ width: '100%' }} min={0} precision={2} onKeyDown={kd} />
            </Form.Item>
          ) : val != null
            ? <span className="erp-grid__num">{val.toFixed(2)}</span>
            : <span className="erp-grid__muted">—</span>,
      },
      {
        title:     'REMARKS',
        dataIndex: 'remarks',
        key:       'remarks',
        width:     150,
        ellipsis:  true,
        render: (val: string, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <Form.Item name="remarks" noStyle>
              <Input size="small" maxLength={100} onKeyDown={kd} />
            </Form.Item>
          ) : val
            ? <Tooltip title={val}><span className="erp-grid__ellipsis">{val}</span></Tooltip>
            : <span className="erp-grid__muted">—</span>,
      },
      {
        title: '',
        key:   'actions',
        width: 66,
        fixed: 'right',
        render: (_: unknown, record: PRLineFormItem) =>
          editingKey === record.key ? (
            <span style={{ display: 'flex', gap: 2 }}>
              <Tooltip title="Save (Enter)">
                <Button
                  type="text"
                  size="small"
                  icon={<CheckOutlined />}
                  onClick={() => void saveRow()}
                  className="erp-grid__btn--save"
                />
              </Tooltip>
              <Tooltip title="Cancel (Esc)">
                <Button
                  type="text"
                  size="small"
                  icon={<CloseOutlined />}
                  onClick={cancelEdit}
                />
              </Tooltip>
            </span>
          ) : (
            <span style={{ display: 'flex', gap: 2 }}>
              <Tooltip title="Edit (Modify)">
                <Button
                  type="text"
                  size="small"
                  icon={<EditOutlined />}
                  disabled={disabled || !!editingKey}
                  onClick={() => startEdit(record)}
                />
              </Tooltip>
              <Popconfirm
                title="Remove item?"
                okText="Remove"
                okButtonProps={{ danger: true, size: 'small' }}
                disabled={disabled || !!editingKey}
                onConfirm={() => { onDelete(record.key); if (selectedKey === record.key) setSK(null) }}
              >
                <Tooltip title="Delete">
                  <Button
                    type="text"
                    size="small"
                    danger
                    icon={<DeleteOutlined />}
                    disabled={disabled || !!editingKey}
                  />
                </Tooltip>
              </Popconfirm>
            </span>
          ),
      },
    ]

    // ── Render ───────────────────────────────────────────────────────────────

    return (
      <Form form={gridForm} component={false}>
        <Table<PRLineFormItem>
          dataSource={items}
          columns={columns}
          rowKey="key"
          size="small"
          scroll={{ x: 1420 }}
          pagination={false}
          bordered
          className="erp-grid"
          rowClassName={(record) => {
            if (record.key === editingKey)  return 'erp-grid__row--editing'
            if (record.key === selectedKey) return 'erp-grid__row--selected'
            return ''
          }}
          onRow={(record) => ({
            onClick: () => {
              if (record.key !== editingKey) setSK(record.key)
            },
            onDoubleClick: () => {
              if (!disabled && record.key !== editingKey) startEdit(record)
            },
          })}
          locale={{
            emptyText: (
              <span style={{ color: '#b0b7c0', fontSize: 12 }}>
                No items — click <strong>Add</strong> in the toolbar or press the + button
              </span>
            ),
          }}
        />
      </Form>
    )
  },
)
