import { Checkbox, DatePicker, Form, Input, InputNumber, Modal, Select, Space } from 'antd'
import { EditOutlined } from '@ant-design/icons'
import type { FormInstance } from 'antd'
import type { PRItem } from '../types'
import { budgetGroups, costCentres } from '../data/dummy'

const { Option } = Select

interface Props {
  open: boolean
  editingItem: PRItem | null
  form: FormInstance
  onSave: () => void
  onCancel: () => void
}

export function PREditItemModal({ open, editingItem, form, onSave, onCancel }: Props) {
  return (
    <Modal
      title={
        <Space>
          <EditOutlined />
          Edit Item — {editingItem?.itemCode}
        </Space>
      }
      open={open}
      onCancel={onCancel}
      onOk={onSave}
      okText="Update Item"
      cancelText="Cancel"
      width={680}
      className="pr-edit-modal"
      destroyOnClose
    >
      <Form
        form={form}
        layout="horizontal"
        labelCol={{ span: 8 }}
        wrapperCol={{ span: 16 }}
        labelAlign="right"
      >
        <Form.Item label="Item Code" name="itemCode">
          <Input disabled className="pr-input--readonly" />
        </Form.Item>
        <Form.Item label="Item Name" name="itemName">
          <Input disabled className="pr-input--readonly" />
        </Form.Item>
        <Form.Item label="UOM" name="uom">
          <Input disabled className="pr-input--readonly" />
        </Form.Item>
        <Form.Item
          label="Qty Required"
          name="quantityRequired"
          rules={[{ required: true, message: 'Quantity is required' }]}
        >
          <InputNumber style={{ width: '100%' }} min={1} />
        </Form.Item>
        <Form.Item label="Cost Centre" name="costCentre">
          <Select showSearch allowClear>
            {costCentres.map((c) => (
              <Option key={c} value={c}>
                {c}
              </Option>
            ))}
          </Select>
        </Form.Item>
        <Form.Item label="Budget Group" name="budgetGroup">
          <Select allowClear>
            {budgetGroups.map((b) => (
              <Option key={b} value={b}>
                {b}
              </Option>
            ))}
          </Select>
        </Form.Item>
        <Form.Item label="Required Date" name="requiredDate">
          <DatePicker style={{ width: '100%' }} format="DD-MMM-YYYY" />
        </Form.Item>
        <Form.Item label="Place" name="place">
          <Input />
        </Form.Item>
        <Form.Item label="Approx Cost (₹)" name="approxCost">
          <InputNumber
            style={{ width: '100%' }}
            min={0}
            formatter={(v) => `₹ ${v}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}
            parser={(v) => Number(v?.replace(/₹\s?|(,*)/g, '') ?? 0) as unknown as never}
          />
        </Form.Item>
        <Form.Item label="Remarks" name="remarks">
          <Input />
        </Form.Item>
        <Form.Item label="Sample Flag" name="sampleFlag" valuePropName="checked">
          <Checkbox>Mark as Sample</Checkbox>
        </Form.Item>
      </Form>
    </Modal>
  )
}
