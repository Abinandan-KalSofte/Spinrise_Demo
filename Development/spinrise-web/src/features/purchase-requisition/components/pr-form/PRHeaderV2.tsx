/**
 * PRHeaderV2 — Two-panel card layout
 * Left card: core purchase details. Right card: reference & scheduling fields.
 * Variant B: structured sections, clear visual hierarchy.
 */
import { Col, DatePicker, Form, Input, Row, Select, Tag } from 'antd'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type {
  DepartmentLookup, EmployeeLookup, PRHeaderFormValues, PreCheckResult,
} from '../../types'

// ── Design tokens ─────────────────────────────────────────────────────────────
const ACCENT  = '#185FA5'
const LABEL: React.CSSProperties = {
  fontSize: 11, fontWeight: 600, color: '#475569', letterSpacing: '0.01em',
}
const ITEM: React.CSSProperties = { marginBottom: 6 }

function Lbl({ text, required }: { text: string; required?: boolean }) {
  return (
    <span style={LABEL}>
      {text}
      {required && <span style={{ color: '#ef4444', marginLeft: 2 }}>*</span>}
    </span>
  )
}

function CardPanel({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div style={{
      background: '#fff',
      border: '1px solid #e2e8f0',
      borderRadius: 8,
      overflow: 'hidden',
      flex: 1,
    }}>
      <div style={{
        padding: '6px 14px',
        background: 'linear-gradient(135deg, #f8fafc, #eff6ff)',
        borderBottom: '1px solid #e2e8f0',
      }}>
        <span style={{
          fontSize: 10, fontWeight: 700, color: ACCENT,
          letterSpacing: '0.06em', textTransform: 'uppercase',
        }}>
          {title}
        </span>
      </div>
      <div style={{ padding: '10px 14px' }}>
        {children}
      </div>
    </div>
  )
}

// ── Props ─────────────────────────────────────────────────────────────────────
interface PRHeaderV2Props {
  form:                     FormInstance<PRHeaderFormValues>
  departments:              DepartmentLookup[]
  employees:                EmployeeLookup[]
  savedPrNo?:               number | null
  disabled?:                boolean
  requireRequesterName?:    boolean
  requireRefNo?:            boolean
  budgetValidationEnabled?: boolean
  budgetBalance?:           number | null
  preCheckResult?:          PreCheckResult | null
  createdBy?:               string | null
}

// ── Component ─────────────────────────────────────────────────────────────────
export function PRHeaderV2({
  form,
  departments,
  employees,
  savedPrNo          = null,
  disabled           = false,
  requireRequesterName = false,
  requireRefNo       = false,
  budgetValidationEnabled = false,
  budgetBalance      = null,
  createdBy          = null,
}: PRHeaderV2Props) {
  const processingDate = useAuthStore((s) => s.processingDate)
  const procDay        = processingDate ? dayjs(processingDate) : dayjs()

  const deptOptions = departments.map((d) => ({
    value: d.depCode,
    label: `${d.depCode} – ${d.depName}`,
  }))
  const empOptions = employees.map((e) => ({
    value: e.empNo,
    label: `${e.empNo} – ${e.eName}`,
  }))
  const typeOptions = [
    { value: 'E', label: 'Emergency' },
    { value: 'O', label: 'Ordinary'  },
    { value: 'U', label: 'Urgent'    },
  ]

  return (
    <div style={{
      background: '#f8fafc',
      borderBottom: '1px solid #e2e2e2',
      padding: '10px 18px',
    }}>
      {/* ── Meta row ─────────────────────────────────────────────────────── */}
      <div style={{
        display: 'flex', alignItems: 'center', justifyContent: 'space-between',
        marginBottom: 10,
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{
            fontSize: 10, fontWeight: 700, color: ACCENT,
            letterSpacing: '0.06em', textTransform: 'uppercase',
          }}>
            Requisition Details
          </span>
          <span style={{
            fontSize: 10, padding: '1px 8px', borderRadius: 20,
            background: '#eff6ff', border: '1px solid #bfdbfe', color: '#1e40af', fontWeight: 600,
          }}>
            {procDay.format('DD MMM YYYY')}
          </span>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          {createdBy && (
            <span style={{ fontSize: 11, color: '#94A3B8' }}>
              Created by <strong style={{ color: '#475569' }}>{createdBy}</strong>
            </span>
          )}
          {savedPrNo && (
            <Tag color="blue" style={{
              fontSize: 12, fontWeight: 700,
              fontFamily: 'monospace', marginRight: 0, padding: '1px 10px',
            }}>
              PR-{String(savedPrNo).padStart(5, '0')}
            </Tag>
          )}
          {budgetValidationEnabled && budgetBalance != null && (
            <Tag color={budgetBalance > 0 ? 'green' : 'red'} style={{ marginRight: 0 }}>
              Budget: ₹{budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
            </Tag>
          )}
        </div>
      </div>

      {/* ── Two-panel form ─────────────────────────────────────────────────── */}
      <Form
        form={form}
        layout="vertical"
        initialValues={{ prDate: procDay }}
        disabled={disabled}
        size="small"
      >
        <Row gutter={12}>
          {/* ── Left card — Purchase Details ─────────────────────────────── */}
          <Col xs={24} lg={14}>
            <CardPanel title="Purchase Details">
              <Row gutter={[10, 0]}>
                <Col xs={24} sm={8} md={6}>
                  <Form.Item
                    name="prDate"
                    label={<Lbl text="PR Date" required />}
                    rules={[{ required: true, message: 'Required' }]}
                    style={ITEM}
                  >
                    <DatePicker
                      format="DD-MMM-YYYY"
                      style={{ width: '100%' }}
                      allowClear={false}
                      disabledDate={(d) => d.isAfter(dayjs(), 'day')}
                    />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={16} md={10}>
                  <Form.Item
                    name="depCode"
                    label={<Lbl text="Department" required />}
                    rules={[{ required: true, message: 'Required' }]}
                    style={ITEM}
                  >
                    <Select
                      showSearch
                      placeholder="Select department…"
                      options={deptOptions}
                      filterOption={prefixFilterOption}
                      filterSort={priorityFilterSort}
                      allowClear
                    />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={12} md={8}>
                  <Form.Item name="section" label={<Lbl text="Section" />} style={ITEM}>
                    <Input placeholder="e.g. Ring Frame" maxLength={100} />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={12} md={10}>
                  <Form.Item
                    name="reqName"
                    label={<Lbl text="Requested By" required={requireRequesterName} />}
                    rules={requireRequesterName ? [{ required: true, message: 'Required' }] : []}
                    style={ITEM}
                  >
                    <Select
                      showSearch
                      placeholder="Select employee…"
                      options={empOptions}
                      filterOption={prefixFilterOption}
                      filterSort={priorityFilterSort}
                      allowClear
                    />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={12} md={6}>
                  <Form.Item
                    name="iType"
                    label={<Lbl text="Requisition Type" required />}
                    rules={[{ required: true, message: 'Required' }]}
                    style={ITEM}
                  >
                    <Select placeholder="Select type…" options={typeOptions} allowClear />
                  </Form.Item>
                </Col>
              </Row>
            </CardPanel>
          </Col>

          {/* ── Right card — Reference & Scheduling ──────────────────────── */}
          <Col xs={24} lg={10}>
            <CardPanel title="Reference & Scheduling">
              <Row gutter={[10, 0]}>
                {requireRefNo && (
                  <Col xs={24} sm={12}>
                    <Form.Item
                      name="refNo"
                      label={<Lbl text="Reference Number" required />}
                      rules={[{ required: true, message: 'Required' }]}
                      style={ITEM}
                    >
                      <Input
                        placeholder="REF-…"
                        maxLength={50}
                        onChange={(e) => form.setFieldValue('refNo', e.target.value.toUpperCase())}
                        style={{ textTransform: 'uppercase' }}
                      />
                    </Form.Item>
                  </Col>
                )}

                <Col xs={24} sm={requireRefNo ? 12 : 24}>
                  <Form.Item name="poGroupCode" label={<Lbl text="PO Group" />} style={ITEM}>
                    <Input placeholder="PO Group code…" maxLength={20} />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={12}>
                  <Form.Item name="scopeCode" label={<Lbl text="Scope" />} style={ITEM}>
                    <Input placeholder="Scope code…" maxLength={20} />
                  </Form.Item>
                </Col>

                <Col xs={24} sm={12}>
                  <Form.Item name="saleOrderNo" label={<Lbl text="Sale Order No." />} style={ITEM}>
                    <Input placeholder="SO number…" maxLength={30} />
                  </Form.Item>
                </Col>
              </Row>
            </CardPanel>
          </Col>
        </Row>
      </Form>
    </div>
  )
}
