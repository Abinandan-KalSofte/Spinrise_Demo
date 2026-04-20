import { Button as AntButton } from 'antd'
import type { ComponentProps } from 'react'

type ButtonProps = ComponentProps<typeof AntButton>

export function Button(props: ButtonProps) {
  return <AntButton {...props} />
}
