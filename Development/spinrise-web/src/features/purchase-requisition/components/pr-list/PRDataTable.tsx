import { useMemo, useCallback, useRef } from 'react'
import { AgGridReact } from 'ag-grid-react'
import type { CellStyle, ColDef, GridReadyEvent, ICellRendererParams } from 'ag-grid-community'
import { AllCommunityModule, ModuleRegistry, themeQuartz } from 'ag-grid-community'
import { Button, Space, Tag, Tooltip, Typography } from 'antd'
import { DeleteOutlined, EditOutlined, EyeOutlined, FileTextOutlined } from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import type { DepartmentLookup, PRSummaryResponse } from '../../types'
import { STATUS_TAG } from './prListConfig'

ModuleRegistry.registerModules([AllCommunityModule])

interface PRDataTableProps {
  rows:         PRSummaryResponse[]
  loading:      boolean
  deletingPrNo: number | null
  departments:  DepartmentLookup[]
  onView:       (prNo: number) => void
  onDelete:     (prNo: number) => void
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
  rows, loading, deletingPrNo, departments, onView, onDelete,
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
      headerName: 'Requested By',
      field:      'reqName',
      flex:       1,
      minWidth:   140,
      sortable:   true,
      cellStyle:  CELL_BASE,
      valueFormatter: ({ value }: { value: string | undefined }) => value || '—',
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
      width:      100,
      sortable:   false,
      filter:     false,
      pinned:     'right',
      cellStyle:  { ...CELL_BASE, justifyContent: 'center' },
      cellRenderer: ({ data }: ICellRendererParams<PRSummaryResponse>) => {
        if (!data) return null
        const deletable = canDelete(data)
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
                onClick={() => navigate(`/purchase/requisition/edit/${data.prNo}`)}
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
  ], [departments, deletingPrNo, navigate, onView, onDelete, canDelete])

  const defaultColDef = useMemo<ColDef>(() => ({
    resizable: true,
    filter:    true,
  }), [])

  const onGridReady = useCallback((_: GridReadyEvent) => {
    gridRef.current?.api?.sizeColumnsToFit()
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
