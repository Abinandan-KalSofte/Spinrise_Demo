import { App, Col, DatePicker, Form, Input, Row, Select, Tooltip } from 'antd'
import type { FormInstance } from 'antd'
import { CalendarOutlined, CheckCircleOutlined, CopyOutlined, SafetyCertificateOutlined, UserOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { CodeNameSelect } from '@/shared/components/CodeNameSelect'
import type { DepartmentLookup, EmployeeLookup, POTypeLookup, PRHeaderFormValues } from '@/features/purchase-requisition/types'

const ATTR_LABEL: React.CSSProperties = {
  display:       'block',
  fontSize:      10,
  fontWeight:    600,
  textTransform: 'uppercase',
  letterSpacing: '0.08em',
  color:         '#64748b',
  marginBottom:  3,
}

const FIELD: React.CSSProperties = { marginBottom: 14 }

interface PRHeaderCardsV2Props {
  form:                      FormInstance<PRHeaderFormValues>
  departments:               DepartmentLookup[]
  employees:                 EmployeeLookup[]
  poTypes:                   POTypeLookup[]
  savedPrNo?:                number | null
  disabled?:                 boolean
  requireRequesterName?:     boolean
  requireRefNo?:             boolean
  pendingPoDetailsEnabled?:  boolean
  backDateAllowed?:          boolean
  budgetValidationEnabled?:  boolean
  budgetBalance?:            number | null
  approvalVisible?:          boolean
  level1ApproverName?:       string | null
  level1ApprovedAt?:         string | null
  level2ApproverName?:       string | null
  level2ApprovedAt?:         string | null
  finalApproverName?:        string | null
  finalApprovedAt?:          string | null
  createdBy?:                string | null
}

export function PRHeaderCardsV2({
  form,
  departments,
  employees,
  poTypes: _poTypes,
  savedPrNo             = null,
  disabled              = false,
  requireRequesterName  = false,
  requireRefNo          = false,
  pendingPoDetailsEnabled: _pendingPoDetailsEnabled = false,
  backDateAllowed:      _backDateAllowed = true,
  budgetValidationEnabled = false,
  budgetBalance         = null,
  approvalVisible       = false,
  level1ApproverName    = null,
  level1ApprovedAt      = null,
  level2ApproverName    = null,
  level2ApprovedAt      = null,
  finalApproverName     = null,
  finalApprovedAt       = null,
  createdBy             = null,
}: PRHeaderCardsV2Props) {
  const { message } = App.useApp()
  const processingDate = useAuthStore((s) => s.processingDate)
  const procDay        = processingDate ? dayjs(processingDate) : dayjs()

  const requisitionTypeOptions = [
    { value: 'E', label: 'E – Emergency' },
    { value: 'O', label: 'O – Ordinary'  },
    { value: 'U', label: 'U – Urgent'    },
  ]

  const handleCopy = () => {
    if (!savedPrNo) return
    void navigator.clipboard.writeText(String(savedPrNo))
      .then(() => void message.success('Copied!'))
  }

  const hasApprovals = approvalVisible && (level1ApproverName || level2ApproverName || finalApproverName)

  return (
    <div style={{
      background:   '#ffffff',
      border:       '1px solid #e2e8f0',
      borderLeft:   '4px solid #1677ff',
      borderRadius: '0 10px 10px 0',
      boxShadow:    '0 1px 4px rgba(0,0,0,0.06)',
      marginBottom: 16,
      overflow:     'hidden',
    }}>

      {/* ── Object Identity Strip ─────────────────────────────────────────── */}
      <div style={{
        padding:      '12px 20px',
        borderBottom: '1px solid #f1f5f9',
        background:   'linear-gradient(135deg, #fafbff 0%, #ffffff 100%)',
        display:      'flex',
        alignItems:   'center',
        gap:          20,
        flexWrap:     'wrap',
      }}>
        {/* Document identity + date */}
        <div style={{ minWidth: 160 }}>
          <div style={{
            fontSize: 10, fontWeight: 700, letterSpacing: '0.12em',
            color: '#1677ff', textTransform: 'uppercase', marginBottom: 3,
          }}>
            Purchase Requisition
          </div>
          {savedPrNo ? (
            <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
              <span style={{
                fontSize: 22, fontWeight: 800, fontFamily: 'monospace',
                color: '#1e293b', letterSpacing: '-0.02em', lineHeight: 1.1,
              }}>
                PR-{String(savedPrNo).padStart(5, '0')}
              </span>
              <Tooltip title="Copy PR number">
                <button type="button" onClick={handleCopy} style={{
                  background: 'none', border: '1px solid #e2e8f0', borderRadius: 4,
                  cursor: 'pointer', padding: '2px 5px', color: '#94a3b8',
                  lineHeight: 1, display: 'flex', alignItems: 'center',
                }}>
                  <CopyOutlined style={{ fontSize: 11 }} />
                </button>
              </Tooltip>
            </div>
          ) : (
            <div style={{ fontSize: 15, fontWeight: 600, color: '#94a3b8', fontStyle: 'italic' }}>
              New Document
            </div>
          )}
        </div>

        {/* Static date chip */}
        <div style={{
          display: 'flex', alignItems: 'center', gap: 7,
          padding: '6px 14px',
          background: '#f0f9ff', border: '1px solid #bae6fd', borderRadius: 20,
        }}>
          <CalendarOutlined style={{ fontSize: 12, color: '#0284c7' }} />
          <div>
            <div style={{ fontSize: 9, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.08em', color: '#0284c7' }}>
              Document Date
            </div>
            <div style={{ fontSize: 12, fontWeight: 700, color: '#0c4a6e' }}>
              {procDay.format('DD MMM YYYY')}
            </div>
          </div>
        </div>

        {/* Budget chip */}
        {budgetValidationEnabled && budgetBalance != null && (
          <div style={{
            display: 'flex', alignItems: 'center', gap: 7,
            padding: '6px 14px',
            background: budgetBalance > 0 ? '#f0fdf4' : '#fef2f2',
            border: `1px solid ${budgetBalance > 0 ? '#bbf7d0' : '#fecaca'}`,
            borderRadius: 20,
          }}>
            <SafetyCertificateOutlined style={{ fontSize: 12, color: budgetBalance > 0 ? '#16a34a' : '#dc2626' }} />
            <div>
              <div style={{ fontSize: 9, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.08em', color: budgetBalance > 0 ? '#16a34a' : '#dc2626' }}>
                Budget Balance
              </div>
              <div style={{ fontSize: 12, fontWeight: 700, color: budgetBalance > 0 ? '#15803d' : '#b91c1c' }}>
                ₹ {budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
              </div>
            </div>
          </div>
        )}

        {/* Approval chips */}
        {hasApprovals && (
          <>
            {level1ApproverName && (
              <div style={{
                display: 'flex', alignItems: 'center', gap: 5,
                padding: '4px 12px',
                background: '#eff6ff', border: '1px solid #bfdbfe', borderRadius: 20,
              }}>
                <CheckCircleOutlined style={{ fontSize: 11, color: '#1d4ed8' }} />
                <span style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em', color: '#1d4ed8' }}>L1</span>
                <span style={{ fontSize: 11, color: '#1e3a8a' }}>{level1ApproverName}</span>
                {level1ApprovedAt && <span style={{ fontSize: 10, color: '#93c5fd' }}>· {level1ApprovedAt}</span>}
              </div>
            )}
            {level2ApproverName && (
              <div style={{
                display: 'flex', alignItems: 'center', gap: 5,
                padding: '4px 12px',
                background: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: 20,
              }}>
                <CheckCircleOutlined style={{ fontSize: 11, color: '#16a34a' }} />
                <span style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em', color: '#16a34a' }}>L2</span>
                <span style={{ fontSize: 11, color: '#14532d' }}>{level2ApproverName}</span>
                {level2ApprovedAt && <span style={{ fontSize: 10, color: '#86efac' }}>· {level2ApprovedAt}</span>}
              </div>
            )}
            {finalApproverName && (
              <div style={{
                display: 'flex', alignItems: 'center', gap: 5,
                padding: '4px 12px',
                background: '#fefce8', border: '1px solid #fde68a', borderRadius: 20,
              }}>
                <CheckCircleOutlined style={{ fontSize: 11, color: '#b45309' }} />
                <span style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em', color: '#b45309' }}>Final</span>
                <span style={{ fontSize: 11, color: '#78350f' }}>{finalApproverName}</span>
                {finalApprovedAt && <span style={{ fontSize: 10, color: '#fcd34d' }}>· {finalApprovedAt}</span>}
              </div>
            )}
          </>
        )}

        {/* Created By chip */}
        {createdBy && (
          <div style={{
            display: 'flex', alignItems: 'center', gap: 5,
            padding: '4px 12px',
            background: '#f8fafc', border: '1px solid #e2e8f0', borderRadius: 20,
          }}>
            <UserOutlined style={{ fontSize: 11, color: '#64748b' }} />
            <span style={{ fontSize: 10, fontWeight: 700, textTransform: 'uppercase', letterSpacing: '0.06em', color: '#64748b' }}>By</span>
            <span style={{ fontSize: 11, color: '#1e293b' }}>{createdBy.trim()}</span>
          </div>
        )}
      </div>

      {/* ── Hidden prDate field — keeps form payload intact ───────────────── */}
      <Form form={form} style={{ display: 'none' }} initialValues={{ prDate: procDay }}>
        <Form.Item name="prDate">
          <DatePicker />
        </Form.Item>
      </Form>

      {/* ── Attribute Form ────────────────────────────────────────────────── */}
      <div style={{ padding: '16px 20px 2px' }}>
        <Form
          className="pr-header-form"
          form={form}
          layout="vertical"
          disabled={disabled}
          size="middle"
        >
          <Row gutter={[16, 0]}>
            <Col xs={24} sm={8} md={8}>
              <Form.Item
                name="depCode"
                label={<span style={ATTR_LABEL}>Department *</span>}
                rules={[{ required: true, message: 'Required' }]}
                style={FIELD}
              >
                <CodeNameSelect
                  options={departments.map((d) => ({ code: d.depCode, name: d.depName }))}
                  placeholder="Search department…"
                  allowClear
                />
              </Form.Item>
            </Col>
            <Col xs={24} sm={8} md={8}>
              <Form.Item
                name="reqName"
                label={<span style={ATTR_LABEL}>Requested By{requireRequesterName ? ' *' : ''}</span>}
                rules={requireRequesterName ? [{ required: true, message: 'Required' }] : []}
                style={FIELD}
              >
                <CodeNameSelect
                  options={employees.map((e) => ({ code: e.empNo, name: e.eName }))}
                  placeholder="Search employee…"
                  allowClear
                />
              </Form.Item>
            </Col>
            <Col xs={24} sm={8} md={8}>
              <Form.Item
                name="iType"
                label={<span style={ATTR_LABEL}>Requisition Type *</span>}
                rules={[{ required: true, message: 'Required' }]}
                style={FIELD}
              >
                <Select placeholder="Select type…" options={requisitionTypeOptions} allowClear />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={24} sm={12} md={8}>
              <Form.Item
                name="section"
                label={<span style={ATTR_LABEL}>Section</span>}
                style={FIELD}
              >
                <Input placeholder="e.g. Infrastructure" maxLength={100} />
              </Form.Item>
            </Col>
            <Col xs={24} sm={12} md={8}>
              <Form.Item
                name="refNo"
                label={<span style={ATTR_LABEL}>Reference No.{requireRefNo ? ' *' : ''}</span>}
                rules={requireRefNo ? [{ required: true, message: 'Required' }] : []}
                style={FIELD}
              >
                <Input
                  placeholder="e.g. VEN-QUOT-2026"
                  maxLength={50}
                  style={{ textTransform: 'uppercase' }}
                  onChange={(e) => form.setFieldValue('refNo', e.target.value.toUpperCase())}
                />
              </Form.Item>
            </Col>
          </Row>
        </Form>
      </div>
    </div>
  )
}
