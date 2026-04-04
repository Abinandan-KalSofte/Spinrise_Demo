import { Card, Col, Progress, Row, Statistic, Table, Tag, Typography } from 'antd'
import { useAuthStore } from '@/features/auth/store/useAuthStore'

export default function DashboardPage() {
  const user = useAuthStore((state) => state.user)
  const pipelineColumns = [
    {
      title: 'Account',
      dataIndex: 'account',
      key: 'account',
    },
    {
      title: 'Stage',
      dataIndex: 'stage',
      key: 'stage',
      render: (value: string) => <Tag color="blue">{value}</Tag>,
    },
    {
      title: 'Owner',
      dataIndex: 'owner',
      key: 'owner',
    },
    {
      title: 'Value',
      dataIndex: 'value',
      key: 'value',
    },
  ]

  const pipelineData = [
    { key: '1', account: 'Northstar Logistics', stage: 'Proposal', owner: 'Mira Chen', value: '$42K' },
    { key: '2', account: 'Helio Commerce', stage: 'Negotiation', owner: 'Sam Ortiz', value: '$88K' },
    { key: '3', account: 'Atla Health', stage: 'Discovery', owner: 'Jordan Blake', value: '$27K' },
  ]

  return (
    <div className="dashboard-view">
      <div className="dashboard-view__hero">
        <div>
          <Typography.Title level={2}>Welcome back, {user?.email ?? 'User'}</Typography.Title>
          <Typography.Paragraph>
            Your {user?.role ?? 'user'} workspace is tuned for pipeline clarity, forecast focus,
            and revenue momentum.
          </Typography.Paragraph>
        </div>
        <div className="dashboard-view__hero-badge">
          <span>Target attainment</span>
          <strong>82%</strong>
        </div>
      </div>

      <Row gutter={[20, 20]}>
        <Col xs={24} md={12} xl={6}>
          <Card className="dashboard-metric-card">
            <Statistic title="Open Pipeline" value="$1.24M" />
          </Card>
        </Col>
        <Col xs={24} md={12} xl={6}>
          <Card className="dashboard-metric-card">
            <Statistic title="Win Rate" value={34} suffix="%" />
          </Card>
        </Col>
        <Col xs={24} md={12} xl={6}>
          <Card className="dashboard-metric-card">
            <Statistic title="Expansion Revenue" value="$186K" />
          </Card>
        </Col>
        <Col xs={24} md={12} xl={6}>
          <Card className="dashboard-metric-card">
            <Statistic title="Active Accounts" value={128} />
          </Card>
        </Col>
      </Row>

      <Row gutter={[20, 20]} className="dashboard-view__grid">
        <Col xs={24} xl={16}>
          <Card
            title="Revenue Pipeline"
            extra={<Tag color="purple-inverse">This week</Tag>}
            className="dashboard-panel"
          >
            <Table columns={pipelineColumns} dataSource={pipelineData} pagination={false} />
          </Card>
        </Col>

        <Col xs={24} xl={8}>
          <Card title="Quarter Progress" className="dashboard-panel">
            <div className="dashboard-progress-list">
              <div>
                <div className="dashboard-progress-list__row">
                  <span>New business</span>
                  <strong>74%</strong>
                </div>
                <Progress percent={74} showInfo={false} strokeColor="#2563eb" />
              </div>
              <div>
                <div className="dashboard-progress-list__row">
                  <span>Renewals</span>
                  <strong>91%</strong>
                </div>
                <Progress percent={91} showInfo={false} strokeColor="#0f766e" />
              </div>
              <div>
                <div className="dashboard-progress-list__row">
                  <span>Product adoption</span>
                  <strong>63%</strong>
                </div>
                <Progress percent={63} showInfo={false} strokeColor="#7c3aed" />
              </div>
            </div>
          </Card>
        </Col>
      </Row>
    </div>
  )
}
