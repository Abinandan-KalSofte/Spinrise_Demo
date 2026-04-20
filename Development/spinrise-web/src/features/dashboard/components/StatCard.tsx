import type { ReactNode } from 'react'
import { Card, Typography } from 'antd'
import { ArrowDownOutlined, ArrowUpOutlined } from '@ant-design/icons'

interface StatCardProps {
  title:  string
  value:  string | number
  trend?: number        // % change — positive = up, negative = down
  icon:   ReactNode
  color:  string        // accent hex
}

const CARD_STYLE = { borderRadius: 8, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }

export function StatCard({ title, value, trend, icon, color }: StatCardProps) {
  const up = (trend ?? 0) >= 0

  return (
    <Card bordered={false} style={CARD_STYLE} styles={{ body: { padding: '20px 24px' } }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>

        <div>
          <Typography.Text type="secondary" style={{ fontSize: 13 }}>{title}</Typography.Text>
          <div style={{ marginTop: 4 }}>
            <Typography.Text strong style={{ fontSize: 26, lineHeight: 1.2, color: '#1a1a1a' }}>
              {value}
            </Typography.Text>
          </div>
          {trend != null && (
            <div style={{ marginTop: 6, display: 'flex', alignItems: 'center', gap: 4 }}>
              {up
                ? <ArrowUpOutlined   style={{ fontSize: 11, color: '#52c41a' }} />
                : <ArrowDownOutlined style={{ fontSize: 11, color: '#ff4d4f' }} />
              }
              <Typography.Text style={{ fontSize: 12, color: up ? '#52c41a' : '#ff4d4f' }}>
                {Math.abs(trend)}% vs last period
              </Typography.Text>
            </div>
          )}
        </div>

        <div style={{
          width: 44, height: 44, borderRadius: 10,
          background: `${color}18`,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 20, color,
          flexShrink: 0,
        }}>
          {icon}
        </div>

      </div>
    </Card>
  )
}
