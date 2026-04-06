import {
  Button,
  Card,
  Checkbox,
  Col,
  DatePicker,
  Divider,
  Form,
  Input,
  InputNumber,
  Row,
  Select,
  Space,
  Tag,
} from 'antd'
import { AppstoreOutlined, PlusOutlined } from '@ant-design/icons'
import type { FormInstance } from 'antd'
import dayjs from 'dayjs'
import { budgetGroups, costCentres, items, machines } from '../data/dummy'

const { Option } = Select

const labelCol = { span: 8 }
const wrapperCol = { span: 16 }

interface Props {
  form: FormInstance
  onAddItem: () => void
}

export function PRItemEntryForm({ form, onAddItem }: Props) {
  const handleItemChange = (code: string) => {
    const item = items.find((i) => i.code === code)
    if (item) {
      form.setFieldsValue({
        itemName: item.name,
        uom: item.uom,
        rate: item.rate,
        currentStock: item.currentStock,
      })
    }
  }

  const handleMachineChange = (code: string) => {
    const machine = machines.find((m) => m.code === code)
    if (machine) {
      form.setFieldsValue({
        machineModel: machine.model,
        machineDescription: machine.description,
      })
    }
  }

  return (
    <Card
      className="pr-card"
      title={
        <Space>
          <AppstoreOutlined className="pr-section-icon pr-section-icon--item" />
          <span>Item Entry</span>
          <Tag color="orange">Section 2</Tag>
        </Space>
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
            <Form.Item
              label="Item Code"
              name="itemCode"
              rules={[{ required: true, message: 'Item Code is required' }]}
            >
              <Select
                showSearch
                placeholder="Search item..."
                optionFilterProp="children"
                onChange={handleItemChange}
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {items.map((i) => (
                  <Option key={i.code} value={i.code}>
                    {i.code} — {i.name}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Item Name" name="itemName">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="UOM" name="uom">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="Rate (₹)" name="rate">
              <InputNumber
                disabled
                className="pr-input--readonly"
                style={{ width: '100%' }}
                formatter={(v) => `₹ ${v}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}
              />
            </Form.Item>
            <Form.Item label="Current Stock" name="currentStock">
              <InputNumber disabled className="pr-input--readonly" style={{ width: '100%' }} />
            </Form.Item>
          </Col>

          {/* Column 2 */}
          <Col xs={24} md={12} xl={8}>
            <Form.Item
              label="Qty Required"
              name="quantityRequired"
              rules={[
                { required: true, message: 'Quantity is required' },
                { type: 'number', min: 1, message: 'Must be at least 1' },
              ]}
            >
              <InputNumber style={{ width: '100%' }} min={1} placeholder="Enter quantity" />
            </Form.Item>
            <Form.Item label="Cost Centre" name="costCentre">
              <Select showSearch placeholder="Select cost centre..." allowClear>
                {costCentres.map((c) => (
                  <Option key={c} value={c}>
                    {c}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Budget Group" name="budgetGroup">
              <Select placeholder="Select budget group..." allowClear>
                {budgetGroups.map((b) => (
                  <Option key={b} value={b}>
                    {b}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Machine No." name="machineNo">
              <Select
                showSearch
                placeholder="Search machine..."
                allowClear
                optionFilterProp="children"
                onChange={handleMachineChange}
                filterOption={(input, option) =>
                  String(option?.children ?? '').toLowerCase().includes(input.toLowerCase())
                }
              >
                {machines.map((m) => (
                  <Option key={m.code} value={m.code}>
                    {m.code} — {m.model}
                  </Option>
                ))}
              </Select>
            </Form.Item>
            <Form.Item label="Machine Model" name="machineModel">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
          </Col>

          {/* Column 3 */}
          <Col xs={24} md={12} xl={8}>
            <Form.Item label="Machine Description" name="machineDescription">
              <Input disabled className="pr-input--readonly" placeholder="Auto-filled" />
            </Form.Item>
            <Form.Item label="Required Date" name="requiredDate">
              <DatePicker
                style={{ width: '100%' }}
                format="DD-MMM-YYYY"
                placeholder="Select date"
                disabledDate={(d) => d.isBefore(dayjs(), 'day')}
              />
            </Form.Item>
            <Form.Item label="Place" name="place">
              <Input placeholder="Location / work area" />
            </Form.Item>
            <Form.Item label="Approx Cost (₹)" name="approxCost">
              <InputNumber
                style={{ width: '100%' }}
                min={0}
                placeholder="0.00"
                formatter={(v) => `₹ ${v}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}
                parser={(v) => Number(v?.replace(/₹\s?|(,*)/g, '') ?? 0) as unknown as never}
              />
            </Form.Item>
            <Form.Item label="Remarks" name="remarks">
              <Input placeholder="Additional remarks" />
            </Form.Item>
            <Form.Item label="Sample Flag" name="sampleFlag" valuePropName="checked">
              <Checkbox>Mark as Sample</Checkbox>
            </Form.Item>
          </Col>
        </Row>

        <Divider className="pr-divider" />

        <Row justify="end">
          <Col>
            <Button
              type="primary"
              icon={<PlusOutlined />}
              size="large"
              onClick={onAddItem}
              className="pr-btn--add"
            >
              Add Item
            </Button>
          </Col>
        </Row>
      </Form>
    </Card>
  )
}
