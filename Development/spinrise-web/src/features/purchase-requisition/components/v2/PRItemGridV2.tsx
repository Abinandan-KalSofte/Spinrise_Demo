import { useCallback, useState } from 'react'
import {
  Button,
  Checkbox,
  DatePicker,
  Form,
  InputNumber,
  Popconfirm,
  Space,
  Table,
  Tag,
  Tooltip,
  Typography,
} from 'antd'
import {
  EditOutlined,
  SaveOutlined,
  CloseOutlined,
  DeleteOutlined,
  CopyOutlined,
  PlusOutlined,
  CheckCircleOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import type { ColumnsType } from 'antd/es/table'
import type { Rule } from 'antd/es/form'
import type { PRLineFormItem } from '../../types'

// ── Editable-cell plumbing ─────────────────────────────────────────────────────

interface EditableCellProps extends React.HTMLAttributes<HTMLElement> {
  editing:    boolean
  dataIndex:  string
  inputNode:  React.ReactNode
  rules?:     Rule[]
  children:   React.ReactNode
}

function EditableCell({
  editing,
  dataIndex,
  inputNode,
  rules,
  children,
  ...rest
}: EditableCellProps) {
  return (
    <td {...rest}>
      {editing ? (
        <Form.Item name={dataIndex} rules={rules} style={{ margin: 0 }}>
          {inputNode}
        </Form.Item>
      ) : (
        children
      )}
    </td>
  )
}

// ── Props ─────────────────────────────────────────────────────────────────────

interface PRItemGridV2Props {
  lines:       PRLineFormItem[]
  onAddItem:   () => void
  onEditItem:  (item: PRLineFormItem) => void   // opens wizard modal for full edit
  onChange:    (lines: PRLineFormItem[]) => void
  disabled?:   boolean
}

// ── Inline-editable fields (code/name/uom/stock are read-only) ───────────────
// Editable: qtyRequired, requiredDate, approxCost, isSample

type EditableRow = Pick<PRLineFormItem,
  'qtyRequired' | 'requiredDate' | 'approxCost' | 'isSample'>

// ── Component ─────────────────────────────────────────────────────────────────

export function PRItemGridV2({
  lines,
  onAddItem,
  onEditItem,
  onChange,
  disabled = false,
}: PRItemGridV2Props) {
  const [editForm]   = Form.useForm<EditableRow>()
  const [editingKey, setEditingKey] = useState<string>('')

  const isEditing = (record: PRLineFormItem) => record.key === editingKey

  const startEdit = useCallback((record: PRLineFormItem) => {
    editForm.setFieldsValue({
      qtyRequired:  record.qtyRequired,
      requiredDate: record.requiredDate as unknown as string,
      approxCost:   record.approxCost,
      isSample:     record.isSample,
    })
    setEditingKey(record.key)
  }, [editForm])

  const cancelEdit = () => setEditingKey('')

  const saveEdit = async (key: string) => {
    try {
      const values = await editForm.validateFields()
      onChange(lines.map((l) => l.key === key ? { ...l, ...values } : l))
      setEditingKey('')
    } catch { /* inline validation — stays on row */ }
  }

  const deleteRow = (key: string) => {
    if (editingKey === key) setEditingKey('')
    onChange(lines.filter((l) => l.key !== key))
  }

  const duplicateRow = (record: PRLineFormItem) => {
    const idx   = lines.findIndex((l) => l.key === record.key)
    const copy: PRLineFormItem = { ...record, key: crypto.randomUUID() }
    const next  = [...lines]
    next.splice(idx + 1, 0, copy)
    onChange(next)
  }

  // ── Column definitions ─────────────────────────────────────────────────────

  const columns: ColumnsType<PRLineFormItem> = [
    {
      title: '#',
      key:   'index',
      width: 44,
      fixed: 'left',
      render: (_: unknown, __: PRLineFormItem, i: number) => (
        <Typography.Text type="secondary" style={{ fontSize: 12 }}>{i + 1}</Typography.Text>
      ),
    },
    {
      title:     'Item Code',
      dataIndex: 'itemCode',
      key:       'itemCode',
      width:     130,
      fixed:     'left',
      render: (code: string) => (
        <Typography.Text code style={{ fontSize: 12 }}>{code}</Typography.Text>
      ),
    },
    {
      title:     'Item Name',
      dataIndex: 'itemName',
      key:       'itemName',
      ellipsis:  true,
      width:     200,
      render: (name: string) => (
        <Tooltip title={name}><span>{name}</span></Tooltip>
      ),
    },
    {
      title:     'UOM',
      dataIndex: 'uom',
      key:       'uom',
      width:     64,
      align:     'center',
    },
    {
      title:     'Stock',
      dataIndex: 'currentStock',
      key:       'currentStock',
      width:     80,
      align:     'right',
      render: (val: number | null) =>
        val != null
          ? <Tag color={val <= 0 ? 'red' : 'default'}>{val}</Tag>
          : <Typography.Text type="secondary">—</Typography.Text>,
    },
    {
      title:     'Qty Required',
      dataIndex: 'qtyRequired',
      key:       'qtyRequired',
      width:     120,
      align:     'right',
      onCell:    (record) => ({
        editing:   isEditing(record),
        dataIndex: 'qtyRequired',
        rules: [
          { required: true, message: '' },
          { type: 'number', min: 0.0001, message: '> 0' },
        ],
        inputNode: (
          <InputNumber
            size="small"
            min={0.0001}
            precision={4}
            style={{ width: 100 }}
            autoFocus
            onPressEnter={() => void saveEdit(record.key)}
          />
        ),
      } as EditableCellProps),
      render: (val: number) => <strong>{val}</strong>,
    },
    {
      title:     'Req. Date',
      dataIndex: 'requiredDate',
      key:       'requiredDate',
      width:     120,
      onCell:    (record) => ({
        editing:   isEditing(record),
        dataIndex: 'requiredDate',
        inputNode: (
          <DatePicker
            size="small"
            format="DD-MM-YYYY"
            style={{ width: 110 }}
          />
        ),
      } as EditableCellProps),
      render: (val: string | null) =>
        val ? dayjs(val).format('DD-MM-YYYY') : '—',
    },
    {
      title:     'Est. Cost',
      dataIndex: 'approxCost',
      key:       'approxCost',
      width:     110,
      align:     'right',
      onCell:    (record) => ({
        editing:   isEditing(record),
        dataIndex: 'approxCost',
        inputNode: (
          <InputNumber
            size="small"
            min={0}
            precision={2}
            prefix="₹"
            style={{ width: 100 }}
          />
        ),
      } as EditableCellProps),
      render: (val: number | null) =>
        val != null
          ? `₹${val.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
          : '—',
    },
    {
      title:     'Sample',
      dataIndex: 'isSample',
      key:       'isSample',
      width:     72,
      align:     'center',
      onCell:    (record) => ({
        editing:   isEditing(record),
        dataIndex: 'isSample',
        inputNode: <Checkbox />,
      } as EditableCellProps),
      render: (val: boolean) =>
        val ? <CheckCircleOutlined style={{ color: '#52c41a' }} /> : null,
    },
    {
      title:     '',
      key:       'actions',
      width:     110,
      fixed:     'right',
      render:    (_: unknown, record: PRLineFormItem) => {
        const editing = isEditing(record)
        return editing ? (
          <Space size={4}>
            <Tooltip title="Save (Enter)">
              <Button
                type="text"
                size="small"
                icon={<SaveOutlined />}
                onClick={() => void saveEdit(record.key)}
              />
            </Tooltip>
            <Tooltip title="Cancel">
              <Button
                type="text"
                size="small"
                icon={<CloseOutlined />}
                onClick={cancelEdit}
              />
            </Tooltip>
          </Space>
        ) : (
          <Space size={4}>
            <Tooltip title="Quick edit">
              <Button
                type="text"
                size="small"
                icon={<EditOutlined />}
                onClick={() => startEdit(record)}
                disabled={disabled || editingKey !== ''}
              />
            </Tooltip>
            <Tooltip title="Full edit">
              <Button
                type="text"
                size="small"
                icon={<EditOutlined style={{ color: '#1677ff' }} />}
                onClick={() => onEditItem(record)}
                disabled={disabled || editingKey !== ''}
              />
            </Tooltip>
            <Tooltip title="Duplicate">
              <Button
                type="text"
                size="small"
                icon={<CopyOutlined />}
                onClick={() => duplicateRow(record)}
                disabled={disabled || editing}
              />
            </Tooltip>
            <Popconfirm
              title="Remove this item?"
              okText="Remove"
              okButtonProps={{ danger: true }}
              onConfirm={() => deleteRow(record.key)}
              disabled={disabled}
            >
              <Tooltip title="Delete">
                <Button
                  type="text"
                  size="small"
                  danger
                  icon={<DeleteOutlined />}
                  disabled={disabled}
                />
              </Tooltip>
            </Popconfirm>
          </Space>
        )
      },
    },
  ]

  const mergedColumns = columns.map((col) => {
    if (!('onCell' in col)) return col
    return { ...col, onCell: col.onCell }
  })

  return (
    <Form form={editForm} component={false}>
      <div style={{ marginBottom: 12, display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <Typography.Title level={5} style={{ margin: 0 }}>
          Line Items
          {lines.length > 0 && (
            <Tag color="blue" style={{ marginLeft: 8, fontWeight: 'normal', fontSize: 12 }}>
              {lines.length}
            </Tag>
          )}
        </Typography.Title>
        <Button
          type="dashed"
          icon={<PlusOutlined />}
          onClick={onAddItem}
          disabled={disabled || editingKey !== ''}
        >
          Add Item
        </Button>
      </div>

      <Table<PRLineFormItem>
        components={{ body: { cell: EditableCell } }}
        dataSource={lines}
        columns={mergedColumns}
        rowKey="key"
        size="small"
        scroll={{ x: 1100 }}
        pagination={false}
        locale={{
          emptyText: (
            <Typography.Text type="secondary">
              No items yet — click "Add Item" or press <kbd>Ctrl+Enter</kbd> after filling the header.
            </Typography.Text>
          ),
        }}
        bordered
        rowClassName={(record) => isEditing(record) ? 'editable-row--active' : ''}
      />
    </Form>
  )
}
