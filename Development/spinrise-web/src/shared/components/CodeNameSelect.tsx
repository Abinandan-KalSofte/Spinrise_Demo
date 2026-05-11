import { Select } from 'antd'
import type { SelectProps } from 'antd'
import { prefixFilterOption, priorityFilterSort } from '../utils/selectUtils'

interface CodeNameOption {
  code: string
  name: string
}

interface CodeNameSelectProps extends Omit<SelectProps, 'options' | 'filterOption' | 'filterSort'> {
  options: CodeNameOption[]
}

export function CodeNameSelect({ options, ...rest }: CodeNameSelectProps) {
  const mappedOptions = options.map((o) => ({
    value: o.code,
    label: `${o.code} – ${o.name}`,
  }))

  return (
    <Select
      showSearch
      options={mappedOptions}
      filterOption={prefixFilterOption}
      filterSort={priorityFilterSort}
      {...rest}
    />
  )
}

export type { CodeNameOption, CodeNameSelectProps }
