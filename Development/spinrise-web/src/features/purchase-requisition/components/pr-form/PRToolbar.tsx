// Shared toolbar primitives used by all PR form variants

const C = {
  blue:   '#185FA5',
  red:    '#A32D2D',
  border: '#d0d0d0',
  bg:     '#f5f5f3',
  text:   '#1a1a1a',
  text3:  '#888',
} as const

// ── Variant badge ─────────────────────────────────────────────────────────────

export function PRVariantBadge({ label, sub }: { label: string; sub: string }) {
  return (
    <div style={{
      display: 'flex', alignItems: 'center', gap: 6,
      padding: '3px 10px', borderRadius: 20,
      background: 'linear-gradient(135deg,#eff6ff,#dbeafe)',
      border: '1px solid #bfdbfe',
    }}>
      <span style={{ fontSize: 10, fontWeight: 700, color: '#1e40af', letterSpacing: '0.04em' }}>
        {label}
      </span>
      <span style={{ fontSize: 10, color: '#3b82f6' }}>— {sub}</span>
    </div>
  )
}

// ── Toolbar button ─────────────────────────────────────────────────────────────

interface TbBtnProps {
  icon:      React.ReactNode
  label?:    string
  kbd?:      string
  onClick?:  () => void
  disabled?: boolean
  variant?:  'default' | 'primary' | 'success' | 'danger' | 'icon'
  title?:    string
}

export function TbBtn({
  icon, label, kbd, onClick, disabled = false, variant = 'default', title,
}: TbBtnProps) {
  const base: React.CSSProperties = {
    display: 'inline-flex', alignItems: 'center', gap: 5,
    padding: variant === 'icon' ? '5px 8px' : '5px 11px',
    border: `1px solid ${C.border}`, borderRadius: 6,
    background: '#fff', fontSize: 12, fontWeight: 500,
    cursor: disabled ? 'not-allowed' : 'pointer',
    color: C.text, opacity: disabled ? 0.35 : 1,
    fontFamily: 'inherit', whiteSpace: 'nowrap',
    transition: 'background 0.12s, opacity 0.12s',
  }
  const variants: Partial<Record<string, React.CSSProperties>> = {
    primary: { background: C.blue,   color: '#fff', borderColor: C.blue   },
    success: { background: '#185FA5',color: '#fff', borderColor: '#185FA5' },
    danger:  { color: C.red, borderColor: '#E24B4A', background: '#fff'   },
  }
  return (
    <button
      style={{ ...base, ...(variants[variant] ?? {}) }}
      onClick={!disabled ? onClick : undefined}
      disabled={disabled}
      title={title}
    >
      {icon}
      {label && <span>{label}</span>}
      {kbd && (
        <span style={{
          fontSize: 10, padding: '1px 4px',
          border: `1px solid ${C.border}`, borderRadius: 3,
          color: C.text3, background: C.bg, fontFamily: 'monospace', marginLeft: 2,
        }}>
          {kbd}
        </span>
      )}
    </button>
  )
}

export function TbSep() {
  return (
    <div style={{
      width: 1, height: 22, background: C.border,
      margin: '0 3px', flexShrink: 0,
    }} />
  )
}

// ── Document header band (blue gradient) ──────────────────────────────────────


interface PRDocBandProps {
  savedPrNo: number | null
  prStatus:  string | null
  variant:   string
}

export function PRDocBand({ savedPrNo, prStatus: _prStatus, variant }: PRDocBandProps) {
  return (
    <div style={{
      background: 'linear-gradient(135deg, #0C447C 0%, #185FA5 100%)',
      padding: '8px 18px',
      display: 'flex', alignItems: 'center', justifyContent: 'space-between',
    }}>
      <div style={{ display: 'flex', alignItems: 'center', gap: 24 }}>
        <div>
          <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 1 }}>
            Document
          </div>
          <div style={{ fontSize: 12, fontWeight: 700, color: '#fff', letterSpacing: '.3px' }}>
            Purchase Requisition
          </div>
        </div>
        <div>
          <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 1 }}>
            PR Number
          </div>
          <div style={{ fontSize: 13, fontWeight: 700, color: '#fff', fontFamily: 'monospace' }}>
            {savedPrNo ? `PR-${String(savedPrNo).padStart(5, '0')}` : 'Auto-generated on save'}
          </div>
        </div>
      </div>
      <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
        {variant && (
          <span style={{
            fontSize: 10, padding: '2px 8px', borderRadius: 20, fontWeight: 600,
            background: 'rgba(255,255,255,.15)', color: 'rgba(255,255,255,.8)',
            letterSpacing: '.3px',
          }}>
            {variant}
          </span>
        )}
      </div>
    </div>
  )
}
