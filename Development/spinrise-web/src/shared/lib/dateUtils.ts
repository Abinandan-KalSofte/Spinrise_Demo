import dayjs, { type Dayjs } from 'dayjs'

/** Blueprint standard: DD-MMM-YYYY (e.g. 12-May-2026) */
export function fmtDate(value: string | null | undefined): string {
  if (!value) return '—'
  const d = dayjs(value)
  return d.isValid() ? d.format('DD-MMM-YYYY') : '—'
}

export function getFYBounds(refDate?: Dayjs): { yfDate: string; ylDate: string } {
  const ref = refDate ?? dayjs()
  const month = ref.month() // 0=Jan … 3=Apr
  const year = ref.year()
  const fyStart = month >= 3 ? dayjs(`${year}-04-01`) : dayjs(`${year - 1}-04-01`)
  const fyEnd = fyStart.add(1, 'year').subtract(1, 'day') // March 31
  return {
    yfDate: fyStart.format('YYYY-MM-DD'),
    ylDate: fyEnd.format('YYYY-MM-DD'),
  }
}
