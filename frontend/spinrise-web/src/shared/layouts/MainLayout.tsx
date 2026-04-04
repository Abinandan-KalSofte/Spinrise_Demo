import {
  Badge,
  Layout,
  Menu,
  Tag,
  Typography,
} from 'antd'
import type { MenuProps } from 'antd'
import { Outlet, useLocation, useNavigate } from 'react-router-dom'

const { Sider, Content } = Layout

const navigationItems: MenuProps['items'] = [
  {
    key: '/',
    label: 'Overview',
  },
  {
    key: '/purchase/reports/purchase-requisition',
    label: 'PR Report',
  },
]

export default function MainLayout() {
  const location = useLocation()
  const navigate = useNavigate()

  return (
    <Layout className="main-layout">
      <Sider
        breakpoint="lg"
        collapsedWidth={88}
        width={272}
        theme="light"
        className="main-layout__sider"
      >
        <div className="main-layout__brand">
          <div className="main-layout__brand-mark">S</div>
          <div className="main-layout__brand-copy">
            <Typography.Text strong>Spinrise</Typography.Text>
            <Typography.Text type="secondary">Revenue command center</Typography.Text>
          </div>
        </div>

        <div className="main-layout__workspace">
          <Typography.Text className="main-layout__workspace-label">Workspace</Typography.Text>
          <div className="main-layout__workspace-card">
            <div>
              <Typography.Text strong>Growth Ops</Typography.Text>
              <Typography.Paragraph type="secondary">
                Q2 pipeline acceleration
              </Typography.Paragraph>
            </div>
            <Tag color="green">Live</Tag>
          </div>
        </div>

        <Menu
          mode="inline"
          selectedKeys={[location.pathname]}
          items={navigationItems}
          className="main-layout__menu"
          onClick={({ key }) => navigate(key)}
        />

        <div className="main-layout__sider-footer">
          <Typography.Text className="main-layout__workspace-label">System Health</Typography.Text>
          <div className="main-layout__status-card">
            <Badge status="processing" />
            <Typography.Text>All services operational</Typography.Text>
          </div>
        </div>
      </Sider>

      <Layout className="main-layout__shell">
        <Content className="main-layout__content">
          <div className="main-layout__content-inner">
            <Outlet />
          </div>
        </Content>
      </Layout>
    </Layout>
  )
}
