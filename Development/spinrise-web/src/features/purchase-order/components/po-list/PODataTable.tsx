import { Button, Space, Table, Tag, Tooltip } from 'antd'
import { DeleteOutlined,  EyeOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { POSummaryResponse } from '../../types'

function statusTag(row: POSummaryResponse) {
  if (row.cancelFlag === 'Y') return <Tag color="red">Cancelled</Tag>
  if (row.appFlg     === 'Y') return <Tag color="green">Approved</Tag>
  if (row.firstAppFlg=== 'Y') return <Tag color="orange">L1 Approved</Tag>
  return <Tag color="blue">Pending</Tag>
}

interface Props {
  rows:        POSummaryResponse[]
  total:       number
  page:        number
  pageSize:    number
  loading:     boolean
  deletingKey: string | null
  onEdit:      (contNo: number, contDt: string) => void
  onDelete:    (contNo: number, contDt: string) => void
  onPageChange:(page: number) => void
}

export function PODataTable({ rows, total, page, pageSize, loading, deletingKey, onEdit, onDelete, onPageChange }: Props) {
  const columns: ColumnsType<POSummaryResponse> = [
    {
      title: 'PO No',
      dataIndex: 'contNo',
      width: 110,
      render: (v: number) => <span style={{ fontVariantNumeric: 'tabular-nums', fontWeight: 600 }}>{v}</span>,
    },
    {
      title: 'PO Date',
      dataIndex: 'contDt',
      width: 110,
      render: (v: string) => dayjs(v).format('DD-MMM-YYYY'),
    },
    {
      title: 'Supplier',
      dataIndex: 'supplierName',
      ellipsis: true,
      render: (v: string, r) => (
        <Tooltip title={r.supCd}>
          <span>{v || r.supCd}</span>
        </Tooltip>
      ),
    },
    {
      title: 'Varieties',
      dataIndex: 'varietyCount',
      width: 80,
      align: 'center',
      render: (v: number) => <Tag>{v}</Tag>,
    },
    {
      title: 'Status',
      width: 120,
      render: (_, r) => statusTag(r),
    },
    {
      title: 'Actions',
      width: 100,
      align: 'center',
      render: (_, r) => {
        const key        = `${r.contNo}|${r.contDt}`
        const isDeleting = deletingKey === key
        const locked     = r.cancelFlag === 'Y'
        return (
          <Space size={4}>
            <Tooltip title="Edit">
              <Button size="small" type="text" icon={<EyeOutlined />} onClick={() => onEdit(r.contNo, r.contDt)} disabled={locked} />
            </Tooltip>
            <Tooltip title="Cancel PO">
              <Button size="small" type="text" danger icon={<DeleteOutlined />} loading={isDeleting} onClick={() => onDelete(r.contNo, r.contDt)} disabled={locked} />
            </Tooltip>
          </Space>
        )
      },
    },
  ]

  return (
    <Table<POSummaryResponse>
      rowKey={(r) => `${r.contNo}|${r.contDt}`}
      columns={columns}
      dataSource={rows}
      loading={loading}
      size="small"
      pagination={{
        current:   page,
        pageSize,
        total,
        showSizeChanger: false,
        showTotal: (t) => `${t} records`,
        onChange:  onPageChange,
      }}
      scroll={{ x: 'max-content' }}
    />
  )
}
