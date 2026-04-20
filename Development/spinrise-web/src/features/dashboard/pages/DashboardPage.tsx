import { Alert, Col, Row, Typography } from 'antd'
import {
  CheckCircleOutlined,
  ClockCircleOutlined,
  CloseCircleOutlined,
  ShoppingCartOutlined,
} from '@ant-design/icons'

import { useDashboard }   from '../hooks/useDashboard'
import { StatCard }       from '../components/StatCard'
import { TrendChart }     from '../components/TrendChart'
import { StatusChart }    from '../components/StatusChart'
import { RecentTable }    from '../components/RecentTable'

// ── Helpers ───────────────────────────────────────────────────────────────────

function fmtCr(n: number): string {
  if (n >= 1e7) return `₹${(n / 1e7).toFixed(2)} Cr`
  if (n >= 1e5) return `₹${(n / 1e5).toFixed(2)} L`
  return `₹${n.toLocaleString('en-IN')}`
}

// ── Page ──────────────────────────────────────────────────────────────────────

export default function DashboardPage() {
  const { data, loading, error } = useDashboard()
  const s = data?.stats

  return (
    <div style={{ padding: '24px', display: 'flex', flexDirection: 'column', gap: 20 }}>

      {/* Header */}
      <div>
        <Typography.Title level={4} style={{ margin: 0 }}>Purchase Overview</Typography.Title>
        <Typography.Text type="secondary" style={{ fontSize: 13 }}>
          Current financial year · all divisions
        </Typography.Text>
      </div>

      {error && <Alert type="error" message={error} showIcon />}

      {/* ── Stat cards ──────────────────────────────────────────────────────── */}
      <Row gutter={[16, 16]}>
        <Col xs={24} sm={12} xl={6}>
          <StatCard
            title="Total PO Amount"
            value={s ? fmtCr(s.totalAmount) : '—'}
            trend={s?.totalTrend}
            icon={<ShoppingCartOutlined />}
            color="#1677ff"
          />
        </Col>
        <Col xs={24} sm={12} xl={6}>
          <StatCard
            title="Pending Approval"
            value={s ? fmtCr(s.pendingAmount) : '—'}
            trend={s?.pendingTrend}
            icon={<ClockCircleOutlined />}
            color="#fa8c16"
          />
        </Col>
        <Col xs={24} sm={12} xl={6}>
          <StatCard
            title="Approved Amount"
            value={s ? fmtCr(s.approvedAmount) : '—'}
            trend={s?.approvedTrend}
            icon={<CheckCircleOutlined />}
            color="#52c41a"
          />
        </Col>
        <Col xs={24} sm={12} xl={6}>
          <StatCard
            title="Rejected"
            value={s?.rejectedCount ?? '—'}
            trend={s?.rejectedTrend}
            icon={<CloseCircleOutlined />}
            color="#ff4d4f"
          />
        </Col>
      </Row>

      {/* ── Charts ──────────────────────────────────────────────────────────── */}
      <Row gutter={[16, 16]}>
        <Col xs={24} lg={16}>
          <TrendChart data={data?.trend ?? []} loading={loading} />
        </Col>
        <Col xs={24} lg={8}>
          <StatusChart data={data?.statusDist ?? []} loading={loading} />
        </Col>
      </Row>

      {/* ── Recent POs ──────────────────────────────────────────────────────── */}
      <Row>
        <Col span={24}>
          <RecentTable data={data?.recent ?? []} loading={loading} />
        </Col>
      </Row>

    </div>
  )
}
