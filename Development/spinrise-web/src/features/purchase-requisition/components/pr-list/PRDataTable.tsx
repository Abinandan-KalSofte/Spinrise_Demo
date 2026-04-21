import { useMemo } from 'react'
import { Button, Space, Table, Tag, Tooltip, Typography } from 'antd'
import type { ColumnsType, TablePaginationConfig } from 'antd/es/table'
import type { SorterResult } from 'antd/es/table/interface'
import { DownloadOutlined, EditOutlined, EyeOutlined, FileTextOutlined } from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import type { DepartmentLookup, EmployeeLookup, PRSummaryResponse } from '../../types'
import { PAGE_SIZE, STATUS_TAG } from './prListConfig'

interface PRDataTableProps {
  rows:         PRSummaryResponse[]
  total:        number
  page:         number
  loading:      boolean
  downloading:  number | null
  departments:  DepartmentLookup[]
  employees:    EmployeeLookup[]
  onView:       (prNo: number) => void
  onDownload:   (record: PRSummaryResponse) => void
  onPageChange: (
    pagination: TablePaginationConfig,
    filters:    unknown,
    sorter:     SorterResult<PRSummaryResponse> | SorterResult<PRSummaryResponse>[],
  ) => void
}

export function PRDataTable({
  rows, total, page, loading, downloading,
  departments, employees,
  onView, onDownload, onPageChange,
}: PRDataTableProps) {
  const navigate = useNavigate()
  const columns = useMemo((): ColumnsType<PRSummaryResponse> => [
    {
      title:     'PR No',
      dataIndex: 'prNo',
      key:       'prNo',
      width:     88,
      sorter:    true,
      render: (v: number) => <Typography.Text strong>#{v}</Typography.Text>,
    },
    {
      title:            'PR Date',
      dataIndex:        'prDate',
      key:              'prDate',
      width:            108,
      sorter:           true,
      defaultSortOrder: 'descend',
      render: (v: string) => v ? dayjs(v).format('DD/MM/YYYY') : '—',
    },
    {
      title:     'Department',
      dataIndex: 'depCode',
      key:       'depCode',
      ellipsis:  true,
      render: (code: string) => {
        const dept = departments.find((d) => d.depCode === code)
        return dept
          ? <Tooltip title={dept.depName}><span>{dept.depName}</span></Tooltip>
          : (code || '—')
      },
    },
    {
      title:     'Ref No',
      dataIndex: 'refNo',
      key:       'refNo',
      width:     100,
      render: (v: string | undefined) => v || <Typography.Text type="secondary">—</Typography.Text>,
    },
    {
      title:     'Plan No',
      dataIndex: 'planNo',
      key:       'planNo',
      width:     80,
      align:     'right',
      render: (v: number | undefined) =>
        v != null ? v : <Typography.Text type="secondary">—</Typography.Text>,
    },
    {
      title:     'Requested By',
      dataIndex: 'reqName',
      key:       'reqName',
      width:     140,
      render: (code: string | undefined) => {
        if (!code) return <Typography.Text type="secondary">—</Typography.Text>
        const emp = employees.find((e) => e.empNo === code)
        return emp ? <Tooltip title={emp.eName}><span>{emp.eName}</span></Tooltip> : code
      },
    },
    {
      title:     'Lines',
      dataIndex: 'lineCount',
      key:       'lineCount',
      width:     64,
      align:     'center',
      render: (v: number) => (
        <Tag style={{ minWidth: 28, textAlign: 'center', fontVariantNumeric: 'tabular-nums' }}>{v}</Tag>
      ),
    },
    {
      title:     'Status',
      dataIndex: 'prStatus',
      key:       'prStatus',
      width:     108,
      render: (v: string) => {
        const s = STATUS_TAG[v] ?? { color: 'default', label: v }
        return (
          <Tag color={s.color} style={{ fontWeight: 600, minWidth: 72, textAlign: 'center' }}>
            {s.label}
          </Tag>
        )
      },
    },
    {
      title:  'Actions',
      key:    'actions',
      width:  112,
      fixed:  'right',
      align:  'center',
      render: (_: unknown, row: PRSummaryResponse) => (
        <Space size={4}>
          <Tooltip title="View Details">
            <Button
              type="text" size="small" icon={<EyeOutlined />}
              onClick={() => onView(row.prNo)}
            />
          </Tooltip>
          <Tooltip title="Edit PR">
            <Button
              type="text" size="small" icon={<EditOutlined />}
              onClick={() => navigate(`/purchase/requisition/edit/${row.prNo}`)}
            />
          </Tooltip>
          <Tooltip title="Download PDF">
            <Button
              type="text" size="small" icon={<DownloadOutlined />}
              loading={downloading === row.prNo}
              onClick={() => onDownload(row)}
            />
          </Tooltip>
        </Space>
      ),
    },
  ], [departments, employees, downloading, navigate, onView, onDownload])

  return (
    <Table<PRSummaryResponse>
      rowKey={(r) => `${r.divCode}-${r.prNo}`}
      columns={columns}
      dataSource={rows}
      loading={loading}
      size="small"
      scroll={{ x: 920 }}
      onChange={onPageChange}
      onRow={() => ({
        style:        { cursor: 'default' },
        onMouseEnter: (e) => { (e.currentTarget as HTMLElement).style.background = '#fafafa' },
        onMouseLeave: (e) => { (e.currentTarget as HTMLElement).style.background = '' },
      })}
      pagination={{
        current:         page,
        pageSize:        PAGE_SIZE,
        total,
        showSizeChanger: false,
        size:            'small',
        showTotal: (t, [from, to]) => `${from}–${to} of ${t.toLocaleString()}`,
      }}
      locale={{
        emptyText: (
          <div style={{ padding: '48px 0', textAlign: 'center' }}>
            <FileTextOutlined style={{ fontSize: 40, color: '#d9d9d9', display: 'block', marginBottom: 12 }} />
            <Typography.Text type="secondary">No purchase requisitions found</Typography.Text>
            <div>
              <Typography.Text type="secondary" style={{ fontSize: 12 }}>
                Try adjusting your search filters
              </Typography.Text>
            </div>
          </div>
        ),
      }}
    />
  )
}
