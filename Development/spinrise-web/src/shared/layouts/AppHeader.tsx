import { Avatar, Badge, Button, Dropdown, Input, Layout, Popover, Tooltip, Typography } from 'antd'
import {
  AppstoreOutlined,
  BellOutlined,
  LogoutOutlined,
  MenuFoldOutlined,
  MenuOutlined,
  MenuUnfoldOutlined,
  SearchOutlined,
} from '@ant-design/icons'
import type { MenuProps } from 'antd'
import { useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'

const { Header } = Layout

interface AppModule {
  key:   string
  label: string
  icon:  React.ReactNode
  color: string
}

interface AppHeaderProps {
  collapsed:              boolean
  onToggle:               () => void
  onMobileToggle:         () => void
  activeModule:           AppModule
  switcherOpen:           boolean
  onSwitcherOpenChange:   (open: boolean) => void
  switcherContent:        React.ReactNode
}

export function AppHeader({
  collapsed,
  onToggle,
  onMobileToggle,
  activeModule,
  switcherOpen,
  onSwitcherOpenChange,
  switcherContent,
}: AppHeaderProps) {
  const navigate  = useNavigate()
  const { user, clearAuthSession } = useAuthStore()
  const displayName = user?.userName || user?.userId || 'User'
  const initials    = displayName.slice(0, 2).toUpperCase()

  const profileMenu: MenuProps['items'] = [
    {
      key: 'info',
      label: (
        <div style={{ padding: '4px 0', minWidth: 160 }}>
          <Typography.Text strong style={{ display: 'block', fontSize: 13 }}>
            {displayName}
          </Typography.Text>
          <Typography.Text type="secondary" style={{ fontSize: 12 }}>
            {user?.email || `Div: ${user?.divCode}`}
          </Typography.Text>
        </div>
      ),
      disabled: true,
    },
    {
      key: 'role',
      label: (
        <Typography.Text type="secondary" style={{ fontSize: 11, letterSpacing: '0.04em', textTransform: 'uppercase' }}>
          {user?.role ?? 'User'}
        </Typography.Text>
      ),
      disabled: true,
    },
    { type: 'divider' },
    {
      key:     'logout',
      label:   'Sign out',
      icon:    <LogoutOutlined />,
      danger:  true,
      onClick: () => { clearAuthSession(); navigate('/login') },
    },
  ]

  return (
    <Header className="topbar">
      {/* ── Left: Toggle + Module Switcher ────────────────────────────────── */}
      <div className="topbar__left">
        {/* Desktop sidebar toggle */}
        <Button
          type="text"
          icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
          onClick={onToggle}
          className="topbar__icon-btn topbar__toggle--desktop"
        />

        {/* Mobile hamburger */}
        <Button
          type="text"
          icon={<MenuOutlined />}
          onClick={onMobileToggle}
          className="topbar__icon-btn topbar__toggle--mobile"
        />

        {/* Module Switcher */}
        <Popover
          open={switcherOpen}
          onOpenChange={onSwitcherOpenChange}
          content={switcherContent}
          trigger="click"
          placement="bottomLeft"
          arrow={false}
          overlayClassName="module-switcher-popover"
        >
          <button className="topbar__module-btn" type="button">
            <div
              className="topbar__module-icon"
              style={{ background: activeModule.color + '18', color: activeModule.color }}
            >
              {activeModule.icon}
            </div>
            <span className="topbar__module-label">{activeModule.label}</span>
            <AppstoreOutlined className="topbar__module-chevron" />
          </button>
        </Popover>
      </div>

      {/* ── Center: Global Search ─────────────────────────────────────────── */}
      <div className="topbar__center">
        <Input
          prefix={<SearchOutlined style={{ color: '#94a3b8' }} />}
          placeholder="Search items, PRs, orders…"
          className="topbar__search"
          variant="filled"
        />
      </div>

      {/* ── Right: Notifications + Profile ───────────────────────────────── */}
      <div className="topbar__right">
        <Badge count={0} size="small" offset={[-2, 2]}>
          <Button
            type="text"
            shape="circle"
            icon={<BellOutlined />}
            className="topbar__icon-btn"
          />
        </Badge>

        <Dropdown
          menu={{ items: profileMenu }}
          trigger={['click']}
          placement="bottomRight"
        >
          <button className="topbar__profile" type="button">
            <Avatar className="topbar__avatar" size={32}>
              {initials}
            </Avatar>
            <div className="topbar__profile-info">
              <span className="topbar__profile-name">{displayName}</span>
              <span className="topbar__profile-role">{user?.divCode}</span>
            </div>
          </button>
        </Dropdown>
      </div>
    </Header>
  )
}
