import { App, Col, DatePicker, Form, Input, Row, Select, Tag, Typography } from 'antd'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type { DepartmentLookup, EmployeeLookup, POTypeLookup, PRHeaderFormValues } from '../../types'

interface PRHeaderCardsProps {
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
  // Budget
  budgetValidationEnabled?:  boolean
  budgetBalance?:            number | null
  // Approval display
  approvalVisible?:          boolean
  level1ApproverName?:       string | null
  level1ApprovedAt?:         string | null
  level2ApproverName?:       string | null
  level2ApprovedAt?:         string | null
  finalApproverName?:        string | null
  finalApprovedAt?:          string | null
}

const LABEL: React.CSSProperties = { fontSize: 12, fontWeight: 500, color: '#374151' }
function FL({ text }: { text: string }) {
  return <span style={LABEL}>{text}</span>
}

export function PRHeaderCards({
  form,
  departments,
  employees,
  poTypes,
  savedPrNo             = null,
  disabled              = false,
  requireRequesterName  = false,
  requireRefNo          = false,
  pendingPoDetailsEnabled = false,
  backDateAllowed       = true,
  budgetValidationEnabled = false,
  budgetBalance         = null,
  approvalVisible       = false,
  level1ApproverName    = null,
  level1ApprovedAt      = null,
  level2ApproverName    = null,
  level2ApprovedAt      = null,
  finalApproverName     = null,
  finalApprovedAt       = null,
}: PRHeaderCardsProps) {
  const { message } = App.useApp()

  const deptOptions      = departments.map((d) => ({ value: d.depCode, label: `${d.depCode} – ${d.depName}` }))
  const empOptions       = employees.map((e)   => ({ value: e.empNo,   label: `${e.empNo} – ${e.eName}` }))
  const typeOptions      = poTypes.map((p)     => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))
  const orderTypeOptions = typeOptions.filter((o) => ['E', 'O', 'U'].includes(o.value))

  const prNoText = savedPrNo ? String(savedPrNo) : ''

  const handleCopy = () => {
    if (!savedPrNo) return
    void navigator.clipboard.writeText(prNoText).then(() => void message.success('Copied!'))
  }

  const ITEM: React.CSSProperties = { marginBottom: 12 }

  return (
    <div style={{
      background:   '#ffffff',
      border:       '1px solid #e5e7eb',
      borderRadius: 12,
      padding:      '20px 24px 8px',
      boxShadow:    '0 2px 10px rgba(0,0,0,0.05)',
    }}>
      <style>{`
        .pr-header-form .ant-input,
        .pr-header-form .ant-input-number,
        .pr-header-form .ant-picker,
        .pr-header-form .ant-select:not(.ant-select-disabled) .ant-select-selector {
          background: #f8fafc !important;
          border: 1px solid #d1d5db !important;
          border-radius: 6px !important;
        }
        .pr-header-form .ant-input:focus,
        .pr-header-form .ant-input-number-focused,
        .pr-header-form .ant-picker-focused,
        .pr-header-form .ant-select-focused .ant-select-selector {
          border-color: #1677ff !important;
          box-shadow: 0 0 0 2px rgba(22,119,255,0.15) !important;
        }
        .pr-header-form .ant-input[disabled],
        .pr-header-form .ant-input-disabled {
          background: #f1f5f9 !important;
          color: #64748b !important;
          border-color: #e2e8f0 !important;
        }
      `}</style>

      {/* Section title + PR number badge */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 16 }}>
        <Typography.Text strong style={{ fontSize: 13, color: '#1e293b' }}>
          Requisition Details
        </Typography.Text>
        {/* H2: PR Number as clickable badge — replaces disabled Input */}
        {savedPrNo && (
          <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>PR No:</Typography.Text>
            <Tag
              color="blue"
              style={{ fontSize: 13, fontWeight: 700, padding: '2px 10px', fontFamily: 'monospace', cursor: 'pointer', marginRight: 0 }}
              onClick={handleCopy}
            >
              {prNoText}
            </Tag>
            <Typography.Text type="secondary" style={{ fontSize: 11 }}>Click to copy</Typography.Text>
          </div>
        )}
      </div>

      <Form
        className="pr-header-form"
        form={form}
        layout="vertical"
        initialValues={{ prDate: dayjs() }}
        disabled={disabled}
        size="middle"
      >
        {/* H3 Row 1: PR Date | Department */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={12} md={12}>
            <Form.Item
              name="prDate"
              label={<FL text="PR Date" />}
              rules={[{ required: true, message: 'Required' }]}
              style={ITEM}
            >
              <DatePicker
                style={{ width: '100%' }}
                format="DD-MM-YYYY"
                disabledDate={(d) =>
                  backDateAllowed ? d.isAfter(dayjs(), 'day') : !d.isSame(dayjs(), 'day')
                }
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={12} md={12}>
            <Form.Item
              name="depCode"
              label={<FL text="Department" />}
              rules={[{ required: true, message: 'Required' }]}
              style={ITEM}
            >
              <Select
                showSearch
                placeholder="Search department…"
                options={deptOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>
        </Row>

        {/* H3 Row 2: Requested By | Order Type — H1: merged into single row */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={12} md={12}>
            <Form.Item
              name="reqName"
              label={<FL text="Requested By" />}
              rules={requireRequesterName ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
            >
              <Select
                showSearch
                placeholder="Search employee…"
                options={empOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={12} md={12}>
            <Form.Item
              name="iType"
              label={<FL text="Order Type" />}
              rules={pendingPoDetailsEnabled ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
            >
              <Select
                showSearch
                placeholder="Select order type…"
                options={orderTypeOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>
        </Row>

        {/* H3 Row 3: Section | Reference No */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={12} md={12}>
            <Form.Item name="section" label={<FL text="Section" />} style={ITEM}>
              <Input placeholder="e.g. Infrastructure" maxLength={100} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={12} md={12}>
            <Form.Item
              name="refNo"
              label={<FL text="Reference No." />}
              rules={requireRefNo ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
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

      {/* Budget balance */}
      {budgetValidationEnabled && budgetBalance != null && (
        <div style={{ display: 'flex', gap: 8, alignItems: 'center', marginTop: 4, marginBottom: 4 }}>
          <Typography.Text style={{ fontSize: 12, color: '#6b7280' }}>Budget Balance:</Typography.Text>
          <Tag color={budgetBalance > 0 ? 'green' : 'red'}>
            ₹ {budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
          </Tag>
        </div>
      )}

      {/* Approval chain */}
      {approvalVisible && (level1ApproverName || level2ApproverName || finalApproverName) && (
        <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap', marginTop: 4, marginBottom: 4 }}>
          {level1ApproverName && (
            <Tag color="blue">L1: {level1ApproverName}{level1ApprovedAt ? ` (${level1ApprovedAt})` : ''}</Tag>
          )}
          {level2ApproverName && (
            <Tag color="geekblue">L2: {level2ApproverName}{level2ApprovedAt ? ` (${level2ApprovedAt})` : ''}</Tag>
          )}
          {finalApproverName && (
            <Tag color="green">Final: {finalApproverName}{finalApprovedAt ? ` (${finalApprovedAt})` : ''}</Tag>
          )}
        </div>
      )}
    </div>
  )
}
