import type { CSSProperties, ReactNode } from 'react'
import { Divider, Typography } from 'antd'
import {
  CARD_BORDER,
  CARD_BORDER_RADIUS,
  CARD_PADDING,
  CARD_SHADOW,
  DOC_NUMBER_COLOR,
  DOC_NUMBER_FONT_SIZE,
  DOC_NUMBER_FONT_WEIGHT,
  SECTION_TITLE_COLOR,
  SECTION_TITLE_FONT_SIZE,
  SECTION_TITLE_FONT_WEIGHT,
  SECTION_TITLE_LETTER_SPACING,
} from '../styles/tokens'

interface SectionCardProps {
  title?: string
  docNumber?: string | number | null
  docNumberLabel?: string
  extra?: ReactNode
  children: ReactNode
  style?: CSSProperties
}

const CONTAINER_BASE: CSSProperties = {
  background:   '#ffffff',
  border:       CARD_BORDER,
  borderRadius: CARD_BORDER_RADIUS,
  padding:      CARD_PADDING,
  boxShadow:    CARD_SHADOW,
}

const TITLE_ROW_STYLE: CSSProperties = {
  display:        'flex',
  alignItems:     'center',
  justifyContent: 'space-between',
  gap:            8,
}

const TITLE_LABEL_STYLE: CSSProperties = {
  fontSize:      SECTION_TITLE_FONT_SIZE,
  fontWeight:    SECTION_TITLE_FONT_WEIGHT,
  color:         SECTION_TITLE_COLOR,
  textTransform: 'uppercase',
  letterSpacing: SECTION_TITLE_LETTER_SPACING,
  flexShrink:    0,
}

const DIVIDER_STYLE: CSSProperties = {
  marginTop:    8,
  marginBottom: 16,
}

export function SectionCard({
  title,
  docNumber,
  docNumberLabel = '#',
  extra,
  children,
  style,
}: SectionCardProps) {
  const hasTitle = title !== undefined && title !== ''
  const hasDocNumber = docNumber !== null && docNumber !== undefined

  return (
    <div style={{ ...CONTAINER_BASE, ...style }}>
      {hasTitle && (
        <>
          <div style={TITLE_ROW_STYLE}>
            <span style={TITLE_LABEL_STYLE}>{title}</span>
            <span style={{ flex: 1 }} />
            {hasDocNumber && (
              <Typography.Text
                style={{
                  fontWeight: DOC_NUMBER_FONT_WEIGHT,
                  fontSize:   DOC_NUMBER_FONT_SIZE,
                  color:      DOC_NUMBER_COLOR,
                  lineHeight: 1,
                }}
              >
                {docNumberLabel}{docNumber}
              </Typography.Text>
            )}
            {extra}
          </div>
          <Divider style={DIVIDER_STYLE} />
        </>
      )}
      {children}
    </div>
  )
}
