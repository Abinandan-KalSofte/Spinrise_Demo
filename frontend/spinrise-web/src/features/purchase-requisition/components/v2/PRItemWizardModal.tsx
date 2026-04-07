import { useEffect, useRef, useState } from 'react'
import {
  Modal,
  Steps,
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
  Button,
  Collapse,
  Alert,
  Spin,
} from 'antd'
import {
  SearchOutlined,
  NumberOutlined,
  SettingOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import { lookupApi } from '../../api/lookupApi'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import type { MachineLookup, PRLineFormItem } from '../../types'

const DEBOUNCE_MS   = 300
const MIN_CHARS     = 2

// ── Types ─────────────────────────────────────────────────────────────────────

interface ItemSearchResult {
  itemCode: string
  itemName: string
  uom:      string
}

interface Step2Values {
  qtyRequired:  number
  requiredDate: ReturnType<typeof dayjs> | null
  approxCost:   number | null
  place:        string
}

interface Step3Values {
  machineNo:       string
  costCentreCode:  string
  budgetGroupCode: string
  remarks:         string
  isSample:        boolean
}

// ── Props ─────────────────────────────────────────────────────────────────────

interface PRItemWizardModalProps {
  open:              boolean
  editingItem:       PRLineFormItem | null
  machines:          MachineLookup[]
  existingItemCodes: string[]
  onSave:            (item: PRLineFormItem) => void
  onCancel:          () => void
}

// ── Component ─────────────────────────────────────────────────────────────────

export function PRItemWizardModal({
  open,
  editingItem,
  machines,
  existingItemCodes,
  onSave,
  onCancel,
}: PRItemWizardModalProps) {
  const [currentStep,      setCurrentStep]      = useState(0)
  const [selectedItem,     setSelectedItem]      = useState<ItemSearchResult | null>(null)
  const [itemOptions,      setItemOptions]       = useState<{ value: string; label: string }[]>([])
  const [searching,        setSearching]         = useState(false)
  const [duplicateWarning, setDuplicateWarning]  = useState(false)

  const [step2Form] = Form.useForm<Step2Values>()
  const [step3Form] = Form.useForm<Step3Values>()

  const debounceRef    = useRef<ReturnType<typeof setTimeout> | null>(null)
  const searchCountRef = useRef(0)    // stale-result guard (replaces AbortController)

  const isEdit     = editingItem !== null
  const machineOpts = machines.map((m) => ({
    value: m.macNo,
    label: `${m.macNo} – ${m.description}`,
  }))

  // ── Reset / populate on open ─────────────────────────────────────────────
  useEffect(() => {
    if (!open) return

    setCurrentStep(0)
    searchCountRef.current = 0

    if (editingItem) {
      const opt = { value: editingItem.itemCode, label: `${editingItem.itemCode} – ${editingItem.itemName}` }
      setItemOptions([opt])
      setSelectedItem({ itemCode: editingItem.itemCode, itemName: editingItem.itemName, uom: editingItem.uom })
      setDuplicateWarning(false)

      step2Form.setFieldsValue({
        qtyRequired:  editingItem.qtyRequired,
        requiredDate: editingItem.requiredDate ? dayjs(editingItem.requiredDate) : null,
        approxCost:   editingItem.approxCost,
        place:        editingItem.place,
      })
      step3Form.setFieldsValue({
        machineNo:       editingItem.machineNo,
        costCentreCode:  editingItem.costCentreCode,
        budgetGroupCode: editingItem.budgetGroupCode,
        remarks:         editingItem.remarks,
        isSample:        editingItem.isSample,
      })
    } else {
      setItemOptions([])
      setSelectedItem(null)
      setDuplicateWarning(false)
      step2Form.resetFields()
      step3Form.resetFields()
    }
  }, [open, editingItem, step2Form, step3Form])

  // ── Item search (debounced, stale-safe) ──────────────────────────────────
  const handleItemSearch = (value: string) => {
    const term = value.trim()
    if (debounceRef.current) clearTimeout(debounceRef.current)

    if (term.length < MIN_CHARS) {
      setItemOptions([])
      setSearching(false)
      return
    }

    const seq = ++searchCountRef.current
    setSearching(true)

    debounceRef.current = setTimeout(async () => {
      try {
        const results = await lookupApi.searchItems(term)
        if (seq !== searchCountRef.current) return   // stale
        setItemOptions(results.map((i) => ({
          value: i.itemCode,
          label: `${i.itemCode} – ${i.itemName}`,
        })))
      } catch {
        if (seq === searchCountRef.current) setItemOptions([])
      } finally {
        if (seq === searchCountRef.current) setSearching(false)
      }
    }, DEBOUNCE_MS)
  }

  const handleItemSelect = (itemCode: string) => {
    const opt = itemOptions.find((o) => o.value === itemCode)
    if (opt) {
      const [code, ...rest] = opt.label.split(' – ')
      setSelectedItem({ itemCode: code, itemName: rest.join(' – '), uom: '' })
    }
    setDuplicateWarning(!isEdit && existingItemCodes.includes(itemCode))
  }

  // ── Step navigation ──────────────────────────────────────────────────────

  const goToStep1 = async () => {
    if (!selectedItem) return
    setCurrentStep(1)
  }

  const goToStep2 = async () => {
    try {
      await step2Form.validateFields()
      setCurrentStep(2)
    } catch { /* stays on step */ }
  }

  const handleFinish = async () => {
    try {
      const step2 = await step2Form.validateFields()
      const step3 = step3Form.getFieldsValue()   // step 3 is optional

      if (!selectedItem) return

      const line: PRLineFormItem = {
        key:             editingItem?.key ?? crypto.randomUUID(),
        itemCode:        selectedItem.itemCode,
        itemName:        selectedItem.itemName,
        uom:             editingItem?.uom ?? selectedItem.uom,
        currentStock:    editingItem?.currentStock    ?? null,
        qtyRequired:     step2.qtyRequired,
        requiredDate:    step2.requiredDate ? step2.requiredDate.format('YYYY-MM-DD') : null,
        approxCost:      step2.approxCost   ?? null,
        place:           step2.place        ?? '',
        machineNo:       step3.machineNo        ?? '',
        costCentreCode:  step3.costCentreCode   ?? '',
        budgetGroupCode: step3.budgetGroupCode  ?? '',
        remarks:         step3.remarks          ?? '',
        isSample:        step3.isSample         ?? false,
        lastPoRate:          editingItem?.lastPoRate          ?? null,
        lastPoDate:          editingItem?.lastPoDate          ?? null,
        lastPoSupplierName:  editingItem?.lastPoSupplierName  ?? null,
      }

      onSave(line)
      // forms reset via useEffect when open changes
    } catch { /* validation error */ }
  }

  // ── Keyboard: Enter on step 2 → step 3 ───────────────────────────────────
  const handleStep2KeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault()
      void goToStep2()
    }
  }

  // ── Render helpers ───────────────────────────────────────────────────────

  const stepItems = [
    { title: 'Item',     icon: <SearchOutlined /> },
    { title: 'Quantity', icon: <NumberOutlined /> },
    { title: 'Details',  icon: <SettingOutlined /> },
  ]

  const footerButtons = () => {
    if (currentStep === 0) return (
      <Space>
        <Button onClick={onCancel}>Cancel</Button>
        <Button type="primary" onClick={() => void goToStep1()} disabled={!selectedItem}>
          Next
        </Button>
      </Space>
    )

    if (currentStep === 1) return (
      <Space>
        <Button onClick={() => setCurrentStep(0)}>Back</Button>
        <Button onClick={() => void handleFinish()}>Save & Close</Button>
        <Button type="primary" onClick={() => void goToStep2()}>
          Next
        </Button>
      </Space>
    )

    // step 2
    return (
      <Space>
        <Button onClick={() => setCurrentStep(1)}>Back</Button>
        <Button type="primary" onClick={() => void handleFinish()}>
          {isEdit ? 'Update Item' : 'Add Item'}
        </Button>
      </Space>
    )
  }

  return (
    <Modal
      title={isEdit ? 'Edit Item' : 'Add Item'}
      open={open}
      onCancel={onCancel}
      footer={footerButtons()}
      width={640}
      destroyOnClose={false}
      maskClosable={false}
    >
      <Steps
        current={currentStep}
        items={stepItems}
        size="small"
        style={{ marginBottom: 24 }}
      />

      {/* ── Step 0: Item search ─────────────────────────────────────────── */}
      <div style={{ display: currentStep === 0 ? 'block' : 'none' }}>
        {duplicateWarning && (
          <Alert
            type="warning"
            showIcon
            message="This item is already in the list."
            style={{ marginBottom: 12 }}
          />
        )}

        <Form layout="vertical">
          <Form.Item
            label={`Item — type at least ${MIN_CHARS} characters`}
            required
          >
            <Select
              showSearch
              autoFocus
              placeholder="Search by code or name…"
              options={itemOptions}
              filterOption={false}
              onSearch={handleItemSearch}
              onSelect={handleItemSelect}
              loading={searching}
              notFoundContent={
                searching
                  ? <span><Spin size="small" style={{ marginRight: 8 }} />Searching…</span>
                  : 'No items found'
              }
              disabled={isEdit}
              value={selectedItem?.itemCode}
              style={{ width: '100%' }}
            />
          </Form.Item>
        </Form>

        {selectedItem && (
          <Space wrap style={{ marginTop: 4 }}>
            {selectedItem.uom && <Tag color="blue">UOM: {selectedItem.uom}</Tag>}
            {editingItem?.currentStock != null && (
              <Tag color={editingItem.currentStock <= 0 ? 'red' : 'green'}>
                Stock: {editingItem.currentStock}
              </Tag>
            )}
            {editingItem?.lastPoRate != null && (
              <Tag color="default">
                Last Rate: ₹{editingItem.lastPoRate}
                {editingItem.lastPoDate
                  ? ` (${dayjs(editingItem.lastPoDate).format('DD-MM-YYYY')})`
                  : ''}
              </Tag>
            )}
            {editingItem?.lastPoSupplierName && (
              <Tag>{editingItem.lastPoSupplierName}</Tag>
            )}
          </Space>
        )}
      </div>

      {/* ── Step 1: Quantity & Date ─────────────────────────────────────── */}
      <div style={{ display: currentStep === 1 ? 'block' : 'none' }}>
        <Form
          form={step2Form}
          layout="vertical"
          onKeyDown={handleStep2KeyDown}
        >
          <Row gutter={16}>
            <Col xs={24} sm={12}>
              <Form.Item
                name="qtyRequired"
                label="Quantity Required"
                rules={[
                  { required: true, message: 'Required' },
                  {
                    validator: (_, val) =>
                      val > 0
                        ? Promise.resolve()
                        : Promise.reject(new Error('Must be > 0')),
                  },
                ]}
              >
                <InputNumber
                  autoFocus
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
          </Row>

          {selectedItem && (
            <Typography.Text type="secondary" style={{ fontSize: 12 }}>
              Item: <strong>{selectedItem.itemCode}</strong> — {selectedItem.itemName}
              {selectedItem.uom && <Tag color="blue" style={{ marginLeft: 8 }}>UOM: {selectedItem.uom}</Tag>}
            </Typography.Text>
          )}
        </Form>
      </div>

      {/* ── Step 2: Advanced details ────────────────────────────────────── */}
      <div style={{ display: currentStep === 2 ? 'block' : 'none' }}>
        <Form form={step3Form} layout="vertical">
          <Collapse
            defaultActiveKey={
              editingItem?.machineNo || editingItem?.costCentreCode || editingItem?.budgetGroupCode
                ? ['details']
                : []
            }
            ghost
            items={[{
              key: 'details',
              label: 'Additional Details (optional)',
              children: (
                <Row gutter={16}>
                  <Col xs={24} sm={12}>
                    <Form.Item name="machineNo" label="Machine">
                      <Select
                        showSearch
                        placeholder="Search machine…"
                        options={machineOpts}
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

                  <Col xs={24}>
                    <Form.Item name="remarks" label="Remarks">
                      <Input.TextArea
                        rows={2}
                        maxLength={500}
                        showCount
                        placeholder="Any additional notes…"
                      />
                    </Form.Item>
                  </Col>

                  <Col xs={24}>
                    <Form.Item name="isSample" valuePropName="checked">
                      <Checkbox>Sample item</Checkbox>
                    </Form.Item>
                  </Col>
                </Row>
              ),
            }]}
          />
        </Form>
      </div>
    </Modal>
  )
}
