import { App, Col, DatePicker, Form, Input, Row, Select, Tag, Tooltip, Typography } from 'antd'
import { BankOutlined, CopyOutlined } from '@ant-design/icons'
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
  purTypeFlgEnabled?:        boolean
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
  purTypeFlgEnabled     = false,
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

  const deptOptions = departments.map((d) => ({ value: d.depCode, label: `${d.depCode} – ${d.depName}` }))
  const empOptions  = employees.map((e)   => ({ value: e.eName,   label: `${e.empNo} – ${e.eName}` }))
  const typeOptions = poTypes.map((p)     => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))

  const prNoText = savedPrNo ? `PR-${String(savedPrNo).padStart(5, '0')}-${dayjs().year()}` : ''

  const handleCopy = () => {
    if (!savedPrNo) return
    void navigator.clipboard.writeText(prNoText).then(() => void message.success('Copied!'))
  }

  const ITEM: React.CSSProperties = { marginBottom: 12 }

  return (
    <div style={{
      background:   '#ffffff',
      border:       '1px solid #e5e7eb',
      borderRadius: 10,
      padding:      '20px 24px 8px',
      boxShadow:    '0 1px 3px rgba(0,0,0,0.05)',
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
      <Typography.Text strong style={{ fontSize: 13, color: '#1e293b', display: 'block', marginBottom: 16 }}>
        Requisition Details
      </Typography.Text>

      <Form
        className="pr-header-form"
        form={form}
        layout="vertical"
        initialValues={{ prDate: dayjs() }}
        disabled={disabled}
        size="middle"
      >
        {/* Row 1: PR No | PR Date | Department */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={8} md={6}>
            <Form.Item label={<FL text="PR Number" />} style={ITEM}>
              <Input
                value={prNoText}
                placeholder="Auto-generated on save"
                disabled
                style={{ background: '#f1f5f9', border: '1px solid #e2e8f0', color: '#64748b' }}
                suffix={
                  savedPrNo ? (
                    <Tooltip title="Copy">
                      <CopyOutlined
                        onClick={handleCopy}
                        style={{ cursor: 'pointer', color: '#9ca3af', fontSize: 12 }}
                      />
                    </Tooltip>
                  ) : null
                }
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
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
                  backDateAllowed
                    ? d.isAfter(dayjs(), 'day')                   // Only block future dates
                    : !d.isSame(dayjs(), 'day')                   // Only today allowed
                }
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
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
          <Col xs={24} sm={8} md={6}>
            <Form.Item
              name="refNo"
              label={<FL text="Reference No." />}
              rules={requireRefNo ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
            >
              <Input placeholder="e.g. VEN-QUOT-2026" maxLength={20} />
            </Form.Item>
          </Col>
        </Row>

        {/* Row 2: Requester | Required Date | Cost Centre */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={8} md={6}>
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
          <Col xs={24} sm={8} md={6}>
            <Form.Item
              name="poGroupCode"
              label={<FL text="Cost Centre" />}
              rules={purTypeFlgEnabled ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
            >
              <Input
                prefix={<BankOutlined style={{ color: '#9ca3af', fontSize: 12 }} />}
                placeholder="e.g. CC-2001"
                maxLength={5}
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
            <Form.Item name="saleOrderNo" label={<FL text="Sale Order No." />} style={ITEM}>
              <Input placeholder="Sale order number" maxLength={25} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
            <Form.Item name="saleOrderDate" label={<FL text="Sale Order Date" />} style={ITEM}>
              <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
            </Form.Item>
          </Col>
        </Row>

        {/* Row 3: Section/Team | Order Type | Scope Code */}
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={8} md={6}>
            <Form.Item name="section" label={<FL text="Section / Team" />} style={ITEM}>
              <Input placeholder="e.g. Infrastructure" maxLength={20} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
            <Form.Item
              name="iType"
              label={<FL text="Order Type" />}
              rules={pendingPoDetailsEnabled ? [{ required: true, message: 'Required' }] : []}
              style={ITEM}
            >
              <Select
                showSearch
                placeholder="Select order type…"
                options={typeOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8} md={6}>
            <Form.Item name="scopeCode" label={<FL text="Scope Code" />} style={ITEM}>
              <Input placeholder="e.g. SC-01" maxLength={10} />
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
