import dayjs, { type Dayjs } from 'dayjs'

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
