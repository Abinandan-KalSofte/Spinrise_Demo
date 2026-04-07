import { Button, Card, Popconfirm, Space, Table, Tag, Tooltip, Typography } from 'antd'
import {
  DeleteOutlined,
  EditOutlined,
  TableOutlined,
  UnorderedListOutlined,
} from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import type { PRItem } from '../types'

const { Text } = Typography

interface Props {
  items: PRItem[]
  onEdit: (item: PRItem) => void
  onDelete: (id: string) => void
}

export function PRItemsGrid({ items, onEdit, onDelete }: Props) {
  const columns: ColumnsType<PRItem> = [
    {
      title: 'Item Code',
      dataIndex: 'itemCode',
      width: 110,
      fixed: 'left',
      render: (v) => <Tag color="blue">{v}</Tag>,
    },
    {
      title: 'Item Name',
      dataIndex: 'itemName',
      width: 200,
      ellipsis: true,
      sorter: (a, b) => a.itemName.localeCompare(b.itemName),
    },
    {
      title: 'UOM',
      dataIndex: 'uom',
      width: 70,
      align: 'center',
    },
    {
      title: 'Rate',
      dataIndex: 'rate',
      width: 90,
      align: 'right',
      sorter: (a, b) => a.rate - b.rate,
      render: (v) => `₹ ${Number(v).toLocaleString('en-IN')}`,
    },
    {
      title: 'Stock',
      dataIndex: 'currentStock',
      width: 80,
      align: 'right',
      render: (v) => <Tag color={Number(v) < 10 ? 'red' : 'green'}>{v}</Tag>,
    },
    {
      title: 'Qty',
      dataIndex: 'quantityRequired',
      width: 70,
      align: 'right',
      sorter: (a, b) => a.quantityRequired - b.quantityRequired,
    },
    {
      title: 'Cost Centre',
      dataIndex: 'costCentre',
      width: 120,
    },
    {
      title: 'Budget Group',
      dataIndex: 'budgetGroup',
      width: 110,
    },
    {
      title: 'Machine',
      dataIndex: 'machineNo',
      width: 100,
      render: (v, r) =>
        v ? (
          <Tooltip title={r.machineDescription}>
            <Tag color="purple">{v}</Tag>
          </Tooltip>
        ) : (
          <Text type="secondary">—</Text>
        ),
    },
    {
      title: 'Req. Date',
      dataIndex: 'requiredDate',
      width: 110,
      sorter: (a, b) => a.requiredDate.localeCompare(b.requiredDate),
      render: (v) => v || <Text type="secondary">—</Text>,
    },
    {
      title: 'Place',
      dataIndex: 'place',
      width: 120,
      ellipsis: true,
    },
    {
      title: 'Approx Cost',
      dataIndex: 'approxCost',
      width: 120,
      align: 'right',
      sorter: (a, b) => a.approxCost - b.approxCost,
      render: (v) => `₹ ${Number(v).toLocaleString('en-IN')}`,
    },
    {
      title: 'Remarks',
      dataIndex: 'remarks',
      width: 160,
      ellipsis: true,
      render: (v) => v || <Text type="secondary">—</Text>,
    },
    {
      title: 'Actions',
      key: 'actions',
      width: 100,
      fixed: 'right',
      align: 'center',
      render: (_, record) => (
        <Space>
          <Tooltip title="Edit">
            <Button
              type="text"
              size="small"
              icon={<EditOutlined />}
              onClick={() => onEdit(record)}
              className="pr-action-btn pr-action-btn--edit"
            />
          </Tooltip>
          <Popconfirm
            title="Remove this item?"
            description="This action cannot be undone."
            okText="Remove"
            okType="danger"
            cancelText="Cancel"
            onConfirm={() => onDelete(record.id)}
          >
            <Tooltip title="Delete">
              <Button
                type="text"
                size="small"
                danger
                icon={<DeleteOutlined />}
                className="pr-action-btn pr-action-btn--delete"
              />
            </Tooltip>
          </Popconfirm>
        </Space>
      ),
    },
  ]

  const totalCost = items.reduce((sum, r) => sum + (r.approxCost || 0), 0)

  return (
    <Card
      className="pr-card"
      title={
        <Space>
          <TableOutlined className="pr-section-icon pr-section-icon--grid" />
          <span>Requisition Items</span>
          <Tag color="green">Section 3</Tag>
          <Tag color={items.length > 0 ? 'geekblue' : 'default'}>
            {items.length} item{items.length !== 1 ? 's' : ''}
          </Tag>
        </Space>
      }
      extra={
        items.length > 0 && (
          <Text type="secondary" className="pr-total-label">
            Total Approx Cost:&nbsp;
            <strong className="pr-total-value">
              ₹ {totalCost.toLocaleString('en-IN')}
            </strong>
          </Text>
        )
      }
    >
      {items.length === 0 ? (
        <div className="pr-empty-grid">
          <UnorderedListOutlined className="pr-empty-grid__icon" />
          <Text type="secondary">
            No items added yet. Use the Item Entry section above to add items.
          </Text>
        </div>
      ) : (
        <Table<PRItem>
          dataSource={items}
          columns={columns}
          rowKey="id"
          size="middle"
          scroll={{ x: 1600 }}
          pagination={{
            pageSize: 10,
            showSizeChanger: true,
            showTotal: (t) => `Total ${t} items`,
          }}
          className="pr-table"
          bordered
        />
      )}
    </Card>
  )
}
