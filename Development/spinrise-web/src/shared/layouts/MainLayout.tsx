import { useEffect, useState } from 'react'
import {
  Badge, Drawer, Input, Layout, Menu,
  Select, Tooltip, Typography,
} from 'antd'
import type { MenuProps } from 'antd'
import {
  AccountBookOutlined,
  ApartmentOutlined,
  BarChartOutlined,
  BuildOutlined,
  FileTextOutlined,
  InboxOutlined,
  SearchOutlined,
  SettingOutlined,
  ShoppingCartOutlined,
  ShoppingOutlined,
  TeamOutlined,
} from '@ant-design/icons'
import { Outlet, useLocation, useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { AppHeader } from './AppHeader'
import { purchaseRequisitionApi } from '@/features/purchase-requisition/api/purchaseRequisitionApi'

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
  { key: 'purchase',   label: 'Purchase',    icon: <ShoppingCartOutlined />, category: 'Operations',    color: '#4f46e5', live: true,  landing: '/purchase/requisition' },
  { key: 'inventory',  label: 'Inventory',   icon: <InboxOutlined />,        category: 'Operations',    color: '#0891b2', live: true,  landing: '/purchase/order' },
  { key: 'sales',      label: 'Sales',       icon: <ShoppingOutlined />,     category: 'Operations',    color: '#f59e0b', live: false, landing: '/sales' },
  { key: 'accounts',   label: 'Accounts',    icon: <AccountBookOutlined />,  category: 'Finance',       color: '#059669', live: false, landing: '/accounts' },
  { key: 'budget',     label: 'Budget',      icon: <BarChartOutlined />,     category: 'Finance',       color: '#6366f1', live: false, landing: '/budget' },
  { key: 'mrp',        label: 'MRP',         icon: <ApartmentOutlined />,    category: 'Manufacturing', color: '#8b5cf6', live: false, landing: '/mrp' },
  { key: 'production', label: 'Production',  icon: <BuildOutlined />,        category: 'Manufacturing', color: '#f97316', live: false, landing: '/production' },
  { key: 'hr',         label: 'HR',          icon: <TeamOutlined />,         category: 'Human Resources', color: '#14b8a6', live: false, landing: '/hr' },
  { key: 'admin',      label: 'Admin',       icon: <SettingOutlined />,      category: 'Administration', color: '#64748b', live: false, landing: '/admin' },
]

// ── Sidebar menu per module ────────────────────────────────────────────────────

const SIDEBAR_MENUS: Record<string, MenuProps['items']> = {
  purchase: [
    {
      key: 'grp-procurement',
      label: 'Procurement',
      type: 'group',
      children: [
        // { key: 'purchase/requisition',    icon: <FileTextOutlined />,    label: 'Requisition' },
        { key: 'purchase/requisition/v1/new', icon: <FileTextOutlined />,    label: 'Requisition v1' },
        // { key: 'purchase/requisition/v2/new', icon: <FileTextOutlined />,    label: 'Requisition v2' },
        // { key: 'purchase/requisition/v3/new', icon: <FileTextOutlined />,    label: 'Requisition v3' },
        // { key: 'purchase/goods-receipt', icon: <InboxOutlined />,       label: 'Goods Receipt',    disabled: true },
      ],
    },
    {
      key: 'grp-reports',
      label: 'Reports',
      type: 'group',
      children: [
        { key: 'purchase/reports/datewise',             icon: <BarChartOutlined />, label: 'Date-wise' },
        // { key: 'purchase/reports/purchase-requisition', icon: <BarChartOutlined />, label: 'PR Report'  },
      ],
    },
  ],
  inventory: [
    {
      key: 'grp-purchase-orders',
      label: 'Purchase Orders',
      type: 'group',
      children: [
        { key: 'purchase/order', icon: <ShoppingOutlined />, label: 'Purchase Orders' },
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

// Strip leading slash so it matches menu keys
function getSelectedKey(pathname: string): string {
  return pathname.replace(/^\//, '')
}

// ── Module Switcher popover content ───────────────────────────────────────────

function ModuleSwitcherContent({
  activeModuleKey,
  onSelect,
}: {
  activeModuleKey: string
  onSelect: (mod: AppModule) => void
}) {
  const [search, setSearch] = useState('')

  const filtered = MODULES.filter(
    (m) =>
      m.label.toLowerCase().includes(search.toLowerCase()) ||
      m.category.toLowerCase().includes(search.toLowerCase()),
  )
  const categories = [...new Set(filtered.map((m) => m.category))]

  return (
    <div className="module-switcher">
      <Input
        prefix={<SearchOutlined />}
        placeholder="Search modules…"
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="module-switcher__search"
        autoFocus
      />
      {categories.map((cat) => (
        <div key={cat} className="module-switcher__group">
          <Typography.Text className="module-switcher__group-label">{cat}</Typography.Text>
          <div className="module-switcher__grid">
            {filtered
              .filter((m) => m.category === cat)
              .map((mod) => (
                <Tooltip key={mod.key} title={!mod.live ? 'Coming Soon' : ''}>
                  <div
                    className={`module-switcher__item ${activeModuleKey === mod.key ? 'module-switcher__item--active' : ''} ${!mod.live ? 'module-switcher__item--disabled' : ''}`}
                    style={{
                      '--mod-color': mod.color,
                      borderColor: activeModuleKey === mod.key ? mod.color + '50' : undefined,
                      background:  activeModuleKey === mod.key ? mod.color + '12' : undefined,
                    } as React.CSSProperties}
                    onClick={() => mod.live && onSelect(mod)}
                  >
                    <div
                      className="module-switcher__item-icon"
                      style={{ background: mod.color + '18', color: mod.color }}
                    >
                      {mod.icon}
                    </div>
                    <span className="module-switcher__item-label">{mod.label}</span>
                    {!mod.live && (
                      <span className="module-switcher__item-soon">Soon</span>
                    )}
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
  const location    = useLocation()
  const navigate    = useNavigate()
  const { user }    = useAuthStore()

  const [collapsed,    setCollapsed]   = useState(false)
  const [mobileOpen,   setMobileOpen]  = useState(false)
  const [switcherOpen, setSwitcherOpen] = useState(false)
  const [prSummary,    setPrSummary]   = useState({ totalCount: 0, openCount: 0, approvedCount: 0, cancelledCount: 0 })

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

  // ── Sidebar content (shared between Sider and Drawer) ─────────────────────

  const sidebarContent = (
    <div className="sidebar">
      {/* Brand */}
      <div className="sidebar__brand">
        <div className="sidebar__brand-mark" style={{ background: activeModule.color }}>
          S
        </div>
        {!collapsed && (
          <div className="sidebar__brand-copy">
            <Typography.Text strong style={{ fontSize: 15, color: '#f1f5f9' }}>
              Spinrise
            </Typography.Text>
            <Typography.Text style={{ fontSize: 11, color: 'rgba(255,255,255,0.45)' }}>
              ERP Platform
            </Typography.Text>
          </div>
        )}
      </div>

      {/* Division selector */}
      <div className="sidebar__division">
        {collapsed ? (
          <Tooltip title={`Division: ${user?.divCode ?? '—'}`} placement="right">
            <div className="sidebar__division-chip sidebar__division-chip--collapsed">
              {user?.divCode ?? '—'}
            </div>
          </Tooltip>
        ) : (
          <Select
            value={user?.divCode ?? undefined}
            placeholder="Division"
            className="sidebar__division-select"
            disabled
            options={[{ value: user?.divCode, label: `Division: ${user?.divCode}` }]}
            size="small"
          />
        )}
      </div>

      {/* Module nav */}
      <div className="sidebar__module-badge">
        {!collapsed && (
          <Typography.Text className="sidebar__section-label">
            {activeModule.label}
          </Typography.Text>
        )}
      </div>

      {/* Navigation */}
      <Menu
        mode="inline"
        theme="dark"
        selectedKeys={selectedKeys}
        items={menuItems}
        className="sidebar__menu"
        onClick={handleMenuClick}
        inlineCollapsed={collapsed}
        style={{ flex: 1 }}
      />

      {/* Footer */}
      <div className="sidebar__footer">
        <Badge status="processing" />
        {!collapsed && (
          <Typography.Text style={{ fontSize: 11, color: 'rgba(255,255,255,0.40)' }}>
            All services operational
          </Typography.Text>
        )}
      </div>
    </div>
  )

  return (
    <Layout style={{ minHeight: '100vh' }}>
      {/* ── Desktop Sidebar ──────────────────────────────────────────────────── */}
      <Sider
        breakpoint="md"
        collapsed={collapsed}
        onCollapse={setCollapsed}
        collapsedWidth={64}
        width={240}
        theme="dark"
        className="main-sider"
        style={{ background: '#0f172a' }}
      >
        {sidebarContent}
      </Sider>

      {/* ── Mobile Drawer ────────────────────────────────────────────────────── */}
      <Drawer
        open={mobileOpen}
        onClose={() => setMobileOpen(false)}
        placement="left"
        width={240}
        styles={{ body: { padding: 0 }, header: { display: 'none' } }}
        className="mobile-drawer"
      >
        {sidebarContent}
      </Drawer>

      {/* ── Main shell ───────────────────────────────────────────────────────── */}
      <Layout style={{ background: 'transparent' }}>
        <AppHeader
          collapsed={collapsed}
          onToggle={() => setCollapsed((c) => !c)}
          onMobileToggle={() => setMobileOpen((o) => !o)}
          activeModule={activeModule}
          switcherOpen={switcherOpen}
          onSwitcherOpenChange={setSwitcherOpen}
          prSummary={prSummary}
          switcherContent={
            <ModuleSwitcherContent
              activeModuleKey={activeModuleKey}
              onSelect={handleModuleSelect}
            />
          }
        />

        <Content className="main-content">
          <div className="main-content__inner">
            <Outlet />
          </div>
        </Content>
      </Layout>
    </Layout>
  )
}
