import { Button, Col, DatePicker, Form, InputNumber, Row, Select } from 'antd'
import { SearchOutlined, UndoOutlined } from '@ant-design/icons'
import type { DepartmentLookup, EmployeeLookup } from '../../types'
import { getFYBounds, STATUS_OPTIONS } from './prListConfig'
import type { SearchFormValues } from './prListConfig'

interface PRSearchFormProps {
  departments: DepartmentLookup[]
  employees:   EmployeeLookup[]
  loading:     boolean
  onSearch:    (values: SearchFormValues) => Promise<void>
  onReset:     () => Promise<void>
}

export function PRSearchForm({ departments, employees, loading, onSearch, onReset }: PRSearchFormProps) {
  const [form] = Form.useForm<SearchFormValues>()
  const [fyStart, fyEnd] = getFYBounds()

  const handleSearch = () => void onSearch(form.getFieldsValue())

  const handleReset = () => {
    form.resetFields()
    form.setFieldsValue({ dateRange: [fyStart, fyEnd] })
    void onReset()
  }

  return (
    <Form form={form} layout="vertical" size="middle" initialValues={{ dateRange: [fyStart, fyEnd] }}>
      <Row gutter={[16, 8]}>

        <Col xs={24} sm={12} md={4} lg={3}>
          <Form.Item name="prNo" label="PR No" style={{ marginBottom: 0 }}>
            <InputNumber style={{ width: '100%' }} min={1} placeholder="e.g. 1234" controls={false} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={24} md={9} lg={8}>
          <Form.Item name="dateRange" label="Date Range" style={{ marginBottom: 0 }}>
            <DatePicker.RangePicker style={{ width: '100%' }} format="DD/MM/YYYY" allowClear={false} />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={5} lg={4}>
          <Form.Item name="depCode" label="Department" style={{ marginBottom: 0 }}>
            <Select
              showSearch allowClear placeholder="All departments"
              options={departments.map((d) => ({ value: d.depCode, label: `${d.depCode} – ${d.depName}` }))}
              filterOption={(input, opt) =>
                (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
              }
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={5} lg={4}>
          <Form.Item name="reqName" label="Requested By" style={{ marginBottom: 0 }}>
            <Select
              showSearch allowClear placeholder="All requesters"
              options={employees.map((e) => ({ value: e.empNo, label: `${e.empNo} – ${e.eName}` }))}
              filterOption={(input, opt) =>
                (opt?.label as string ?? '').toLowerCase().includes(input.toLowerCase())
              }
            />
          </Form.Item>
        </Col>

        <Col xs={24} sm={12} md={4} lg={3}>
          <Form.Item name="status" label="Status" style={{ marginBottom: 0 }}>
            <Select allowClear placeholder="All statuses" options={STATUS_OPTIONS} />
          </Form.Item>
        </Col>
          <Col xs={24} sm={12} md={4} lg={3}>
          <Button type="primary" icon={<SearchOutlined />} loading={loading} onClick={handleSearch}>
            Search
          </Button>
          </Col>
           <Col xs={24} sm={12} md={4} lg={3}>
          <Button ghost type="primary" icon={<UndoOutlined />} onClick={handleReset}>
            Reset
          </Button>
          </Col>
      </Row>

      
        
    </Form>
  )
}
