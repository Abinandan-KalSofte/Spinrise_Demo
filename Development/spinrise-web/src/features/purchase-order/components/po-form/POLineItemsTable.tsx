import { useRef, useState } from 'react'
import { AutoComplete, Button, Input, InputNumber, Space, Table, Tag, Tooltip } from 'antd'
import { DeleteOutlined, PlusOutlined, UnorderedListOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import type { POLineFormItem } from '../../hooks/usePurchaseOrderForm'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import type { VarietyLookup } from '@/features/purchase-requisition/types'

interface Props {
  lines:    POLineFormItem[]
  prBased:  boolean
  disabled?: boolean
  onAdd:    () => void
  onPickPR: () => void
  onUpdate: (key: string, patch: Partial<POLineFormItem>) => void
  onRemove: (key: string) => void
}

// ── Per-row variety AutoComplete ──────────────────────────────────────────────

interface VarietyCellProps {
  value:    string
  rowKey:   string
  onUpdate: (key: string, patch: Partial<POLineFormItem>) => void
}

function VarietyCell({ value, rowKey, onUpdate }: VarietyCellProps) {
  const [opts,  setOpts]  = useState<{ value: string; label: string; item: VarietyLookup }[]>([])
  const timer = useRef<ReturnType<typeof setTimeout>>()

  const handleSearch = (val: string) => {
    clearTimeout(timer.current)
    const upper = val.toUpperCase()
    onUpdate(rowKey, { varCode: upper })
    if (upper.length < 2) { setOpts([]); return }
    timer.current = setTimeout(() => {
      lookupApi.searchVarieties(upper)
        .then((data: VarietyLookup[]) =>
          setOpts(data.map((v) => ({
            value: v.varCode,
            label: `${v.varCode} – ${v.varName}`,
            item:  v,
          })))
        )
        .catch(() => undefined)
    }, 300)
  }

  const handleSelect = (_val: string, opt: { value: string; label: string; item: VarietyLookup }) => {
    onUpdate(rowKey, {
      varCode: opt.item.varCode,
      varName: opt.item.varName,
      hsn:     opt.item.hsnCode,
      cgstPer: opt.item.cgstPer,
      sgstPer: opt.item.sgstPer,
      igstPer: opt.item.igstPer,
      taxCode: opt.item.taxCode,
    })
    setOpts([])
  }

  return (
    <AutoComplete
      size="small"
      value={value}
      options={opts}
      onSearch={handleSearch}
      onSelect={handleSelect}
      filterOption={false}
      style={{ width: 88, textTransform: 'uppercase' }}
      placeholder="Code"
    />
  )
}

// ── Table component ───────────────────────────────────────────────────────────

export function POLineItemsTable({ lines, prBased, disabled, onAdd, onPickPR, onUpdate, onRemove }: Props) {
  const num = (
    key: keyof POLineFormItem,
    r: POLineFormItem,
    opts?: { min?: number; max?: number; step?: number; width?: number; precision?: number }
  ) => {
    const { min = 0, max, step = 1, width = 90, precision } = opts ?? {}
    return disabled
      ? <span style={{ fontVariantNumeric: 'tabular-nums' }}>{r[key] as number}</span>
      : (
        <InputNumber
          size="small"
          value={r[key] as number}
          min={min}
          max={max}
          step={step}
          precision={precision}
          style={{ width }}
          onChange={(val) => onUpdate(r.key, { [key]: val ?? 0 } as Partial<POLineFormItem>)}
        />
      )
  }

  const txt = (key: keyof POLineFormItem, r: POLineFormItem, width = 90, upper = false) =>
    disabled
      ? <span>{r[key] as string}</span>
      : (
        <Input
          size="small"
          value={r[key] as string}
          style={{ width, ...(upper ? { textTransform: 'uppercase' } : {}) }}
          onChange={(e) => onUpdate(r.key, { [key]: upper ? e.target.value.toUpperCase() : e.target.value } as Partial<POLineFormItem>)}
        />
      )

  const columns: ColumnsType<POLineFormItem> = [
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 110,
      fixed: 'left',
      render: (_, r) =>
        disabled
          ? <span>{r.varCode}</span>
          : <VarietyCell value={r.varCode} rowKey={r.key} onUpdate={onUpdate} />,
    },
    {
      title: 'Name',
      dataIndex: 'varName',
      width: 140,
      ellipsis: !disabled,
      render: (_, r) => txt('varName', r, 130),
    },
    {
      title: 'Pack',
      dataIndex: 'packType',
      width: 80,
      render: (_, r) => txt('packType', r, 72, true),
    },
    {
      title: 'Qty (Candy)',
      dataIndex: 'ordQty',
      width: 105,
      align: 'right',
      render: (_, r) =>
        disabled
          ? <Tag color="blue">{r.ordQty}</Tag>
          : (
            <InputNumber
              size="small" value={r.ordQty} min={0} style={{ width: 90 }}
              onChange={(val) => {
                const qty = val ?? 0
                onUpdate(r.key, { ordQty: qty, ordKgs: Math.round(qty * 180) })
              }}
            />
          ),
    },
    {
      title: 'Qty (Kg)',
      dataIndex: 'ordKgs',
      width: 95,
      align: 'right',
      render: (_, r) => num('ordKgs', r, { width: 82 }),
    },
    {
      title: 'Rate/Candy',
      dataIndex: 'candyRate',
      width: 110,
      align: 'right',
      render: (_, r) =>
        disabled
          ? <span style={{ fontVariantNumeric: 'tabular-nums' }}>{r.candyRate.toLocaleString('en-IN', { minimumFractionDigits: 2 })}</span>
          : (
            <InputNumber
              size="small" value={r.candyRate} min={0} step={0.01} precision={2} style={{ width: 96 }}
              onChange={(val) => {
                const rate = val ?? 0
                onUpdate(r.key, { candyRate: rate, rateKg: parseFloat((rate / 180).toFixed(4)) })
              }}
            />
          ),
    },
    {
      title: 'Rate/Kg',
      dataIndex: 'rateKg',
      width: 95,
      align: 'right',
      render: (_, r) => num('rateKg', r, { step: 0.0001, precision: 4, width: 82 }),
    },
    {
      title: 'Loads',
      dataIndex: 'noOfLoad',
      width: 75,
      align: 'right',
      render: (_, r) => num('noOfLoad', r, { width: 62 }),
    },
    {
      title: 'Cash Dis%',
      dataIndex: 'cashDisPer',
      width: 95,
      align: 'right',
      render: (_, r) => num('cashDisPer', r, { max: 100, step: 0.01, precision: 2, width: 82 }),
    },
    {
      title: 'Trade Dis%',
      dataIndex: 'tradeDisPer',
      width: 100,
      align: 'right',
      render: (_, r) => num('tradeDisPer', r, { max: 100, step: 0.01, precision: 2, width: 82 }),
    },
    {
      title: 'Cess%',
      dataIndex: 'cessPer',
      width: 75,
      align: 'right',
      render: (_, r) => num('cessPer', r, { max: 100, step: 0.01, precision: 2, width: 62 }),
    },
    {
      title: 'Ins%',
      dataIndex: 'insPer',
      width: 70,
      align: 'right',
      render: (_, r) => num('insPer', r, { max: 100, step: 0.01, precision: 2, width: 58 }),
    },
    {
      title: 'CGst%',
      dataIndex: 'cgstPer',
      width: 78,
      align: 'right',
      render: (_, r) => num('cgstPer', r, { max: 100, step: 0.01, precision: 2, width: 64 }),
    },
    {
      title: 'SGst%',
      dataIndex: 'sgstPer',
      width: 78,
      align: 'right',
      render: (_, r) => num('sgstPer', r, { max: 100, step: 0.01, precision: 2, width: 64 }),
    },
    {
      title: 'IGst%',
      dataIndex: 'igstPer',
      width: 78,
      align: 'right',
      render: (_, r) => num('igstPer', r, { max: 100, step: 0.01, precision: 2, width: 64 }),
    },
    {
      title: 'HSN',
      dataIndex: 'hsn',
      width: 90,
      render: (_, r) => txt('hsn', r, 80),
    },
    {
      title: 'PR No',
      dataIndex: 'iPrNo',
      width: 70,
      align: 'center',
      render: (v: number | null) => v ? <Tag color="purple" style={{ fontSize: 11 }}>{v}</Tag> : null,
    },
    ...(!disabled
      ? [{
          title: '',
          width: 42,
          fixed: 'right' as const,
          align: 'center' as const,
          render: (_: unknown, r: POLineFormItem) => (
            <Tooltip title="Remove line">
              <Button
                size="small" type="text" danger
                icon={<DeleteOutlined />}
                onClick={() => onRemove(r.key)}
              />
            </Tooltip>
          ),
        }]
      : []),
  ]

  return (
    <div>
      {!disabled && (
        <Space style={{ marginBottom: 10 }}>
          {prBased && (
            <Button
              size="small"
              icon={<UnorderedListOutlined />}
              onClick={onPickPR}
              type="dashed"
            >
              Pick from PR Lines
            </Button>
          )}
          <Button size="small" icon={<PlusOutlined />} onClick={onAdd}>
            Add Line
          </Button>
        </Space>
      )}
      <Table<POLineFormItem>
        rowKey="key"
        columns={columns}
        dataSource={lines}
        size="small"
        pagination={false}
        scroll={{ x: 'max-content' }}
        bordered
        locale={{ emptyText: 'No variety lines added' }}
      />
    </div>
  )
}
