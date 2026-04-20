import { Button, Card, Table, Tag, Tooltip, Typography } from 'antd'
import type { ColumnsType } from 'antd/es/table'
import { EyeOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import type { RecentPO } from '../types'

interface RecentTableProps {
  data:    RecentPO[]
  loading: boolean
}

// ── Config ─────────────────────────────────────────────────────────────────────

const STATUS_TAG: Record<string, { color: string; label: string }> = {
  OPEN:     { color: 'blue',  label: 'Open'     },
  APPROVED: { color: 'green', label: 'Approved' },
  REJECTED: { color: 'red',   label: 'Rejected' },
}

const fmtAmt = (n: number) =>
  `₹${new Intl.NumberFormat('en-IN').format(n)}`

const COLUMNS: ColumnsType<RecentPO> = [
  {
    title:     'PO No',
    dataIndex: 'poNo',
    key:       'poNo',
    render: (v: string) => (
      <Typography.Text strong style={{ fontSize: 13 }}>{v}</Typography.Text>
    ),
  },
  {
    title:     'Date',
    dataIndex: 'date',
    key:       'date',
    width:     110,
    render: (v: string) => dayjs(v).format('DD/MM/YYYY'),
  },
  {
    title:     'Vendor',
    dataIndex: 'vendor',
    key:       'vendor',
    ellipsis:  true,
  },
  {
    title:     'Amount',
    dataIndex: 'amount',
    key:       'amount',
    align:     'right',
    width:     140,
    render: (v: number) => (
      <Typography.Text strong>{fmtAmt(v)}</Typography.Text>
    ),
  },
  {
    title:     'Status',
    dataIndex: 'status',
    key:       'status',
    width:     110,
    render: (v: string) => {
      const s = STATUS_TAG[v] ?? { color: 'default', label: v }
      return (
        <Tag color={s.color} style={{ fontWeight: 600, minWidth: 68, textAlign: 'center' }}>
          {s.label}
        </Tag>
      )
    },
  },
  {
    title:  '',
    key:    'action',
    width:  56,
    align:  'center',
    render: () => (
      <Tooltip title="View PO">
        <Button type="text" size="small" icon={<EyeOutlined />} />
      </Tooltip>
    ),
  },
]

// ── Component ──────────────────────────────────────────────────────────────────

export function RecentTable({ data, loading }: RecentTableProps) {
  return (
    <Card
      bordered={false}
      style={{ borderRadius: 8, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}
      styles={{ body: { padding: 0 } }}
      title={<Typography.Text strong>Recent Purchase Orders</Typography.Text>}
      extra={<Typography.Link style={{ fontSize: 12 }}>View All</Typography.Link>}
    >
      <Table<RecentPO>
        rowKey="key"
        columns={COLUMNS}
        dataSource={data}
        loading={loading}
        size="small"
        pagination={false}
        onRow={() => ({
          onMouseEnter: (e) => { (e.currentTarget as HTMLElement).style.background = '#fafafa' },
          onMouseLeave: (e) => { (e.currentTarget as HTMLElement).style.background = '' },
        })}
      />
    </Card>
  )
}
