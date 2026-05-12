import styles from './StatusBadge.module.css'

export type StatusKey =
  | 'Requested'
  | 'Pending'
  | 'Approved'
  | 'Rejected'
  | 'PO Raised'
  | 'Cancelled'
  | 'Partial'
  | 'Closed'

interface StatusColors { bg: string; text: string }

export const STATUS_COLORS: Record<StatusKey, StatusColors> = {
  'Requested': { bg: '#E6F1FB', text: '#185FA5' },
  'Pending':   { bg: '#FAEEDA', text: '#BA7517' },
  'Approved':  { bg: '#EAF3DE', text: '#3B6D11' },
  'Rejected':  { bg: '#FCEBEB', text: '#A32D2D' },
  'PO Raised': { bg: '#F0E6FB', text: '#722ED1' },
  'Cancelled': { bg: '#F5F5F3', text: '#4A4A4A' },
  'Partial':   { bg: '#FAEEDA', text: '#BA7517' },
  'Closed':    { bg: '#E8E8E8', text: '#4A4A4A' },
}

const FALLBACK: StatusColors = { bg: '#F5F5F3', text: '#4A4A4A' }

interface StatusBadgeProps {
  status: StatusKey | string
  size?:  'default' | 'small'
}

export function StatusBadge({ status, size = 'default' }: StatusBadgeProps) {
  const colors = STATUS_COLORS[status as StatusKey] ?? FALLBACK
  return (
    <span
      className={`${styles.badge} ${size === 'small' ? styles.badgeSmall : ''}`}
      style={{ background: colors.bg, color: colors.text }}
      role="status"
      aria-label={status}
    >
      {status}
    </span>
  )
}
