import { Card, Col, DatePicker, Form, Input, Row, Select, Tag } from 'antd'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  SubCostLookup,
  PRHeaderFormValues,
} from '../types'

interface PRHeaderProps {
  form: FormInstance<PRHeaderFormValues>
  divCode: string                // read-only, from JWT — displayed but not editable
  departments: DepartmentLookup[]
  employees:   EmployeeLookup[]
  poTypes:     POTypeLookup[]
  subCosts:    SubCostLookup[]
  disabled?: boolean
}

export function PRHeader({
  form,
  divCode,
  departments,
  employees,
  poTypes,
  subCosts,
  disabled = false,
}: PRHeaderProps) {
  const deptOptions = departments.map((d) => ({
    value: d.depCode,
    label: `${d.depCode} – ${d.depName}`,
  }))

  const employeeOptions = employees.map((e) => ({
    value: e.eName,
    label: `${e.empNo} – ${e.eName}`,
  }))

  const poTypeOptions = poTypes.map((p) => ({
    value: p.typeCode,
    label: `${p.typeCode} – ${p.typName}`,
  }))

  const subCostOptions = subCosts.map((s) => ({
    value: s.sccCode,
    label: `${s.sccCode} – ${s.sccName}`,
  }))

  return (
    <Card
      title="Requisition Header"
      size="small"
      style={{ marginBottom: 16 }}
      styles={{ body: { paddingTop: 16 } }}
    >
      <Form
        form={form}
        layout="vertical"
        initialValues={{ prDate: dayjs() }}
        disabled={disabled}
        size="middle"
      >
        <Row gutter={16}>
          {/* Row 1 */}
          <Col xs={24} sm={12} md={6}>
            {/* Division is read-only — sourced from the authenticated user's JWT */}
            <Form.Item label="Division">
              <Tag color="blue" style={{ fontSize: 13, padding: '4px 10px' }}>
                {divCode}
              </Tag>
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item
              name="prDate"
              label="PR Date"
              rules={[{ required: true, message: 'PR Date is required' }]}
            >
              <DatePicker
                style={{ width: '100%' }}
                format="DD-MM-YYYY"
                disabledDate={(d) => d.isAfter(dayjs(), 'day')}
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item
              name="depCode"
              label="Department"
              rules={[{ required: true, message: 'Department is required' }]}
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

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="section" label="Section">
              <Input placeholder="Section" maxLength={100} />
            </Form.Item>
          </Col>

          {/* Row 2 */}
          <Col xs={24} sm={12} md={6}>
            <Form.Item name="reqName" label="Requested By">
              <Select
                showSearch
                placeholder="Search employee…"
                options={employeeOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
                // Value is the employee name (string), not code
                onChange={(val: string) => form.setFieldValue('reqName', val)}
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="iType" label="Indent Type">
              <Select
                showSearch
                placeholder="Select type…"
                options={poTypeOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="subCostCode" label="Sub Cost Centre">
              <Select
                showSearch
                placeholder="Search sub-cost…"
                options={subCostOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="refNo" label="Reference No">
              <Input placeholder="Reference number" maxLength={50} />
            </Form.Item>
          </Col>

          {/* Row 3 */}
          <Col xs={24} sm={12} md={6}>
            <Form.Item name="poGroupCode" label="PO Group">
              <Input placeholder="PO Group Code" maxLength={20} />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="scopeCode" label="Scope">
              <Input placeholder="Scope Code" maxLength={10} />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="saleOrderNo" label="Sale Order No">
              <Input placeholder="Sale Order No" maxLength={50} />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12} md={6}>
            <Form.Item name="saleOrderDate" label="Sale Order Date">
              <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
            </Form.Item>
          </Col>
        </Row>
      </Form>
    </Card>
  )
}
