import { useMemo } from 'react'
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
  const columns: ColumnsType<PRLineFormItem> = useMemo(() => [
    {
      title: '#',
      key:   'index',
      width: 44,
      fixed: 'left',
      render: (_: unknown, __: PRLineFormItem, i: number) => (
        <Typography.Text type="secondary" style={{ fontSize: 12 }}>{i + 1}</Typography.Text>
      ),
    },
    {
      title:     'Code',
      dataIndex: 'itemCode',
      key:       'itemCode',
      width:     100,
      fixed:     'left',
      render: (val: string) => <Typography.Text code style={{ fontSize: 12 }}>{val}</Typography.Text>,
    },
    {
      title:     'Item Description',
      dataIndex: 'itemName',
      key:       'itemName',
      width:     200,
      ellipsis:  true,
      render: (val: string) => (
        <Tooltip title={val}><span>{val}</span></Tooltip>
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
      title:     'Rate',
      dataIndex: 'rate',
      key:       'rate',
      width:     100,
      align:     'right',
      render: (val: number | null) =>
        val != null
          ? `₹${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      title:     'Current Stock',
      dataIndex: 'currentStock',
      key:       'currentStock',
      width:     110,
      align:     'right',
      render: (val: number | null) => val != null ? val : '—',
    },
    {
      title:     'Quantity Required',
      dataIndex: 'qtyRequired',
      key:       'qtyRequired',
      width:     130,
      align:     'right',
      render: (val: number) => <strong>{val}</strong>,
    },
    {
      title:     'Cost Centre',
      dataIndex: 'costCentreCode',
      key:       'costCentreCode',
      width:     110,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Budget Group',
      dataIndex: 'budgetGroupCode',
      key:       'budgetGroupCode',
      width:     110,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Sub Cost Centre',
      dataIndex: 'subCostCode',
      key:       'subCostCode',
      width:     110,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Machine Code',
      dataIndex: 'machineNo',
      key:       'machineNo',
      width:     110,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Required Date',
      dataIndex: 'requiredDate',
      key:       'requiredDate',
      width:     120,
      render: (val: string | null) => val ? dayjs(val).format('DD-MM-YYYY') : '—',
    },
    {
      title:     'Place',
      dataIndex: 'place',
      key:       'place',
      width:     100,
      ellipsis:  true,
      render: (val: string) => val || '—',
    },
    {
      title:     'Approx Cost',
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
      title:     'Remarks',
      dataIndex: 'remarks',
      key:       'remarks',
      width:     150,
      ellipsis:  true,
      render: (val: string) =>
        val
          ? <Tooltip title={val}><span>{val}</span></Tooltip>
          : '—',
    },
    {
      title:     'Last Rate',
      dataIndex: 'lastPoRate',
      key:       'lastPoRate',
      width:     100,
      align:     'right',
      render: (val: number | null) =>
        val != null
          ? `₹${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      title:     'Last PO Date',
      dataIndex: 'lastPoDate',
      key:       'lastPoDate',
      width:     120,
      render: (val: string | null) => val ? dayjs(val).format('DD-MM-YYYY') : '—',
    },
    {
      title:     'Supplier Name',
      dataIndex: 'lastPoSupplierName',
      key:       'lastPoSupplierName',
      width:     150,
      ellipsis:  true,
      render: (val: string | null) =>
        val
          ? <Tooltip title={val}><span>{val}</span></Tooltip>
          : '—',
    },
    {
      title:     'Sample',
      dataIndex: 'isSample',
      key:       'isSample',
      width:     70,
      align:     'center',
      render: (val: boolean) => val ? <Tag color="blue">Yes</Tag> : '—',
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
  ], [editingKey, onEdit, onDelete, disabled])

  return (
    <Table<PRLineFormItem>
      dataSource={lines}
      columns={columns}
      rowKey="key"
      size="small"
      scroll={{ x: 2000 }}
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
