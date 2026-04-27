import { Button, Space, Table, Tag, Tooltip } from 'antd'
import { EditOutlined, DeleteOutlined, CheckCircleOutlined, ClockCircleOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { POSummaryDto } from '../../types'

interface Props {
  rows: POSummaryDto[]
  total: number
  page: number
  pageSize: number
  loading: boolean
  deletingKey: { contNo: string; contDt: string } | null
  onEdit: (contNo: string, contDt: string) => void
  onDelete: (contNo: string, contDt: string) => void
  onPageChange: (page: number) => void
}

function ApprovalBadge({ firstAppFlg, appFlg, cancelFlg }: { firstAppFlg: string; appFlg: string; cancelFlg: string }) {
  if (cancelFlg === 'Y') return <Tag color="red">Cancelled</Tag>
  if (appFlg === 'Y')      return <Tag color="green" icon={<CheckCircleOutlined />}>Approved</Tag>
  if (firstAppFlg === 'Y') return <Tag color="orange" icon={<ClockCircleOutlined />}>Level 1</Tag>
  return <Tag color="blue">Pending</Tag>
}

export function PODataTable({
  rows, total, page, pageSize, loading,
  deletingKey, onEdit, onDelete, onPageChange,
}: Props) {
  const columns: ColumnsType<POSummaryDto> = [
    {
      title: 'PO No',
      dataIndex: 'contNo',
      width: 90,
      render: (v) => <span style={{ fontWeight: 600, fontVariantNumeric: 'tabular-nums' }}>{v}</span>,
    },
    {
      title: 'Date',
      dataIndex: 'contDt',
      width: 110,
      render: (v) => dayjs(v).format('DD-MMM-YYYY'),
    },
    {
      title: 'Supplier',
      dataIndex: 'supplierName',
      minWidth: 160,
      render: (v, r) => (
        <Tooltip title={r.supplierCode}>
          <span>{v || r.supplierCode || '—'}</span>
        </Tooltip>
      ),
    },
    {
      title: 'Varieties',
      dataIndex: 'varietyCount',
      width: 80,
      align: 'center',
    },
    {
      title: 'Currency',
      dataIndex: 'currCode',
      width: 80,
      align: 'center',
      render: (v) => v || '—',
    },
    {
      title: 'Pay Mode',
      dataIndex: 'payMode',
      width: 90,
      render: (v) => v || '—',
    },
    {
      title: 'Status',
      width: 110,
      render: (_, r) => (
        <ApprovalBadge
          firstAppFlg={r.firstAppFlg}
          appFlg={r.appFlg}
          cancelFlg={r.cancelFlg}
        />
      ),
    },
    {
      title: 'Prepared By',
      dataIndex: 'preparedBy',
      width: 110,
      render: (v) => v || '—',
    },
    {
      title: 'Actions',
      width: 90,
      align: 'center',
      render: (_, r) => {
        const isDeleting =
          deletingKey?.contNo === r.contNo &&
          deletingKey?.contDt === r.contDt
        return (
          <Space size={4}>
            <Tooltip title="Edit">
              <Button
                size="small"
                icon={<EditOutlined />}
                onClick={() => onEdit(r.contNo, r.contDt)}
                disabled={r.cancelFlg === 'Y'}
              />
            </Tooltip>
            <Tooltip title="Delete">
              <Button
                size="small"
                danger
                icon={<DeleteOutlined />}
                loading={isDeleting}
                disabled={r.cancelFlg === 'Y' || r.appFlg === 'Y'}
                onClick={() => onDelete(r.contNo, r.contDt)}
              />
            </Tooltip>
          </Space>
        )
      },
    },
  ]

  return (
    <Table<POSummaryDto>
      rowKey={(r) => `${r.contNo}|${r.contDt}`}
      columns={columns}
      dataSource={rows}
      loading={loading}
      size="small"
      scroll={{ x: 'max-content' }}
      pagination={{
        current:   page,
        pageSize,
        total,
        showSizeChanger: false,
        showTotal: (t) => `${t.toLocaleString()} records`,
        onChange:  onPageChange,
      }}
    />
  )
}
