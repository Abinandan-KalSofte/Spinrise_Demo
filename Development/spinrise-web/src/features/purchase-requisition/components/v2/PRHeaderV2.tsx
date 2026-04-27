import { useState } from 'react'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import {
  Alert,
  Button,
  Col,
  Collapse,
  DatePicker,
  Divider,
  Form,
  Input,
  Popover,
  Row,
  Select,
  Space,
  Steps,
  Tag,
  Typography,
} from 'antd'
import {
  CheckCircleOutlined,
  CheckOutlined,
  EditOutlined,
  LockOutlined,
} from '@ant-design/icons'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  PRHeaderFormValues,
  PRHeaderResponse,
} from '../../types'

// ── Props ─────────────────────────────────────────────────────────────────────

interface PRHeaderV2Props {
  form:                    FormInstance<PRHeaderFormValues>
  departments:             DepartmentLookup[]
  employees:               EmployeeLookup[]
  poTypes:                 POTypeLookup[]
  isHeaderSaved:           boolean
  onSaveHeader:            () => void
  onEditHeader:            () => void
  disabled?:               boolean
  pendingPoDetailsEnabled?: boolean
  purTypeFlgEnabled?:       boolean
  approvalStatusVisible?:   boolean
  budgetValidationEnabled?: boolean
  savedPr?:                 PRHeaderResponse | null
}

// ── PR Date quick-edit (inline Popover DatePicker in the collapsed summary) ───

function PRDateQuickEdit({ form, disabled }: { form: FormInstance<PRHeaderFormValues>; disabled: boolean }) {
  const [open, setOpen]    = useState(false)
  const processingDate     = useAuthStore((s) => s.processingDate)
  const procDay            = processingDate ? dayjs(processingDate) : dayjs()
  const prDate             = form.getFieldValue('prDate') as ReturnType<typeof dayjs> | null

  return (
    <Popover
      open={open && !disabled}
      onOpenChange={(v) => !disabled && setOpen(v)}
      trigger="click"
      content={
        <DatePicker
          value={prDate}
          format="DD-MM-YYYY"
          disabledDate={(d) => !d.isSame(procDay, 'day')}
          onChange={(date) => {
            form.setFieldValue('prDate', date)
            setOpen(false)
          }}
          open
          onBlur={() => setOpen(false)}
          style={{ width: 160 }}
        />
      }
    >
      <Space
        size={4}
        onClick={(e) => e.stopPropagation()}   // prevent accordion toggle
        style={{ cursor: disabled ? 'default' : 'pointer' }}
      >
        <Typography.Text>
          {prDate ? prDate.format('DD-MM-YYYY') : '—'}
        </Typography.Text>
        {!disabled && (
          <EditOutlined style={{ color: '#1677ff', fontSize: 12 }} />
        )}
      </Space>
    </Popover>
  )
}

// ── Component ─────────────────────────────────────────────────────────────────

export function PRHeaderV2({
  form,
  departments,
  employees,
  poTypes,
  isHeaderSaved,
  onSaveHeader,
  onEditHeader,
  disabled = false,
  purTypeFlgEnabled = false,
  approvalStatusVisible = false,
  budgetValidationEnabled = false,
  savedPr = null,
}: PRHeaderV2Props) {
  const processingDate = useAuthStore((s) => s.processingDate)
  const procDay        = processingDate ? dayjs(processingDate) : dayjs()

  const deptOptions   = departments.map((d) => ({ value: d.depCode, label: `${d.depCode} – ${d.depName}` }))
  const employeeOpts  = employees.map((e)   => ({ value: e.empNo,   label: `${e.empNo} – ${e.eName}` }))
  const poTypeOptions = poTypes.map((p)     => ({ value: p.typeCode, label: `${p.typeCode} – ${p.typName}` }))

  // ── Collapsed summary label ───────────────────────────────────────────────
  const collapsedLabel = isHeaderSaved ? (
    <Space size={[12, 4]} wrap onClick={(e) => e.stopPropagation()}>
      <Space size={6}>
        <CheckCircleOutlined style={{ color: '#52c41a' }} />
        <Typography.Text strong>Requisition Header</Typography.Text>
        <Tag color="success" icon={<LockOutlined />} style={{ fontSize: 11, marginInlineStart: 2 }}>
          Saved
        </Tag>
      </Space>

      <Typography.Text type="secondary">·</Typography.Text>

      <Space size={4}>
        <Typography.Text type="secondary" style={{ fontSize: 12 }}>Date:</Typography.Text>
        <PRDateQuickEdit form={form} disabled={disabled} />
      </Space>

      {form.getFieldValue('depCode') && (() => {
        const dept = departments.find((d) => d.depCode === form.getFieldValue('depCode') as string)
        return dept ? (
          <>
            <Typography.Text type="secondary">·</Typography.Text>
            <Typography.Text style={{ fontSize: 13 }}>
              <Typography.Text type="secondary" style={{ fontSize: 12 }}>Dept: </Typography.Text>
              {dept.depName}
            </Typography.Text>
          </>
        ) : null
      })()}

      {form.getFieldValue('reqName') && (() => {
        const emp = employees.find((e) => e.empNo === form.getFieldValue('reqName') as string)
        return emp ? (
          <>
            <Typography.Text type="secondary">·</Typography.Text>
            <Typography.Text style={{ fontSize: 13 }}>
              <Typography.Text type="secondary" style={{ fontSize: 12 }}>By: </Typography.Text>
              {emp.eName}
            </Typography.Text>
          </>
        ) : null
      })()}

    </Space>
  ) : (
    <Typography.Text strong>Requisition Header</Typography.Text>
  )

  // ── Save / Edit header button (shown in panel `extra`) ────────────────────
  const panelExtra = isHeaderSaved ? (
    <Button
      size="small"
      icon={<EditOutlined />}
      onClick={(e) => { e.stopPropagation(); onEditHeader() }}
      disabled={disabled}
    >
      Edit Header
    </Button>
  ) : (
    <Button
      type="primary"
      size="small"
      icon={<CheckOutlined />}
      onClick={(e) => { e.stopPropagation(); onSaveHeader() }}
      disabled={disabled}
    >
      Save Header
    </Button>
  )

  // ── Form body ─────────────────────────────────────────────────────────────
  const formBody = (
    <Form
      form={form}
      layout="vertical"
      initialValues={{ prDate: procDay }}
      disabled={disabled}
      size="middle"
    >
      {/* ── Row 1: Date · Department · Section · Ref No · Requester · Indent Type ── */}
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={12} md={4}>
          <Form.Item
            name="prDate"
            label="PR Date"
            rules={[
              { required: true, message: 'Required' },
              {
                validator: (_, value) => {
                  if (!value) return Promise.resolve()
                  if (!value.isSame(procDay, 'day'))
                    return Promise.reject(new Error(`Must be ${procDay.format('DD-MM-YYYY')} (processing date)`))
                  return Promise.resolve()
                },
              },
            ]}
            extra={
              <Typography.Text type="secondary" style={{ fontSize: 11 }}>
                Processing date: {procDay.format('DD-MM-YYYY')}
              </Typography.Text>
            }
          >
            <DatePicker
              style={{ width: '100%' }}
              format="DD-MM-YYYY"
              disabledDate={(d) => !d.isSame(procDay, 'day')}
              allowClear={false}
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={4}>
          <Form.Item
            name="depCode"
            label="Department"
            rules={[{ required: true, message: 'Required' }]}
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

        <Col xs={24} sm={12} md={4}>
          <Form.Item name="section" label="Section">
            <Input placeholder="Section / unit" maxLength={20} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={4}>
          <Form.Item name="refNo" label="Reference No">
            <Input placeholder="Reference number" maxLength={20} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={4}>
          <Form.Item name="reqName" label="Requested By">
            <Select
              showSearch
              placeholder="Search employee…"
              options={employeeOpts}
              filterOption={prefixFilterOption}
              filterSort={priorityFilterSort}
              allowClear
              onChange={(val: string) => form.setFieldValue('reqName', val)}
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={4}>
          <Form.Item name="iType" label="Indent Type">
            <Select
              showSearch
              placeholder="Select indent…"
              options={poTypeOptions}
              filterOption={prefixFilterOption}
              filterSort={priorityFilterSort}
              allowClear
            />
          </Form.Item>
        </Col>
      </Row>

      {/* ── Row 2: PO Group · Scope Code · Sale Order No · Sale Order Date ── */}
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={12} md={6} lg={6}>
          <Form.Item
            name="poGroupCode"
            label="PO Group"
            rules={purTypeFlgEnabled ? [{ required: true, message: 'Required' }] : []}
          >
            <Input placeholder="PO group code" maxLength={5} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={6} lg={6}>
          <Form.Item name="scopeCode" label="Scope Code">
            <Input placeholder="Scope code" maxLength={2} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={6} lg={6}>
          <Form.Item name="saleOrderNo" label="Sale Order No.">
            <Input placeholder="Sale order number" maxLength={25} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={6} lg={6}>
          <Form.Item name="saleOrderDate" label="Sale Order Date">
            <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
          </Form.Item>
        </Col>
      </Row>

      {/* Budget balance indicator — shown in edit/view mode only when feature is enabled */}
      {budgetValidationEnabled && savedPr?.budgetBalance != null && (
        <Alert
          type="warning"
          showIcon
          message={`Budget Balance: ₹${savedPr.budgetBalance.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`}
          style={{ marginTop: 4, marginBottom: 0 }}
        />
      )}
    </Form>
  )

  // ── Approval pipeline panel ───────────────────────────────────────────────
  const approvalPanel = isHeaderSaved && approvalStatusVisible && savedPr ? (
    <>
      <Divider orientation="left" orientationMargin={0} style={{ fontSize: 12, marginTop: 8 }}>
        Approval Status
      </Divider>
      <Steps
        size="small"
        style={{ marginBottom: 8 }}
        items={[
          {
            title: 'Level 1',
            status: savedPr.level1ApproverName ? 'finish' : 'wait',
            description: savedPr.level1ApproverName ? (
              <Space direction="vertical" size={0}>
                <Typography.Text style={{ fontSize: 11 }}>{savedPr.level1ApproverName}</Typography.Text>
                {savedPr.level1ApprovedAt && (
                  <Typography.Text type="secondary" style={{ fontSize: 11 }}>
                    {dayjs(savedPr.level1ApprovedAt).format('DD-MM-YYYY')}
                  </Typography.Text>
                )}
              </Space>
            ) : <Typography.Text type="secondary" style={{ fontSize: 11 }}>Pending</Typography.Text>,
          },
          {
            title: 'Level 2',
            status: savedPr.level2ApproverName ? 'finish' : 'wait',
            description: savedPr.level2ApproverName ? (
              <Space direction="vertical" size={0}>
                <Typography.Text style={{ fontSize: 11 }}>{savedPr.level2ApproverName}</Typography.Text>
                {savedPr.level2ApprovedAt && (
                  <Typography.Text type="secondary" style={{ fontSize: 11 }}>
                    {dayjs(savedPr.level2ApprovedAt).format('DD-MM-YYYY')}
                  </Typography.Text>
                )}
              </Space>
            ) : <Typography.Text type="secondary" style={{ fontSize: 11 }}>Pending</Typography.Text>,
          },
          {
            title: 'Final',
            status: savedPr.finalApproverName ? 'finish' : 'wait',
            description: savedPr.finalApproverName ? (
              <Space direction="vertical" size={0}>
                <Typography.Text style={{ fontSize: 11 }}>{savedPr.finalApproverName}</Typography.Text>
                {savedPr.finalApprovedAt && (
                  <Typography.Text type="secondary" style={{ fontSize: 11 }}>
                    {dayjs(savedPr.finalApprovedAt).format('DD-MM-YYYY')}
                  </Typography.Text>
                )}
              </Space>
            ) : <Typography.Text type="secondary" style={{ fontSize: 11 }}>Pending</Typography.Text>,
          },
        ]}
      />
    </>
  ) : null

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <>
      <style>{`
        /* ── Requisition Header Card ─────────────────────────────────────────── */
        .pr-header-panel {
          border-radius: 8px !important;
          overflow: hidden;
        }
        .pr-header-panel > .ant-collapse-item > .ant-collapse-header {
          background: #ffffff !important;
          border-bottom: 1px solid #CBD5E1 !important;
          padding: 10px 16px !important;
          border-radius: 0 !important;
          min-height: 46px;
          align-items: center;
        }
        .pr-header-panel > .ant-collapse-item > .ant-collapse-content {
          background: #ffffff !important;
          border-top: none !important;
        }
        .pr-header-panel > .ant-collapse-item > .ant-collapse-content > .ant-collapse-content-box {
          padding: 16px 20px 8px !important;
        }
        .pr-header-panel .ant-form-item-label > label {
          font-size: 11px !important;
          font-weight: 700 !important;
          color: #0F172A !important;
          text-transform: uppercase;
          letter-spacing: 0.05em;
        }
        .pr-header-panel .ant-input,
        .pr-header-panel .ant-input-number-input,
        .pr-header-panel .ant-picker,
        .pr-header-panel .ant-select:not(.ant-select-disabled) .ant-select-selector {
          background: #ffffff !important;
          border-color: #94A3B8 !important;
          border-radius: 6px !important;
        }
        .pr-header-panel .ant-input:hover,
        .pr-header-panel .ant-select:not(.ant-select-disabled):hover .ant-select-selector,
        .pr-header-panel .ant-picker:hover {
          border-color: #4f46e5 !important;
        }
        .pr-header-panel .ant-input:focus,
        .pr-header-panel .ant-picker-focused,
        .pr-header-panel .ant-select-focused .ant-select-selector {
          border-color: #4f46e5 !important;
          box-shadow: 0 0 0 2px rgba(79,70,229,0.12) !important;
        }
        .pr-header-panel .ant-form-item {
          margin-bottom: 12px !important;
        }
      `}</style>

      <Collapse
        className="pr-header-panel"
        activeKey={isHeaderSaved ? [] : ['form']}
        collapsible="disabled"
        style={{
          marginBottom: 16,
          background:   '#ffffff',
          border:       '1px solid #CBD5E1',
          borderTop:    '3px solid #4f46e5',
          borderRadius: 8,
          boxShadow:    '0 8px 24px rgba(0,0,0,0.22), 0 2px 6px rgba(0,0,0,0.14)',
        }}
        items={[{
          key:      'form',
          label:    collapsedLabel,
          extra:    panelExtra,
          children: <>{formBody}{approvalPanel}</>,
        }]}
      />
    </>
  )
}
