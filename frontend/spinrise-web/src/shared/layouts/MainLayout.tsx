import { useState } from 'react'
import { Badge, Layout, Menu, Tag, Typography } from 'antd'
import type { MenuProps } from 'antd'
import { Outlet, useLocation, useNavigate } from 'react-router-dom'
import { AppHeader } from './AppHeader'

const { Sider, Content } = Layout

const navigationItems: MenuProps['items'] = [
  {
    key: '/',
    label: 'Overview',
  },
  {
    key: 'purchase-group',
    label: 'Purchase',
    type: 'group',
    children: [
      {
        key: 'purchase/requisition/new-v2',
        label: 'Purchase Requisition',
      },
      {
        key: '/purchase/reports/purchase-requisition',
        label: 'PR Report',
      },
    ],
  },
]

export default function MainLayout() {
  const location = useLocation()
  const navigate = useNavigate()
  const [collapsed, setCollapsed] = useState(false)

  return (
    <Layout className="main-layout">
      <Sider
        breakpoint="lg"
        collapsed={collapsed}
        onCollapse={setCollapsed}
        collapsedWidth={72}
        width={260}
        theme="light"
        className="main-layout__sider"
      >
        {/* Brand */}
        <div className="main-layout__brand">
          <div className="main-layout__brand-mark">S</div>
          {!collapsed && (
            <div className="main-layout__brand-copy">
              <Typography.Text strong>Spinrise</Typography.Text>
              <Typography.Text type="secondary">ERP Software</Typography.Text>
            </div>
          )}
        </div>

        {/* Workspace */}
        {/* {!collapsed && (
          <div className="main-layout__workspace">
            <Typography.Text className="main-layout__workspace-label">Workspace</Typography.Text>
            <div className="main-layout__workspace-card">
              <div className="main-layout__workspace-info">
                <Typography.Text strong>Growth Ops</Typography.Text>
                <Typography.Text type="secondary" className="main-layout__workspace-sub">
                  Q2 pipeline acceleration
                </Typography.Text>
              </div>
              <Tag color="green">Live</Tag>
            </div>
          </div>
        )} */}

        {/* Navigation */}
        <Menu
          mode="inline"
          selectedKeys={[location.pathname]}
          items={navigationItems}
          className="main-layout__menu"
          onClick={({ key }) => navigate(key)}
          inlineCollapsed={collapsed}
        />

        {/* System Health Footer */}
        <div className="main-layout__sider-footer">
          {!collapsed && (
            <Typography.Text className="main-layout__workspace-label">
              System Health
            </Typography.Text>
          )}
          <div className="main-layout__status-card">
            <Badge status="processing" />
            {!collapsed && <Typography.Text>All services operational</Typography.Text>}
          </div>
        </div>
      </Sider>

      <Layout className="main-layout__shell">
        <AppHeader collapsed={collapsed} onToggle={() => setCollapsed((c) => !c)} />
        <Content className="main-layout__content">
          <div className="main-layout__content-inner">
            <Outlet />
          </div>
        </Content>
      </Layout>
    </Layout>
  )
}
