import { Button, DatePicker, Input, InputNumber, Select, Table, Tooltip, Typography } from 'antd'
import { DeleteOutlined, PlusOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { PODeliveryItem } from '../../hooks/usePurchaseOrderForm'
import type { WeighmentLookup } from '@/features/purchase-requisition/types'

interface Props {
  rows:           PODeliveryItem[]
  orderedQty:     number
  orderDate:      string             // YYYY-MM-DD for disabledDate
  varCodeOptions: string[]           // from PO lines for Variety Select
  weighments:     WeighmentLookup[]
  disabled?:      boolean
  onAdd:          () => void
  onUpdate:       (key: string, patch: Partial<PODeliveryItem>) => void
  onRemove:       (key: string) => void
}

export function PODeliveryTable({
  rows, orderedQty, orderDate, varCodeOptions, weighments, disabled, onAdd, onUpdate, onRemove,
}: Props) {
  const columns: ColumnsType<PODeliveryItem> = [
    {
      title: 'Delivery Date',
      dataIndex: 'delDate',
      width: 150,
      render: (v: string, r) =>
        disabled
          ? <span>{v ? dayjs(v).format('DD-MMM-YYYY') : '—'}</span>
          : (
            <DatePicker
              size="small"
              value={v ? dayjs(v) : null}
              format="DD-MMM-YYYY"
              style={{ width: 138 }}
              disabledDate={(d) => d.isBefore(dayjs(orderDate), 'day')}
              onChange={(d) => onUpdate(r.key, { delDate: d?.format('YYYY-MM-DD') ?? r.delDate })}
            />
          ),
    },
    {
      title: 'Qty (Candy)',
      dataIndex: 'delQty',
      width: 105,
      align: 'right',
      render: (v: number, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <InputNumber
              size="small" value={v} min={0.01} style={{ width: 92 }}
              onChange={(val) => onUpdate(r.key, { delQty: val ?? 0 })}
            />
          ),
    },
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 110,
      render: (v: string, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <Select
              size="small"
              value={v || undefined}
              style={{ width: 98 }}
              allowClear
              showSearch
              options={varCodeOptions.map((c) => ({ value: c, label: c }))}
              onChange={(val) => onUpdate(r.key, { varCode: val ?? '' })}
            />
          ),
    },
    {
      title: 'Weighment',
      dataIndex: 'weighment',
      width: 160,
      render: (v: string, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <Select
              size="small"
              value={v || undefined}
              style={{ width: 148 }}
              allowClear
              showSearch
              options={weighments.map((w) => ({ value: w.wCode, label: `${w.wCode} – ${w.wName}` }))}
              onChange={(val) => onUpdate(r.key, { weighment: val ?? '' })}
            />
          ),
    },
    {
      title: 'Delivery Address',
      dataIndex: 'delAddress',
      render: (v: string, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <Input
              size="small" value={v}
              onChange={(e) => onUpdate(r.key, { delAddress: e.target.value })}
            />
          ),
    },
    {
      title: 'Instruction',
      dataIndex: 'instruction',
      render: (v: string, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <Input
              size="small" value={v}
              onChange={(e) => onUpdate(r.key, { instruction: e.target.value })}
            />
          ),
    },
    ...(!disabled
      ? [{
          title: '',
          width: 42,
          align: 'center' as const,
          render: (_: unknown, r: PODeliveryItem) => (
            <Tooltip title="Remove">
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

  const cumTotal = rows.reduce((s, r) => s + r.delQty, 0)

  return (
    <div>
      {!disabled && (
        <Button
          size="small"
          icon={<PlusOutlined />}
          onClick={onAdd}
          style={{ marginBottom: 10 }}
        >
          Add Row
        </Button>
      )}
      <Table<PODeliveryItem>
        rowKey="key"
        columns={columns}
        dataSource={rows}
        size="small"
        pagination={false}
        scroll={{ x: 'max-content' }}
        bordered
        locale={{ emptyText: 'No delivery schedule' }}
      />
      {rows.length > 0 && (
        <Typography.Text
          type={cumTotal > orderedQty ? 'danger' : 'secondary'}
          style={{ fontSize: 11, marginTop: 4, display: 'block' }}
        >
          Scheduled: {cumTotal} / {orderedQty} bales {cumTotal > orderedQty ? '⚠ Exceeds order quantity' : ''}
        </Typography.Text>
      )}
    </div>
  )
}
