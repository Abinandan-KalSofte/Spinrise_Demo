import { Avatar, Badge, Breadcrumb, Button, Dropdown, Layout, Space, Typography } from 'antd'
import {
  BellOutlined,
  LogoutOutlined,
  MenuFoldOutlined,
  MenuUnfoldOutlined,
} from '@ant-design/icons'
import { useLocation, useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type { MenuProps } from 'antd'

const { Header } = Layout

const ROUTE_BREADCRUMBS: Record<string, string[]> = {
  '/': ['Overview'],
  '/purchase/requisition/new': ['Purchase', 'Purchase Requisition'],
  '/purchase/reports/purchase-requisition': ['Purchase', 'PR Report'],
}

interface Props {
  collapsed: boolean
  onToggle: () => void
}

export function AppHeader({ collapsed, onToggle }: Props) {
  const location = useLocation()
  const navigate = useNavigate()
  const { user, clearAuthSession } = useAuthStore()

  const breadcrumbs = ROUTE_BREADCRUMBS[location.pathname] ?? ['Page']
  const initials = (user?.email?.[0] ?? 'U').toUpperCase()
  const userName = user?.email?.split('@')[0] ?? 'User'

  const dropdownItems: MenuProps['items'] = [
    {
      key: 'email',
      label: (
        <div style={{ padding: '2px 0' }}>
          <Typography.Text strong style={{ display: 'block', fontSize: 13 }}>
            {userName}
          </Typography.Text>
          <Typography.Text type="secondary" style={{ fontSize: 12 }}>
            {user?.email}
          </Typography.Text>
        </div>
      ),
      disabled: true,
    },
    {
      key: 'role',
      label: (
        <Typography.Text
          type="secondary"
          style={{ fontSize: 11, textTransform: 'capitalize', letterSpacing: '0.05em' }}
        >
          Role: {user?.role}
        </Typography.Text>
      ),
      disabled: true,
    },
    { type: 'divider' },
    {
      key: 'logout',
      label: 'Sign out',
      icon: <LogoutOutlined />,
      danger: true,
      onClick: () => {
        clearAuthSession()
        navigate('/login')
      },
    },
  ]

  return (
    <Header className="main-layout__header">
      <Space align="center" size={12}>
        <Button
          type="text"
          icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
          onClick={onToggle}
          className="main-layout__toggle-btn"
        />
        <Breadcrumb
          items={breadcrumbs.map((label) => ({ title: label }))}
          className="main-layout__breadcrumb"
        />
      </Space>

      <Space align="center" size={4}>
        <Badge count={3} size="small" offset={[-3, 3]}>
          <Button
            type="text"
            shape="circle"
            icon={<BellOutlined />}
            className="main-layout__icon-btn"
          />
        </Badge>

        <Dropdown menu={{ items: dropdownItems }} trigger={['click']} placement="bottomRight">
          <div className="main-layout__profile-button">
            <Avatar className="main-layout__avatar" size={34}>
              {initials}
            </Avatar>
            <div className="main-layout__profile-copy">
              <span className="main-layout__profile-name">{userName}</span>
              <span className="main-layout__profile-role">{user?.role}</span>
            </div>
          </div>
        </Dropdown>
      </Space>
    </Header>
  )
}
