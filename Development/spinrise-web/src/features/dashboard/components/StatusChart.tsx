import { Card, Skeleton, Typography } from 'antd'
import type { StatusPoint } from '../types'

interface StatusChartProps {
  data:    StatusPoint[]
  loading: boolean
}

// ── Donut geometry ────────────────────────────────────────────────────────────
const CX = 100, CY = 100, R = 56
const CIRC    = 2 * Math.PI * R   // ≈ 351.9
const SW      = 20                // stroke width = ring thickness
const GAP_DEG = 2                 // gap between segments (degrees)

const CARD_STYLE = { borderRadius: 8, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }

export function StatusChart({ data, loading }: StatusChartProps) {
  if (loading) {
    return (
      <Card bordered={false} style={CARD_STYLE} styles={{ body: { padding: '20px 24px' } }}>
        <Skeleton active paragraph={{ rows: 6 }} />
      </Card>
    )
  }

  const total = data.reduce((s, d) => s + d.count, 0)
  if (total === 0) return null

  // Build segments — each circle uses stroke-dasharray + dashoffset trick
  let accumulated = 0
  const segments = data.map((d) => {
    const fraction  = d.count / total
    const gapFrac   = GAP_DEG / 360
    const dashLen   = Math.max(0, (fraction - gapFrac) * CIRC)
    const offset    = accumulated
    accumulated    += fraction * CIRC
    return { ...d, dashLen, offset }
  })

  return (
    <Card
      bordered={false}
      style={CARD_STYLE}
      title={<Typography.Text strong>Status Distribution</Typography.Text>}
    >
      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 20 }}>

        {/* Donut SVG */}
        <svg viewBox="0 0 200 200" width={180} height={180} style={{ display: 'block' }}>
          {/* Track ring */}
          <circle
            cx={CX} cy={CY} r={R}
            fill="none" stroke="#f5f5f5" strokeWidth={SW}
          />
          {/* Segments — rotate -90° so first segment starts at 12 o'clock */}
          <g transform={`rotate(-90 ${CX} ${CY})`}>
            {segments.map((seg) => (
              <circle
                key={seg.status}
                cx={CX} cy={CY} r={R}
                fill="none"
                stroke={seg.color}
                strokeWidth={SW}
                strokeDasharray={`${seg.dashLen} ${CIRC - seg.dashLen}`}
                strokeDashoffset={-seg.offset}
              />
            ))}
          </g>
          {/* Center text */}
          <text x={CX} y={CY - 6}  textAnchor="middle" fontSize={24} fontWeight={700} fill="#1a1a1a">
            {total}
          </text>
          <text x={CX} y={CY + 14} textAnchor="middle" fontSize={11} fill="#8c8c8c">
            Total POs
          </text>
        </svg>

        {/* Legend */}
        <div style={{ width: '100%', display: 'flex', flexDirection: 'column', gap: 10 }}>
          {data.map((d) => (
            <div
              key={d.status}
              style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}
            >
              <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
                <div style={{ width: 10, height: 10, borderRadius: 2, background: d.color, flexShrink: 0 }} />
                <Typography.Text style={{ fontSize: 13 }}>{d.status}</Typography.Text>
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                <Typography.Text strong style={{ fontSize: 13 }}>{d.count}</Typography.Text>
                <Typography.Text type="secondary" style={{ fontSize: 11 }}>
                  {((d.count / total) * 100).toFixed(0)}%
                </Typography.Text>
              </div>
            </div>
          ))}
        </div>

      </div>
    </Card>
  )
}
