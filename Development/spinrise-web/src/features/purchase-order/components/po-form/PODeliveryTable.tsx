import { Button, DatePicker, Input, InputNumber, Table, Tooltip } from 'antd'
import { DeleteOutlined, PlusOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { PODeliveryItem } from '../../hooks/usePurchaseOrderForm'

interface Props {
  rows:     PODeliveryItem[]
  disabled?: boolean
  onAdd:    () => void
  onUpdate: (key: string, patch: Partial<PODeliveryItem>) => void
  onRemove: (key: string) => void
}

export function PODeliveryTable({ rows, disabled, onAdd, onUpdate, onRemove }: Props) {
  const columns: ColumnsType<PODeliveryItem> = [
    {
      title: 'Delivery Date',
      dataIndex: 'delDate',
      width: 150,
      render: (v: string, r) =>
        disabled
          ? <span>{dayjs(v).format('DD-MMM-YYYY')}</span>
          : (
            <DatePicker
              size="small"
              value={v ? dayjs(v) : null}
              format="DD-MMM-YYYY"
              style={{ width: 138 }}
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
              size="small" value={v} min={0} style={{ width: 92 }}
              onChange={(val) => onUpdate(r.key, { delQty: val ?? 0 })}
            />
          ),
    },
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 100,
      render: (v: string, r) =>
        disabled
          ? <span>{v}</span>
          : (
            <Input
              size="small" value={v} style={{ width: 88, textTransform: 'uppercase' }}
              onChange={(e) => onUpdate(r.key, { varCode: e.target.value.toUpperCase() })}
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
    </div>
  )
}
