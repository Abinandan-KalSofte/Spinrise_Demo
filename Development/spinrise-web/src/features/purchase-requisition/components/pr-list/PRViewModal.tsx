import React from 'react'
import { Button, Card, Modal, Skeleton, Table, Tag, Typography } from 'antd'
import {
  BankOutlined,
  CalendarOutlined,
  CheckCircleOutlined,
  EditOutlined,
  FileTextOutlined,
  NumberOutlined,
  TagOutlined,
  UserOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { PRHeaderResponse, PRLineResponse } from '../../types'
import { STATUS_TAG } from './prListConfig'
import { useLookupStore } from '../../store/useLookupStore'

// ── Status accent colours ──────────────────────────────────────────────────────

const STATUS_BORDER: Record<string, string> = {
  OPEN:           '#1d4ed8',
  L1_APPROVED:    '#d97706',
  L2_APPROVED:    '#7c3aed',
  FINAL_APPROVED: '#16a34a',
  RECEIVED:       '#0284c7',
  CONVERTED:      '#16a34a',
  CANCELLED:      '#dc2626',
}

const STATUS_BG: Record<string, string> = {
  OPEN:           'rgba(29,78,216,0.04)',
  L1_APPROVED:    'rgba(217,119,6,0.04)',
  L2_APPROVED:    'rgba(124,58,237,0.04)',
  FINAL_APPROVED: 'rgba(22,163,74,0.04)',
  RECEIVED:       'rgba(2,132,199,0.04)',
  CONVERTED:      'rgba(22,163,74,0.04)',
  CANCELLED:      'rgba(220,38,38,0.04)',
}

// ── Props ──────────────────────────────────────────────────────────────────────

interface PRViewModalProps {
  open:    boolean
  pr:      PRHeaderResponse | null
  loading: boolean
  onClose: () => void
}

// ── Modal shell ────────────────────────────────────────────────────────────────

export function PRViewModal({ open, pr, loading, onClose }: PRViewModalProps) {
  const loadAll = useLookupStore((s) => s.loadAll)
  React.useEffect(() => { if (open) void loadAll() }, [open, loadAll])

  return (
    <Modal
      open={open}
      centered
      onCancel={onClose}
      width="90vw"
      title={null}
      footer={null}
      closable={false}
      styles={{
        content: { borderRadius: 12, overflow: 'hidden', padding: 0 },
        body:    { padding: 0 },
      }}
      destroyOnClose
    >
      {loading ? (
        <div style={{ padding: 28 }}>
          <Skeleton active paragraph={{ rows: 10 }} />
        </div>
      ) : pr ? (
        <PRViewContent
          pr={pr}
          accentColor={STATUS_BORDER[pr.prStatus] ?? '#1677ff'}
          accentBg={STATUS_BG[pr.prStatus]    ?? 'rgba(22,119,255,0.04)'}
          onClose={onClose}
        />
      ) : null}
    </Modal>
  )
}

// ── Field pair ─────────────────────────────────────────────────────────────────

function Field({ icon, label, value }: { icon: React.ReactNode; label: string; value: React.ReactNode }) {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 4 }}>
      <div style={{ display: 'flex', alignItems: 'center', gap: 5 }}>
        <span style={{ color: '#94a3b8', fontSize: 11, display: 'flex' }}>{icon}</span>
        <Typography.Text style={{
          fontSize:      11,
          color:         '#94a3b8',
          fontWeight:    700,
          textTransform: 'uppercase',
          letterSpacing: '0.05em',
        }}>
          {label}
        </Typography.Text>
      </div>
      <div style={{ fontSize: 13, color: '#1e293b', fontWeight: 500, paddingLeft: 17 }}>
        {value}
      </div>
    </div>
  )
}

// ── Section heading ────────────────────────────────────────────────────────────

function SectionHeading({ label, accentColor }: { label: string; accentColor: string }) {
  return (
    <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 14 }}>
      <div style={{ width: 3, height: 14, borderRadius: 2, background: accentColor, flexShrink: 0 }} />
      <Typography.Text style={{
        fontSize:      11,
        fontWeight:    700,
        color:         '#64748b',
        textTransform: 'uppercase',
        letterSpacing: '0.06em',
      }}>
        {label}
      </Typography.Text>
    </div>
  )
}

// ── Main content ───────────────────────────────────────────────────────────────

function PRViewContent({ pr, accentColor, accentBg, onClose }: {
  pr:          PRHeaderResponse
  accentColor: string
  accentBg:    string
  onClose:     () => void
}) {
  const statusLabel = STATUS_TAG[pr.prStatus]?.label ?? pr.prStatus

  const totalQty  = pr.lines.reduce((s, l) => s + (l.qtyRequired ?? 0), 0)
  const totalCost = pr.lines.reduce((s, l) => {
    const c = l.approxCost && l.approxCost > 0
      ? l.approxCost
      : (l.lastPoRate ?? 0) * (l.qtyRequired ?? 0)
    return s + c
  }, 0)

  // Normalise empty-ish values to em-dash
  const v = (x: string | number | undefined | null): string => {
    if (x == null || x === '' || x === 0 || x === '0') return '—'
    return String(x)
  }

  const infoGrid: React.CSSProperties = {
    display:             'grid',
    gridTemplateColumns: '1fr 1fr 1fr',
    gap:                 '16px 28px',
    background:          '#f8fafc',
    borderRadius:        10,
    padding:             '18px 22px',
    border:              '1px solid #e2e8f0',
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column' }}>

      {/* ── Status Banner ─────────────────────────────────────────────────── */}
      <div style={{
        borderTop:      `4px solid ${accentColor}`,
        background:     accentBg,
        padding:        '16px 24px 14px',
        display:        'flex',
        alignItems:     'flex-start',
        justifyContent: 'space-between',
        borderBottom:   '1px solid #e2e8f0',
      }}>
        <div>
          <div style={{ display: 'flex', alignItems: 'center', gap: 10, marginBottom: 5 }}>
            <Typography.Text strong style={{ fontSize: 20, color: '#0f172a', letterSpacing: '-0.3px' }}>
              PR #{pr.prNo}
            </Typography.Text>
            <Tag style={{
              background:   accentColor,
              color:        '#fff',
              border:       'none',
              fontWeight:   700,
              fontSize:     12,
              borderRadius: 6,
              padding:      '2px 10px',
              margin:       0,
            }}>
              {statusLabel}
            </Tag>
          </div>
          <Typography.Text style={{ fontSize: 13, color: '#64748b' }}>
            <BankOutlined style={{ marginRight: 5 }} />
            {pr.depName ? `${pr.depCode} – ${pr.depName}` : (pr.depCode || '—')}
          </Typography.Text>
        </div>

        <Button
          type="text"
          size="small"
          onClick={onClose}
          style={{ color: '#94a3b8', fontSize: 16, marginTop: 2 }}
        >
          ✕
        </Button>
      </div>

      {/* ── Body ──────────────────────────────────────────────────────────── */}
      <div style={{
        padding:       '22px 24px',
        display:       'flex',
        flexDirection: 'column',
        gap:           22,  
        maxHeight:     '80vh',
        overflowY:     'auto',
      }}>

        {/* Section 1 — Requisition Details */}
        <div>
          <SectionHeading label="Requisition Details" accentColor={accentColor} />
          <div style={infoGrid}>
            <Field icon={<FileTextOutlined />} label="PR No"
              value={<span style={{ fontWeight: 700, color: accentColor, fontSize: 14 }}>#{pr.prNo}</span>} />
            <Field icon={<CalendarOutlined />} label="PR Date"
              value={pr.prDate ? dayjs(pr.prDate).format('DD-MMM-YYYY') : '—'} />
            <Field icon={<BankOutlined />}     label="Department"
              value={pr.depName ? `${pr.depCode} – ${pr.depName}` : v(pr.depCode)} />
            <Field icon={<TagOutlined />}      label="Request Type"  value={v(pr.iType)}   />
            <Field icon={<NumberOutlined />}   label="Reference No" value={v(pr.refNo)}   />
            <Field icon={<NumberOutlined />}   label="Section"      value={v(pr.section)} />
          </div>
        </div>

        {/* Section 2 — Parties & Classification */}
        <div>
          <SectionHeading label="Parties & Classification" accentColor={accentColor} />
          <div style={infoGrid}>
            <Field icon={<UserOutlined />}       label="Requested By"  value={v(pr.reqName)}    />
            <Field icon={<EditOutlined />}        label="Created By"    value={v(pr.createdBy)}  />
            <Field icon={<CheckCircleOutlined />} label="Status"
              value={
                <Tag style={{
                  background:   accentColor,
                  color:        '#fff',
                  border:       'none',
                  fontWeight:   700,
                  fontSize:     11,
                  borderRadius: 4,
                  padding:      '0 8px',
                  margin:       0,
                }}>
                  {statusLabel}
                </Tag>
              } />
            {/* <Field icon={<NumberOutlined />} label="PO Group"      value={v(pr.poGroupCode)} />
            <Field icon={<NumberOutlined />} label="Sale Order No" value={v(pr.saleOrderNo)} />
            <Field icon={<NumberOutlined />} label="Scope Code"    value={v(pr.scopeCode)}   /> */}
          </div>
        </div>

        {/* Section 3 — Approval Status (only when any approval data exists) */}
        {(pr.level1ApproverName || pr.level2ApproverName || pr.finalApproverName) && (
          <div>
            <SectionHeading label="Approval Status" accentColor={accentColor} />
            <div style={infoGrid}>
              <Field
                icon={<CheckCircleOutlined />}
                label="Level 1 Approved By"
                value={pr.level1ApproverName
                  ? <span style={{ color: '#16a34a', fontWeight: 600 }}>{pr.level1ApproverName}</span>
                  : <span style={{ color: '#94a3b8' }}>Pending</span>}
              />
              <Field
                icon={<CalendarOutlined />}
                label="Level 1 Approved On"
                value={pr.level1ApprovedAt
                  ? dayjs(pr.level1ApprovedAt).format('DD-MMM-YYYY')
                  : '—'}
              />
              <div />

              <Field
                icon={<CheckCircleOutlined />}
                label="Level 2 Approved By"
                value={pr.level2ApproverName
                  ? <span style={{ color: '#16a34a', fontWeight: 600 }}>{pr.level2ApproverName}</span>
                  : <span style={{ color: '#94a3b8' }}>Pending</span>}
              />
              <Field
                icon={<CalendarOutlined />}
                label="Level 2 Approved On"
                value={pr.level2ApprovedAt
                  ? dayjs(pr.level2ApprovedAt).format('DD-MMM-YYYY')
                  : '—'}
              />
              <div />

              <Field
                icon={<CheckCircleOutlined />}
                label="Final Approved By"
                value={pr.finalApproverName
                  ? <span style={{ color: '#16a34a', fontWeight: 600 }}>{pr.finalApproverName}</span>
                  : <span style={{ color: '#94a3b8' }}>Pending</span>}
              />
              <Field
                icon={<CalendarOutlined />}
                label="Final Approved On"
                value={pr.finalApprovedAt
                  ? dayjs(pr.finalApprovedAt).format('DD-MMM-YYYY')
                  : '—'}
              />
              <div />
            </div>
          </div>
        )}

        {/* Section 4 — Line Items */}
        <div>
          <SectionHeading label="Line Items" accentColor={accentColor} />
          <Card
            size="small"
            bordered
            style={{ borderRadius: 10, overflow: 'hidden', border: '1px solid #e2e8f0' }}
            styles={{ body: { padding: 0 } }}
            title={
              <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
                <FileTextOutlined style={{ color: accentColor }} />
                <Typography.Text strong style={{ fontSize: 13 }}>Items</Typography.Text>
                <Tag style={{ fontVariantNumeric: 'tabular-nums', borderRadius: 10, margin: 0 }}>
                  {pr.lines.length}
                </Tag>
              </div>
            }
          >
            <Table
              size="small"
              rowKey="prSNo"
              dataSource={pr.lines}
              scroll={{ x: 'max-content' }}
              pagination={false}
              components={{
                header: {
                  cell: (props: React.HTMLAttributes<HTMLElement>) => (
                    <th
                      {...props}
                      style={{
                        ...props.style,
                        background:  '#1e293b',
                        color:       '#f8fafc',
                        fontWeight:  700,
                        fontSize:    12,
                        borderColor: '#334155',
                      }}
                    />
                  ),
                },
              }}
              summary={() => (
                <Table.Summary.Row style={{ background: '#f1f5f9' }}>
                  {/* 0-3: #, Item ID, Description, UOM → "Total" label */}
                  <Table.Summary.Cell index={0} colSpan={4}>
                    <Typography.Text strong style={{ fontSize: 12, color: '#475569' }}>Total</Typography.Text>
                  </Table.Summary.Cell>
                  {/* 4: QTY */}
                  <Table.Summary.Cell index={4} align="right">
                    <Typography.Text strong style={{ fontVariantNumeric: 'tabular-nums' }}>{totalQty}</Typography.Text>
                  </Table.Summary.Cell>
                  {/* 5: Unit Price (empty) */}
                  <Table.Summary.Cell index={5} />
                  {/* 6: Approx Cost → grand total */}
                  <Table.Summary.Cell index={6} align="right">
                    <Typography.Text strong style={{ color: accentColor, fontVariantNumeric: 'tabular-nums' }}>
                      {totalCost > 0
                        ? `₹ ${totalCost.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                        : '—'}
                    </Typography.Text>
                  </Table.Summary.Cell>
                  {/* 7-17: remaining columns (empty) */}
                  {Array.from({ length: 11 }, (_, i) => <Table.Summary.Cell key={i} index={7 + i} />)}
                </Table.Summary.Row>
              )}
              columns={[
                {
                  title: '#', dataIndex: 'prSNo', key: 'prSNo', width: 46, align: 'center',
                },
                {
                  title: 'Item ID', dataIndex: 'itemCode', key: 'itemCode', width: 110,
                  render: (val: string) => (
                    <Typography.Text code style={{ fontSize: 11 }}>{val}</Typography.Text>
                  ),
                },
                {
                  title: 'Item Description', dataIndex: 'itemName', key: 'itemName', width: 200,
                  render: (val: string | undefined) => val || '—',
                },
                {
                  title: 'UOM', dataIndex: 'uom', key: 'uom', width: 70, align: 'center',
                  render: (val: string | undefined) => val || '—',
                },
                {
                  title: 'QTY', dataIndex: 'qtyRequired', key: 'qtyRequired', width: 70, align: 'right',
                  render: (val: number) => <strong>{val}</strong>,
                },
                {
                  title: 'Unit Price', dataIndex: 'rate', key: 'rate', width: 115, align: 'right',
                  render: (val: number | undefined) =>
                    val != null && val > 0
                      ? `₹ ${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                      : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Approx Cost', key: 'approxCost', width: 130, align: 'right' as const,
                  render: (_: unknown, row: PRLineResponse) => {
                    const r = row.rate && row.rate > 0 ? row.rate : (row.lastPoRate ?? 0)
                    const v = r * (row.qtyRequired ?? 0)
                    return v > 0
                      ? <strong>{`₹ ${v.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`}</strong>
                      : <Typography.Text type="secondary">—</Typography.Text>
                  },
                },
                {
                  title: 'Current Stock', dataIndex: 'currentStock', key: 'currentStock', width: 130, align: 'right',
                  render: (val: number | undefined) =>
                    val != null ? val : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Cat. No', dataIndex: 'catNo', key: 'catNo', width: 90,
                  render: (val: string | undefined) => val || <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Draw No', dataIndex: 'drawNo', key: 'drawNo', width: 90,
                  render: (val: string | undefined) => val || <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Machine No', dataIndex: 'machineNo', key: 'machineNo', width: 115,
                  render: (val: string | undefined) => val || <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Sub Cost', key: 'subCostCode', width: 160,
                  render: (_: unknown, row: PRLineResponse) => {
                    if (row.subCostCode == null) return <Typography.Text type="secondary">—</Typography.Text>
                    return row.subCostName
                      ? `${row.subCostCode} – ${row.subCostName}`
                      : String(row.subCostCode)
                  },
                },
                {
                  title: 'Req. Date', dataIndex: 'requiredDate', key: 'requiredDate', width: 105,
                  render: (val: string | undefined) =>
                    val ? dayjs(val).format('DD-MMM-YYYY') : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Remarks', dataIndex: 'remarks', key: 'remarks', width: 130,
                  render: (val: string | undefined) => val || <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Last PO Rate', dataIndex: 'lastPoRate', key: 'lastPoRate', width: 125, align: 'right',
                  render: (val: number | undefined) =>
                    val != null
                      ? `₹ ${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                      : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Last PO Date', dataIndex: 'lastPoDate', key: 'lastPoDate', width: 125,
                  render: (val: string | undefined) =>
                    val ? dayjs(val).format('DD-MMM-YYYY') : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Supplier Code', dataIndex: 'lastPoSupplierCode', key: 'lastPoSupplierCode', width: 130,
                  render: (val: string | undefined) =>
                    val ? <Typography.Text code style={{ fontSize: 11 }}>{val}</Typography.Text>
                        : <Typography.Text type="secondary">—</Typography.Text>,
                },
                {
                  title: 'Supplier Name', dataIndex: 'lastPoSupplierName', key: 'lastPoSupplierName', width: 145,
                  render: (val: string | undefined) =>
                    val || <Typography.Text type="secondary">—</Typography.Text>,
                },
              ]}
            />
          </Card>
        </div>

        {/* Footer action */}
        <div style={{ display: 'flex', justifyContent: 'flex-end' }}>
          <Button
            type="primary"
            onClick={onClose}
            style={{
              borderRadius:  8,
              paddingInline: 28,
              fontWeight:    600,
              background:    accentColor,
              borderColor:   accentColor,
            }}
          >
            Close
          </Button>
        </div>

      </div>
    </div>
  )
}
