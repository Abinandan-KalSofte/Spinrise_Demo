import { useEffect, useState } from 'react'
import { Badge, Drawer, Input, Layout, Menu, Popover, Select, Tooltip, Typography } from 'antd'
import type { MenuProps } from 'antd'
import {
  BarChart2,
  Cog,
  DollarSign,
  FileText,
  GitBranch,
  Package,
  Search,
  Settings,
  ShoppingCart,
  TrendingUp,
  Users,
} from 'lucide-react'
import { Outlet, useLocation, useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { AppHeader } from './AppHeader'
import { purchaseRequisitionApi } from '@/features/purchase-requisition/api/purchaseRequisitionApi'
import styles from './MainLayout.module.css'

const { Sider, Content } = Layout

// ── Module registry ────────────────────────────────────────────────────────────

interface AppModule {
  key:      string
  label:    string
  icon:     React.ReactNode
  category: string
  color:    string
  live:     boolean
  landing:  string
}

const MODULES: AppModule[] = [
  { key: 'purchase',   label: 'Purchase',   icon: <ShoppingCart size={18} />, category: 'Operations',     color: '#185FA5', live: true,  landing: '/purchase/requisition' },
  { key: 'inventory',  label: 'Inventory',  icon: <Package      size={18} />, category: 'Operations',     color: '#0891b2', live: true,  landing: '/purchase/order' },
  { key: 'sales',      label: 'Sales',      icon: <TrendingUp   size={18} />, category: 'Operations',     color: '#f59e0b', live: false, landing: '/sales' },
  { key: 'accounts',   label: 'Finance',    icon: <DollarSign   size={18} />, category: 'Finance',        color: '#059669', live: false, landing: '/accounts' },
  { key: 'budget',     label: 'Budget',     icon: <BarChart2    size={18} />, category: 'Finance',        color: '#6366f1', live: false, landing: '/budget' },
  { key: 'mrp',        label: 'MRP',        icon: <GitBranch    size={18} />, category: 'Manufacturing',  color: '#8b5cf6', live: false, landing: '/mrp' },
  { key: 'production', label: 'Production', icon: <Cog          size={18} />, category: 'Manufacturing',  color: '#f97316', live: false, landing: '/production' },
  { key: 'hr',         label: 'HR',         icon: <Users        size={18} />, category: 'Human Resources',color: '#14b8a6', live: false, landing: '/hr' },
  { key: 'admin',      label: 'Admin',      icon: <Settings     size={18} />, category: 'Administration', color: '#64748b', live: false, landing: '/admin' },
]

// ── Sidebar menu per module ────────────────────────────────────────────────────

const SIDEBAR_MENUS: Record<string, MenuProps['items']> = {
  purchase: [
    {
      key: 'grp-procurement',
      label: 'Procurement',
      type: 'group',
      children: [
        { key: 'purchase/requisition/v1/new', icon: <FileText size={16} />, label: 'Requisition' },
      ],
    },
    {
      key: 'grp-reports',
      label: 'Reports',
      type: 'group',
      children: [
        { key: 'purchase/reports/datewise', icon: <BarChart2 size={16} />, label: 'Date-wise Report' },
      ],
    },
  ],
  inventory: [
    {
      key: 'grp-purchase-orders',
      label: 'Purchase Orders',
      type: 'group',
      children: [
        { key: 'purchase/order', icon: <ShoppingCart size={16} />, label: 'Purchase Orders' },
      ],
    },
  ],
}

// ── Helpers ────────────────────────────────────────────────────────────────────

function getModuleKey(pathname: string): string {
  if (pathname.startsWith('/purchase/order')) return 'inventory'
  if (pathname.startsWith('/purchase'))       return 'purchase'
  if (pathname.startsWith('/inventory'))      return 'inventory'
  if (pathname.startsWith('/sales'))          return 'sales'
  if (pathname.startsWith('/accounts') || pathname.startsWith('/finance')) return 'accounts'
  return 'purchase'
}

function getSelectedKey(pathname: string): string {
  return pathname.replace(/^\//, '')
}

// ── Module Switcher ────────────────────────────────────────────────────────────

function ModuleSwitcherContent({
  activeModuleKey,
  onSelect,
}: {
  activeModuleKey: string
  onSelect: (mod: AppModule) => void
}) {
  const [search, setSearch] = useState('')
  const filtered   = MODULES.filter(
    (m) => m.label.toLowerCase().includes(search.toLowerCase()) || m.category.toLowerCase().includes(search.toLowerCase()),
  )
  const categories = [...new Set(filtered.map((m) => m.category))]

  return (
    <div className={styles.switcher}>
      <Input
        prefix={<Search size={14} />}
        placeholder="Search modules…"
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className={styles.switcherSearch}
        autoFocus
      />
      {categories.map((cat) => (
        <div key={cat} className={styles.switcherGroup}>
          <Typography.Text className={styles.switcherGroupLabel}>{cat}</Typography.Text>
          <div className={styles.switcherGrid}>
            {filtered.filter((m) => m.category === cat).map((mod) => (
              <Tooltip key={mod.key} title={!mod.live ? 'Coming Soon' : ''}>
                <div
                  className={`${styles.switcherItem} ${!mod.live ? styles.switcherItemDisabled : ''}`}
                  style={{
                    borderColor: activeModuleKey === mod.key ? mod.color + '50' : undefined,
                    background:  activeModuleKey === mod.key ? mod.color + '12' : undefined,
                  }}
                  onClick={() => mod.live && onSelect(mod)}
                >
                  <div className={styles.switcherItemIcon} style={{ background: mod.color + '18', color: mod.color }}>
                    {mod.icon}
                  </div>
                  <span className={styles.switcherItemLabel}>{mod.label}</span>
                  {!mod.live && <span className={styles.switcherItemSoon}>Soon</span>}
                </div>
              </Tooltip>
            ))}
          </div>
        </div>
      ))}
    </div>
  )
}

// ── Main Layout ────────────────────────────────────────────────────────────────

export default function MainLayout() {
  const location = useLocation()
  const navigate = useNavigate()
  const { user } = useAuthStore()

  const [collapsed,    setCollapsed]    = useState(false)
  const [mobileOpen,   setMobileOpen]   = useState(false)
  const [switcherOpen, setSwitcherOpen] = useState(false)
  const [prSummary,    setPrSummary]    = useState({ totalCount: 0, openCount: 0, approvedCount: 0, cancelledCount: 0 })

  useEffect(() => {
    void purchaseRequisitionApi.getSummary()
      .then(setPrSummary)
      .catch(() => undefined)
  }, [])

  const activeModuleKey = getModuleKey(location.pathname)
  const activeModule    = MODULES.find((m) => m.key === activeModuleKey) ?? MODULES[0]
  const selectedKeys    = [getSelectedKey(location.pathname)]
  const menuItems       = SIDEBAR_MENUS[activeModuleKey] ?? []

  const handleModuleSelect = (mod: AppModule) => {
    setSwitcherOpen(false)
    navigate(mod.landing)
  }

  const handleMenuClick = ({ key }: { key: string }) => {
    navigate(`/${key}`)
    setMobileOpen(false)
  }

  // ── Sidebar content ──────────────────────────────────────────────────────────

  const sidebarContent = (
    <div className="sidebar">
      {/* Brand — click to open module switcher */}
      <Popover
        open={switcherOpen}
        onOpenChange={setSwitcherOpen}
        content={<ModuleSwitcherContent activeModuleKey={activeModuleKey} onSelect={handleModuleSelect} />}
        trigger="click"
        placement="rightTop"
        arrow={false}
        overlayInnerStyle={{ padding: 12, borderRadius: 10, boxShadow: '0 8px 24px rgba(0,0,0,0.12)' }}
      >
        <div className={styles.brand}>
          <div className={styles.brandMark} style={{ background: activeModule.color }}>S</div>
          {!collapsed && (
            <div className={styles.brandCopy}>
              <span className={styles.brandName}>Kalpatharu Software Ltd</span>
              <span className={styles.brandSub}>SpinRise ERP</span>
            </div>
          )}
        </div>
      </Popover>

      {/* Division */}
      <div className={styles.divSection}>
        {collapsed ? (
          <Tooltip title={`Division: ${user?.divCode ?? '—'}`} placement="right">
            <span className={styles.divChip}>{user?.divCode ?? '—'}</span>
          </Tooltip>
        ) : (
          <Select
            value={user?.divCode ?? undefined}
            placeholder="Division"
            style={{ width: '100%' }}
            disabled
            options={[{ value: user?.divCode, label: `Division: ${user?.divCode}` }]}
            size="small"
          />
        )}
      </div>

      {/* Active module label */}
      {!collapsed && (
        <div className={styles.moduleBadge}>
          <Typography.Text className={styles.moduleLabel}>{activeModule.label}</Typography.Text>
        </div>
      )}

      {/* Navigation menu */}
      <Menu
        mode="inline"
        selectedKeys={selectedKeys}
        items={menuItems}
        className="sidebar__menu"
        onClick={handleMenuClick}
        inlineCollapsed={collapsed}
        style={{ flex: 1 }}
      />

      {/* Footer */}
      <div className={styles.footer}>
        <Badge status="processing" />
        {!collapsed && <span className={styles.footerText}>All services operational</span>}
      </div>
    </div>
  )

  return (
    <Layout style={{ minHeight: '100vh' }}>
      {/* Desktop Sidebar */}
      <Sider
        breakpoint="md"
        collapsed={collapsed}
        onCollapse={setCollapsed}
        collapsedWidth={60}
        width={220}
        className="main-sider"
      >
        {sidebarContent}
      </Sider>

      {/* Mobile Drawer */}
      <Drawer
        open={mobileOpen}
        onClose={() => setMobileOpen(false)}
        placement="left"
        width={220}
        styles={{ body: { padding: 0 }, header: { display: 'none' } }}
        className="mobile-drawer"
      >
        {sidebarContent}
      </Drawer>

      {/* Main shell */}
      <Layout style={{ background: 'transparent' }}>
        <AppHeader
          collapsed={collapsed}
          onToggle={() => setCollapsed((c) => !c)}
          onMobileToggle={() => setMobileOpen((o) => !o)}
          prSummary={prSummary}
        />
        <Content className="main-content">
          <div className={styles.contentInner}>
            <Outlet />
          </div>
        </Content>
      </Layout>
    </Layout>
  )
}
