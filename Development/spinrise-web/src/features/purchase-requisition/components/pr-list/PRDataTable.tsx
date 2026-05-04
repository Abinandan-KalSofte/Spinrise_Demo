import { useMemo, useCallback, useRef } from 'react'
import { AgGridReact } from 'ag-grid-react'
import type { CellStyle, ColDef, ICellRendererParams } from 'ag-grid-community'
import { AllCommunityModule, ModuleRegistry } from 'ag-grid-community'
import { spinriseGridTheme } from '@/shared/lib/agGridTheme'
import { Button, Pagination, Space, Tag, Tooltip, Typography } from 'antd'
import { DeleteOutlined, DownloadOutlined, EditOutlined, EyeOutlined, FileTextOutlined } from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import { getFYBounds } from '@/shared/lib/dateUtils'
import type { DepartmentLookup, EmployeeLookup, PRSummaryResponse } from '../../types'
import { PAGE_SIZE, STATUS_TAG } from './prListConfig'

ModuleRegistry.registerModules([AllCommunityModule])

interface PRDataTableProps {
  rows:         PRSummaryResponse[]
  loading:      boolean
  deletingPrNo: number | null
  departments:  DepartmentLookup[]
  employees:    EmployeeLookup[]
  page:         number
  total:        number
  onPageChange: (page: number) => void
  onView:       (prNo: number) => void
  onDelete:     (prNo: number) => void
  onDownload:   (record: PRSummaryResponse) => void
  downloading?: number | null
}

const CELL_BASE: CellStyle = { display: 'flex', alignItems: 'center' }

const STATUS_COLORS: Record<string, string> = {
  OPEN:           'blue',
  L1_APPROVED:    'orange',
  L2_APPROVED:    'purple',
  FINAL_APPROVED: 'green',
  RECEIVED:       'cyan',
  CONVERTED:      'geekblue',
  CANCELLED:      'red',
}

export function PRDataTable({
  rows, loading, deletingPrNo, departments, employees,
  page, total, onPageChange,
  onView, onDelete, onDownload, downloading = null,
}: PRDataTableProps) {
  const navigate = useNavigate()
  const gridRef  = useRef<AgGridReact<PRSummaryResponse>>(null)

  const canDelete = useCallback(
    (row: PRSummaryResponse) => !row.isDeleted && row.prStatus === 'OPEN',
    [],
  )

  const colDefs = useMemo((): ColDef<PRSummaryResponse>[] => [
    {
      headerName: 'PR No',
      field:      'prNo',
      width:      90,
      sortable:   true,
      cellStyle:  { ...CELL_BASE, fontWeight: 700, color: '#1677ff' },
      valueFormatter: ({ value }: { value: number }) => `#${value}`,
    },
    {
      headerName: 'PR Date',
      field:      'prDate',
      width:      160,
      sortable:   true,
      sort:       'desc',
      cellStyle:  CELL_BASE,
      valueFormatter: ({ value }: { value: string }) =>
        value ? dayjs(value).format('DD/MM/YYYY') : '—',
    },
    {
      headerName: 'Department',
      field:      'depCode',
      flex:       1,
      minWidth:   140,
      sortable:   true,
      cellStyle:  CELL_BASE,
      valueFormatter: ({ value }: { value: string }) => {
        const d = departments.find((dep) => dep.depCode === value)
        return d ? d.depName : (value || '—')
      },
    },
    {
      // B04: display "empNo – eName" by looking up from employees list
      headerName: 'Requested By',
      field:      'reqName',
      flex:       1,
      minWidth:   140,
      sortable:   true,
      cellStyle:  CELL_BASE,
      valueFormatter: ({ value }: { value: string | undefined }) => {
        if (!value) return '—'
        const emp = employees.find((e) => String(e.empNo) === String(value))
        return emp ? `${emp.empNo} – ${emp.eName}` : value
      },
    },
    {
      headerName:  'Items',
      field:       'lineCount',
      width:       100,
      sortable:    true,
      headerClass: 'ag-header-center',
      cellStyle:   { ...CELL_BASE, justifyContent: 'center' },
      cellRenderer: ({ value }: ICellRendererParams) => (
        <Tag style={{ minWidth: 28, textAlign: 'center', fontVariantNumeric: 'tabular-nums', margin: 0 }}>
          {value}
        </Tag>
      ),
    },
    {
      headerName: 'Status',
      field:      'prStatus',
      width:      112,
      sortable:   true,
      cellStyle:  { ...CELL_BASE, justifyContent: 'center' },
      cellRenderer: ({ value }: ICellRendererParams) => {
        const s = STATUS_TAG[value as string] ?? { label: value }
        return (
          <Tag
            color={STATUS_COLORS[value as string] ?? 'default'}
            style={{ fontWeight: 600, minWidth: 70, textAlign: 'center', margin: 0 }}
          >
            {s.label}
          </Tag>
        )
      },
    },
    {
      headerName: 'Actions',
      colId:      'actions',
      width:      136,
      sortable:   false,
      filter:     false,
      pinned:     'right',
      cellStyle:  { ...CELL_BASE, justifyContent: 'center' },
      cellRenderer: ({ data }: ICellRendererParams<PRSummaryResponse>) => {
        if (!data) return null
        const deletable = canDelete(data)
        // B03: pass FY date range so Edit page can load rate history context
        const { yfDate, ylDate } = getFYBounds()
        return (
          <Space size={2}>
            <Tooltip title="View">
              <Button
                type="text" size="small" icon={<EyeOutlined />}
                onClick={() => onView(data.prNo)}
              />
            </Tooltip>
            <Tooltip title="Edit">
              <Button
                type="text" size="small" icon={<EditOutlined />}
                onClick={() => navigate(
                  `/purchase/requisition/edit/${data.prNo}?from=${yfDate}&to=${ylDate}`
                )}
              />
            </Tooltip>
            {/* B02: Download PDF per row */}
            <Tooltip title="Download PDF">
              <Button
                type="text" size="small"
                icon={<DownloadOutlined />}
                loading={downloading === data.prNo}
                onClick={() => onDownload(data)}
              />
            </Tooltip>
            <Tooltip title={deletable ? 'Delete PR' : 'Only open PRs can be deleted'}>
              <Button
                type="text" size="small" danger icon={<DeleteOutlined />}
                disabled={!deletable}
                loading={deletingPrNo === data.prNo}
                onClick={() => { if (deletable) onDelete(data.prNo) }}
              />
            </Tooltip>
          </Space>
        )
      },
    },
  ], [departments, employees, deletingPrNo, downloading, navigate, onView, onDelete, onDownload, canDelete])

  const defaultColDef = useMemo<ColDef>(() => ({
    resizable: true,
    filter:    true,
  }), [])

  const getRowClass = useCallback(
    ({ data }: { data?: PRSummaryResponse }) =>
      data?.isDeleted || data?.prStatus === 'CANCELLED' ? 'pr-row--muted' : '',
    [],
  )

  return (
    <div>
    <div style={{ height: 'calc(100vh - 380px)', minHeight: 360 }}>
      <AgGridReact<PRSummaryResponse>
        ref={gridRef}
        className="spinrise-ag-grid"
        theme={spinriseGridTheme}
        rowData={rows}
        columnDefs={colDefs}
        defaultColDef={defaultColDef}
        getRowClass={getRowClass}
        loading={loading}
        enableCellTextSelection
        noRowsOverlayComponent={() => (
          <div style={{ textAlign: 'center', padding: '64px 0' }}>
            <FileTextOutlined style={{ fontSize: 40, color: '#d1d5db', display: 'block', marginBottom: 12 }} />
            <Typography.Text type="secondary" style={{ fontSize: 13, display: 'block' }}>
              No purchase requisitions found
            </Typography.Text>
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>
              Try adjusting your filters
            </Typography.Text>
          </div>
        )}
        domLayout="normal"
        suppressScrollOnNewData
      />
    </div>
    <div style={{
      display:        'flex',
      justifyContent: 'flex-end',
      alignItems:     'center',
      padding:        '10px 16px',
      borderTop:      '1px solid #f0f0f0',
    }}>
      <Pagination
        current={page}
        total={total}
        pageSize={PAGE_SIZE}
        showSizeChanger={false}
        showTotal={(t, range) => `${range[0]}–${range[1]} of ${t} records`}
        onChange={onPageChange}
        disabled={loading}
      />
    </div>
    </div>
  )
}
