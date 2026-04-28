import { App as AntApp, ConfigProvider, Spin } from 'antd'
import { RouterProvider } from 'react-router-dom'
import { Suspense } from 'react'
import { router } from '@/routes'
import themeConfig from '@/shared/theme/themeConfig'

const pageFallback = (
  <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
    <Spin size="large" />
  </div>
)

function App() {
  return (
    <ConfigProvider theme={themeConfig}>
      <AntApp>
        <Suspense fallback={pageFallback}>
          <RouterProvider router={router} />
        </Suspense>
      </AntApp>
    </ConfigProvider>
  )
}

export default App
