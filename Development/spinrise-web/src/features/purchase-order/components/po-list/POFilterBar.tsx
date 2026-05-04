import { Button, DatePicker, Form, Input, Select, Space } from 'antd'
import { RedoOutlined, SearchOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import type { POListQuery } from '../../types'

const STATUS_OPTIONS = [
  { value: 'PENDING',   label: 'Pending'   },
  { value: 'APPROVED',  label: 'Approved'  },
  { value: 'CANCELLED', label: 'Cancelled' },
]

function getFYBounds(): [dayjs.Dayjs, dayjs.Dayjs] {
  const today = dayjs()
  const year  = today.month() >= 3 ? today.year() : today.year() - 1
  return [dayjs(`${year}-04-01`), dayjs(`${year + 1}-03-31`)]
}

interface Props {
  loading:  boolean
  onSearch: (q: POListQuery) => void
  onReset:  () => void
}

export function POFilterBar({ loading, onSearch, onReset }: Props) {
  const [form]           = Form.useForm()
  const [fyStart, fyEnd] = getFYBounds()

  const handleSearch = () => {
    const v = form.getFieldsValue()
    onSearch({
      searchText:   v.searchText || undefined,
      supplierCode: v.supplierCode || undefined,
      status:       v.status || undefined,
      fromDate:     v.dateRange?.[0]?.format('YYYY-MM-DD'),
      toDate:       v.dateRange?.[1]?.format('YYYY-MM-DD'),
    })
  }

  const handleReset = () => {
    form.resetFields()
    form.setFieldsValue({ dateRange: [fyStart, fyEnd] })
    onReset()
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
        <DatePicker.RangePicker style={{ width: 224 }} format="DD/MM/YYYY" allowClear={false} />
      </Form.Item>

      <Form.Item name="searchText" style={{ marginBottom: 0 }}>
        <Input placeholder="PO No / Supplier…" style={{ width: 180 }} allowClear />
      </Form.Item>

      <Form.Item name="supplierCode" style={{ marginBottom: 0 }}>
        <Input placeholder="Supplier Code" style={{ width: 140 }} allowClear />
      </Form.Item>

      <Form.Item name="status" style={{ marginBottom: 0 }}>
        <Select style={{ width: 130 }} allowClear placeholder="Status" options={STATUS_OPTIONS} />
      </Form.Item>

      <Form.Item style={{ marginBottom: 0 }}>
        <Space size={6}>
          <Button type="primary" icon={<SearchOutlined />} loading={loading} onClick={handleSearch} style={{ borderRadius: 8 }}>
            Search
          </Button>
          <Button icon={<RedoOutlined />} onClick={handleReset} style={{ borderRadius: 8, color: '#6b7280' }}>
            Reset
          </Button>
        </Space>
      </Form.Item>
    </Form>
  )
}
