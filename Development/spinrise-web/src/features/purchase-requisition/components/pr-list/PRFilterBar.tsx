import { Button, DatePicker, Form, Select, Space } from 'antd'
import { RedoOutlined, SearchOutlined } from '@ant-design/icons'
import type { DepartmentLookup } from '../../types'
import { getFYBounds, STATUS_OPTIONS } from './prListConfig'
import type { SearchFormValues } from './prListConfig'

interface PRFilterBarProps {
  departments: DepartmentLookup[]
  loading:     boolean
  onSearch:    (values: SearchFormValues) => Promise<void>
  onReset:     () => Promise<void>
}

export function PRFilterBar({ departments, loading, onSearch, onReset }: PRFilterBarProps) {
  const [form]           = Form.useForm<SearchFormValues>()
  const [fyStart, fyEnd] = getFYBounds()

  const handleSearch = () => void onSearch(form.getFieldsValue())
  const handleReset  = () => {
    form.resetFields()
    form.setFieldsValue({ dateRange: [fyStart, fyEnd] })
    void onReset()
  }

  return (
    <Form
      form={form}
      layout="inline"
      size="small"
      initialValues={{ dateRange: [fyStart, fyEnd] }}
      style={{ rowGap: 8, flexWrap: 'wrap' }}
    >
      <Form.Item name="dateRange" style={{ marginBottom: 0 }}>
        <DatePicker.RangePicker
          style={{ width: 224 }}
          format="DD/MM/YYYY"
          allowClear={false}
        />
      </Form.Item>

      <Form.Item name="depCode" style={{ marginBottom: 0 }}>
        <Select
          style={{ width: 180 }}
          showSearch
          allowClear
          placeholder="Department"
          options={departments.map((d) => ({
            value: d.depCode,
            label: `${d.depCode} – ${d.depName}`,
          }))}
          filterOption={(input, opt) =>
            (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
          }
        />
      </Form.Item>

      <Form.Item name="status" style={{ marginBottom: 0 }}>
        <Select
          style={{ width: 130 }}
          allowClear
          placeholder="Status"
          options={STATUS_OPTIONS}
        />
      </Form.Item>

      <Form.Item style={{ marginBottom: 0 }}>
        <Space size={6}>
          <Button
            type="primary"
            icon={<SearchOutlined />}
            loading={loading}
            onClick={handleSearch}
            style={{ borderRadius: 8 }}
          >
            Search
          </Button>
          <Button
            icon={<RedoOutlined />}
            onClick={handleReset}
            style={{ borderRadius: 8, color: '#6b7280' }}
          >
            Reset
          </Button>
        </Space>
      </Form.Item>
    </Form>
  )
}
