import { useEffect, useState } from 'react'
import { App as AntApp, Button, Col, DatePicker, Form, Input, Row, Select, Typography } from 'antd'
import {
  BankOutlined,
  BarChartOutlined,
  CalendarOutlined,
  LockOutlined,
  SafetyCertificateOutlined,
  ThunderboltOutlined,
  UserOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import { useAsync } from '@/shared/hooks/useAsync'
import { getErrorMessage } from '@/shared/lib/errorHandler'
import { useNavigate } from 'react-router-dom'
import { authApi } from '../api/authApi'
import { authService } from '../services/authService'
import { useAuthStore } from '../store/useAuthStore'
import type { ActiveDivisionDto, LoginDto } from '../types'

const FEATURES = [
  { icon: <SafetyCertificateOutlined />, text: 'Role-based access control' },
  { icon: <ThunderboltOutlined />,       text: 'Real-time approval workflows' },
  { icon: <BarChartOutlined />,          text: 'Live procurement analytics' },
]

interface LoginFormValues extends LoginDto {
  processingDate: ReturnType<typeof dayjs>
}

export default function LoginPage() {
  const { message } = AntApp.useApp()
  const [form]      = Form.useForm<LoginFormValues>()
  const setAuthSession    = useAuthStore((s) => s.setAuthSession)
  const setProcessingDate = useAuthStore((s) => s.setProcessingDate)
  const navigate          = useNavigate()
  const { execute, loading } = useAsync(authService.login)

  const [divisions,      setDivisions]      = useState<ActiveDivisionDto[]>([])
  const [divsLoading,    setDivsLoading]    = useState(false)
  const [divsFailed,     setDivsFailed]     = useState(false)

  useEffect(() => {
    setDivsLoading(true)
    authApi.getActiveDivisions()
      .then((divisions) => { setDivisions(divisions ?? []) })
      .catch(() => { setDivsFailed(true) })
      .finally(() => setDivsLoading(false))
  }, [])

  const onFinish = async (values: LoginFormValues) => {
    try {
      const procDate = values.processingDate.format('YYYY-MM-DD')
      const { processingDate: _pd, ...loginPayload } = values
      const session = await execute(loginPayload)
      setAuthSession(session)
      setProcessingDate(procDate)
      message.success('Login successful')
      navigate('/purchase/requisition', { replace: true })
    } catch (error) {
      message.error(getErrorMessage(error))
    }
  }

  return (
    <div className="login-root">
      <Row style={{ width: '100%', minHeight: '100vh' }}>

        {/* ── Left panel — branding ─────────────────────────────────────── */}
        <Col xs={0} md={12} className="login-left">

          <div style={{
            position: 'absolute', top: -80, right: -80,
            width: 320, height: 320, borderRadius: '50%',
            background: 'rgba(255,255,255,0.04)', pointerEvents: 'none',
          }} />
          <div style={{
            position: 'absolute', bottom: -60, left: -60,
            width: 240, height: 240, borderRadius: '50%',
            background: 'rgba(255,255,255,0.04)', pointerEvents: 'none',
          }} />
          <div style={{
            position: 'absolute', top: '40%', right: '10%',
            width: 120, height: 120, borderRadius: '50%',
            background: 'rgba(22,119,255,0.18)', pointerEvents: 'none',
          }} />

          <div style={{ position: 'relative', zIndex: 1, maxWidth: 420, textAlign: 'center' }}>
            <div style={{
              width: 72, height: 72, borderRadius: 20,
              background: 'rgba(255,255,255,0.12)',
              border: '1px solid rgba(255,255,255,0.18)',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: 32, fontWeight: 800, color: '#ffffff',
              margin: '0 auto 24px',
              backdropFilter: 'blur(8px)',
              boxShadow: '0 8px 32px rgba(0,0,0,0.24)',
            }}>
              S
            </div>
            <Typography.Title level={2} style={{ color: '#ffffff', margin: '0 0 8px', fontSize: 28, fontWeight: 700 }}>
              Spinrise ERP
            </Typography.Title>
            <Typography.Text style={{ color: 'rgba(255,255,255,0.65)', fontSize: 15, display: 'block', marginBottom: 48 }}>
              Enterprise Resource Planning Platform
            </Typography.Text>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
              {FEATURES.map((f, i) => (
                <div key={i} style={{
                  display: 'flex', alignItems: 'center', gap: 14,
                  background: 'rgba(255,255,255,0.07)',
                  border: '1px solid rgba(255,255,255,0.10)',
                  borderRadius: 12, padding: '12px 18px',
                  backdropFilter: 'blur(8px)', textAlign: 'left',
                }}>
                  <div style={{
                    width: 36, height: 36, borderRadius: 10, flexShrink: 0,
                    background: 'rgba(22,119,255,0.25)',
                    display: 'flex', alignItems: 'center', justifyContent: 'center',
                    color: '#60a5fa', fontSize: 16,
                  }}>
                    {f.icon}
                  </div>
                  <Typography.Text style={{ color: 'rgba(255,255,255,0.85)', fontSize: 14, fontWeight: 500 }}>
                    {f.text}
                  </Typography.Text>
                </div>
              ))}
            </div>
            <Typography.Text style={{ color: 'rgba(255,255,255,0.30)', fontSize: 12, display: 'block', marginTop: 48 }}>
              © {new Date().getFullYear()} Spinrise · All rights reserved
            </Typography.Text>
          </div>
        </Col>

        {/* ── Right panel — form ────────────────────────────────────────── */}
        <Col xs={24} md={12} className="login-right">
          <div className="login-form-wrap">

            {/* Mobile-only logo */}
            <div style={{ display: 'flex', alignItems: 'center', gap: 10, marginBottom: 32, justifyContent: 'center' }}>
              <div style={{
                width: 40, height: 40, borderRadius: 10,
                background: 'linear-gradient(135deg, #1d4ed8, #1677ff)',
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                color: '#fff', fontSize: 18, fontWeight: 800,
                boxShadow: '0 4px 12px rgba(22,119,255,0.35)',
              }}>
                S
              </div>
              <Typography.Text style={{ fontSize: 18, fontWeight: 700 }}>
                Spinrise ERP
              </Typography.Text>
            </div>

            <div style={{ marginBottom: 32 }}>
              <Typography.Title level={3} style={{ margin: '0 0 6px', fontSize: 24, fontWeight: 700 }}>
                Welcome back
              </Typography.Title>
              <Typography.Text type="secondary" style={{ fontSize: 14 }}>
                Sign in to your workspace to continue
              </Typography.Text>
            </div>

            <Form
              form={form}
              layout="vertical"
              onFinish={onFinish}
              initialValues={{ processingDate: dayjs() }}
              requiredMark={false}
            >
              {/* Division */}
              <Form.Item
                label={<span style={{ fontSize: 12, fontWeight: 500 }}>Division</span>}
                name="divCode"
                rules={[{ required: true, message: 'Please select your division' }]}
                style={{ marginBottom: 16 }}
              >
                {divsFailed ? (
                  <Input
                    className="login-input"
                    prefix={<BankOutlined style={{ color: '#9ca3af' }} />}
                    placeholder="Enter division code"
                    maxLength={4}
                    size="large"
                    style={{ textTransform: 'uppercase' }}
                  />
                ) : (
                  <Select
                    showSearch
                    size="large"
                    loading={divsLoading}
                    placeholder="Select division"
                    optionFilterProp="label"
                    suffixIcon={<BankOutlined style={{ color: '#9ca3af' }} />}
                    options={divisions.map((d) => ({
                      value: d.divCode,
                      label: `${d.divCode} – ${d.divName}`,
                    }))}
                    filterOption={(input, option) =>
                      (option?.label ?? '').toLowerCase().includes(input.toLowerCase())
                    }
                    style={{ width: '100%' }}
                  />
                )}
              </Form.Item>

              {/* Processing Date */}
              <Form.Item
                label={<span style={{ fontSize: 12, fontWeight: 500 }}>Processing Date</span>}
                name="processingDate"
                rules={[{ required: true, message: 'Please select processing date' }]}
                style={{ marginBottom: 16 }}
              >
                <DatePicker
                  className="login-input"
                  size="large"
                  style={{ width: '100%' }}
                  format="DD-MM-YYYY"
                  suffixIcon={<CalendarOutlined style={{ color: '#9ca3af' }} />}
                  disabledDate={(d) => d.isAfter(dayjs(), 'day')}
                  allowClear={false}
                />
              </Form.Item>

              {/* Username */}
              <Form.Item
                label={<span style={{ fontSize: 12, fontWeight: 500 }}>Username</span>}
                name="userName"
                rules={[{ required: true, message: 'Please enter your username' }]}
                style={{ marginBottom: 16 }}
              >
                <Input
                  className="login-input"
                  prefix={<UserOutlined style={{ color: '#9ca3af' }} />}
                  placeholder="Enter your username"
                  maxLength={100}
                  size="large"
                />
              </Form.Item>

              {/* Password */}
              <Form.Item
                label={<span style={{ fontSize: 12, fontWeight: 500 }}>Password</span>}
                name="password"
                rules={[{ required: true, message: 'Please enter your password' }]}
                style={{ marginBottom: 24 }}
              >
                <Input.Password
                  className="login-input"
                  prefix={<LockOutlined style={{ color: '#9ca3af' }} />}
                  placeholder="••••••••"
                  size="large"
                />
              </Form.Item>

              <Form.Item style={{ marginBottom: 0 }}>
                <Button
                  className="login-btn"
                  type="primary"
                  htmlType="submit"
                  loading={loading}
                  block
                  size="large"
                >
                  Sign in to Workspace
                </Button>
              </Form.Item>
            </Form>

            <Typography.Text type="secondary" style={{ display: 'block', textAlign: 'center', marginTop: 28, fontSize: 12 }}>
              Having trouble? Contact your system administrator
            </Typography.Text>
          </div>
        </Col>

      </Row>
    </div>
  )
}
