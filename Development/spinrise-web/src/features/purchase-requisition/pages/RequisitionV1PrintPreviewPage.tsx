import { useEffect, useState } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { Button, Spin, Alert } from 'antd'
import { ArrowLeftOutlined, PrinterOutlined } from '@ant-design/icons'
import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { getFYBounds } from '@/shared/lib/dateUtils'
import type { PRHeaderResponse } from '../types'
import dayjs from 'dayjs'

// ── Print-only CSS injected into <head> ───────────────────────────────────────

const PRINT_STYLE = `
@media print {
  body * { visibility: hidden !important; }
  #pr-print-root, #pr-print-root * { visibility: visible !important; }
  #pr-print-root { position: fixed; inset: 0; }
  .no-print { display: none !important; }
  @page { size: A4 portrait; margin: 14mm 16mm; }
}
`

function injectPrintStyle() {
  if (document.getElementById('pr-print-style')) return
  const el = document.createElement('style')
  el.id = 'pr-print-style'
  el.textContent = PRINT_STYLE
  document.head.appendChild(el)
}

// ── Cell styles ───────────────────────────────────────────────────────────────

const TH_CELL: React.CSSProperties = {
  padding:       '6px 8px',
  fontSize:      10,
  fontWeight:    700,
  color:         '#fff',
  background:    '#1e40af',
  border:        '1px solid #1e3a8a',
  whiteSpace:    'nowrap',
}

const TD_CELL: React.CSSProperties = {
  padding:       '5px 8px',
  fontSize:      11,
  border:        '1px solid #e2e8f0',
  verticalAlign: 'top',
}

// ── Field label/value pair ────────────────────────────────────────────────────

function Field({ label, value }: { label: string; value?: string | null }) {
  return (
    <div style={{ display: 'flex', gap: 4, alignItems: 'flex-start', marginBottom: 2 }}>
      <span style={{ fontSize: 10, color: '#64748b', minWidth: 90, fontWeight: 600 }}>{label}:</span>
      <span style={{ fontSize: 11, color: '#1e293b', fontWeight: 500 }}>{value || '—'}</span>
    </div>
  )
}

// ── Component ─────────────────────────────────────────────────────────────────

export default function RequisitionV1PrintPreviewPage() {
  const { prNo }  = useParams<{ prNo: string }>()
  const navigate  = useNavigate()
  const [pr, setPr]       = useState<PRHeaderResponse | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError]   = useState<string | null>(null)

  useEffect(() => {
    injectPrintStyle()
    const num = Number(prNo)
    if (!num) { setError('Invalid PR number.'); setLoading(false); return }

    const { yfDate, ylDate } = getFYBounds()
    purchaseRequisitionApi.getById(num, yfDate, ylDate)
      .then(setPr)
      .catch((e: unknown) => setError(e instanceof Error ? e.message : 'Failed to load PR.'))
      .finally(() => setLoading(false))
  }, [prNo])

  if (loading) {
    return (
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100vh' }}>
        <Spin size="large" tip="Loading PR…" />
      </div>
    )
  }

  if (error || !pr) {
    return (
      <div style={{ padding: 32 }}>
        <Alert type="error" message={error ?? 'PR not found.'} />
        <Button style={{ marginTop: 16 }} icon={<ArrowLeftOutlined />} onClick={() => navigate(-1)}>Back</Button>
      </div>
    )
  }

  const validLines = pr.lines.filter((l) => l.itemCode.trim() !== '')
  const totalCost  = validLines.reduce((s, l) => s + (l.approxCost ?? 0), 0)

  return (
    <div style={{ background: '#e5e7eb', minHeight: '100vh', padding: '20px 0' }}>

      {/* ── Screen-only toolbar ───────────────────────────────────────────── */}
      <div className="no-print" style={{
        display: 'flex', justifyContent: 'center', gap: 12, marginBottom: 16,
      }}>
        <Button icon={<ArrowLeftOutlined />} onClick={() => navigate(-1)}>Back</Button>
        <Button
          type="primary"
          icon={<PrinterOutlined />}
          onClick={() => window.print()}
          style={{ background: '#1677ff' }}
        >
          Print
        </Button>
      </div>

      {/* ── A4 page ──────────────────────────────────────────────────────── */}
      <div id="pr-print-root" style={{
        width: '210mm',
        minHeight: '297mm',
        background: '#fff',
        margin: '0 auto',
        padding: '14mm 16mm',
        boxShadow: '0 4px 20px rgba(0,0,0,0.15)',
        fontFamily: "'Segoe UI', Arial, sans-serif",
        boxSizing: 'border-box',
      }}>

        {/* ── Document header ──────────────────────────────────────────────── */}
        <div style={{ borderBottom: '2px solid #1e40af', paddingBottom: 10, marginBottom: 14, display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
          <div>
            <div style={{ fontSize: 18, fontWeight: 800, color: '#1e3a8a', letterSpacing: '0.02em' }}>
              Purchase Requisition
            </div>
            <div style={{ fontSize: 11, color: '#64748b', marginTop: 2 }}>
              Division: {pr.divCode}
            </div>
          </div>
          <div style={{ textAlign: 'right' }}>
            <div style={{
              fontSize: 20, fontWeight: 900, color: '#1e40af',
              fontFamily: 'monospace', letterSpacing: '0.05em',
            }}>
              PR-{String(pr.prNo).padStart(5, '0')}
            </div>
            <div style={{
              display: 'inline-block',
              background: pr.prStatus === 'OPEN' ? '#dbeafe' : pr.prStatus?.includes('APPROVED') ? '#dcfce7' : '#f1f5f9',
              color:      pr.prStatus === 'OPEN' ? '#1e40af' : pr.prStatus?.includes('APPROVED') ? '#166534' : '#475569',
              fontSize: 10, fontWeight: 700,
              padding: '2px 10px', borderRadius: 20, marginTop: 4,
              border: '1px solid',
              borderColor: pr.prStatus === 'OPEN' ? '#93c5fd' : pr.prStatus?.includes('APPROVED') ? '#86efac' : '#cbd5e1',
            }}>
              {pr.prStatus}
            </div>
          </div>
        </div>

        {/* ── Requisition details ──────────────────────────────────────────── */}
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0 40px', marginBottom: 14 }}>
          <div>
            <Field label="PR Date"     value={dayjs(pr.prDate).format('DD MMM YYYY')} />
            <Field label="Department"  value={pr.depName ? `${pr.depCode} – ${pr.depName}` : pr.depCode} />
            <Field label="Section"     value={pr.section} />
            <Field label="Requested By" value={pr.reqName} />
            <Field label="PR Type"     value={pr.iType === 'E' ? 'Emergency' : pr.iType === 'O' ? 'Ordinary' : pr.iType === 'U' ? 'Urgent' : pr.iType} />
          </div>
          <div>
            <Field label="Reference No." value={pr.refNo} />
            <Field label="PO Group"    value={pr.poGroupCode} />
            <Field label="Scope"       value={pr.scopeCode} />
            <Field label="Sale Order"  value={pr.saleOrderNo} />
            <Field label="Created By"  value={pr.createdBy} />
          </div>
        </div>

        {/* ── Line items table ─────────────────────────────────────────────── */}
        <table style={{ width: '100%', borderCollapse: 'collapse', marginBottom: 14 }}>
          <thead>
            <tr>
              <th style={{ ...TH_CELL, width: 32, textAlign: 'center' }}>#</th>
              <th style={{ ...TH_CELL, width: 80 }}>Item Code</th>
              <th style={{ ...TH_CELL }}>Description</th>
              <th style={{ ...TH_CELL, width: 45, textAlign: 'center' }}>UOM</th>
              <th style={{ ...TH_CELL, width: 60, textAlign: 'right' }}>Qty Req.</th>
              <th style={{ ...TH_CELL, width: 75, textAlign: 'right' }}>Approx. Cost</th>
              <th style={{ ...TH_CELL, width: 40, textAlign: 'center' }}>Sample</th>
              <th style={{ ...TH_CELL }}>Remarks</th>
            </tr>
          </thead>
          <tbody>
            {validLines.map((line, idx) => (
              <tr key={line.prSNo} style={{ background: idx % 2 === 0 ? '#fff' : '#f8fafc' }}>
                <td style={{ ...TD_CELL, textAlign: 'center', color: '#94a3b8', fontSize: 10 }}>{idx + 1}</td>
                <td style={{ ...TD_CELL, fontFamily: 'monospace', fontWeight: 700, fontSize: 11 }}>{line.itemCode}</td>
                <td style={{ ...TD_CELL }}>
                  <div style={{ fontWeight: 600, fontSize: 11 }}>{line.itemName}</div>
                  {line.machineNo && <div style={{ fontSize: 10, color: '#94a3b8' }}>Machine: {line.machineNo}</div>}
                </td>
                <td style={{ ...TD_CELL, textAlign: 'center', fontSize: 10 }}>{line.uom || '—'}</td>
                <td style={{ ...TD_CELL, textAlign: 'right', fontVariantNumeric: 'tabular-nums' }}>
                  {(line.qtyRequired ?? 0).toLocaleString('en-IN', { minimumFractionDigits: 3 })}
                </td>
                <td style={{ ...TD_CELL, textAlign: 'right', fontVariantNumeric: 'tabular-nums' }}>
                  {line.approxCost != null
                    ? `₹ ${line.approxCost.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                    : '—'}
                </td>
                <td style={{ ...TD_CELL, textAlign: 'center', fontSize: 10 }}>
                  {line.isSample ? '✓' : ''}
                </td>
                <td style={{ ...TD_CELL, fontSize: 10, color: '#475569' }}>{line.remarks || ''}</td>
              </tr>
            ))}

            {/* Totals row */}
            <tr style={{ background: '#eff6ff', fontWeight: 700 }}>
              <td colSpan={5} style={{ ...TD_CELL, textAlign: 'right', fontSize: 11, color: '#1e3a8a' }}>
                Total ({validLines.length} {validLines.length === 1 ? 'item' : 'items'}):
              </td>
              <td style={{ ...TD_CELL, textAlign: 'right', fontVariantNumeric: 'tabular-nums', fontSize: 11, color: '#1e3a8a' }}>
                ₹ {totalCost.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
              </td>
              <td colSpan={2} style={TD_CELL} />
            </tr>
          </tbody>
        </table>

        {/* ── Approval chain ───────────────────────────────────────────────── */}
        {(pr.level1ApproverName || pr.level2ApproverName || pr.finalApproverName) && (
          <div style={{ marginBottom: 14 }}>
            <div style={{ fontSize: 10, fontWeight: 700, color: '#64748b', marginBottom: 6, textTransform: 'uppercase', letterSpacing: '0.05em' }}>
              Approval Chain
            </div>
            <div style={{ display: 'flex', gap: 24 }}>
              {pr.level1ApproverName && (
                <div style={{ fontSize: 10 }}>
                  <span style={{ color: '#64748b' }}>Level 1: </span>
                  <strong>{pr.level1ApproverName}</strong>
                  {pr.level1ApprovedAt && <span style={{ color: '#94a3b8', marginLeft: 4 }}>({dayjs(pr.level1ApprovedAt).format('DD MMM YYYY')})</span>}
                </div>
              )}
              {pr.level2ApproverName && (
                <div style={{ fontSize: 10 }}>
                  <span style={{ color: '#64748b' }}>Level 2: </span>
                  <strong>{pr.level2ApproverName}</strong>
                  {pr.level2ApprovedAt && <span style={{ color: '#94a3b8', marginLeft: 4 }}>({dayjs(pr.level2ApprovedAt).format('DD MMM YYYY')})</span>}
                </div>
              )}
              {pr.finalApproverName && (
                <div style={{ fontSize: 10 }}>
                  <span style={{ color: '#64748b' }}>Final: </span>
                  <strong>{pr.finalApproverName}</strong>
                  {pr.finalApprovedAt && <span style={{ color: '#94a3b8', marginLeft: 4 }}>({dayjs(pr.finalApprovedAt).format('DD MMM YYYY')})</span>}
                </div>
              )}
            </div>
          </div>
        )}

        {/* ── Signature block ──────────────────────────────────────────────── */}
        <div style={{
          borderTop: '1px dashed #cbd5e1', paddingTop: 14, marginTop: 'auto',
          display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: 20,
        }}>
          {['Prepared By', 'Checked By', 'Approved By'].map((label) => (
            <div key={label}>
              <div style={{ borderTop: '1px solid #94a3b8', paddingTop: 4, marginTop: 28 }}>
                <div style={{ fontSize: 10, color: '#64748b', textAlign: 'center' }}>{label}</div>
              </div>
            </div>
          ))}
        </div>

        {/* ── Footer ───────────────────────────────────────────────────────── */}
        <div style={{
          marginTop: 10, paddingTop: 8, borderTop: '1px solid #e2e8f0',
          display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        }}>
          <span style={{ fontSize: 9, color: '#94a3b8' }}>
            Created by {pr.createdBy} on {dayjs(pr.createdAt).format('DD MMM YYYY HH:mm')}
            {pr.modifiedBy && ` · Modified by ${pr.modifiedBy} on ${dayjs(pr.modifiedAt).format('DD MMM YYYY HH:mm')}`}
          </span>
          <span style={{ fontSize: 9, color: '#94a3b8' }}>
            Printed on {dayjs().format('DD MMM YYYY HH:mm')}
          </span>
        </div>
      </div>
    </div>
  )
}
