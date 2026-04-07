import {
  Button,
  Popconfirm,
  Space,
  Table,
  Tag,
  Tooltip,
  Typography,
} from 'antd'
import { EditOutlined, DeleteOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import type { ColumnsType } from 'antd/es/table'
import type { PRLineFormItem } from '../../types'

interface PRItemTableV2Props {
  lines:      PRLineFormItem[]
  editingKey: string | null
  onEdit:     (item: PRLineFormItem) => void
  onDelete:   (key: string) => void
  disabled:   boolean
}

export function PRItemTableV2({
  lines,
  editingKey,
  onEdit,
  onDelete,
  disabled,
}: PRItemTableV2Props) {
  const columns: ColumnsType<PRLineFormItem> = [
    {
      title: '#',
      key:   'index',
      width: 44,
      render: (_: unknown, __: PRLineFormItem, i: number) => (
        <Typography.Text type="secondary" style={{ fontSize: 12 }}>{i + 1}</Typography.Text>
      ),
    },
    {
      title:    'Item',
      key:      'item',
      ellipsis: true,
      render: (_: unknown, r: PRLineFormItem) => (
        <Space direction="vertical" size={0}>
          <Typography.Text code style={{ fontSize: 12 }}>{r.itemCode}</Typography.Text>
          <Tooltip title={r.itemName}>
            <Typography.Text style={{ fontSize: 13 }}>{r.itemName}</Typography.Text>
          </Tooltip>
        </Space>
      ),
    },
    {
      title:     'UOM',
      dataIndex: 'uom',
      key:       'uom',
      width:     64,
      align:     'center',
    },
    {
      title:     'Qty',
      dataIndex: 'qtyRequired',
      key:       'qtyRequired',
      width:     90,
      align:     'right',
      render: (val: number) => <strong>{val}</strong>,
    },
    {
      title:     'Req. Date',
      dataIndex: 'requiredDate',
      key:       'requiredDate',
      width:     110,
      render: (val: string | null) => val ? dayjs(val).format('DD-MM-YYYY') : '—',
    },
    {
      title:     'Est. Cost',
      dataIndex: 'approxCost',
      key:       'approxCost',
      width:     110,
      align:     'right',
      render: (val: number | null) =>
        val != null
          ? `₹${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      title:     'Machine',
      dataIndex: 'machineNo',
      key:       'machineNo',
      width:     110,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Remarks',
      dataIndex: 'remarks',
      key:       'remarks',
      ellipsis:  true,
      render: (val: string) =>
        val
          ? <Tooltip title={val}><span>{val}</span></Tooltip>
          : '—',
    },
    {
      title:  '',
      key:    'actions',
      width:  80,
      fixed:  'right',
      render: (_: unknown, record: PRLineFormItem) => (
        <Space size={4}>
          <Tooltip title={editingKey === record.key ? 'Currently editing' : 'Edit'}>
            <Button
              type={editingKey === record.key ? 'primary' : 'text'}
              size="small"
              icon={<EditOutlined />}
              onClick={() => onEdit(record)}
              disabled={disabled}
            />
          </Tooltip>
          <Popconfirm
            title="Remove this item?"
            okText="Remove"
            okButtonProps={{ danger: true }}
            onConfirm={() => onDelete(record.key)}
            disabled={disabled}
          >
            <Tooltip title="Delete">
              <Button
                type="text"
                size="small"
                danger
                icon={<DeleteOutlined />}
                disabled={disabled || editingKey === record.key}
              />
            </Tooltip>
          </Popconfirm>
        </Space>
      ),
    },
  ]

  return (
    <Table<PRLineFormItem>
      dataSource={lines}
      columns={columns}
      rowKey="key"
      size="small"
      scroll={{ x: 900 }}
      pagination={false}
      bordered
      rowClassName={(r) => (editingKey === r.key ? 'ant-table-row--selected' : '')}
      locale={{
        emptyText: (
          <Typography.Text type="secondary">
            No items added yet.
          </Typography.Text>
        ),
      }}
    />
  )
}
