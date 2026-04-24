import { App as AntApp, ConfigProvider } from 'antd'
import { RouterProvider } from 'react-router-dom'
import { Suspense } from 'react'
import { router } from '@/routes'
import themeConfig from '@/shared/theme/themeConfig'

function App() {
  return (
    <ConfigProvider theme={themeConfig}>
      <AntApp>
        <Suspense fallback={<div style={{ padding: '3rem', textAlign: 'center' }}>Loading…</div>}>
          <RouterProvider router={router} />
        </Suspense>
      </AntApp>
    </ConfigProvider>
  )
}

export default App
