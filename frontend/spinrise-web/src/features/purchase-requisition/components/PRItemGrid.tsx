import { Button, Popconfirm, Space, Table, Tag, Tooltip, Typography } from 'antd'
import {
  EditOutlined,
  DeleteOutlined,
  PlusOutlined,
  CheckCircleOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { ColumnsType } from 'antd/es/table'
import type { PRLineFormItem } from '../types'

interface PRItemGridProps {
  lines: PRLineFormItem[]
  onAddItem: () => void
  onEditItem: (item: PRLineFormItem) => void
  onDeleteItem: (key: string) => void
  disabled?: boolean
}

export function PRItemGrid({
  lines,
  onAddItem,
  onEditItem,
  onDeleteItem,
  disabled = false,
}: PRItemGridProps) {
  const columns: ColumnsType<PRLineFormItem> = [
    {
      title: '#',
      key: 'index',
      width: 48,
      fixed: 'left',
      render: (_: unknown, __: PRLineFormItem, index: number) => (
        <Typography.Text type="secondary">{index + 1}</Typography.Text>
      ),
    },
    {
      title: 'Item Code',
      dataIndex: 'itemCode',
      key: 'itemCode',
      width: 130,
      fixed: 'left',
      render: (code: string) => (
        <Typography.Text code style={{ fontSize: 12 }}>
          {code}
        </Typography.Text>
      ),
    },
    {
      title: 'Item Name',
      dataIndex: 'itemName',
      key: 'itemName',
      width: 220,
      ellipsis: true,
      render: (name: string) => (
        <Tooltip title={name}>
          <span>{name}</span>
        </Tooltip>
      ),
    },
    {
      title: 'UOM',
      dataIndex: 'uom',
      key: 'uom',
      width: 70,
      align: 'center',
    },
    {
      title: 'Stock',
      dataIndex: 'currentStock',
      key: 'currentStock',
      width: 90,
      align: 'right',
      render: (val: number | null) =>
        val != null ? (
          <Tag color={val <= 0 ? 'red' : 'default'}>{val}</Tag>
        ) : (
          <Typography.Text type="secondary">—</Typography.Text>
        ),
    },
    {
      title: 'Qty Required',
      dataIndex: 'qtyRequired',
      key: 'qtyRequired',
      width: 110,
      align: 'right',
      render: (val: number) => <strong>{val}</strong>,
    },
    {
      title: 'Req. Date',
      dataIndex: 'requiredDate',
      key: 'requiredDate',
      width: 110,
      render: (val: string | null) =>
        val ? dayjs(val).format('DD-MM-YYYY') : '—',
    },
    {
      title: 'Est. Cost',
      dataIndex: 'approxCost',
      key: 'approxCost',
      width: 110,
      align: 'right',
      render: (val: number | null) =>
        val != null
          ? `₹${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      title: 'Machine',
      dataIndex: 'machineNo',
      key: 'machineNo',
      width: 120,
      ellipsis: true,
      render: (val: string) => val || '—',
    },
    {
      title: 'Sample',
      dataIndex: 'isSample',
      key: 'isSample',
      width: 72,
      align: 'center',
      render: (val: boolean) =>
        val ? <CheckCircleOutlined style={{ color: '#52c41a' }} /> : null,
    },
    {
      title: 'Remarks',
      dataIndex: 'remarks',
      key: 'remarks',
      width: 160,
      ellipsis: true,
      render: (val: string) =>
        val ? (
          <Tooltip title={val}>
            <span>{val}</span>
          </Tooltip>
        ) : (
          '—'
        ),
    },
    {
      title: '',
      key: 'actions',
      width: 80,
      fixed: 'right',
      render: (_: unknown, record: PRLineFormItem) => (
        <Space size={4}>
          <Tooltip title="Edit">
            <Button
              type="text"
              size="small"
              icon={<EditOutlined />}
              onClick={() => onEditItem(record)}
              disabled={disabled}
            />
          </Tooltip>
          <Popconfirm
            title="Remove this item?"
            okText="Remove"
            okButtonProps={{ danger: true }}
            onConfirm={() => onDeleteItem(record.key)}
            disabled={disabled}
          >
            <Tooltip title="Remove">
              <Button
                type="text"
                size="small"
                danger
                icon={<DeleteOutlined />}
                disabled={disabled}
              />
            </Tooltip>
          </Popconfirm>
        </Space>
      ),
    },
  ]

  return (
    <div>
      <div
        style={{
          display: 'flex',
          justifyContent: 'space-between',
          alignItems: 'center',
          marginBottom: 12,
        }}
      >
        <Typography.Title level={5} style={{ margin: 0 }}>
          Line Items
          {lines.length > 0 && (
            <Tag color="blue" style={{ marginLeft: 8, fontWeight: 'normal', fontSize: 12 }}>
              {lines.length}
            </Tag>
          )}
        </Typography.Title>
        <Button
          type="dashed"
          icon={<PlusOutlined />}
          onClick={onAddItem}
          disabled={disabled}
        >
          Add Item
        </Button>
      </div>

      <Table<PRLineFormItem>
        dataSource={lines}
        columns={columns}
        rowKey="key"
        size="small"
        scroll={{ x: 1200 }}
        pagination={false}
        locale={{
          emptyText: (
            <Typography.Text type="secondary">
              No items added yet. Click "Add Item" to begin.
            </Typography.Text>
          ),
        }}
        bordered
      />
    </div>
  )
}
