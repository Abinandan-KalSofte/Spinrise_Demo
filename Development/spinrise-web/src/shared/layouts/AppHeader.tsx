import { Avatar, Badge, Button, Dropdown, Input, Layout, Popover, Tooltip, Typography } from 'antd'
import {
  AppstoreOutlined,
  BellOutlined,
  CalendarOutlined,
  LogoutOutlined,
  MenuFoldOutlined,
  MenuOutlined,
  MenuUnfoldOutlined,
  SearchOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
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
  pendingCount:           number
}

export function AppHeader({
  collapsed,
  onToggle,
  onMobileToggle,
  activeModule,
  switcherOpen,
  onSwitcherOpenChange,
  switcherContent,
  pendingCount,
}: AppHeaderProps) {
  const navigate  = useNavigate()
  const { user, processingDate, clearAuthSession } = useAuthStore()
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
        <Button
          type="text"
          icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
          onClick={onToggle}
          className="topbar__icon-btn topbar__toggle--desktop"
        />
        <Button
          type="text"
          icon={<MenuOutlined />}
          onClick={onMobileToggle}
          className="topbar__icon-btn topbar__toggle--mobile"
        />
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
          prefix={<SearchOutlined />}
          placeholder="Search items, PRs, orders…"
          className="topbar__search"
          variant="filled"
        />
      </div>

      {/* ── Right: Processing Date + Notifications + Profile ─────────────── */}
      <div className="topbar__right">

        {/* Processing Date badge */}
        {processingDate && (
          <Tooltip title="Processing Date">
            <div style={{
              display:      'flex',
              alignItems:   'center',
              gap:          6,
              background:   '#fef3c7',
              border:       '1px solid #f59e0b',
              borderRadius: 8,
              padding:      '3px 10px',
              cursor:       'default',
              flexShrink:   0,
            }}>
              <CalendarOutlined style={{ color: '#d97706', fontSize: 13 }} />
              <Typography.Text style={{
                fontSize:          12,
                fontWeight:        700,
                color:             '#92400e',
                fontVariantNumeric:'tabular-nums',
              }}>
                {dayjs(processingDate).format('DD-MM-YYYY')}
              </Typography.Text>
            </div>
          </Tooltip>
        )}

        <Tooltip title={pendingCount > 0 ? `${pendingCount} pending approval${pendingCount > 1 ? 's' : ''}` : 'Notifications'}>
          <Badge count={pendingCount} size="small" offset={[-2, 2]} overflowCount={99}>
            <Button
              type="text"
              shape="circle"
              icon={<BellOutlined />}
              className="topbar__icon-btn"
            />
          </Badge>
        </Tooltip>

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
