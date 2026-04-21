import { Suspense } from 'react'
import { App as AntApp, ConfigProvider } from 'antd'
import { RouterProvider } from 'react-router-dom'
import { router } from '@/routes'

function App() {
  return (
    <ConfigProvider
      theme={{
        token: {
          colorPrimary:        '#4f46e5',
          borderRadius:        8,
          fontFamily:          "Inter, system-ui, -apple-system, 'Segoe UI', sans-serif",
          colorBgContainer:    '#ffffff',
          colorBgLayout:       '#f4f6fb',
          boxShadow:           '0 2px 12px rgba(15,23,42,0.08)',
          boxShadowSecondary:  '0 1px 4px rgba(15,23,42,0.06)',
        },
        components: {
          Menu:   { itemBorderRadius: 8, subMenuItemBorderRadius: 6 },
          Button: { borderRadius: 8 },
          Input:  { borderRadius: 8 },
          Select: { borderRadius: 8 },
          Card:   { borderRadius: 12 },
        },
      }}
    >
      <AntApp>
        <Suspense fallback={<div style={{ padding: '3rem', textAlign: 'center' }}>Loading...</div>}>
          <RouterProvider router={router} />
        </Suspense>
      </AntApp>
    </ConfigProvider>
  )
}

export default App
