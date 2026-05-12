import type { ReactNode } from 'react'
import styles from './KpiCard.module.css'

interface KpiCardProps {
  label:    string
  value:    number | string | ReactNode
  icon?:    ReactNode
  color?:   string
  loading?: boolean
  hidden?:  boolean
}

export function KpiCard({ label, value, icon, color, loading = false, hidden = false }: KpiCardProps) {
  if (hidden) return null

  const displayValue = loading
    ? '—'
    : typeof value === 'number'
      ? value.toLocaleString('en-IN')
      : value

  return (
    <div
      className={styles.card}
      style={color ? { borderLeft: `4px solid ${color}` } : undefined}
    >
      {icon && (
        <div
          className={styles.iconBox}
          style={{
            background: color ? `${color}14` : 'rgba(0,0,0,0.04)',
            color:      color ?? 'inherit',
          }}
        >
          {icon}
        </div>
      )}
      <div className={styles.body}>
        <div className={styles.value} style={color ? { color } : undefined}>
          {displayValue}
        </div>
        <span className={styles.label}>{label}</span>
      </div>
    </div>
  )
}
