import { App, Col, DatePicker, Form, Input, Row, Select, Tooltip, Typography } from 'antd'
import { CopyOutlined } from '@ant-design/icons'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type { DepartmentLookup, EmployeeLookup, POTypeLookup, PRHeaderFormValues } from '../../types'

interface PRHeaderCompactProps {
  form:                  FormInstance<PRHeaderFormValues>
  departments:           DepartmentLookup[]
  employees:             EmployeeLookup[]
  poTypes:               POTypeLookup[]
  savedPrNo?:            number | null
  disabled?:             boolean
  purTypeFlgEnabled?:    boolean
}

const SCOPE_OPTIONS = [
  { value: 'L', label: 'Local'   },
  { value: 'F', label: 'Foreign' },
  { value: 'I', label: 'Import'  },
]

function FieldLabel({ children }: { children: React.ReactNode }) {
  return (
    <span className="erp-field-label">{children}</span>
  )
}

export function PRHeaderCompact({
  form,
  departments,
  employees,
  poTypes,
  savedPrNo   = null,
  disabled    = false,
  purTypeFlgEnabled = false,
}: PRHeaderCompactProps) {
  const { message } = App.useApp()

  const deptOptions = departments.map(d => ({ value: d.depCode, label: `${d.depCode} – ${d.depName}` }))
  const empOptions  = employees.map(e   => ({ value: e.empNo,   label: `${e.empNo} – ${e.eName}` }))
  const typeOptions = poTypes.map(p     => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))

  const prNoDisplay = savedPrNo ? `PR-${String(savedPrNo).padStart(4, '0')}-${dayjs().year()}` : ''

  const handleCopy = () => {
    if (!savedPrNo) return
    void navigator.clipboard.writeText(prNoDisplay).then(() => void message.success('Copied!'))
  }

  return (
    <div className="erp-header">
      <Form
        form={form}
        layout="vertical"
        initialValues={{ prDate: dayjs() }}
        disabled={disabled}
        size="small"
      >
        <Row gutter={[12, 0]}>
          {/* ── Left column ─────────────────────────────────────────────── */}
          <Col span={12}>
            <Row gutter={[12, 0]}>
              <Col span={10}>
                <Form.Item
                  name="prDate"
                  label={<FieldLabel>PR Date *</FieldLabel>}
                  rules={[{ required: true, message: 'Required' }]}
                >
                  <DatePicker
                    style={{ width: '100%' }}
                    format="DD-MM-YYYY"
                    disabledDate={(d) => d.isAfter(dayjs(), 'day')}
                  />
                </Form.Item>
              </Col>

              <Col span={14}>
                <Form.Item
                  name="depCode"
                  label={<FieldLabel>Department *</FieldLabel>}
                  rules={[{ required: true, message: 'Required' }]}
                >
                  <Select
                    showSearch
                    placeholder="Code – search…"
                    options={deptOptions}
                    filterOption={prefixFilterOption}
                    filterSort={priorityFilterSort}
                    allowClear
                  />
                </Form.Item>
              </Col>

              <Col span={14}>
                <Form.Item name="section" label={<FieldLabel>Section</FieldLabel>}>
                  <Input placeholder="Section / unit" maxLength={20} />
                </Form.Item>
              </Col>

              <Col span={10}>
                <Form.Item name="scopeCode" label={<FieldLabel>Scope</FieldLabel>}>
                  <Select placeholder="Local…" options={SCOPE_OPTIONS} allowClear />
                </Form.Item>
              </Col>

              <Col span={14}>
                <Form.Item name="refNo" label={<FieldLabel>Reference No.</FieldLabel>}>
                  <Input placeholder="e.g. VEN-QUOT-2026-0048" maxLength={20} />
                </Form.Item>
              </Col>

              <Col span={10}>
                <Form.Item name="saleOrderNo" label={<FieldLabel>Sale Order No.</FieldLabel>}>
                  <Input placeholder="SO number" maxLength={25} />
                </Form.Item>
              </Col>
            </Row>
          </Col>

          {/* ── Right column ────────────────────────────────────────────── */}
          <Col span={12}>
            <Row gutter={[12, 0]}>
              <Col span={10}>
                <Form.Item label={<FieldLabel>PR Number</FieldLabel>}>
                  <Input
                    value={prNoDisplay}
                    placeholder="Auto on save"
                    disabled
                    suffix={
                      savedPrNo ? (
                        <Tooltip title="Copy">
                          <CopyOutlined
                            onClick={handleCopy}
                            style={{ cursor: 'pointer', color: '#94a3b8', fontSize: 11 }}
                          />
                        </Tooltip>
                      ) : null
                    }
                  />
                </Form.Item>
              </Col>

              <Col span={14}>
                <Form.Item name="reqName" label={<FieldLabel>Requester</FieldLabel>}>
                  <Select
                    showSearch
                    placeholder="Emp. code – search…"
                    options={empOptions}
                    filterOption={prefixFilterOption}
                    filterSort={priorityFilterSort}
                    allowClear
                  />
                </Form.Item>
              </Col>

              <Col span={14}>
                <Form.Item name="iType" label={<FieldLabel>Order Type</FieldLabel>}>
                  <Select
                    showSearch
                    placeholder="Select type…"
                    options={typeOptions}
                    filterOption={prefixFilterOption}
                    filterSort={priorityFilterSort}
                    allowClear
                  />
                </Form.Item>
              </Col>

              <Col span={10}>
                <Form.Item
                  name="poGroupCode"
                  label={<FieldLabel>PO Group</FieldLabel>}
                  rules={purTypeFlgEnabled ? [{ required: true, message: 'Required' }] : []}
                >
                  <Input placeholder="PO group" maxLength={5} />
                </Form.Item>
              </Col>

              <Col span={24}>
                <Form.Item name="saleOrderDate" label={<FieldLabel>Sale Order Date</FieldLabel>}>
                  <DatePicker style={{ width: 160 }} format="DD-MM-YYYY" />
                </Form.Item>
              </Col>
            </Row>
          </Col>
        </Row>

        {/* PR-number guidance when not yet saved */}
        {!savedPrNo && (
          <Typography.Text
            type="secondary"
            style={{ fontSize: 11, display: 'block', marginTop: -4 }}
          >
            PR number is assigned on first save.
          </Typography.Text>
        )}
      </Form>
    </div>
  )
}
