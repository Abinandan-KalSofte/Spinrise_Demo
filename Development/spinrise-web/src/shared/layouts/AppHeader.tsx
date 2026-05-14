import { useState } from 'react'
import { Avatar, Badge, Button, Dropdown, Layout, Popover, Tooltip, Typography } from 'antd'
import {
  ArrowRight,
  Bell,
  Calendar,
  CheckCircle,
  ChevronDown,
  Clock,
  LogOut,
  PanelLeft,
  PanelLeftClose,
  TriangleAlert,
  XCircle,
} from 'lucide-react'
import dayjs from 'dayjs'
import type { MenuProps } from 'antd'
import { useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import styles from './AppHeader.module.css'

const { Header } = Layout

interface PRSummary {
  totalCount:     number
  openCount:      number
  approvedCount:  number
  cancelledCount: number
}

interface AppHeaderProps {
  collapsed:      boolean
  onToggle:       () => void
  onMobileToggle: () => void
  prSummary:      PRSummary
}

// ── Financial Year helper ─────────────────────────────────────────────────────

// function getFinancialYear(dateStr: string | null | undefined): string {
//   const d     = dateStr ? new Date(dateStr) : new Date()
//   const year  = d.getFullYear()
//   const month = d.getMonth() + 1
//   if (month >= 4) return `FY ${year}–${String(year + 1).slice(2)}`
//   return `FY ${year - 1}–${String(year).slice(2)}`
// }

// ── Notification panel ────────────────────────────────────────────────────────

interface NotifItem {
  priority:    'urgent' | 'action' | 'info'
  accentColor: string
  bgColor:     string
  borderColor: string
  icon:        React.ReactNode
  count:       number
  title:       string
  description: string
  route:       string
  priorityLabel: string
  priorityColor: string
}

function buildNotifications(s: PRSummary): NotifItem[] {
  const items: NotifItem[] = []
  if (s.openCount > 0) {
    items.push({
      priority: 'urgent', priorityLabel: 'Urgent — Action Required', priorityColor: '#A32D2D',
      accentColor: '#A32D2D', bgColor: '#FCEBEB', borderColor: '#fecaca',
      icon: <TriangleAlert size={12} />, count: s.openCount,
      title: 'PRs Pending Approval',
      description: `${s.openCount} purchase requisition${s.openCount > 1 ? 's are' : ' is'} awaiting approval`,
      route: '/purchase/requisition',
    })
  }
  if (s.approvedCount > 0) {
    items.push({
      priority: 'action', priorityLabel: 'Action Needed', priorityColor: '#BA7517',
      accentColor: '#BA7517', bgColor: '#FAEEDA', borderColor: '#fde68a',
      icon: <Clock size={12} />, count: s.approvedCount,
      title: 'Approved — Awaiting PO',
      description: `${s.approvedCount} approved PR${s.approvedCount > 1 ? 's' : ''} ready for PO conversion`,
      route: '/purchase/requisition',
    })
  }
  if (s.cancelledCount > 0) {
    items.push({
      priority: 'info', priorityLabel: 'Informational', priorityColor: '#4A4A4A',
      accentColor: '#888888', bgColor: '#F5F5F3', borderColor: '#E2E2E2',
      icon: <XCircle size={12} />, count: s.cancelledCount,
      title: 'Cancelled PRs',
      description: `${s.cancelledCount} PR${s.cancelledCount > 1 ? 's' : ''} cancelled this period`,
      route: '/purchase/requisition',
    })
  }
  return items
}

function NotificationPanel({ summary, onNavigate }: { summary: PRSummary; onNavigate: (r: string) => void }) {
  const items = buildNotifications(summary)
  return (
    <div className={styles.notifPanel}>
      <div className={styles.notifHeader}>
        <div className={styles.notifHeaderLeft}>
          <Bell size={15} color="var(--color-primary)" />
          <span className={styles.notifTitle}>Notifications</span>
        </div>
        {summary.openCount > 0 && (
          <span className={styles.notifUrgentBadge}>{summary.openCount} urgent</span>
        )}
      </div>

      <div className={styles.notifList}>
        {items.length === 0 ? (
          <div className={styles.notifEmpty}>
            <CheckCircle size={28} color="#86efac" style={{ display: 'block', margin: '0 auto 10px' }} />
            <span className={styles.notifEmptyText}>All clear — no pending items</span>
          </div>
        ) : items.map((n) => (
          <div
            key={n.title}
            className={styles.notifItem}
            style={{ background: n.bgColor, border: `1px solid ${n.borderColor}`, borderLeft: `4px solid ${n.accentColor}` }}
            onClick={() => onNavigate(n.route)}
          >
            <div className={styles.notifItemTop}>
              <div className={styles.notifItemLabel}>
                <span style={{ color: n.priorityColor }}>{n.icon}</span>
                <span className={styles.notifPriorityText} style={{ color: n.priorityColor }}>{n.priorityLabel}</span>
              </div>
              <span className={styles.notifCount} style={{ background: n.accentColor }}>{n.count}</span>
            </div>
            <div className={styles.notifItemTitle}>{n.title}</div>
            <div className={styles.notifItemDesc}>
              <Typography.Text type="secondary" style={{ fontSize: 11, lineHeight: 1.4 }}>
                {n.description}
              </Typography.Text>
              <ArrowRight size={11} color={n.accentColor} style={{ flexShrink: 0 }} />
            </div>
          </div>
        ))}
      </div>

      <div className={styles.notifFooter}>
        <span className={styles.notifFooterText}>{summary.totalCount} total PRs this period</span>
        <Typography.Link style={{ fontSize: 12, fontWeight: 600 }} onClick={() => onNavigate('/purchase/requisition')}>
          View all →
        </Typography.Link>
      </div>
    </div>
  )
}

// ── AppHeader ─────────────────────────────────────────────────────────────────

export function AppHeader({ collapsed, onToggle, onMobileToggle, prSummary }: AppHeaderProps) {
  const navigate                        = useNavigate()
  const { user, processingDate, clearAuthSession } = useAuthStore()
  const displayName = user?.userName || user?.userId || 'User'
  const initials    = displayName.slice(0, 2).toUpperCase()
  const divLabel    = user?.divCode ?? '—'

  const [notifOpen, setNotifOpen] = useState(false)

  const profileMenu: MenuProps['items'] = [
    {
      key: 'info', disabled: true,
      label: (
        <div style={{ padding: '4px 0', minWidth: 160 }}>
          <Typography.Text strong style={{ display: 'block', fontSize: 13 }}>{displayName}</Typography.Text>
          <Typography.Text type="secondary" style={{ fontSize: 12 }}>
            {user?.email || `Division: ${divLabel}`}
          </Typography.Text>
        </div>
      ),
    },
    { type: 'divider' },
    {
      key: 'logout', danger: true,
      label: 'Sign out',
      icon: <LogOut size={14} />,
      onClick: () => { clearAuthSession(); navigate('/login') },
    },
  ]

  return (
    <Header className="topbar">
      {/* ── Left ──────────────────────────────────────────────────────── */}
      <div className={styles.left}>
        <Button
          type="text"
          className={`${styles.iconBtn} ${styles.toggleDesktop}`}
          icon={collapsed ? <PanelLeft size={18} /> : <PanelLeftClose size={18} />}
          onClick={onToggle}
        />
        <Button
          type="text"
          className={`${styles.iconBtn} ${styles.toggleMobile}`}
          icon={<PanelLeft size={18} />}
          onClick={onMobileToggle}
        />

        
      </div>

      {/* ── Centre ────────────────────────────────────────────────────── */}
      <div className={styles.centre}>
        <div className={styles.logoMark}>S</div>
        <div className={styles.brandBlock}>
          <span className={styles.brandName}>Kalpatharu Software Ltd</span>
           {/* <span className={styles.fyText}>{fy}</span> */}
          {/* <span className={styles.brandDiv}>{divLabel}</span> */}
        </div>
       
      </div>

      {/* ── Right ─────────────────────────────────────────────────────── */}
      <div className={styles.right}>
        {processingDate && (
          <Tooltip title="Processing Date">
            <div className={styles.procDateChip}>
              <Calendar size={13} color="#d97706" />
              <span className={styles.procDateText}>
                {dayjs(processingDate).format('DD-MM-YYYY')}
              </span>
            </div>
          </Tooltip>
        )}

        <Popover
          open={notifOpen}
          onOpenChange={setNotifOpen}
          trigger="click"
          placement="bottomRight"
          arrow={false}
          overlayInnerStyle={{ padding: 0, borderRadius: 8, overflow: 'hidden', boxShadow: '0 8px 24px rgba(0,0,0,0.12)' }}
          content={<NotificationPanel summary={prSummary} onNavigate={(r) => { setNotifOpen(false); navigate(r) }} />}
        >
          <Badge count={prSummary.openCount} size="small" offset={[-2, 2]} overflowCount={99}>
            <Button
              type="text"
              className={styles.iconBtn}
              icon={<Bell size={18} color={prSummary.openCount > 0 ? '#A32D2D' : undefined} />}
              style={prSummary.openCount > 0 ? { background: '#FCEBEB' } : undefined}
            />
          </Badge>
        </Popover>

        {/* <Tooltip title={isDark ? 'Switch to Light' : 'Switch to Dark'}>
          <Button
            type="text"
            className={styles.iconBtn}
            icon={isDark ? <Sun size={16} /> : <Moon size={16} />}
            onClick={toggleTheme}
          />
        </Tooltip> */}

        <Dropdown menu={{ items: profileMenu }} trigger={['click']} placement="bottomRight">
          <button className={styles.profile} type="button">
            <Avatar size={28} style={{ background: 'var(--color-primary)', fontSize: 11, fontWeight: 700 }}>
              {initials}
            </Avatar>
            <div className={styles.profileInfo}>
              <span className={styles.profileName}>{displayName}</span>
              <span className={styles.profileRole}>{divLabel}</span>
            </div>
            <ChevronDown size={12} color="var(--color-text-400)" />
          </button>
        </Dropdown>

        <Tooltip title="Logout">
          <Button
            type="text"
            className={styles.iconBtn}
            icon={<LogOut size={16} />}
            onClick={() => { clearAuthSession(); navigate('/login') }}
            danger
          />
        </Tooltip>
      </div>
    </Header>
  )
}
