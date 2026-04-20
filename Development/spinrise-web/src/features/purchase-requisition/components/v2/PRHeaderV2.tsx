import { useState } from 'react'
import {
  Button,
  Col,
  Collapse,
  DatePicker,
  Divider,
  Form,
  Input,
  InputNumber,
  Popover,
  Row,
  Select,
  Space,
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
}

// ── PR Date quick-edit (inline Popover DatePicker in the collapsed summary) ───

function PRDateQuickEdit({ form, disabled }: { form: FormInstance<PRHeaderFormValues>; disabled: boolean }) {
  const [open, setOpen] = useState(false)
  const prDate = form.getFieldValue('prDate') as ReturnType<typeof dayjs> | null

  return (
    <Popover
      open={open && !disabled}
      onOpenChange={(v) => !disabled && setOpen(v)}
      trigger="click"
      content={
        <DatePicker
          value={prDate}
          format="DD-MM-YYYY"
          disabledDate={(d) => d.isAfter(dayjs(), 'day')}
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
  pendingPoDetailsEnabled = false,
}: PRHeaderV2Props) {
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
      initialValues={{ prDate: dayjs() }}
      disabled={disabled}
      size="middle"
    >
      {/* ── Group 1: Request Details ──────────────────────────────────── */}
      <Divider orientation="left" orientationMargin={0} style={{ marginTop: 0, fontSize: 12 }}>
        Request Details
      </Divider>

      <Row gutter={[16, 0]}>
        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item
            name="prDate"
            label="PR Date"
            rules={[{ required: true, message: 'Required' }]}
          >
            <DatePicker
              style={{ width: '100%' }}
              format="DD-MM-YYYY"
              disabledDate={(d) => d.isAfter(dayjs(), 'day')}
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
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

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="section" label="Section">
            <Input placeholder="Section / unit" maxLength={20} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="refNo" label="Reference No">
            <Input placeholder="Reference number" maxLength={20} />
          </Form.Item>
        </Col>
      </Row>

      {/* ── Group 2: Requester & Type ─────────────────────────────────── */}
      <Divider orientation="left" orientationMargin={0} style={{ fontSize: 12 }}>
        Requester & Classification
      </Divider>

      <Row gutter={[16, 0]}>
        <Col xs={24} sm={12} md={8} lg={6}>
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

        <Col xs={24} sm={12} md={8} lg={6}>
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

      {/* ── Group 3: Additional Details ───────────────────────────────── */}
      <Divider orientation="left" orientationMargin={0} style={{ fontSize: 12 }}>
        Additional Details
      </Divider>

      <Row gutter={[16, 0]}>
        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item
            name="poGroupCode"
            label="PO Group"
            rules={pendingPoDetailsEnabled ? [{ required: true, message: 'Required' }] : []}
          >
            <Input placeholder="PO group code" maxLength={5} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="scopeCode" label="Scope Code">
            <Input placeholder="Scope code" maxLength={2} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="subCost" label="Sub-Cost Centre">
            <InputNumber
              style={{ width: '100%' }}
              min={1}
              max={99999}
              placeholder="Sub-cost centre"
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="saleOrderNo" label="Sale Order No.">
            <Input placeholder="Sale order number" maxLength={25} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={8} lg={6}>
          <Form.Item name="saleOrderDate" label="Sale Order Date">
            <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
          </Form.Item>
        </Col>
      </Row>
    </Form>
  )

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <Collapse
      activeKey={isHeaderSaved ? [] : ['form']}
      collapsible="disabled"   // programmatic control only; buttons drive state
      style={{
        marginBottom: 16,
        background: '#fff',
        border: '1px solid #f0f0f0',
        borderRadius: 8,
        boxShadow: '0 1px 4px rgba(0,0,0,0.04)',
      }}
      items={[{
        key:      'form',
        label:    collapsedLabel,
        extra:    panelExtra,
        children: formBody,
        style:    { borderRadius: 8 },
      }]}
    />
  )
}
