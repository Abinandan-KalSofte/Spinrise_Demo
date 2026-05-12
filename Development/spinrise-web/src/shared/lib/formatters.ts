// ── Kalsofte decimal standard — Qty 3dp | Rate 4dp | Value 2dp ───────────────

export function fmtQty(v: number | null | undefined): string {
  if (v == null) return '—'
  return v.toLocaleString('en-IN', { minimumFractionDigits: 3, maximumFractionDigits: 3 })
}

export function fmtRate(v: number | null | undefined): string {
  if (v == null) return '—'
  return '₹ ' + v.toLocaleString('en-IN', { minimumFractionDigits: 4, maximumFractionDigits: 4 })
}

export function fmtValue(v: number | null | undefined): string {
  if (v == null) return '—'
  return '₹ ' + v.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })
}

export function fmtPct(v: number | null | undefined): string {
  if (v == null) return '—'
  return v.toFixed(2) + ' %'
}

export function fmtCost(v: number | null | undefined): string {
  return fmtValue(v)
}
