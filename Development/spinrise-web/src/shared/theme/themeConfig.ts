import type { ThemeConfig } from 'antd'

const themeConfig: ThemeConfig = {
  token: {
    colorPrimary:         '#1677ff',
    colorBgBase:          '#f5f7fa',
    colorBgContainer:     '#ffffff',
    colorText:            '#1f2937',
    colorTextSecondary:   '#6b7280',
    colorBorder:          '#e5e7eb',
    colorBorderSecondary: '#f1f5f9',
    colorError:           '#dc2626',
    colorWarning:         '#d97706',
    colorSuccess:         '#22C55E',
    colorInfo:            '#0ea5e9',
    borderRadius:         8,
    fontFamily:           "Inter, system-ui, -apple-system, 'Segoe UI', sans-serif",
    fontSize:             14,
    boxShadow:            '0 1px 4px rgba(0,0,0,0.06)',
    boxShadowSecondary:   '0 1px 2px rgba(0,0,0,0.04)',
  },
  components: {
    Layout: {
      siderBg:   '#0f172a',
      triggerBg: '#172033',
    },
    Menu: {
      darkItemBg:           '#0f172a',
      darkSubMenuItemBg:    '#172033',
      darkItemSelectedBg:   '#1677ff',
      darkItemColor:        '#cbd5e1',
      darkItemSelectedColor:'#ffffff',
      darkItemHoverColor:   '#e2e8f0',
      itemBorderRadius:     6,
    },
    Table: {
      headerBg:          '#f1f5f9',
      headerColor:       '#374151',
      borderColor:       '#e5e7eb',
      rowHoverBg:        '#f9fafb',
      cellPaddingBlock:   9,
      cellPaddingInline:  12,
    },
    Button: {
      borderRadius:  6,
      primaryShadow: 'none',
      defaultShadow: 'none',
      dangerShadow:  'none',
    },
    Card: {
      borderRadius:  10,
      paddingLG:     20,
      headerBg:      'transparent',
    },
    Form: {
      labelColor:    '#374151',
      labelFontSize: 13,
    },
  },
}

export default themeConfig
