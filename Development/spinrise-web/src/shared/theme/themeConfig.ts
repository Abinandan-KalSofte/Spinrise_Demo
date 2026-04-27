import type { ThemeConfig } from 'antd'

const themeConfig: ThemeConfig = {
  token: {
    fontFamily:         "Inter, system-ui, -apple-system, 'Segoe UI', sans-serif",
    borderRadius:       8,
    boxShadow:          '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)',
    boxShadowSecondary: '0 2px 8px rgba(0,0,0,0.06), 0 1px 3px rgba(0,0,0,0.04)',
  },
  components: {
    Layout: { headerBg: '#ffffff' },
    Button: { borderRadius: 6 },
    Card:   { borderRadius: 10, paddingLG: 20 },
    Table:  { cellPaddingBlock: 9, cellPaddingInline: 12 },
  },
}

export default themeConfig
export function buildThemeConfig() { return themeConfig }
