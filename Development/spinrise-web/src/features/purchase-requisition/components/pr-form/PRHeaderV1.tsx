/**
 * PRHeaderV1 — Compact 4-column power-user header
 * View Mode: clean text display (no disabled controls)
 * Edit Mode: form inputs (unchanged)
 */
import { Col, DatePicker, Form, Input, Row, Select, Tag, Tooltip } from 'antd'
import { CalendarOutlined } from '@ant-design/icons'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type {
  DepartmentLookup, EmployeeLookup, IndentTypeLookup, PRHeaderFormValues, PreCheckResult,
} from '../../types'

// ── Design tokens ─────────────────────────────────────────────────────────────
const ACCENT = '#185FA5'
const LABEL: React.CSSProperties = {
  fontSize: 11, fontWeight: 600, color: '#475569', letterSpacing: '0.01em',
}
const ITEM: React.CSSProperties = { marginBottom: 0 }

// ── View mode value display ───────────────────────────────────────────────────
const VIEW_VALUE: React.CSSProperties = {
  fontSize: 12, color: '#1e293b', fontWeight: 500, lineHeight: 1.4,
}

function Lbl({ text, required }: { text: string; required?: boolean }) {
  return (
    <span style={LABEL}>
      {text}
      {required && <span style={{ color: '#ef4444', marginLeft: 2 }}>*</span>}
    </span>
  )
}

// ── View-only field renderer ──────────────────────────────────────────────────
function ViewField({ label, value, required }: { label: string; value?: string | null; required?: boolean }) {
  return (
    <div style={{ marginBottom: 6 }}>
      <Lbl text={label} required={required} />
      <div style={VIEW_VALUE}>{value || '—'}</div>
    </div>
  )
}

// ── Props ─────────────────────────────────────────────────────────────────────
interface PRHeaderV1Props {
  form:               FormInstance<PRHeaderFormValues>
  departments:        DepartmentLookup[]
  employees:          EmployeeLookup[]
  indentTypes:        IndentTypeLookup[]
  savedPrNo?:         number | null
  disabled?:          boolean
  requireRequesterName?: boolean
  requireRefNo?:      boolean
  budgetValidationEnabled?: boolean
  budgetBalance?:     number | null
  preCheckResult?:    PreCheckResult | null
  createdBy?:         string | null
  onValuesChange?:    () => void
}

// ── Component ─────────────────────────────────────────────────────────────────
export function PRHeaderV1({
  form,
  departments,
  employees,
  indentTypes,
  savedPrNo          = null,
  disabled           = false,
  requireRequesterName = false,
  requireRefNo       = false,
  budgetValidationEnabled = false,
  budgetBalance      = null,
  createdBy          = null,
  onValuesChange,
}: PRHeaderV1Props) {
  const processingDate = useAuthStore((s) => s.processingDate)
  const procDay        = processingDate ? dayjs(processingDate) : dayjs()

  // Get current values from form
  const prDate = form.getFieldValue('prDate')
  const depCode = form.getFieldValue('depCode')
  const section = form.getFieldValue('section')
  const reqName = form.getFieldValue('reqName')
  const iType = form.getFieldValue('iType')
  const refNo = form.getFieldValue('refNo')

  // Lookup display mappings
  const deptName  = departments.find((d) => d.depCode === depCode)?.depName
  const empName   = employees.find((e) => e.empNo === reqName)?.eName
  const typeLabel = indentTypes.find((t) => t.iType === iType)?.iDesc ?? iType

  const deptOptions = departments.map((d) => ({
    value: d.depCode,
    label: `${d.depCode} – ${d.depName}`,
  }))
  const empOptions = employees.map((e) => ({
    value: e.empNo,
    label: `${e.empNo} – ${e.eName}`,
  }))
  const typeOptions = indentTypes.map((t) => ({
    value: t.iType,
    label: t.iDesc,
  }))

  return (
    <div style={{
      background: '#fff',
      borderBottom: '1px solid #e2e2e2',
      padding: '8px 18px 10px',
    }}>
      {/* ── Meta row ─────────────────────────────────────────────────────── */}
      <div style={{
        display: 'flex', alignItems: 'center', justifyContent: 'space-between',
        marginBottom: 8,
      }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{
            fontSize: 10, fontWeight: 700, color: ACCENT,
            letterSpacing: '0.06em',
          }}>
            Requisition Details
          </span>
          <div style={{
            display: 'inline-flex', alignItems: 'center', gap: 4,
            background: 'linear-gradient(135deg,#eff6ff,#dbeafe)',
            border: '1px solid #bfdbfe', borderRadius: 20, padding: '1px 8px',
          }}>
            <CalendarOutlined style={{ color: ACCENT, fontSize: 10 }} />
            <span style={{ fontSize: 10, fontWeight: 700, color: '#1e40af' }}>
              {procDay.format('DD MMM YYYY')}
            </span>
          </div>
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

      {/* ── Conditional render: View Mode vs Edit Mode ────────────────────── */}
      {disabled ? (
        // ── VIEW MODE: Clean text display ──────────────────────────────────
        <div style={{ paddingBottom: 6 }}>
          <Row gutter={[10, 6]}>
            <Col xs={24} sm={12} md={3}>
              <ViewField
                label="PR Date"
                value={prDate?.format('DD-MMM-YYYY')}
                required
              />
            </Col>
            <Col xs={24} sm={12} md={5}>
              <ViewField
                label="Department"
                value={depCode ? `${depCode} – ${deptName || ''}` : undefined}
                required
              />
            </Col>
            <Col xs={24} sm={12} md={4}>
              <ViewField label="Section (optional)" value={section} />
            </Col>
            <Col xs={24} sm={12} md={5}>
              <ViewField
                label="Requested By"
                value={reqName ? `${reqName} – ${empName || ''}` : undefined}
                required={requireRequesterName}
              />
            </Col>
            <Col xs={24} sm={12} md={4}>
              <div style={{ marginBottom: 6 }}>
                <Lbl text="Requisition Type" required />
                <div style={VIEW_VALUE}>
                  {iType === 'E' ? (
                    <Tag color="error" style={{ margin: 0, fontWeight: 700, fontSize: 11 }}>{typeLabel}</Tag>
                  ) : iType === 'U' ? (
                    <Tag color="warning" style={{ margin: 0, fontWeight: 700, fontSize: 11 }}>{typeLabel}</Tag>
                  ) : (
                    typeLabel || '—'
                  )}
                </div>
              </div>
            </Col>
            {requireRefNo && (
              <Col xs={24} sm={12} md={3}>
                <ViewField label="Reference No." value={refNo} required />
              </Col>
            )}
          </Row>
        </div>
      ) : (
        // ── EDIT MODE: Form with interactive controls (unchanged) ──────────
        <Form
          form={form}
          layout="vertical"
          initialValues={{ prDate: procDay }}
          disabled={disabled}
          size="small"
          onValuesChange={onValuesChange}
        >
          <Row gutter={[10, 4]}>
            <Col xs={24} sm={12} md={3}>
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

            <Col xs={24} sm={12} md={5}>
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

            <Col xs={24} sm={12} md={4}>
              <Form.Item name="section" label={<Lbl text="Section" />} style={ITEM}>
                <Input placeholder="e.g. Ring Frame" maxLength={100} />
              </Form.Item>
            </Col>

            <Col xs={24} sm={12} md={5}>
              <Tooltip title="Alt+Down opens lookup">
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
              </Tooltip>
            </Col>

            <Col xs={24} sm={12} md={4}>
              <Form.Item
                name="iType"
                label={<Lbl text="Requisition Type" required />}
                rules={[{ required: true, message: 'Required' }]}
                style={ITEM}
              >
                <Select placeholder="Select type…" options={typeOptions} allowClear />
              </Form.Item>
            </Col>

            {requireRefNo && (
              <Col xs={24} sm={12} md={3}>
                <Form.Item
                  name="refNo"
                  label={<Lbl text="Reference No." required />}
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
          </Row>
        </Form>
      )}

      {/* ── Keyboard shortcuts hint (Edit mode only) ──────────────────────── */}
      {!disabled && (
        <div style={{ marginTop: 5, display: 'flex', gap: 12 }}>
          {(['Tab — move between fields', 'Ctrl+S — save & submit', 'Ctrl+Space / Alt+↓ — item lookup'].map((hint) => (
            <span key={hint} style={{ fontSize: 10, color: '#94a3b8' }}>{hint}</span>
          )))}
        </div>
      )}
    </div>
  )
}
