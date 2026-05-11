import { useState } from 'react'
import { Avatar, Badge, Button, Dropdown, Input, Layout, Popover, Tooltip, Typography } from 'antd'
import {
  AppstoreOutlined,
  ArrowRightOutlined,
  BellOutlined,
  CalendarOutlined,
  CheckCircleOutlined,
  ClockCircleOutlined,
  LogoutOutlined,
  MenuFoldOutlined,
  MenuOutlined,
  MenuUnfoldOutlined,
  SearchOutlined,
  StopOutlined,
  WarningOutlined,
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

interface PRSummary {
  totalCount:     number
  openCount:      number
  approvedCount:  number
  cancelledCount: number
}

interface AppHeaderProps {
  collapsed:              boolean
  onToggle:               () => void
  onMobileToggle:         () => void
  activeModule:           AppModule
  switcherOpen:           boolean
  onSwitcherOpenChange:   (open: boolean) => void
  switcherContent:        React.ReactNode
  prSummary:              PRSummary
}

// ── Notification panel ────────────────────────────────────────────────────────

interface NotifItem {
  priority:    'urgent' | 'action' | 'info'
  label:       string
  labelColor:  string
  accentColor: string
  bgColor:     string
  borderColor: string
  icon:        React.ReactNode
  count:       number
  title:       string
  description: string
  route:       string
}

function buildNotifications(s: PRSummary): NotifItem[] {
  const items: NotifItem[] = []

  if (s.openCount > 0) {
    items.push({
      priority:    'urgent',
      label:       'Urgent — Action Required',
      labelColor:  '#b91c1c',
      accentColor: '#dc2626',
      bgColor:     '#fff5f5',
      borderColor: '#fecaca',
      icon:        <WarningOutlined />,
      count:       s.openCount,
      title:       'PRs Pending Approval',
      description: `${s.openCount} purchase requisition${s.openCount > 1 ? 's are' : ' is'} awaiting approval`,
      route:       '/purchase/requisition',
    })
  }

  if (s.approvedCount > 0) {
    items.push({
      priority:    'action',
      label:       'Action Needed',
      labelColor:  '#b45309',
      accentColor: '#d97706',
      bgColor:     '#fffbeb',
      borderColor: '#fde68a',
      icon:        <ClockCircleOutlined />,
      count:       s.approvedCount,
      title:       'Approved — Awaiting PO',
      description: `${s.approvedCount} approved PR${s.approvedCount > 1 ? 's' : ''} ready for purchase order conversion`,
      route:       '/purchase/requisition',
    })
  }

  if (s.cancelledCount > 0) {
    items.push({
      priority:    'info',
      label:       'Informational',
      labelColor:  '#475569',
      accentColor: '#94a3b8',
      bgColor:     '#f8fafc',
      borderColor: '#e2e8f0',
      icon:        <StopOutlined />,
      count:       s.cancelledCount,
      title:       'Cancelled PRs',
      description: `${s.cancelledCount} PR${s.cancelledCount > 1 ? 's' : ''} cancelled this period`,
      route:       '/purchase/requisition',
    })
  }

  return items
}

function NotificationPanel({ summary, onNavigate }: { summary: PRSummary; onNavigate: (route: string) => void }) {
  const items = buildNotifications(summary)
  const urgentCount = summary.openCount

  return (
    <div style={{ width: 340 }}>

      {/* Header */}
      <div style={{
        padding:      '12px 16px',
        borderBottom: '1px solid #f1f5f9',
        background:   'linear-gradient(135deg, #f8faff 0%, #ffffff 100%)',
        display:      'flex',
        alignItems:   'center',
        justifyContent: 'space-between',
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <BellOutlined style={{ color: '#1677ff', fontSize: 15 }} />
          <Typography.Text style={{ fontWeight: 700, fontSize: 14, color: '#1e293b' }}>
            Notifications
          </Typography.Text>
        </div>
        {urgentCount > 0 && (
          <div style={{
            background:   'linear-gradient(135deg, #dc2626, #b91c1c)',
            borderRadius: 20,
            padding:      '2px 10px',
            fontSize:     11,
            fontWeight:   700,
            color:        '#ffffff',
            boxShadow:    '0 2px 6px rgba(220,38,38,0.35)',
            letterSpacing: '0.02em',
          }}>
            {urgentCount} urgent
          </div>
        )}
      </div>

      {/* Items */}
      <div style={{ padding: '8px 0', maxHeight: 360, overflowY: 'auto' }}>
        {items.length === 0 ? (
          <div style={{ padding: '28px 16px', textAlign: 'center' }}>
            <CheckCircleOutlined style={{ fontSize: 28, color: '#86efac', display: 'block', marginBottom: 10 }} />
            <Typography.Text style={{ fontSize: 13, color: '#64748b' }}>
              All clear — no pending items
            </Typography.Text>
          </div>
        ) : (
          items.map((n) => (
            <div
              key={n.title}
              onClick={() => onNavigate(n.route)}
              style={{
                margin:       '4px 8px',
                background:   n.bgColor,
                border:       `1px solid ${n.borderColor}`,
                borderLeft:   `4px solid ${n.accentColor}`,
                borderRadius: '0 8px 8px 0',
                padding:      '10px 12px',
                cursor:       'pointer',
                transition:   'box-shadow 0.15s',
              }}
              onMouseEnter={(e) => { (e.currentTarget as HTMLDivElement).style.boxShadow = '0 2px 10px rgba(0,0,0,0.10)' }}
              onMouseLeave={(e) => { (e.currentTarget as HTMLDivElement).style.boxShadow = 'none' }}
            >
              {/* Priority label + count badge */}
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 5 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: 5 }}>
                  <span style={{ color: n.labelColor, fontSize: 12 }}>{n.icon}</span>
                  <span style={{
                    fontSize:      10,
                    fontWeight:    700,
                    textTransform: 'uppercase',
                    letterSpacing: '0.08em',
                    color:         n.labelColor,
                  }}>
                    {n.label}
                  </span>
                </div>
                <div style={{
                  background:   n.accentColor,
                  borderRadius: 12,
                  padding:      '1px 9px',
                  fontSize:     12,
                  fontWeight:   700,
                  color:        '#ffffff',
                  minWidth:     24,
                  textAlign:    'center',
                }}>
                  {n.count}
                </div>
              </div>

              {/* Title */}
              <div style={{ fontSize: 13, fontWeight: 700, color: '#1e293b', marginBottom: 2 }}>
                {n.title}
              </div>

              {/* Description + action link */}
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 8 }}>
                <Typography.Text type="secondary" style={{ fontSize: 11, lineHeight: 1.4 }}>
                  {n.description}
                </Typography.Text>
                <ArrowRightOutlined style={{ fontSize: 11, color: n.accentColor, flexShrink: 0 }} />
              </div>
            </div>
          ))
        )}
      </div>

      {/* Footer */}
      <div style={{
        padding:      '10px 16px',
        borderTop:    '1px solid #f1f5f9',
        display:      'flex',
        alignItems:   'center',
        justifyContent: 'space-between',
      }}>
        <Typography.Text type="secondary" style={{ fontSize: 11 }}>
          {summary.totalCount} total PRs this period
        </Typography.Text>
        <Typography.Link
          style={{ fontSize: 12, fontWeight: 600 }}
          onClick={() => onNavigate('/purchase/requisition')}
        >
          View all →
        </Typography.Link>
      </div>
    </div>
  )
}

// ── AppHeader ─────────────────────────────────────────────────────────────────

export function AppHeader({
  collapsed,
  onToggle,
  onMobileToggle,
  activeModule,
  switcherOpen,
  onSwitcherOpenChange,
  switcherContent,
  prSummary,
}: AppHeaderProps) {
  const navigate  = useNavigate()
  const { user, processingDate, clearAuthSession } = useAuthStore()
  const displayName = user?.userName || user?.userId || 'User'
  const initials    = displayName.slice(0, 2).toUpperCase()

  const [notifOpen, setNotifOpen] = useState(false)

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

  const handleNotifNavigate = (route: string) => {
    setNotifOpen(false)
    navigate(route)
  }

  const urgentCount = prSummary.openCount

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

        {/* Processing Date */}
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
                fontSize:           12,
                fontWeight:         700,
                color:              '#92400e',
                fontVariantNumeric: 'tabular-nums',
              }}>
                {dayjs(processingDate).format('DD-MM-YYYY')}
              </Typography.Text>
            </div>
          </Tooltip>
        )}

        {/* Notification Bell */}
        <Popover
          open={notifOpen}
          onOpenChange={setNotifOpen}
          trigger="click"
          placement="bottomRight"
          arrow={false}
          overlayInnerStyle={{ padding: 0, borderRadius: 10, overflow: 'hidden', boxShadow: '0 8px 32px rgba(0,0,0,0.14), 0 2px 8px rgba(0,0,0,0.08)' }}
          content={
            <NotificationPanel
              summary={prSummary}
              onNavigate={handleNotifNavigate}
            />
          }
        >
          <Badge
            count={urgentCount}
            size="small"
            offset={[-2, 2]}
            overflowCount={99}
            style={{
              boxShadow:  '0 2px 6px rgba(220,38,38,0.40)',
              background: urgentCount > 0 ? 'linear-gradient(135deg, #dc2626, #b91c1c)' : undefined,
            }}
          >
            <Button
              type="text"
              shape="circle"
              icon={<BellOutlined style={{ fontSize: urgentCount > 0 ? 17 : 16, color: urgentCount > 0 ? '#dc2626' : undefined }} />}
              className="topbar__icon-btn"
              style={urgentCount > 0 ? { background: '#fef2f2' } : undefined}
            />
          </Badge>
        </Popover>

        {/* Profile */}
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
