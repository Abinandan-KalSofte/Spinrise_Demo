import { useCallback } from 'react'
import { Button, Pagination, Space, Tag, Tooltip, Typography } from 'antd'
import { DeleteOutlined, DownloadOutlined, EditOutlined, EyeOutlined, FileTextOutlined } from '@ant-design/icons'
import { useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import type { DepartmentLookup, EmployeeLookup, PRSummaryResponse } from '../../types'
import { PAGE_SIZE, STATUS_TAG } from './prListConfig'

// ── Props ─────────────────────────────────────────────────────────────────────

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

// ── Shared table styles (mirrors V1 line items table) ─────────────────────────

const TH: React.CSSProperties = {
  padding:       '6px 10px',
  fontSize:      10,
  fontWeight:    700,
  letterSpacing: '0.04em',
  color:         '#f1f5f9',
  background:    '#1e293b',
  borderBottom:  '2px solid #0f172a',
  whiteSpace:    'nowrap',
  position:      'sticky',
  top:           0,
  zIndex:        10,
  userSelect:    'none',
}

const TD: React.CSSProperties = {
  padding:       '5px 10px',
  verticalAlign: 'middle',
  borderBottom:  '1px solid #f0f0f0',
  fontSize:      12,
  color:         '#1e293b',
}

// ── Component ─────────────────────────────────────────────────────────────────

export function PRDataTable({
  rows, loading, deletingPrNo, departments, employees,
  page, total, onPageChange,
  onDelete, onDownload, downloading = null,
}: PRDataTableProps) {
  const navigate = useNavigate()

  const canDelete = useCallback(
    (row: PRSummaryResponse) => !row.isDeleted && row.prStatus === 'OPEN',
    [],
  )

  const deptName  = (code: string) => departments.find((d) => d.depCode === code)?.depName ?? code
  const empLabel  = (val: string | undefined) => {
    if (!val) return '—'
    const e = employees.find((x) => String(x.empNo) === String(val))
    return e ? `${e.empNo} – ${e.eName}` : val
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', height: '100%' }}>

      {/* ── Table ──────────────────────────────────────────────────────────── */}
      <div style={{ flex: 1, minHeight: 0, overflowY: 'auto' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr>
              <th style={{ ...TH, width: 36, textAlign: 'center' }}>#</th>
              <th style={{ ...TH, width: 80 }}>PR No</th>
              <th style={{ ...TH, width: 110 }}>PR Date</th>
              <th style={{ ...TH, minWidth: 140 }}>Department</th>
              <th style={{ ...TH, minWidth: 150 }}>Requested By</th>
              <th style={{ ...TH, width: 64, textAlign: 'center' }}>Items</th>
              <th style={{ ...TH, width: 130, textAlign: 'center' }}>Status</th>
              <th style={{ ...TH, width: 140, textAlign: 'center' }}>Actions</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr>
                <td colSpan={8} style={{ ...TD, textAlign: 'center', padding: '40px 0', color: '#94a3b8' }}>
                  Loading…
                </td>
              </tr>
            ) : rows.length === 0 ? (
              <tr>
                <td colSpan={8} style={{ ...TD, textAlign: 'center', padding: '48px 0' }}>
                  <FileTextOutlined style={{ fontSize: 32, color: '#d1d5db', display: 'block', margin: '0 auto 10px' }} />
                  <Typography.Text type="secondary" style={{ fontSize: 13 }}>
                    No purchase requisitions found
                  </Typography.Text>
                </td>
              </tr>
            ) : (
              rows.map((row, idx) => {
                const deletable = canDelete(row)
                const statusInfo = STATUS_TAG[row.prStatus ?? ''] ?? { label: row.prStatus ?? '—' }
                const muted = row.isDeleted || row.prStatus === 'CANCELLED'
                const rowBg = muted ? '#fafafa' : idx % 2 === 0 ? '#ffffff' : '#F0F5FF'

                return (
                  <tr
                    key={row.prNo}
                    style={{ background: rowBg, cursor: 'default', opacity: muted ? 0.6 : 1 }}
                    onMouseEnter={(e) => (e.currentTarget.style.background = '#eff6ff')}
                    onMouseLeave={(e) => (e.currentTarget.style.background = rowBg)}
                  >
                    <td style={{ ...TD, textAlign: 'center', color: '#94a3b8', width: 36 }}>
                      {(page - 1) * PAGE_SIZE + idx + 1}
                    </td>
                    <td style={{ ...TD, width: 80, fontFamily: 'monospace', fontWeight: 700, color: '#185FA5' }}>
                      #{row.prNo}
                    </td>
                    <td style={{ ...TD, width: 110 }}>
                      {row.prDate ? dayjs(row.prDate).format('DD-MMM-YYYY') : '—'}
                    </td>
                    <td style={{ ...TD, minWidth: 140 }}>
                      {row.depCode ? deptName(row.depCode) : '—'}
                    </td>
                    <td style={{ ...TD, minWidth: 150 }}>
                      {empLabel(row.reqName)}
                    </td>
                    <td style={{ ...TD, width: 64, textAlign: 'center' }}>
                      <Tag style={{ margin: 0, minWidth: 28, textAlign: 'center', fontVariantNumeric: 'tabular-nums' }}>
                        {row.lineCount ?? 0}
                      </Tag>
                    </td>
                    <td style={{ ...TD, width: 130, textAlign: 'center' }}>
                      <Tag
                        color={
                          row.prStatus === 'OPEN'           ? 'blue'    :
                          row.prStatus === 'L1_APPROVED'    ? 'orange'  :
                          row.prStatus === 'L2_APPROVED'    ? 'purple'  :
                          row.prStatus === 'FINAL_APPROVED' ? 'green'   :
                          row.prStatus === 'RECEIVED'       ? 'cyan'    :
                          row.prStatus === 'CONVERTED'      ? 'geekblue':
                          row.prStatus === 'CANCELLED'      ? 'red'     : 'default'
                        }
                        style={{ fontWeight: 600, minWidth: 70, textAlign: 'center', margin: 0 }}
                      >
                        {statusInfo.label}
                      </Tag>
                    </td>
                    <td style={{ ...TD, width: 140, textAlign: 'center' }}>
                      <Space size={2}>
                        <Tooltip title="View">
                          <Button type="text" size="small" icon={<EyeOutlined />}
                            onClick={() => navigate(`/purchase/requisition/v1/new?prNo=${row.prNo}&mode=view`) }/>
                        </Tooltip>
                        <Tooltip title="Edit">
                          <Button type="text" size="small" icon={<EditOutlined />}
                            onClick={() => navigate(`/purchase/requisition/v1/new?prNo=${row.prNo}&mode=edit`)} />
                        </Tooltip>
                        <Tooltip title="Download PDF">
                          <Button type="text" size="small" icon={<DownloadOutlined />}
                            loading={downloading === row.prNo}
                            onClick={() => onDownload(row)} />
                        </Tooltip>
                        <Tooltip title={deletable ? 'Delete PR' : 'Only open PRs can be deleted'}>
                          <Button type="text" size="small" danger icon={<DeleteOutlined />}
                            disabled={!deletable}
                            loading={deletingPrNo === row.prNo}
                            onClick={() => { if (deletable) onDelete(row.prNo) }} />
                        </Tooltip>
                      </Space>
                    </td>
                  </tr>
                )
              })
            )}
          </tbody>
        </table>
      </div>

      {/* ── Pagination ─────────────────────────────────────────────────────── */}
      <div style={{
        display:        'flex',
        justifyContent: 'flex-end',
        alignItems:     'center',
        padding:        '8px 14px',
        borderTop:      '2px solid #e2e8f0',
        background:     '#f8fafc',
        flexShrink:     0,
      }}>
        <Pagination
          current={page}
          total={total}
          pageSize={PAGE_SIZE}
          showSizeChanger={false}
          showTotal={(t, range) => `${range[0]}–${range[1]} of ${t} records`}
          onChange={onPageChange}
          disabled={loading}
          size="small"
        />
      </div>

    </div>
  )
}
