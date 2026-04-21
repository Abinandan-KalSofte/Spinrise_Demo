import dayjs from 'dayjs'
import type { CSSProperties } from 'react'

// ── Pagination ─────────────────────────────────────────────────────────────────

export const PAGE_SIZE = 20

// ── Financial year ─────────────────────────────────────────────────────────────

export function getFYBounds(date?: dayjs.Dayjs): [dayjs.Dayjs, dayjs.Dayjs] {
  const ref  = date ?? dayjs()
  const year = ref.month() >= 3 ? ref.year() : ref.year() - 1
  return [dayjs(`${year}-04-01`), dayjs(`${year + 1}-03-31`)]
}

// ── Status ─────────────────────────────────────────────────────────────────────

export const STATUS_OPTIONS = [
  { value: 'OPEN',      label: 'Open'      },
  { value: 'APPROVED',  label: 'Approved'  },
  { value: 'RECEIVED',  label: 'Received'  },
  { value: 'CONVERTED', label: 'Converted' },
  { value: 'CANCELLED', label: 'Cancelled' },
]

export const STATUS_TAG: Record<string, { color: string; label: string }> = {
  OPEN:      { color: 'blue',   label: 'Open'      },
  APPROVED:  { color: 'purple', label: 'Approved'  },
  RECEIVED:  { color: 'cyan',   label: 'Received'  },
  CONVERTED: { color: 'green',  label: 'Converted' },
  CANCELLED: { color: 'red',    label: 'Cancelled' },
}

// ── Shared styles ──────────────────────────────────────────────────────────────

export const CARD_STYLE: CSSProperties = {
  borderRadius: 8,
  border:       'none',
  boxShadow:    '0 2px 8px rgba(0,0,0,0.06)',
}

// ── Search form types ──────────────────────────────────────────────────────────

export interface SearchFormValues {
  prNo?:      number
  dateRange?: [dayjs.Dayjs, dayjs.Dayjs]
  depCode?:   string
  reqName?:   string
  status?:    string
}
