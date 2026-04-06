import { Card, Col, DatePicker, Form, Input, Row, Select, Space, Tag, Typography } from 'antd'
import { FileAddOutlined, FormOutlined, InfoCircleOutlined } from '@ant-design/icons'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import {
  costCentres,
  departments,
  itemGroups,
  orderTypes,
  poGroups,
  requesters,
  scopes,
} from '../data/dummy'

const { Text } = Typography
const { Option } = Select

const labelCol = { span: 8 }
const wrapperCol = { span: 16 }

interface Props {
  form: FormInstance
}

export function PRHeaderForm({ form }: Props) {
  const handleDeptChange = (code: string) => {
    form.setFieldValue('departmentName', departments.find((d) => d.code === code)?.name ?? '')
  }

  const handleRequesterChange = (code: string) => {
    form.setFieldValue('requesterName', requesters.find((r) => r.code === code)?.name ?? '')
  }

  const handlePOGroupChange = (code: string) => {
    form.setFieldValue('poGroupName', poGroups.find((p) => p.code === code)?.name ?? '')
  }

  const handleScopeChange = (code: string) => {
    form.setFieldValue('scopeName', scopes.find((s) => s.code === code)?.name ?? '')
  }

  const handleItemGroupChange = (code: string) => {
    form.setFieldValue('itemGroupName', itemGroups.find((i) => i.code === code)?.name ?? '')
  }

  return (
    <Card
      className="pr-card"
      title={
        <Space>
          <FormOutlined className="pr-section-icon pr-section-icon--header" />
          <span>Header Information</span>
          <Tag color="blue">Section 1</Tag>
        </Space>
      }
      extra={
        <Text type="secondary" className="pr-required-note">
          <InfoCircleOutlined /> Fields marked <span className="pr-required-star">*</span> are required
        </Text>
      }
    >
      <Form
        form={form}
        layout="horizontal"
        labelCol={labelCol}
        wrapperCol={wrapperCol}
        labelAlign="right"
        className="pr-form"
      >
        <Row gutter={[32, 0]}>
          {/* Column 1 */}
          <Col xs={24} md={12} xl={8}>
            <Form.Item label="PR No." name="prNo">
              <Input disabled className="pr-input--readonly" prefix={<FileAddOutlined />} />
            </Form.Item>
            <Form.Item
              label="PR Date"
              name="prDate"
              rules={[{ required: true, message: 'PR Date is required' }]}
            >
              <DatePicker
                style={{ width: '100%' }}
                format="DD-MMM-YYYY"
                placeholder="Select date"
                disabledDate={(d) => d.isAfter(dayjs())}
              />
            </Form.Item>
            <Form.Item
              label="Department"
              name="departmentCode"
              rules={[{ required: true, message: 'Department is required' }]}
            >
              <Select
                showSearch
                placeholder="Search department..."
                optionFilterProp="children"
                onChange={handleDeptChange}
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {departments.map((d) => (
                  <Option key={d.code} value={d.code}>
                    {d.code} — {d.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Department Name" name="departmentName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="Section" name="section">
              <Input placeholder="Enter section" />
            </Form.Item>
          </Col>

          {/* Column 2 */}
          <Col xs={24} md={12} xl={8}>
            <Form.Item
              label="Requester Code"
              name="requesterCode"
              rules={[{ required: true, message: 'Requester is required' }]}
            >
              <Select
                showSearch
                placeholder="Search requester..."
                optionFilterProp="children"
                onChange={handleRequesterChange}
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {requesters.map((r) => (
                  <Option key={r.code} value={r.code}>
                    {r.code} — {r.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Requester Name" name="requesterName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="Sub Cost Centre" name="subCostCentre">
              <Select showSearch placeholder="Select cost centre..." allowClear>
                {costCentres.map((c) => (
                  <Option key={c} value={c}>
                    {c}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Ref. No." name="refNo">
              <Input placeholder="Reference number" />
            </Form.Item>
            <Form.Item
              label="Order Type"
              name="orderType"
              rules={[{ required: true, message: 'Order Type is required' }]}
            >
              <Select placeholder="Select order type">
                {orderTypes.map((t) => (
                  <Option key={t} value={t}>
                    {t}
                  </Option>
                ))}
              </Select>
            </Form.Item>
          </Col>

          {/* Column 3 */}
          <Col xs={24} md={12} xl={8}>
            <Form.Item
              label="PO Group"
              name="poGroupCode"
              rules={[{ required: true, message: 'PO Group is required' }]}
            >
              <Select
                showSearch
                placeholder="Search PO group..."
                optionFilterProp="children"
                onChange={handlePOGroupChange}
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {poGroups.map((p) => (
                  <Option key={p.code} value={p.code}>
                    {p.code} — {p.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="PO Group Name" name="poGroupName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="Scope Code" name="scopeCode">
              <Select
                showSearch
                placeholder="Select scope..."
                allowClear
                onChange={handleScopeChange}
                optionFilterProp="children"
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {scopes.map((s) => (
                  <Option key={s.code} value={s.code}>
                    {s.code} — {s.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Scope Name" name="scopeName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item
              label="Item Group"
              name="itemGroupCode"
              rules={[{ required: true, message: 'Item Group is required' }]}
            >
              <Select
                showSearch
                placeholder="Select item group..."
                onChange={handleItemGroupChange}
                optionFilterProp="children"
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {itemGroups.map((g) => (
                  <Option key={g.code} value={g.code}>
                    {g.code} — {g.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Item Group Name" name="itemGroupName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
          </Col>
        </Row>
      </Form>
    </Card>
  )
}
