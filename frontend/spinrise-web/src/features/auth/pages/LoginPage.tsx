import { App as AntApp } from 'antd'
import { useAsync } from '@/shared/hooks/useAsync'
import { getErrorMessage } from '@/shared/lib/errorHandler'
import { Button, Card, Form, Input, Typography } from '@/shared/ui'
import { useNavigate } from 'react-router-dom'
import { authService } from '../services/authService'
import { useAuthStore } from '../store/useAuthStore'
import type { LoginDto } from '../types'

export default function LoginPage() {
  const { message } = AntApp.useApp()
  const [form] = Form.useForm<LoginDto>()
  const setAuthSession = useAuthStore((state) => state.setAuthSession)
  const navigate = useNavigate()
  const { execute, loading } = useAsync(authService.login)

  const onFinish = async (values: LoginDto) => {
    try {
        
      const session = await execute(values)
      setAuthSession(session)
      message.success('Login successful')
      navigate('/', { replace: true })
    } catch (error) {
      message.error(getErrorMessage(error))
    }
  }

  return (
    <div className="page-shell">
      <Card title="Spinrise - ERP" className="login-card">
        <Typography.Paragraph>
          Secure access to the dashboard. Use `admin@spinrise.com` or `user@example.com` with the password `password`.
        </Typography.Paragraph>

        <Form
          form={form}
          layout="vertical"
          onFinish={onFinish}
          initialValues={{ email: 'user@example.com', password: 'password' }}
        >
          <Form.Item
            label="Email"
            name="email"
            rules={[{ required: true, type: 'email', message: 'Please enter a valid email' }]}
          >
            <Input placeholder="name@company.com" />
          </Form.Item>

          <Form.Item
            label="Password"
            name="password"
            rules={[{ required: true, message: 'Please enter your password' }]}
          >
            <Input.Password placeholder="••••••••" />
          </Form.Item>

          <Form.Item>
            <Button type="primary" htmlType="submit" loading={loading} block>
              Sign in
            </Button>
          </Form.Item>
        </Form>
      </Card>
    </div>
  )
}
