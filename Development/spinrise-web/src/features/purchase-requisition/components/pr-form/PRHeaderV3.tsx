/**
 * PRHeaderV3 — Vertical sidebar panel
 * All header fields stacked in a narrow fixed-width sidebar.
 * Variant C: wide-screen optimized — maximum horizontal space for the item grid.
 */
import { DatePicker, Form, Input, Select, Tag } from 'antd'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import type {
  DepartmentLookup, EmployeeLookup, PRHeaderFormValues, PreCheckResult,
} from '../../types'

// ── Design tokens ─────────────────────────────────────────────────────────────
const ACCENT = '#185FA5'
const LABEL: React.CSSProperties = {
  fontSize: 10, fontWeight: 600, color: '#475569', letterSpacing: '0.01em',
}
const ITEM: React.CSSProperties = { marginBottom: 8 }

function Lbl({ text, required }: { text: string; required?: boolean }) {
  return (
    <span style={LABEL}>
      {text}
      {required && <span style={{ color: '#ef4444', marginLeft: 2 }}>*</span>}
    </span>
  )
}

function FieldDivider({ label }: { label: string }) {
  return (
    <div style={{
      display: 'flex', alignItems: 'center', gap: 6, marginBottom: 6, marginTop: 4,
    }}>
      <span style={{
        fontSize: 9, fontWeight: 700, color: ACCENT,
        textTransform: 'uppercase', letterSpacing: '0.08em', whiteSpace: 'nowrap',
      }}>
        {label}
      </span>
      <div style={{ flex: 1, height: 1, background: '#e2e8f0' }} />
    </div>
  )
}

// ── Props ─────────────────────────────────────────────────────────────────────
interface PRHeaderV3Props {
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
export function PRHeaderV3({
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
}: PRHeaderV3Props) {
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
      width: 264,
      flexShrink: 0,
      background: '#fff',
      borderRight: '1px solid #e2e2e2',
      display: 'flex',
      flexDirection: 'column',
      overflow: 'hidden',
    }}>
      {/* ── Sidebar header ────────────────────────────────────────────────── */}
      <div style={{
        padding: '10px 12px 8px',
        background: 'linear-gradient(135deg, #0C447C 0%, #185FA5 100%)',
        flexShrink: 0,
      }}>
        <div style={{ fontSize: 9, color: 'rgba(255,255,255,.65)', marginBottom: 2 }}>
          {procDay.format('DD MMM YYYY')}
        </div>
        <div style={{ fontSize: 11, fontWeight: 700, color: '#fff', letterSpacing: '.3px' }}>
          Requisition Details
        </div>
        <div style={{ marginTop: 6, display: 'flex', flexWrap: 'wrap', gap: 4 }}>
          {savedPrNo && (
            <Tag color="blue" style={{
              fontSize: 10, fontWeight: 700,
              fontFamily: 'monospace', marginRight: 0, padding: '0 6px',
            }}>
              PR-{String(savedPrNo).padStart(5, '0')}
            </Tag>
          )}
          {budgetValidationEnabled && budgetBalance != null && (
            <Tag color={budgetBalance > 0 ? 'green' : 'red'} style={{ marginRight: 0, fontSize: 10 }}>
              ₹{budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 0 })}
            </Tag>
          )}
          {createdBy && (
            <span style={{ fontSize: 9, color: 'rgba(255,255,255,.7)', alignSelf: 'center' }}>
              by <strong style={{ color: '#fff' }}>{createdBy}</strong>
            </span>
          )}
        </div>
      </div>

      {/* ── Scrollable form fields ─────────────────────────────────────────── */}
      <div style={{ overflowY: 'auto', flex: 1, padding: '10px 12px' }}>
        <Form
          form={form}
          layout="vertical"
          initialValues={{ prDate: procDay }}
          disabled={disabled}
          size="small"
        >
          <FieldDivider label="Core Fields" />

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
              popupMatchSelectWidth={false}
            />
          </Form.Item>

          <Form.Item name="section" label={<Lbl text="Section" />} style={ITEM}>
            <Input placeholder="e.g. Ring Frame" maxLength={100} />
          </Form.Item>

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
              popupMatchSelectWidth={false}
            />
          </Form.Item>

          <Form.Item
            name="iType"
            label={<Lbl text="Requisition Type" required />}
            rules={[{ required: true, message: 'Required' }]}
            style={ITEM}
          >
            <Select placeholder="Select type…" options={typeOptions} allowClear />
          </Form.Item>

          <FieldDivider label="Reference" />

          {requireRefNo && (
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
          )}

          <Form.Item name="poGroupCode" label={<Lbl text="PO Group" />} style={ITEM}>
            <Input placeholder="PO Group code…" maxLength={20} />
          </Form.Item>

          <Form.Item name="scopeCode" label={<Lbl text="Scope" />} style={ITEM}>
            <Input placeholder="Scope code…" maxLength={20} />
          </Form.Item>

          <Form.Item name="saleOrderNo" label={<Lbl text="Sale Order No." />} style={ITEM}>
            <Input placeholder="SO number…" maxLength={30} />
          </Form.Item>
        </Form>

        {/* ── Keyboard shortcuts hint ────────────────────────────────────── */}
        <div style={{ marginTop: 8, paddingTop: 8, borderTop: '1px solid #f0f0f0' }}>
          {(['Tab — next field', 'Ctrl+S — save', 'Alt+↓ — item lookup'].map((hint) => (
            <div key={hint} style={{ fontSize: 9, color: '#94a3b8', marginBottom: 3 }}>{hint}</div>
          )))}
        </div>
      </div>
    </div>
  )
}
