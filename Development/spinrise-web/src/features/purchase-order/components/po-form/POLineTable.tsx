import { Button, InputNumber, Table, Input, Tooltip, Select, Space } from 'antd'
import { DeleteOutlined, PlusOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import type { POLineFormItem } from '../../types'

interface Props {
  lines: POLineFormItem[]
  prBased: boolean
  onChange: (lines: POLineFormItem[]) => void
}

const BB_OPTIONS = [
  { value: 'B', label: 'Bale' },
  { value: 'R', label: 'Reel' },
]

function newLine(): POLineFormItem {
  return {
    key:         crypto.randomUUID(),
    varCode:     '',
    varName:     '',
    bbFlag:      'B',
    ordQty:      0,
    ordKgs:      0,
    candyRate:   0,
    rateKg:      0,
    taxCode:     '',
    hsn:         '',
    cgstPer:     0,
    sgstPer:     0,
    igstPer:     0,
    cashDisPer:  0,
    tradeDisPer: 0,
    cessPer:     0,
    insPer:      0,
    noOfLoad:    0,
    iPrNo:       null,
    prDate:      null,
    prSNo:       null,
  }
}

export function POLineTable({ lines, prBased, onChange }: Props) {
  const update = (key: string, field: keyof POLineFormItem, value: unknown) => {
    onChange(lines.map((l) => (l.key === key ? { ...l, [field]: value } : l)))
  }

  const remove = (key: string) => {
    onChange(lines.filter((l) => l.key !== key))
  }

  const addLine = () => {
    onChange([...lines, newLine()])
  }

  const columns: ColumnsType<POLineFormItem> = [
    {
      title: '#',
      width: 32,
      render: (_, __, i) => <span style={{ color: '#999', fontSize: 11 }}>{i + 1}</span>,
    },
    {
      title: <span>Variety <span style={{ color: '#ff4d4f' }}>*</span></span>,
      dataIndex: 'varCode',
      width: 100,
      render: (v, r) => (
        <Input
          size="small"
          value={v}
          style={{ fontWeight: 600, textTransform: 'uppercase' }}
          onChange={(e) => update(r.key, 'varCode', e.target.value.toUpperCase())}
          placeholder="VAR"
        />
      ),
    },
    {
      title: 'Pack',
      dataIndex: 'bbFlag',
      width: 75,
      render: (v, r) => (
        <Select
          size="small"
          value={v}
          onChange={(val) => update(r.key, 'bbFlag', val)}
          options={BB_OPTIONS}
          style={{ width: '100%' }}
        />
      ),
    },
    {
      title: 'Ord Qty',
      dataIndex: 'ordQty',
      width: 85,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          precision={0}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'ordQty', val ?? 0)}
        />
      ),
    },
    {
      title: 'Ord Kgs',
      dataIndex: 'ordKgs',
      width: 90,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          precision={3}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'ordKgs', val ?? 0)}
        />
      ),
    },
    {
      title: <span>Rate <span style={{ color: '#ff4d4f' }}>*</span></span>,
      dataIndex: 'candyRate',
      width: 95,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          precision={2}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'candyRate', val ?? 0)}
        />
      ),
    },
    {
      title: 'Rate/Kg',
      dataIndex: 'rateKg',
      width: 90,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          precision={4}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'rateKg', val ?? 0)}
        />
      ),
    },
    ...(prBased ? [
      {
        title: <span>HSN <span style={{ color: '#ff4d4f' }}>*</span></span>,
        dataIndex: 'hsn',
        width: 90,
        render: (v: string, r: POLineFormItem) => (
          <Input
            size="small"
            value={v}
            onChange={(e) => update(r.key, 'hsn', e.target.value)}
            placeholder="HSN"
          />
        ),
      },
      {
        title: <span>Tax Code <span style={{ color: '#ff4d4f' }}>*</span></span>,
        dataIndex: 'taxCode',
        width: 90,
        render: (v: string, r: POLineFormItem) => (
          <Input
            size="small"
            value={v}
            onChange={(e) => update(r.key, 'taxCode', e.target.value)}
            placeholder="TAX"
          />
        ),
      },
    ] : []),
    {
      title: 'CGST%',
      dataIndex: 'cgstPer',
      width: 70,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          max={100}
          precision={2}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'cgstPer', val ?? 0)}
        />
      ),
    },
    {
      title: 'SGST%',
      dataIndex: 'sgstPer',
      width: 70,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          max={100}
          precision={2}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'sgstPer', val ?? 0)}
        />
      ),
    },
    {
      title: 'IGST%',
      dataIndex: 'igstPer',
      width: 70,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          max={100}
          precision={2}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'igstPer', val ?? 0)}
        />
      ),
    },
    {
      title: 'Loads',
      dataIndex: 'noOfLoad',
      width: 70,
      render: (v, r) => (
        <InputNumber
          size="small"
          value={v}
          min={0}
          precision={0}
          style={{ width: '100%' }}
          onChange={(val) => update(r.key, 'noOfLoad', val ?? 0)}
        />
      ),
    },
    {
      title: 'PR No',
      dataIndex: 'iPrNo',
      width: 80,
      render: (v) => v ? <span style={{ color: '#555', fontVariantNumeric: 'tabular-nums' }}>{v}</span> : <span style={{ color: '#ccc' }}>—</span>,
    },
    {
      title: '',
      width: 36,
      render: (_, r) => (
        <Tooltip title="Remove line">
          <Button
            size="small"
            type="text"
            danger
            icon={<DeleteOutlined />}
            onClick={() => remove(r.key)}
          />
        </Tooltip>
      ),
    },
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
      />
      <Space style={{ marginTop: 8 }}>
        <Button
          size="small"
          icon={<PlusOutlined />}
          onClick={addLine}
          type="dashed"
        >
          Add Variety
        </Button>
      </Space>
    </div>
  )
}
