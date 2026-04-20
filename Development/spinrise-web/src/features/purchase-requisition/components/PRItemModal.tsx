import { useEffect, useRef, useState } from 'react'
import {
  Modal,
  Form,
  Select,
  InputNumber,
  DatePicker,
  Input,
  Checkbox,
  Space,
  Tag,
  Typography,
  Row,
  Col,
  Alert,
} from 'antd'
import dayjs from 'dayjs'
import { lookupApi } from '../api/lookupApi'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type { ItemLookup, MachineLookup, PRLineFormItem } from '../types'

const SEARCH_DEBOUNCE_MS = 300
const SEARCH_MIN_CHARS   = 2

interface PRItemModalProps {
  open: boolean
  editingItem: PRLineFormItem | null
  machines: MachineLookup[]
  existingItemCodes: string[]
  onSave: (item: PRLineFormItem) => void
  onCancel: () => void
}

interface ItemFormValues {
  itemCode: string
  qtyRequired: number
  requiredDate: ReturnType<typeof dayjs> | null
  place: string
  approxCost: number | null
  remarks: string
  machineNo: string
  costCentreCode: string
  budgetGroupCode: string
  isSample: boolean
}

export function PRItemModal({
  open,
  editingItem,
  machines,
  existingItemCodes,
  onSave,
  onCancel,
}: PRItemModalProps) {
  const [form] = Form.useForm<ItemFormValues>()
  const [selectedItem,    setSelectedItem]    = useState<ItemLookup | null>(null)
  const [duplicateWarning, setDuplicateWarning] = useState(false)
  const [itemOptions,     setItemOptions]     = useState<{ value: string; label: string }[]>([])
  const [searching,       setSearching]       = useState(false)
  const debounceRef = useRef<ReturnType<typeof setTimeout> | null>(null)

  const isEdit = editingItem !== null

  // Populate form + seed initial item option when editing
  useEffect(() => {
    if (!open) return

    if (editingItem) {
      // Seed the dropdown so the selected value is immediately visible
      setItemOptions([{
        value: editingItem.itemCode,
        label: `${editingItem.itemCode} – ${editingItem.itemName}`,
      }])
      setSelectedItem({
        itemCode: editingItem.itemCode,
        itemName: editingItem.itemName,
        uom:      editingItem.uom,
      })
      setDuplicateWarning(false)
      form.setFieldsValue({
        itemCode:        editingItem.itemCode,
        qtyRequired:     editingItem.qtyRequired,
        requiredDate:    editingItem.requiredDate ? dayjs(editingItem.requiredDate) : null,
        place:           editingItem.place,
        approxCost:      editingItem.approxCost,
        remarks:         editingItem.remarks,
        machineNo:       editingItem.machineNo,
        costCentreCode:  editingItem.costCentreCode,
        budgetGroupCode: editingItem.budgetGroupCode,
        isSample:        editingItem.isSample,
      })
    } else {
      form.resetFields()
      setItemOptions([])
      setSelectedItem(null)
      setDuplicateWarning(false)
    }
  }, [open, editingItem, form])

  const handleItemSearch = (value: string) => {
    const term = value.trim()

    if (debounceRef.current) clearTimeout(debounceRef.current)

    if (term.length < SEARCH_MIN_CHARS) {
      setItemOptions([])
      setSearching(false)
      return
    }

    setSearching(true)
    debounceRef.current = setTimeout(async () => {
      try {
        const results = await lookupApi.searchItems(term)
        setItemOptions(results.map((i) => ({
          value: i.itemCode,
          label: `${i.itemCode} – ${i.itemName}`,
        })))
      } catch {
        setItemOptions([])
      } finally {
        setSearching(false)
      }
    }, SEARCH_DEBOUNCE_MS)
  }

  const handleItemSelect = (itemCode: string) => {
    // Find in current search results
    const found = itemOptions.find((o) => o.value === itemCode)
    if (found) {
      const [code, ...nameParts] = found.label.split(' – ')
      setSelectedItem({ itemCode: code, itemName: nameParts.join(' – '), uom: '' })
    }
    const isDuplicate = !isEdit && existingItemCodes.includes(itemCode)
    setDuplicateWarning(isDuplicate)
  }

  const handleOk = () => {
    form
      .validateFields()
      .then((values) => {
        const opt = itemOptions.find((o) => o.value === values.itemCode)
        const [, ...nameParts] = (opt?.label ?? ' – ').split(' – ')
        const lineItem: PRLineFormItem = {
          key:             editingItem?.key ?? crypto.randomUUID(),
          itemCode:        values.itemCode,
          itemName:        editingItem?.itemName ?? nameParts.join(' – '),
          uom:             editingItem?.uom      ?? selectedItem?.uom ?? '',
          currentStock:    editingItem?.currentStock ?? null,
          qtyRequired:     values.qtyRequired,
          requiredDate:    values.requiredDate ? values.requiredDate.format('YYYY-MM-DD') : null,
          place:           values.place           ?? '',
          approxCost:      values.approxCost      ?? null,
          remarks:         values.remarks         ?? '',
          machineNo:       values.machineNo        ?? '',
          costCentreCode:  values.costCentreCode   ?? '',
          budgetGroupCode: values.budgetGroupCode  ?? '',
          isSample:        values.isSample ?? false,
          lastPoRate:          editingItem?.lastPoRate          ?? null,
          lastPoDate:          editingItem?.lastPoDate          ?? null,
          lastPoSupplierCode:  editingItem?.lastPoSupplierCode  ?? null,
          lastPoSupplierName:  editingItem?.lastPoSupplierName  ?? null,
          subCostCode:         editingItem?.subCostCode         ?? null,
          model:               editingItem?.model               ?? '',
          maxCost:             editingItem?.maxCost             ?? null,
          rate:                editingItem?.rate                ?? null,
        }
        onSave(lineItem)
        form.resetFields()
        setSelectedItem(null)
        setItemOptions([])
      })
      .catch(() => {/* validation failed, stay open */})
  }

  const machineOptions = machines.map((m) => ({
    value: m.macNo,
    label: `${m.macNo} – ${m.description}`,
  }))

  return (
    <Modal
      title={isEdit ? 'Edit Item' : 'Add Item'}
      open={open}
      onOk={handleOk}
      onCancel={onCancel}
      okText={isEdit ? 'Update' : 'Add'}
      width={680}
      destroyOnClose={false}
      maskClosable={false}
    >
      {duplicateWarning && (
        <Alert
          type="warning"
          showIcon
          message="This item is already in the list. Adding it again will create a duplicate line."
          style={{ marginBottom: 16 }}
        />
      )}

      <Form form={form} layout="vertical" size="middle">
        <Row gutter={16}>
          <Col span={24}>
            <Form.Item
              name="itemCode"
              label="Item"
              rules={[{ required: true, message: 'Item is required' }]}
            >
              <Select
                showSearch
                placeholder={`Type at least ${SEARCH_MIN_CHARS} characters to search…`}
                options={itemOptions}
                filterOption={false}
                onSearch={handleItemSearch}
                onSelect={handleItemSelect}
                loading={searching}
                notFoundContent={searching ? 'Searching…' : 'No items found'}
                disabled={isEdit}
              />
            </Form.Item>

            {selectedItem && (
              <Space style={{ marginTop: -12, marginBottom: 12 }}>
                {selectedItem.uom && <Tag color="blue">UOM: {selectedItem.uom}</Tag>}
                {editingItem?.currentStock != null && (
                  <Tag color="green">
                    Current Stock: {editingItem.currentStock}
                  </Tag>
                )}
                {editingItem?.lastPoRate != null && (
                  <Tag color="default">
                    Last PO Rate: {editingItem.lastPoRate}
                    {editingItem.lastPoDate
                      ? ` (${dayjs(editingItem.lastPoDate).format('DD-MM-YYYY')})`
                      : ''}
                  </Tag>
                )}
              </Space>
            )}
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item
              name="qtyRequired"
              label="Quantity Required"
              rules={[
                { required: true, message: 'Quantity is required' },
                {
                  validator: (_, val) =>
                    val > 0
                      ? Promise.resolve()
                      : Promise.reject(new Error('Quantity must be greater than 0')),
                },
              ]}
            >
              <InputNumber
                style={{ width: '100%' }}
                min={0.0001}
                precision={4}
                placeholder="0.0000"
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="requiredDate" label="Required Date">
              <DatePicker style={{ width: '100%' }} format="DD-MM-YYYY" />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="approxCost" label="Approx. Cost">
              <InputNumber
                style={{ width: '100%' }}
                min={0}
                precision={2}
                placeholder="0.00"
                prefix="₹"
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="place" label="Place / Location">
              <Input placeholder="Delivery location" maxLength={100} />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="machineNo" label="Machine">
              <Select
                showSearch
                placeholder="Search machine…"
                options={machineOptions}
                filterOption={prefixFilterOption}
                filterSort={priorityFilterSort}
                allowClear
              />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="costCentreCode" label="Cost Centre">
              <Input placeholder="Cost Centre Code" maxLength={20} />
            </Form.Item>
          </Col>

          <Col xs={24} sm={12}>
            <Form.Item name="budgetGroupCode" label="Budget Group">
              <Input placeholder="Budget Group Code" maxLength={20} />
            </Form.Item>
          </Col>

          <Col span={24}>
            <Form.Item name="remarks" label="Remarks">
              <Input.TextArea
                rows={2}
                maxLength={500}
                showCount
                placeholder="Any additional notes…"
              />
            </Form.Item>
          </Col>

          <Col span={24}>
            <Form.Item name="isSample" valuePropName="checked">
              <Checkbox>
                <Typography.Text>Sample item</Typography.Text>
              </Checkbox>
            </Form.Item>
          </Col>
        </Row>
      </Form>
    </Modal>
  )
}
