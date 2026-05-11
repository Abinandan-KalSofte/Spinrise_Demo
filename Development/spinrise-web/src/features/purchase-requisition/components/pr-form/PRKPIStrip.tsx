import { PR_STATUS_LABELS } from '../../types'

// ── Design tokens ─────────────────────────────────────────────────────────────
const C = {
  blue:   '#185FA5',
  amber:  '#BA7517',
  text:   '#1a1a1a',
  text3:  '#888',
  border: '#e2e2e2',
  bg2:    '#fafaf8',
} as const

// ── Single KPI card ───────────────────────────────────────────────────────────
function KPICard({
  label, value, sub, valueColor, mono = false,
}: {
  label: string
  value: React.ReactNode
  sub?: string
  valueColor?: string
  mono?: boolean
}) {
  return (
    <div style={{
      background: '#fff',
      border: `1px solid ${C.border}`,
      borderRadius: 10,
      padding: '8px 13px',
      minWidth: 0,
    }}>
      <div style={{
        fontSize: 10, fontWeight: 600, color: C.text3,
        textTransform: 'uppercase', letterSpacing: '0.4px', marginBottom: 3,
      }}>
        {label}
      </div>
      <div style={{
        fontSize: mono ? 12 : 16,
        fontWeight: 700,
        color: valueColor ?? C.text,
        lineHeight: 1.2,
        fontVariantNumeric: 'tabular-nums',
        fontFamily: mono ? 'monospace' : 'inherit',
        overflow: 'hidden',
        textOverflow: 'ellipsis',
        whiteSpace: 'nowrap',
      }}>
        {value}
      </div>
      {sub && (
        <div style={{ fontSize: 10, color: C.text3, marginTop: 2, whiteSpace: 'nowrap' }}>
          {sub}
        </div>
      )}
    </div>
  )
}

// ── Props ─────────────────────────────────────────────────────────────────────
interface PRKPIStripProps {
  validLinesCount: number
  totalQtyDisplay: string
  totalCost:       number
  createdBy:       string
  prStatus:        string | null
  savedPrNo:       number | null
}

// ── Component ─────────────────────────────────────────────────────────────────
export function PRKPIStrip({
  validLinesCount,
  totalQtyDisplay,
  totalCost,
  createdBy,
  prStatus,
  savedPrNo,
}: PRKPIStripProps) {
  const statusInfo = prStatus ? (PR_STATUS_LABELS[prStatus] ?? { label: prStatus, color: 'default' }) : null

  return (
    <div style={{
      background: C.bg2,
      borderBottom: `1px solid ${C.border}`,
      padding: '8px 16px',
      flexShrink: 0,
    }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: 10 }}>

        {/* Card 1 — Total Lines */}
        <KPICard
          label="Total Lines"
          value={validLinesCount}
          sub={`${validLinesCount === 1 ? 'item' : 'items'} in this PR`}
          valueColor={C.blue}
        />

        {/* Card 2 — Total Quantity */}
        <KPICard
          label="Total Quantity"
          value={totalQtyDisplay}
          sub="By unit of measure"
          mono
        />

        {/* Card 3 — Approx. Budget */}
        <KPICard
          label="Approx. Budget"
          value={`₹ ${totalCost.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`}
          sub="Indicative cost"
          valueColor={C.amber}
        />

        {/* Card 4 — Created By */}
        <KPICard
          label="Created By"
          value={createdBy || '—'}
          sub={savedPrNo ? 'Saved' : 'Not yet saved'}
        />

        {/* Card 5 — Approval Status */}
        <KPICard
          label="Approval Status"
          value={
            statusInfo ? (
              <span style={{
                display: 'inline-block',
                padding: '2px 10px',
                borderRadius: 4,
                fontSize: 12,
                fontWeight: 600,
                background: statusInfo.color === 'blue'   ? '#E6F1FB'
                          : statusInfo.color === 'green'  ? '#EAF3DE'
                          : statusInfo.color === 'orange' ? '#FAEEDA'
                          : statusInfo.color === 'red'    ? '#FCEBEB'
                          : '#F5F5F3',
                color: statusInfo.color === 'blue'   ? '#185FA5'
                     : statusInfo.color === 'green'  ? '#3B6D11'
                     : statusInfo.color === 'orange' ? '#BA7517'
                     : statusInfo.color === 'red'    ? '#A32D2D'
                     : '#4A4A4A',
              }}>
                {statusInfo.label}
              </span>
            ) : 'Draft'
          }
          sub={savedPrNo ? 'Awaiting approval' : 'Not yet saved'}
        />

      </div>
    </div>
  )
}
