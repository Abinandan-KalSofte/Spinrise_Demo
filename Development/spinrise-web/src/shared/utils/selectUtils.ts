/**
 * Shared Select filter/sort utilities for Ant Design dropdowns.
 *
 * filterOption  — prefix-only match on the code part (before " – ") and name part (after " – ")
 * filterSort    — code-prefix match ranks above name-prefix match; then alphabetical
 *
 * Both functions assume option labels are formatted as "CODE – NAME".
 */

interface SelectOption {
  label: string
  value: string
}

export function prefixFilterOption(
  input: string,
  option?: SelectOption,
): boolean {
  const term = input.trim().toLowerCase()
  if (!term) return true
  const label = (option?.label ?? '').toLowerCase()
  const sep   = label.indexOf(' – ')
  const code  = sep >= 0 ? label.slice(0, sep) : label
  const name  = sep >= 0 ? label.slice(sep + 3) : ''
  return code.startsWith(term) || name.startsWith(term)
}

export function priorityFilterSort(
  a: SelectOption,
  b: SelectOption,
  info: { searchValue: string },
): number {
  const term = info.searchValue.trim().toLowerCase()
  if (!term) return 0
  const aLabel = (a.label ?? '').toLowerCase()
  const bLabel = (b.label ?? '').toLowerCase()
  // Code part is everything before " – "
  const aSep = aLabel.indexOf(' – ')
  const bSep = bLabel.indexOf(' – ')
  const aCode = aSep >= 0 ? aLabel.slice(0, aSep) : aLabel
  const bCode = bSep >= 0 ? bLabel.slice(0, bSep) : bLabel
  const aRank = aCode.startsWith(term) ? 0 : 1
  const bRank = bCode.startsWith(term) ? 0 : 1
  return aRank - bRank || aLabel.localeCompare(bLabel)
}
