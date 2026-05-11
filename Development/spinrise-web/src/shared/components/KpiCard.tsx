import type { CSSProperties, ReactNode } from 'react'
import { Skeleton, Typography } from 'antd'
import {
  CARD_BORDER,
  CARD_SHADOW,
  KPI_CARD_BORDER_RADIUS,
  KPI_CARD_PADDING,
  KPI_ICON_BOX_RADIUS,
  KPI_ICON_BOX_SIZE,
  KPI_LABEL_FONT_SIZE,
  KPI_LABEL_FONT_WEIGHT,
  KPI_VALUE_FONT_SIZE,
  KPI_VALUE_FONT_WEIGHT,
} from '../styles/tokens'

interface KpiCardProps {
  label: string
  value: number | string
  color?: string
  icon?: ReactNode
  loading?: boolean
}

const CONTAINER_BASE: CSSProperties = {
  borderRadius: KPI_CARD_BORDER_RADIUS,
  background:   '#ffffff',
  border:       CARD_BORDER,
  boxShadow:    CARD_SHADOW,
  padding:      KPI_CARD_PADDING,
  display:      'flex',
  alignItems:   'center',
  gap:          14,
}

export function KpiCard({ label, value, color, icon, loading = false }: KpiCardProps) {
  const containerStyle: CSSProperties = {
    ...CONTAINER_BASE,
    ...(color ? { borderLeft: `4px solid ${color}` } : {}),
  }

  if (loading) {
    return (
      <div style={containerStyle}>
        <Skeleton active title={{ width: '60%' }} paragraph={{ rows: 1 }} />
      </div>
    )
  }

  const displayValue =
    typeof value === 'number' ? value.toLocaleString() : value

  return (
    <div style={containerStyle}>
      {icon && (
        <div
          style={{
            width:          KPI_ICON_BOX_SIZE,
            height:         KPI_ICON_BOX_SIZE,
            borderRadius:   KPI_ICON_BOX_RADIUS,
            background:     color ? `${color}14` : 'rgba(0,0,0,0.04)',
            border:         color ? `1px solid ${color}2e` : '1px solid rgba(0,0,0,0.08)',
            display:        'flex',
            alignItems:     'center',
            justifyContent: 'center',
            color:          color ?? 'inherit',
            fontSize:       18,
            flexShrink:     0,
          }}
        >
          {icon}
        </div>
      )}
      <div>
        <div
          style={{
            fontSize:          KPI_VALUE_FONT_SIZE,
            fontWeight:        KPI_VALUE_FONT_WEIGHT,
            lineHeight:        1.1,
            fontVariantNumeric: 'tabular-nums',
            color:             color ?? 'inherit',
          }}
        >
          {displayValue}
        </div>
        <Typography.Text
          type="secondary"
          style={{
            fontSize:   KPI_LABEL_FONT_SIZE,
            fontWeight: KPI_LABEL_FONT_WEIGHT,
            marginTop:  2,
            display:    'block',
          }}
        >
          {label}
        </Typography.Text>
      </div>
    </div>
  )
}
