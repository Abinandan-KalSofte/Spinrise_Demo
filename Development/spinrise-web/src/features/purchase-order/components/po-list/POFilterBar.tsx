import { Button, Col, DatePicker, Form, Input, Row, Space } from 'antd'
import { SearchOutlined, ClearOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import type { POListFilters } from '../../hooks/usePurchaseOrderList'

interface Props {
  loading: boolean
  onSearch: (filters: POListFilters) => void
  onReset: () => void
}

interface FormValues {
  searchText?: string
  supplierCode?: string
  dateRange?: [dayjs.Dayjs, dayjs.Dayjs]
}

export function POFilterBar({ loading, onSearch, onReset }: Props) {
  const [form] = Form.useForm<FormValues>()

  const handleFinish = (values: FormValues) => {
    onSearch({
      searchText:   values.searchText?.trim(),
      supplierCode: values.supplierCode?.trim(),
      fromDate:     values.dateRange?.[0]?.format('YYYY-MM-DD'),
      toDate:       values.dateRange?.[1]?.format('YYYY-MM-DD'),
    })
  }

  const handleReset = () => {
    form.resetFields()
    onReset()
  }

  return (
    <Form form={form} layout="inline" onFinish={handleFinish} style={{ gap: 0 }}>
      <Row gutter={[12, 8]} style={{ width: '100%' }}>
        <Col xs={24} sm={12} md={6}>
          <Form.Item name="searchText" style={{ marginBottom: 0, width: '100%' }}>
            <Input placeholder="Search PO No / Supplier…" allowClear />
          </Form.Item>
        </Col>
        <Col xs={24} sm={12} md={5}>
          <Form.Item name="supplierCode" style={{ marginBottom: 0, width: '100%' }}>
            <Input placeholder="Supplier Code" allowClear />
          </Form.Item>
        </Col>
        <Col xs={24} sm={14} md={9}>
          <Form.Item name="dateRange" style={{ marginBottom: 0, width: '100%' }}>
            <DatePicker.RangePicker
              style={{ width: '100%' }}
              format="DD-MMM-YYYY"
              placeholder={['From Date', 'To Date']}
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={10} md={4}>
          <Space>
            <Button
              type="primary"
              htmlType="submit"
              icon={<SearchOutlined />}
              loading={loading}
            >
              Search
            </Button>
            <Button icon={<ClearOutlined />} onClick={handleReset}>
              Clear
            </Button>
          </Space>
        </Col>
      </Row>
    </Form>
  )
}
