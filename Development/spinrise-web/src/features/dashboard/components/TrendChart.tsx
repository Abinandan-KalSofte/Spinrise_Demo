import { Card, Skeleton, Typography } from 'antd'
import type { TrendPoint } from '../types'

interface TrendChartProps {
  data:    TrendPoint[]
  loading: boolean
}

// ── Layout constants ──────────────────────────────────────────────────────────
const W = 560, H = 190
const PAD = { t: 12, r: 16, b: 28, l: 56 }
const CW  = W - PAD.l - PAD.r
const CH  = H - PAD.t - PAD.b

// ── Helpers ───────────────────────────────────────────────────────────────────
function fmtLabel(n: number) {
  if (n >= 1e7) return `₹${(n / 1e7).toFixed(1)}Cr`
  if (n >= 1e5) return `₹${(n / 1e5).toFixed(0)}L`
  return `₹${n.toLocaleString('en-IN')}`
}

const CARD_STYLE = { borderRadius: 8, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }

export function TrendChart({ data, loading }: TrendChartProps) {
  if (loading) {
    return (
      <Card bordered={false} style={CARD_STYLE} styles={{ body: { padding: '20px 24px' } }}>
        <Skeleton active paragraph={{ rows: 5 }} />
      </Card>
    )
  }

  if (data.length < 2) return null

  const amounts = data.map((d) => d.amount)
  const min     = Math.min(...amounts) * 0.82
  const max     = Math.max(...amounts) * 1.08

  const x = (i: number) => PAD.l + (i / (data.length - 1)) * CW
  const y = (v: number) => PAD.t + (1 - (v - min) / (max - min)) * CH
  const bottom = PAD.t + CH

  const linePoints = data.map((d, i) => `${x(i)},${y(d.amount)}`).join(' ')
  const areaPath   = [
    `M ${x(0)} ${bottom}`,
    data.map((d, i) => `L ${x(i)} ${y(d.amount)}`).join(' '),
    `L ${x(data.length - 1)} ${bottom}`,
    'Z',
  ].join(' ')

  const yTicks = [0, 0.25, 0.5, 0.75, 1].map((p) => min + p * (max - min))

  return (
    <Card
      bordered={false}
      style={CARD_STYLE}
      title={<Typography.Text strong>Monthly PO Trend</Typography.Text>}
      extra={<Typography.Text type="secondary" style={{ fontSize: 12 }}>Current FY</Typography.Text>}
    >
      <svg viewBox={`0 0 ${W} ${H}`} width="100%" height={H} style={{ display: 'block' }}>
        <defs>
          <linearGradient id="poAreaGrad" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%"   stopColor="#1677ff" stopOpacity={0.2} />
            <stop offset="100%" stopColor="#1677ff" stopOpacity={0.02} />
          </linearGradient>
        </defs>

        {/* Y-axis grid + labels */}
        {yTicks.map((tick, i) => (
          <g key={i}>
            <line
              x1={PAD.l} y1={y(tick)} x2={W - PAD.r} y2={y(tick)}
              stroke="#f0f0f0" strokeWidth={1}
            />
            <text x={PAD.l - 6} y={y(tick) + 4} textAnchor="end" fontSize={10} fill="#bfbfbf">
              {fmtLabel(tick)}
            </text>
          </g>
        ))}

        {/* Area fill */}
        <path d={areaPath} fill="url(#poAreaGrad)" />

        {/* Line */}
        <polyline
          points={linePoints}
          fill="none"
          stroke="#1677ff"
          strokeWidth={2}
          strokeLinejoin="round"
          strokeLinecap="round"
        />

        {/* Dots */}
        {data.map((d, i) => (
          <circle
            key={i}
            cx={x(i)} cy={y(d.amount)} r={3.5}
            fill="#1677ff" stroke="#fff" strokeWidth={2}
          />
        ))}

        {/* X-axis labels */}
        {data.map((d, i) => (
          <text key={i} x={x(i)} y={H - 6} textAnchor="middle" fontSize={10} fill="#8c8c8c">
            {d.month}
          </text>
        ))}
      </svg>
    </Card>
  )
}
