import type { CSSProperties } from 'react'
import { Breadcrumb, Button, Steps, Tag, Typography } from 'antd'
import type { BreadcrumbProps } from 'antd'
import { ArrowLeftOutlined } from '@ant-design/icons'
import {
  ACCENT_BAR_COLOR,
  ACCENT_BAR_HEIGHT,
  ACCENT_BAR_RADIUS,
  ACCENT_BAR_WIDTH,
  STEPS_MAX_WIDTH,
  TITLE_BAR_BORDER,
  TITLE_BAR_HEIGHT,
  TITLE_BAR_PADDING,
  TITLE_BAR_SHADOW,
  TITLE_BAR_TOP,
  TITLE_BAR_Z,
  COLOR_TEXT_SECONDARY,
  COLOR_TEXT_PRIMARY,
} from '../styles/tokens'

interface StepItem {
  title: string
  description?: string
}

interface PageTitleBarProps {
  breadcrumb: BreadcrumbProps['items']
  title: string
  statusTag?: { label: string; color: string }
  steps?: StepItem[]
  currentStep?: number
  actions: React.ReactNode
  onBack?: () => void
}

const BAR_STYLE: CSSProperties = {
  position:        'sticky',
  top:             TITLE_BAR_TOP,
  zIndex:          TITLE_BAR_Z,
  background:      '#ffffff',
  borderBottom:    TITLE_BAR_BORDER,
  boxShadow:       TITLE_BAR_SHADOW,
  padding:         TITLE_BAR_PADDING,
  height:          TITLE_BAR_HEIGHT,
  display:         'flex',
  alignItems:      'center',
  justifyContent:  'space-between',
  gap:             12,
}

const LEFT_ZONE_STYLE: CSSProperties = {
  display:    'flex',
  alignItems: 'center',
  gap:        14,
  minWidth:   0,
  flexShrink: 0,
}

const ACCENT_BAR_STYLE: CSSProperties = {
  width:       ACCENT_BAR_WIDTH,
  height:      ACCENT_BAR_HEIGHT,
  borderRadius: ACCENT_BAR_RADIUS,
  background:  ACCENT_BAR_COLOR,
  flexShrink:  0,
}

const CENTER_ZONE_STYLE: CSSProperties = {
  flex:            1,
  display:         'flex',
  justifyContent:  'center',
  minWidth:        0,
}

const RIGHT_ZONE_STYLE: CSSProperties = {
  flexShrink: 0,
}

export function PageTitleBar({
  breadcrumb,
  title,
  statusTag,
  steps,
  currentStep = 0,
  actions,
  onBack,
}: PageTitleBarProps) {
  return (
    <div style={BAR_STYLE}>
      {/* Left zone — accent bar + optional Back + breadcrumb + title */}
      <div style={LEFT_ZONE_STYLE}>
        <div style={ACCENT_BAR_STYLE} />

        {onBack && (
          <Button
            type="text"
            size="small"
            icon={<ArrowLeftOutlined />}
            onClick={onBack}
            style={{ color: COLOR_TEXT_SECONDARY, flexShrink: 0 }}
          >
            Back
          </Button>
        )}

        <div style={{ minWidth: 0 }}>
          <Breadcrumb
            style={{ fontSize: 11, lineHeight: 1 }}
            items={breadcrumb}
          />
          <div
            style={{
              display:    'flex',
              alignItems: 'center',
              gap:        8,
              marginTop:  3,
            }}
          >
            <Typography.Text
              strong
              style={{ fontSize: 15, color: COLOR_TEXT_PRIMARY, lineHeight: 1 }}
            >
              {title}
            </Typography.Text>
            {statusTag && (
              <Tag
                color={statusTag.color}
                style={{ fontWeight: 600, fontSize: 11, margin: 0 }}
              >
                {statusTag.label}
              </Tag>
            )}
          </div>
        </div>
      </div>

      {/* Center zone — workflow steps (optional) */}
      {steps && steps.length > 0 && (
        <div style={CENTER_ZONE_STYLE}>
          <Steps
            size="small"
            current={currentStep}
            items={steps}
            style={{ maxWidth: STEPS_MAX_WIDTH, width: '100%' }}
          />
        </div>
      )}

      {/* Right zone — caller-composed action buttons */}
      <div style={RIGHT_ZONE_STYLE}>{actions}</div>
    </div>
  )
}

// Re-export the breadcrumb item type so callers can build typed item arrays
// without importing directly from antd internals.
export type { BreadcrumbProps }

// Convenience type alias matching Ant Design's breadcrumb item shape.
// Callers: import { PageTitleBarBreadcrumbItem } from './PageTitleBar'
export type PageTitleBarBreadcrumbItem = NonNullable<BreadcrumbProps['items']>[number]
