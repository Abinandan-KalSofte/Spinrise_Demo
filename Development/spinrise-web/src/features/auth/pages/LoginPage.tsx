import { useEffect, useState } from 'react'
import { App as AntApp, Button, DatePicker, Form, Input, Select } from 'antd'
import {
  ApartmentOutlined,
  BankOutlined,
  CalendarOutlined,
  LockOutlined,
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

const COMPANIES = [{ value: 'KAL', label: 'Kalpatharu Software Ltd' }]

interface LoginFormValues extends LoginDto {
  processingDate: ReturnType<typeof dayjs>
  compCode: string
}

// ── SpinRise SVG Logo ─────────────────────────────────────────────────────────
// Icon: 270° clockwise spinning arc (3-o'clock → bottom → left → top) with
// an upward arrow at the apex — combines "Spin" + "Rise" in one mark.
function SpinRiseLogo() {
  return (
    <svg width="40" height="40" viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
      <defs>
        <linearGradient id="sr-grad" x1="0" y1="0" x2="42" y2="42" gradientUnits="userSpaceOnUse">
          <stop offset="0%" stopColor="#1e3a8a" />
          <stop offset="100%" stopColor="#2563eb" />
        </linearGradient>
      </defs>
      {/* Badge background */}
      <rect width="42" height="42" rx="10" fill="url(#sr-grad)" />
      {/* 270° clockwise arc: right (33,21) → bottom → left → top (21,9) */}
      <path
        d="M 33 21 A 12 12 0 1 1 21 9"
        stroke="rgba(255,255,255,0.50)"
        strokeWidth="2.8"
        strokeLinecap="round"
        fill="none"
      />
      {/* Upward arrowhead at 12-o'clock (21,9) */}
      <path
        d="M 17 14 L 21 9 L 25 14"
        stroke="white"
        strokeWidth="2.8"
        strokeLinecap="round"
        strokeLinejoin="round"
        fill="none"
      />
      {/* Dot at arc origin (3-o'clock) */}
      <circle cx="33" cy="21" r="2.4" fill="rgba(255,255,255,0.50)" />
    </svg>
  )
}

// ── Page ──────────────────────────────────────────────────────────────────────
export default function LoginPage() {
  const { message } = AntApp.useApp()
  const [form] = Form.useForm<LoginFormValues>()
  const setAuthSession    = useAuthStore((s) => s.setAuthSession)
  const setProcessingDate = useAuthStore((s) => s.setProcessingDate)
  const navigate          = useNavigate()
  const { execute, loading } = useAsync(authService.login)

  const [divisions,   setDivisions]   = useState<ActiveDivisionDto[]>([])
  const [divsLoading, setDivsLoading] = useState(false)
  const [divsFailed,  setDivsFailed]  = useState(false)
  const [currentTime, setCurrentTime] = useState(dayjs())

  useEffect(() => {
    const timer = setInterval(() => setCurrentTime(dayjs()), 1000)
    return () => clearInterval(timer)
  }, [])

  useEffect(() => {
    setDivsLoading(true)
    authApi.getActiveDivisions()
      .then((divs) => { setDivisions(divs ?? []) })
      .catch(() => { setDivsFailed(true) })
      .finally(() => setDivsLoading(false))
  }, [])

  const onFinish = async (values: LoginFormValues) => {
    try {
      const procDate = values.processingDate.format('YYYY-MM-DD')
      const { processingDate: _pd, compCode: _cc, ...loginPayload } = values
      const session = await execute(loginPayload)
      setAuthSession(session)
      setProcessingDate(procDate)
      message.success('Login successful')
      navigate('/purchase/requisition/v1/new', { replace: true })
    } catch (error) {
      message.error(getErrorMessage(error))
    }
  }

  return (
    <div className="login-root">
      <div className="login-card">

        {/* ── Logo — grey pill, centered ─────────────────────────────────── */}
        <div className="login-card__logo-wrap">
          <SpinRiseLogo />
          <div className="login-card__logo-text">
            <span className="login-card__brand-name">SpinRise</span>
            <span className="login-card__brand-sub">ERP PLATFORM</span>
          </div>
        </div>

        {/* ── System title + blue divider ────────────────────────────────── */}
        <div className="login-card__system-title">Enterprise Resource Planning</div>
        <div className="login-card__divider" />

        {/* ── Live date / time ───────────────────────────────────────────── */}
        <div className="login-card__datetime">
          <CalendarOutlined />
          <span>{currentTime.format('DD MMM YYYY')}</span>
          <span className="login-card__datetime-sep">|</span>
          <span>{currentTime.format('hh:mm:ss A')}</span>
        </div>

        {/* ── Form ───────────────────────────────────────────────────────── */}
        <Form
          form={form}
          layout="vertical"
          onFinish={onFinish}
          initialValues={{ processingDate: dayjs(), compCode: 'KAL' }}
          requiredMark={false}
          className="login-form"
        >
          {/* Company */}
          <Form.Item name="compCode" rules={[{ required: true, message: 'Please select a company' }]}>
            <Select
              options={COMPANIES}
              suffixIcon={<ApartmentOutlined style={{ color: '#9ca3af' }} />}
              style={{ width: '100%' }}
            />
          </Form.Item>

          {/* Division */}
          <Form.Item name="divCode" rules={[{ required: true, message: 'Please select your division' }]}>
            {divsFailed ? (
              <Input
                prefix={<BankOutlined style={{ color: '#9ca3af' }} />}
                placeholder="Enter division code"
                maxLength={4}
                style={{ textTransform: 'uppercase' }}
              />
            ) : (
              <Select
                showSearch
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

          {/* Username */}
          <Form.Item name="userName" rules={[{ required: true, message: 'Please enter your username' }]}>
            <Input
              prefix={<UserOutlined style={{ color: '#9ca3af' }} />}
              placeholder="Username"
              maxLength={100}
            />
          </Form.Item>

          {/* Password */}
          <Form.Item name="password" rules={[{ required: true, message: 'Please enter your password' }]}>
            <Input.Password
              prefix={<LockOutlined style={{ color: '#9ca3af' }} />}
              placeholder="Password"
            />
          </Form.Item>

          {/* Processing Date */}
          <Form.Item name="processingDate" rules={[{ required: true, message: 'Please select processing date' }]}>
            <DatePicker
              style={{ width: '100%' }}
              format="DD-MM-YYYY"
              suffixIcon={<CalendarOutlined style={{ color: '#9ca3af' }} />}
              disabledDate={(d) => d.isAfter(dayjs(), 'day')}
              allowClear={false}
            />
          </Form.Item>

          <Form.Item style={{ marginBottom: 0, marginTop: 6 }}>
            <Button
              type="primary"
              htmlType="submit"
              loading={loading}
              block
              className="login-submit-btn"
            >
              Login
            </Button>
          </Form.Item>
        </Form>

        <div className="login-card__footer-note">
          © {new Date().getFullYear()} Kalpatharu Software Ltd
        </div>
      </div>
    </div>
  )
}
