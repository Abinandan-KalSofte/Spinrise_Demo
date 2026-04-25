import { useMemo, useCallback, useRef } from 'react'
import { AgGridReact } from 'ag-grid-react'
import type { CellStyle, ColDef, GridReadyEvent, ICellRendererParams } from 'ag-grid-community'
import { AllCommunityModule, ModuleRegistry, themeQuartz } from 'ag-grid-community'
import { Button, Space, Tag, Tooltip, Typography } from 'antd'
import { DeleteOutlined, DownloadOutlined, EditOutlined, EyeOutlined, FileTextOutlined } from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import { getFYBounds } from '@/shared/lib/dateUtils'
import type { DepartmentLookup, EmployeeLookup, PRSummaryResponse } from '../../types'
import { STATUS_TAG } from './prListConfig'

ModuleRegistry.registerModules([AllCommunityModule])

interface PRDataTableProps {
  rows:         PRSummaryResponse[]
  loading:      boolean
  deletingPrNo: number | null
  departments:  DepartmentLookup[]
  employees:    EmployeeLookup[]
  onView:       (prNo: number) => void
  onDelete:     (prNo: number) => void
  onDownload:   (record: PRSummaryResponse) => void
  downloading?: number | null
}

const HEADER_HEIGHT = 38
const ROW_HEIGHT    = 34

const CELL_BASE: CellStyle = { display: 'flex', alignItems: 'center' }

const STATUS_COLORS: Record<string, string> = {
  OPEN:      'blue',
  APPROVED:  'green',
  RECEIVED:  'cyan',
  CONVERTED: 'geekblue',
  CANCELLED: 'red',
  REJECTED:  'red',
}

const prTheme = themeQuartz.withParams({
  headerBackgroundColor:     '#1e293b',
  headerTextColor:           '#f8fafc',
  headerFontWeight:          700,
  headerFontSize:            12,
  rowHeight:                 ROW_HEIGHT,
  headerHeight:              HEADER_HEIGHT,
  oddRowBackgroundColor:     '#f8fafc',
  rowHoverColor:             '#eff6ff',
  borderColor:               '#f1f5f9',
  cellTextColor:             '#1e293b',
  fontSize:                  13,
  rowBorder:                 true,
  columnBorder:              false,
})

export function PRDataTable({
  rows, loading, deletingPrNo, departments, employees,
  onView, onDelete, onDownload, downloading = null,
}: PRDataTableProps) {
  const navigate = useNavigate()
  const gridRef  = useRef<AgGridReact<PRSummaryResponse>>(null)

  const canDelete = useCallback(
    (row: PRSummaryResponse) =>
      !row.isDeleted && row.prStatus !== 'CANCELLED' && row.prStatus !== 'CONVERTED',
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
      width:      112,
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
      width:       76,
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
            <Tooltip title={deletable ? 'Cancel PR' : 'Already cancelled or converted'}>
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

  // B01: auto-size on grid ready (no data yet); onFirstDataRendered fires when rows are loaded
  const onGridReady = useCallback((_: GridReadyEvent) => {
    // intentionally empty — sizing handled by onFirstDataRendered
  }, [])

  const getRowId = useCallback(
    ({ data }: { data: PRSummaryResponse }) => `${data.divCode}-${data.prNo}`,
    [],
  )

  const getRowClass = useCallback(
    ({ data }: { data?: PRSummaryResponse }) =>
      data?.isDeleted || data?.prStatus === 'CANCELLED' ? 'pr-row--muted' : '',
    [],
  )

  return (
    <div style={{ height: 'calc(100vh - 320px)', minHeight: 360 }}>
      <style>{`
        .pr-ag-grid .ag-header-cell {
          text-transform: uppercase;
          letter-spacing: 0.04em;
          border-right: 1px solid rgba(255,255,255,0.08) !important;
        }
        .pr-ag-grid .ag-header-cell:last-child { border-right: none !important; }
        .pr-ag-grid .ag-pinned-right-header .ag-header-cell { border-right: none !important; }
        .pr-ag-grid .pr-row--muted { opacity: 0.45; }
        .pr-ag-grid .ag-header-center .ag-header-cell-label { justify-content: center; }
      `}</style>
      <AgGridReact<PRSummaryResponse>
        ref={gridRef}
        className="pr-ag-grid"
        theme={prTheme}
        rowData={rows}
        columnDefs={colDefs}
        defaultColDef={defaultColDef}
        getRowId={getRowId}
        getRowClass={getRowClass}
        loading={loading}
        suppressRowClickSelection
        rowSelection={{ mode: 'singleRow' }}
        enableCellTextSelection
        onGridReady={onGridReady}
        // B01: auto-size all columns to content width when first data renders
        onFirstDataRendered={(e) => e.api.autoSizeAllColumns(false)}
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
  )
}
