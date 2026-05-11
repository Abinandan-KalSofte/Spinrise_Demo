import { useRef, useState } from 'react'
import { AutoComplete, Button, Input, InputNumber, Space, Table, Tag, Tooltip } from 'antd'
import { DeleteOutlined, PlusOutlined, UnorderedListOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import type { POLineFormItem } from '../../hooks/usePurchaseOrderForm'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import type { VarietyLookup } from '@/features/purchase-requisition/types'

interface Props {
  lines:         POLineFormItem[]
  prBased:       boolean
  sampleMode:    boolean       // wosample — drives Mill Sample No column visibility
  arrivalType:   string        // 'P' | 'K' — controls qty/kgs column visibility
  rateUnitValue: number        // for rateKg = candyRate / rateUnitValue
  igstFlg:       string        // 'Y'=intra(CGST+SGST shown), 'N'=inter(IGST shown)
  disabled?:     boolean
  onAdd:         () => void
  onPickPR:      () => void
  onUpdate:      (key: string, patch: Partial<POLineFormItem>) => void
  onRemove:      (key: string) => void
}

// ── Per-row variety AutoComplete ──────────────────────────────────────────────

interface VarietyCellProps {
  value:    string
  varName:  string
  rowKey:   string
  igstFlg:  string
  disabled: boolean
  onUpdate: (key: string, patch: Partial<POLineFormItem>) => void
}

function VarietyCell({ value, varName, rowKey, igstFlg, disabled, onUpdate }: VarietyCellProps) {
  const [opts, setOpts] = useState<{ value: string; label: string; item: VarietyLookup }[]>([])
  const timer = useRef<ReturnType<typeof setTimeout>>()

  if (disabled) {
    return (
      <div>
        <span style={{ fontWeight: 600 }}>{value}</span>
        {varName && (
          <div style={{ fontSize: 10, color: '#6b7280', marginTop: 2 }}>{varName}</div>
        )}
      </div>
    )
  }

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
    const interstate = igstFlg === 'N'
    onUpdate(rowKey, {
      varCode: opt.item.varCode,
      varName: opt.item.varName,
      hsn:     opt.item.hsnCode,
      taxCode: opt.item.taxCode,
      cgstPer: interstate ? 0 : opt.item.cgstPer,
      sgstPer: interstate ? 0 : opt.item.sgstPer,
      igstPer: interstate ? opt.item.igstPer : 0,
    })
    setOpts([])
  }

  return (
    <div>
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
      {varName && (
        <div style={{ fontSize: 10, color: '#6b7280', marginTop: 2, maxWidth: 120, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
          {varName}
        </div>
      )}
    </div>
  )
}

// ── Table component ───────────────────────────────────────────────────────────

export function POLineItemsTable({
  lines, prBased, sampleMode, arrivalType, rateUnitValue, igstFlg,
  disabled, onAdd, onPickPR, onUpdate, onRemove,
}: Props) {
  const columns: ColumnsType<POLineFormItem> = [
    // Column 0: Mill Sample No — visible only in sampleMode
    ...(sampleMode ? [{
      title: '#Sample',
      dataIndex: 'millSampleNo',
      width: 90,
      fixed: 'left' as const,
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.millSampleNo}</span>
          : (
            <Input
              size="small"
              value={r.millSampleNo}
              style={{ width: 80 }}
              onChange={(e) => onUpdate(r.key, { millSampleNo: e.target.value.toUpperCase() })}
            />
          ),
    }] : []),

    // Variety
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 130,
      fixed: 'left',
      render: (_, r) => (
        <VarietyCell
          value={r.varCode}
          varName={r.varName}
          rowKey={r.key}
          igstFlg={igstFlg}
          disabled={!!disabled}
          onUpdate={onUpdate}
        />
      ),
    },

    // Pack Type — bbFlag is derived from first char, no separate column
    {
      title: 'Pack',
      dataIndex: 'packType',
      width: 80,
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.packType}</span>
          : (
            <Input
              size="small"
              value={r.packType}
              style={{ width: 72, textTransform: 'uppercase' }}
              onChange={(e) => onUpdate(r.key, { packType: e.target.value.toUpperCase() })}
              onBlur={(e) => {
                const first = e.target.value.trim().charAt(0).toUpperCase()
                const flag = ['R', 'H'].includes(first) ? first : 'B'
                onUpdate(r.key, { packType: e.target.value, bbFlag: flag })
              }}
            />
          ),
    },

    // Qty (Bales) — visible when arrivalType is 'P' or not set
    ...(arrivalType !== 'K' ? [{
      title: 'Qty (Bales)',
      dataIndex: 'ordQty',
      width: 105,
      align: 'right' as const,
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <Tag color="blue">{r.ordQty}</Tag>
          : (
            <InputNumber
              size="small"
              value={r.ordQty}
              min={0}
              precision={0}
              style={{ width: 90 }}
              onChange={(val) => onUpdate(r.key, { ordQty: val ?? 0 })}
            />
          ),
    }] : []),

    // Qty (Kgs) — visible only when arrivalType is 'K'
    ...(arrivalType === 'K' ? [{
      title: 'Qty (Kgs)',
      dataIndex: 'ordKgs',
      width: 95,
      align: 'right' as const,
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.ordKgs}</span>
          : (
            <InputNumber
              size="small"
              value={r.ordKgs}
              min={0}
              precision={3}
              style={{ width: 82 }}
              onChange={(val) => onUpdate(r.key, { ordKgs: val ?? 0 })}
            />
          ),
    }] : []),

    // Rate/Unit
    {
      title: 'Rate/Unit',
      dataIndex: 'candyRate',
      width: 110,
      align: 'right',
      render: (_, r) =>
        disabled
          ? <span style={{ fontVariantNumeric: 'tabular-nums' }}>{r.candyRate.toLocaleString('en-IN', { minimumFractionDigits: 2 })}</span>
          : (
            <InputNumber
              size="small"
              value={r.candyRate}
              min={0}
              step={0.01}
              precision={7}
              style={{ width: 96 }}
              onChange={(val) => {
                const rate = val ?? 0
                onUpdate(r.key, { candyRate: rate, rateKg: parseFloat((rate / (rateUnitValue || 168)).toFixed(5)) })
              }}
            />
          ),
    },

    // Rate/Kg — always read-only
    {
      title: 'Rate/Kg',
      dataIndex: 'rateKg',
      width: 95,
      align: 'right',
      render: (v: number) => (
        <span style={{ fontVariantNumeric: 'tabular-nums' }}>{v?.toFixed(5) ?? '0.00000'}</span>
      ),
    },

    // Supplier Sample No — visible only in sampleMode
    ...(sampleMode ? [{
      title: 'Sup.Sample',
      dataIndex: 'suppSampleNo',
      width: 90,
      render: (v: string) => (
        <span style={{ color: '#6b7280', fontSize: 11 }}>{v || '—'}</span>
      ),
    }] : []),

    // Loads
    {
      title: 'Loads',
      dataIndex: 'noOfLoad',
      width: 70,
      align: 'right',
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.noOfLoad}</span>
          : (
            <InputNumber
              size="small"
              value={r.noOfLoad}
              min={0}
              precision={0}
              style={{ width: 58 }}
              onChange={(val) => onUpdate(r.key, { noOfLoad: val ?? 0 })}
            />
          ),
    },

    // Cash Dis%
    {
      title: 'Cash Dis%',
      dataIndex: 'cashDisPer',
      width: 90,
      align: 'right',
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.cashDisPer}</span>
          : (
            <InputNumber
              size="small"
              value={r.cashDisPer}
              min={0}
              max={100}
              step={0.01}
              precision={2}
              style={{ width: 78 }}
              onChange={(val) => onUpdate(r.key, { cashDisPer: val ?? 0 })}
            />
          ),
    },

    // Trade Dis%
    {
      title: 'Trade Dis%',
      dataIndex: 'tradeDisPer',
      width: 100,
      align: 'right',
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.tradeDisPer}</span>
          : (
            <InputNumber
              size="small"
              value={r.tradeDisPer}
              min={0}
              max={100}
              step={0.01}
              precision={2}
              style={{ width: 82 }}
              onChange={(val) => onUpdate(r.key, { tradeDisPer: val ?? 0 })}
            />
          ),
    },

    // Cess%
    {
      title: 'Cess%',
      dataIndex: 'cessPer',
      width: 72,
      align: 'right',
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.cessPer}</span>
          : (
            <InputNumber
              size="small"
              value={r.cessPer}
              min={0}
              max={100}
              step={0.01}
              precision={2}
              style={{ width: 60 }}
              onChange={(val) => onUpdate(r.key, { cessPer: val ?? 0 })}
            />
          ),
    },

    // Ins%
    {
      title: 'Ins%',
      dataIndex: 'insPer',
      width: 72,
      align: 'right',
      render: (_: unknown, r: POLineFormItem) =>
        disabled
          ? <span>{r.insPer}</span>
          : (
            <InputNumber
              size="small"
              value={r.insPer}
              min={0}
              max={100}
              step={0.01}
              precision={5}
              style={{ width: 60 }}
              onChange={(val) => onUpdate(r.key, { insPer: val ?? 0 })}
            />
          ),
    },

    // CGST% — visible when igstFlg !== 'N'
    ...(igstFlg !== 'N' ? [{
      title: 'CGST%',
      dataIndex: 'cgstPer',
      width: 78,
      align: 'right' as const,
      render: (_: unknown, r: POLineFormItem) => (
        <InputNumber
          size="small"
          value={r.cgstPer}
          min={0}
          max={100}
          step={0.01}
          precision={2}
          style={{ width: 64, background: '#f6ffed' }}
          onChange={(val) => onUpdate(r.key, { cgstPer: val ?? 0 })}
        />
      ),
    }] : []),

    // SGST% — visible when igstFlg !== 'N'
    ...(igstFlg !== 'N' ? [{
      title: 'SGST%',
      dataIndex: 'sgstPer',
      width: 78,
      align: 'right' as const,
      render: (_: unknown, r: POLineFormItem) => (
        <InputNumber
          size="small"
          value={r.sgstPer}
          min={0}
          max={100}
          step={0.01}
          precision={2}
          style={{ width: 64, background: '#f6ffed' }}
          onChange={(val) => onUpdate(r.key, { sgstPer: val ?? 0 })}
        />
      ),
    }] : []),

    // IGST% — visible only when igstFlg === 'N'
    ...(igstFlg === 'N' ? [{
      title: 'IGST%',
      dataIndex: 'igstPer',
      width: 78,
      align: 'right' as const,
      render: (_: unknown, r: POLineFormItem) => (
        <InputNumber
          size="small"
          value={r.igstPer}
          min={0}
          max={100}
          step={0.01}
          precision={2}
          style={{ width: 64, background: '#e6f7ff' }}
          onChange={(val) => onUpdate(r.key, { igstPer: val ?? 0 })}
        />
      ),
    }] : []),

    // HSN — read-only when prBased
    {
      title: 'HSN',
      dataIndex: 'hsn',
      width: 90,
      render: (_: unknown, r: POLineFormItem) =>
        disabled || prBased
          ? <span style={{ background: '#fafafa' }}>{r.hsn}</span>
          : (
            <Input
              size="small"
              value={r.hsn}
              style={{ width: 80 }}
              onChange={(e) => onUpdate(r.key, { hsn: e.target.value })}
            />
          ),
    },

    // Tax Code — read-only Tag
    {
      title: 'Tax Code',
      dataIndex: 'taxCode',
      width: 80,
      render: (v: string) => v ? <Tag style={{ fontSize: 10 }}>{v}</Tag> : null,
    },

    // PR No
    {
      title: 'PR No',
      dataIndex: 'iPrNo',
      width: 70,
      align: 'center',
      render: (v: number | null) => v ? <Tag color="purple" style={{ fontSize: 11 }}>{v}</Tag> : null,
    },

    // Delete button
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
      {!disabled && (
        <div style={{ display: 'flex', alignItems: 'center', gap: 12, marginTop: 8 }}>
          <Space>
            {prBased && (
              <Button size="small" icon={<UnorderedListOutlined />} onClick={onPickPR} type="dashed">
                Pick from PR
              </Button>
            )}
            <Button size="small" icon={<PlusOutlined />} onClick={onAdd}>
              Add Line
            </Button>
          </Space>
          {lines.length > 0 && (
            <Tag color="blue" style={{ fontSize: 11 }}>
              Lines: {lines.length} | Bales: {lines.reduce((s, l) => s + l.ordQty, 0)} | Kgs: {lines.reduce((s, l) => s + l.ordKgs, 0).toFixed(3)}
            </Tag>
          )}
        </div>
      )}
    </div>
  )
}
