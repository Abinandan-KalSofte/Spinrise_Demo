import type { CSSProperties } from 'react'
import { LABEL_FONT_SIZE, LABEL_FONT_WEIGHT } from '../styles/tokens'

interface FieldLabelProps {
  text: string
  required?: boolean
}

const BASE_STYLE: CSSProperties = {
  fontSize:   LABEL_FONT_SIZE,
  fontWeight: LABEL_FONT_WEIGHT,
}

export function FieldLabel({ text, required = false }: FieldLabelProps) {
  return (
    <span style={BASE_STYLE}>
      {required && (
        <span style={{ color: '#ff4d4f', marginRight: 4 }}>*</span>
      )}
      {text}
    </span>
  )
}
