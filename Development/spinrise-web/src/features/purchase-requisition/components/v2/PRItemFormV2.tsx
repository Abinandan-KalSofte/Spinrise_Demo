import { useEffect, useRef, useState } from 'react'
import {
  Alert,
  Button,
  Card,
  Checkbox,
  Col,
  Form,
  Input,
  InputNumber,
  Row,
  Select,
  Space,
  Tag,
  Typography,
} from 'antd'
import type { FormInstance } from 'antd'
import {
  CloseOutlined,
  EditOutlined,
  HistoryOutlined,
  PlusOutlined,
} from '@ant-design/icons'
import dayjs from 'dayjs'
import { getFYBounds } from '@/shared/lib/dateUtils'
import { lookupApi } from '../../api/lookupApi'
import { purchaseRequisitionApi } from '../../api/purchaseRequisitionApi'
import { prefixFilterOption, priorityFilterSort } from '@/shared/utils/selectUtils'
import { PRRateHistoryModal } from './PRRateHistoryModal'
import type { ItemLookup, MachineLookup, PRLineFormItem, SubCostLookup, PRHeaderFormValues } from '../../types'

// ── Form values type ─────────────────────────────────────────────────────────

interface ItemFormValues {
  itemCode:     string
  qtyRequired:  number
  requiredDays: number | null   // "Required in Days" — converts to requiredDate on submit
  categoryCode: string
  model:        string
  maxCost:      number | null
  rate:         number | null
  machineNo:    string
  remarks:      string
  isSample:     boolean
  subCostCode:  string | null
}

// ── Props ─────────────────────────────────────────────────────────────────────

interface PRItemFormV2Props {
  machines:          MachineLookup[]
  subCosts:          SubCostLookup[]
  headerForm:        FormInstance<PRHeaderFormValues>
  editingItem:       PRLineFormItem | null
  existingItemCodes: string[]
  onAdd:             (item: PRLineFormItem) => void
  onUpdate:          (item: PRLineFormItem) => void
  onCancelEdit:      () => void
  disabled:          boolean
  pendingIndentCheckEnabled: boolean
  pendingPRCheckEnabled:     boolean
}

const DEBOUNCE_MS = 300
const MIN_CHARS   = 2

// ── Component ─────────────────────────────────────────────────────────────────

export function PRItemFormV2({
  machines,
  subCosts,
  headerForm,
  editingItem,
  existingItemCodes,
  onAdd,
  onUpdate,
  onCancelEdit,
  disabled,
  pendingIndentCheckEnabled,
  pendingPRCheckEnabled,
}: PRItemFormV2Props) {
  const [form] = Form.useForm<ItemFormValues>()

  // item search state
  interface ItemOption { value: string; label: string; currentStock?: number; pendingPrQty?: number; pendingPoQty?: number }
  const [rawResults,   setRawResults]   = useState<ItemLookup[]>([])
  const [itemOptions,  setItemOptions]  = useState<ItemOption[]>([])
  const [selectedInfo, setSelectedInfo] = useState<ItemLookup | null>(null)
  const [searching,    setSearching]    = useState(false)

  // required-days derived date
  const [requiredDays, setRequiredDays] = useState<number | null>(null)

  // current stock and last PO data
  const [currentStock,        setCurrentStock]        = useState<number | null>(null)
  const [lastPoRate,          setLastPoRate]          = useState<number | null>(null)
  const [lastPoDate,          setLastPoDate]          = useState<string | null>(null)
  const [lastPoSupplierCode,  setLastPoSupplierCode]  = useState<string | null>(null)
  const [lastPoSupplierName,  setLastPoSupplierName]  = useState<string | null>(null)

  // pending indent / PR warning for the currently selected item
  const [pendingWarning, setPendingWarning] = useState<string | null>(null)

  // rate history modal
  const [rateHistoryOpen, setRateHistoryOpen] = useState(false)

  const debounceRef    = useRef<ReturnType<typeof setTimeout> | null>(null)
  const searchCountRef = useRef(0)

  const isEditMode   = editingItem !== null
  const machineOpts  = machines.map((m) => ({ value: m.macNo,    label: `${m.macNo} – ${m.description}` }))
  const subCostOpts  = subCosts.map((s)  => ({ value: String(s.sccCode), label: `${s.sccCode} – ${s.sccName}` }))

  // ── Populate form when editing ────────────────────────────────────────────
  useEffect(() => {
    if (editingItem) {
      setItemOptions([{
        value: editingItem.itemCode,
        label: `${editingItem.itemCode} – ${editingItem.itemName}`,
      }])
      setSelectedInfo({
        itemCode: editingItem.itemCode,
        itemName: editingItem.itemName,
        uom:      editingItem.uom,
      })
      // Reverse-calculate days from today (0 if date has passed)
      const days = editingItem.requiredDate
        ? Math.max(0, dayjs(editingItem.requiredDate).diff(dayjs().startOf('day'), 'day'))
        : null
      setRequiredDays(days)
      setCurrentStock(editingItem.currentStock)
      setLastPoRate(editingItem.lastPoRate)
      setLastPoDate(editingItem.lastPoDate)
      setLastPoSupplierCode(editingItem.lastPoSupplierCode)
      setLastPoSupplierName(editingItem.lastPoSupplierName)
      form.setFieldsValue({
        itemCode:     editingItem.itemCode,
        qtyRequired:  editingItem.qtyRequired,
        requiredDays: days,
        categoryCode: editingItem.categoryCode ?? '',
        model:        editingItem.model,
        maxCost:      editingItem.maxCost,
        rate:         editingItem.rate,
        machineNo:    editingItem.machineNo,
        remarks:      editingItem.remarks,
        isSample:     editingItem.isSample,
        subCostCode:  editingItem.subCostCode != null ? String(editingItem.subCostCode) : null,
      })
    } else {
      resetForm()
    }
  }, [editingItem]) // eslint-disable-line react-hooks/exhaustive-deps

  const resetForm = () => {
    form.resetFields()
    setRawResults([])
    setItemOptions([])
    setSelectedInfo(null)
    setRequiredDays(null)
    setCurrentStock(null)
    setLastPoRate(null)
    setLastPoDate(null)
    setLastPoSupplierCode(null)
    setLastPoSupplierName(null)
    setPendingWarning(null)
  }

  // ── Item search (debounced, stale-safe) ──────────────────────────────────
  const handleItemSearch = (value: string) => {
    const term = value.trim()
    if (debounceRef.current) clearTimeout(debounceRef.current)

    if (term.length < MIN_CHARS) {
      setRawResults([])
      setItemOptions([])
      setSearching(false)
      return
    }

    const seq = ++searchCountRef.current
    setSearching(true)

    debounceRef.current = setTimeout(async () => {
      try {
        const depCode = headerForm.getFieldValue('depCode') as string | undefined
        const results = await lookupApi.searchItems(term, depCode)
        if (seq !== searchCountRef.current) return
        setRawResults(results)
        setItemOptions(results.map((i) => ({
          value:        i.itemCode,
          label:        `${i.itemCode} – ${i.itemName}`,
          currentStock: i.currentStock,
          pendingPrQty: i.pendingPrQty,
          pendingPoQty: i.pendingPoQty,
        })))
      } catch {
        if (seq === searchCountRef.current) { setRawResults([]); setItemOptions([]) }
      } finally {
        if (seq === searchCountRef.current) setSearching(false)
      }
    }, DEBOUNCE_MS)
  }

  const handleItemSelect = async (itemCode: string) => {
    const found = rawResults.find((i) => i.itemCode === itemCode) ?? null
    setSelectedInfo(found)

    // Fetch current stock and other info
    setPendingWarning(null)
    if (found) {
      try {
        const depCode = headerForm.getFieldValue('depCode') as string
        const prDate  = headerForm.getFieldValue('prDate') as dayjs.Dayjs | null
        const { yfDate, ylDate } = getFYBounds(prDate ?? undefined)
        const itemInfo = await purchaseRequisitionApi.getItemInfo(
          depCode, itemCode, yfDate, ylDate,
          pendingIndentCheckEnabled, pendingPRCheckEnabled,
        )
        setCurrentStock(itemInfo.currentStock)
        setLastPoRate(itemInfo.lastPoRate ?? null)
        setLastPoDate(itemInfo.lastPoDate ?? null)
        setLastPoSupplierCode(itemInfo.lastPoSupplierCode ?? null)
        setLastPoSupplierName(itemInfo.lastPoSupplierName ?? null)

        // Show non-blocking warnings surfaced from the pending-check SPs
        if (pendingIndentCheckEnabled && itemInfo.hasPendingIndent) {
          setPendingWarning(
            `Pending indent exists for this item (Qty: ${itemInfo.pendingIndentQty}).`
          )
        } else if (pendingPRCheckEnabled && itemInfo.hasPendingPR) {
          setPendingWarning(
            `An open PR already exists for this item (PR No: ${itemInfo.pendingPrNo ?? '–'}).`
          )
        }
      } catch {
        setCurrentStock(null)
        setLastPoRate(null)
        setLastPoDate(null)
        setLastPoSupplierCode(null)
        setLastPoSupplierName(null)
      }
    } else {
      setCurrentStock(null)
    }
  }

  // ── Derived date display ──────────────────────────────────────────────────
  const calculatedDate = requiredDays != null && requiredDays >= 0
    ? dayjs().add(requiredDays, 'day')
    : null

  // ── Build and emit PRLineFormItem ─────────────────────────────────────────
  const handleSubmit = async () => {
    let values: ItemFormValues
    try {
      values = await form.validateFields()
    } catch {
      return
    }

    // Note: subCostCode is now stored per line item, not on header

    const line: PRLineFormItem = {
      key:                editingItem?.key          ?? crypto.randomUUID(),
      itemCode:           values.itemCode,
      itemName:           selectedInfo?.itemName    ?? editingItem?.itemName ?? '',
      uom:                selectedInfo?.uom         ?? editingItem?.uom      ?? '',
      currentStock:       currentStock,
      qtyRequired:        values.qtyRequired,
      requiredDate:       calculatedDate?.format('YYYY-MM-DD') ?? null,
      approxCost:         null,
      categoryCode:       values.categoryCode?.trim().toUpperCase() ?? '',
      model:              values.model              ?? '',
      maxCost:            values.maxCost            ?? null,
      rate:               values.rate               ?? null,
      machineNo:          values.machineNo          ?? '',
      remarks:            values.remarks            ?? '',
      subCostCode:        values.subCostCode ? Number(values.subCostCode) : null,
      isSample:           values.isSample           ?? false,
      lastPoRate:         lastPoRate,
      lastPoDate:         lastPoDate,
      lastPoSupplierCode: lastPoSupplierCode,
      lastPoSupplierName: lastPoSupplierName,
      // carry-over fields not in V2 form
      place:              editingItem?.place           ?? '',
      costCentreCode:     editingItem?.costCentreCode  ?? '',
      budgetGroupCode:    editingItem?.budgetGroupCode ?? '',
    }

    if (isEditMode) {
      onUpdate(line)
    } else {
      onAdd(line)
      resetForm()
    }
  }

  const isDuplicate = (code: string) =>
    !isEditMode && existingItemCodes.includes(code)

  // ── Rate history data ─────────────────────────────────────────────────────
  const rateHistoryData = {
    itemCode: selectedInfo?.itemCode ?? editingItem?.itemCode ?? '',
    itemName: selectedInfo?.itemName ?? editingItem?.itemName ?? '',
  }

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <>
      <Card
        size="small"
        style={{
          marginBottom: 16,
          border: '1px solid #f0f0f0',
          borderRadius: 8,
          boxShadow: '0 1px 4px rgba(0,0,0,0.04)',
        }}
        title={
          <Space>
            {isEditMode
              ? <><EditOutlined /> Editing Item</>
              : <><PlusOutlined /> Add Item</>
            }
            {isEditMode && selectedInfo && (
              <Typography.Text type="secondary" style={{ fontWeight: 'normal', fontSize: 12 }}>
                {selectedInfo.itemCode} — {selectedInfo.itemName}
              </Typography.Text>
            )}
          </Space>
        }
      >
        {/* ── Pending indent / PR warning ───────────────────────────────── */}
        {pendingWarning && (
          <Alert
            type="warning"
            showIcon
            message={pendingWarning}
            closable
            onClose={() => setPendingWarning(null)}
            style={{ marginBottom: 12 }}
          />
        )}

        <Form form={form} layout="vertical" size="middle" disabled={disabled}>
          {/* ── Row 1: Item + UOM + Current Stock + Qty + Required in Days ── */}
          <Row gutter={[16, 0]} align="bottom">
            {/* Item search */}
            <Col xs={24} sm={24} md={10} lg={8}>
              <Form.Item
                name="itemCode"
                label="Item"
                rules={[{ required: true, message: 'Item is required' }]}
                validateStatus={
                  form.getFieldValue('itemCode') &&
                  isDuplicate(form.getFieldValue('itemCode') as string)
                    ? 'warning' : undefined
                }
                help={
                  form.getFieldValue('itemCode') &&
                  isDuplicate(form.getFieldValue('itemCode') as string)
                    ? 'Already in list' : undefined
                }
              >
                <Select
                  showSearch
                  placeholder={`Type ≥ ${MIN_CHARS} characters to search…`}
                  options={itemOptions}
                  filterOption={false}
                  onSearch={handleItemSearch}
                  onSelect={handleItemSelect}
                  loading={searching}
                  notFoundContent={searching ? 'Searching…' : 'No items found'}
                  disabled={disabled || isEditMode}
                  optionRender={(opt) => {
                    const d = opt.data as ItemOption
                    return (
                      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: 4 }}>
                        <span style={{ flex: 1, minWidth: 0, overflow: 'hidden', textOverflow: 'ellipsis' }}>
                          {d.value} — {d.label}
                        </span>
                        <Space size={4} style={{ flexShrink: 0 }}>
                          <Tag color="blue" style={{ fontSize: 10, margin: 0 }}>
                            Stock: {d.currentStock ?? '—'}
                          </Tag>
                          {(d.pendingPrQty ?? 0) > 0 && (
                            <Tag color="orange" style={{ fontSize: 10, margin: 0 }}>
                              PR: {d.pendingPrQty}
                            </Tag>
                          )}
                          {(d.pendingPoQty ?? 0) > 0 && (
                            <Tag color="red" style={{ fontSize: 10, margin: 0 }}>
                              PO: {d.pendingPoQty}
                            </Tag>
                          )}
                        </Space>
                      </div>
                    )
                  }}
                />
              </Form.Item>
            </Col>

            {/* UOM — read-only, auto-filled */}
            <Col xs={24} sm={6} md={3} lg={2}>
              <Form.Item label="UOM">
                <Input
                  readOnly
                  value={selectedInfo?.uom ?? editingItem?.uom ?? ''}
                  placeholder="—"
                  style={{ background: '#fafafa', cursor: 'default', textAlign: 'center' }}
                />
              </Form.Item>
            </Col>

            {/* Current Stock — read-only, auto-filled */}
            <Col xs={24} sm={6} md={3} lg={3}>
              <Form.Item label="Current Stock">
                <Input
                  readOnly
                  value={currentStock ?? ''}
                  placeholder="—"
                  style={{ background: '#fafafa', cursor: 'default', textAlign: 'center' }}
                />
              </Form.Item>
            </Col>

            {/* Qty Required */}
            <Col xs={24} sm={6} md={4} lg={4}>
              <Form.Item
                name="qtyRequired"
                label="Qty Required"
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
                  style={{ width: '100%' }}
                  min={0.0001}
                  precision={4}
                  placeholder="0.0000"
                />
              </Form.Item>
            </Col>

            {/* Required in Days + calculated date */}
            <Col xs={24} sm={12} md={7} lg={6}>
              <Form.Item
                name="requiredDays"
                label={
                  <Space size={4}>
                    Required in Days
                    {calculatedDate && (
                      <Tag color="blue" style={{ fontSize: 11, marginInlineStart: 0 }}>
                        → {calculatedDate.format('DD-MM-YYYY')}
                      </Tag>
                    )}
                  </Space>
                }
              >
                <InputNumber
                  style={{ width: '100%' }}
                  min={0}
                  max={730}
                  precision={0}
                  placeholder="e.g. 7"
                  onChange={(val) => setRequiredDays(typeof val === 'number' ? val : null)}
                />
              </Form.Item>
            </Col>
          </Row>

          {/* ── Row 2: Model + Approx Cost + Max Cost + Rate + Machine ─── */}
          <Row gutter={[16, 0]}>
            <Col xs={24} sm={12} md={8} lg={6}>
              <Form.Item name="subCostCode" label="Sub Cost Centre">
                <Select
                  showSearch
                  placeholder="Search sub-cost…"
                  options={subCostOpts}
                  filterOption={prefixFilterOption}
                  filterSort={priorityFilterSort}
                  allowClear
                />
              </Form.Item>
            </Col>
            <Col xs={24} sm={12} md={6} lg={5}>
              <Form.Item name="model" label="Model ">
                <Input placeholder="Model or spec" maxLength={100} />
              </Form.Item>
            </Col>

            <Col xs={24} sm={12} md={4} lg={4}>
              <Form.Item name="maxCost" label="Max Cost">
                <InputNumber
                  style={{ width: '100%' }}
                  min={0}
                  precision={2}
                  placeholder="0.00"
                  prefix="₹"
                />
              </Form.Item>
            </Col>

            <Col xs={24} sm={12} md={4} lg={4}>
              <Form.Item
                name="rate"
                label={
                  <Space size={4}>
                    Rate
                    <Button
                      type="link"
                      size="small"
                      icon={<HistoryOutlined />}
                      style={{ padding: 0, height: 'auto', fontSize: 12 }}
                      disabled={!selectedInfo && !editingItem}
                      onClick={() => setRateHistoryOpen(true)}
                    >
                      History
                    </Button>
                  </Space>
                }
              >
                <InputNumber
                  style={{ width: '100%' }}
                  min={0}
                  precision={2}
                  placeholder="0.00"
                  prefix="₹"
                />
              </Form.Item>
            </Col>

            <Col xs={24} sm={12} md={6} lg={5}>
              <Form.Item name="machineNo" label="Machine">
                <Select
                  showSearch
                  placeholder="Select machine…"
                  options={machineOpts}
                  filterOption={prefixFilterOption}
                  filterSort={priorityFilterSort}
                  allowClear
                />
              </Form.Item>
            </Col>

            <Col xs={24} sm={6} md={4} lg={3}>
              <Form.Item
                name="categoryCode"
                label="Category"
                rules={[{ max: 1, message: 'Max 1 character' }]}
              >
                <Input placeholder="Cat" maxLength={1} style={{ textTransform: 'uppercase' }} />
              </Form.Item>
            </Col>
          </Row>

          {/* ── Row 3: Remarks + Is Sample Required ──────────────────── */}
          <Row gutter={[16, 0]}>
            <Col xs={24} sm={18} md={20}>
              <Form.Item name="remarks" label="Remarks">
                <Input placeholder="Any additional notes…" maxLength={500} />
              </Form.Item>
            </Col>
            <Col xs={24} sm={6} md={4}>
              <Form.Item name="isSample" label="Is Sample Required" valuePropName="checked">
                <Checkbox />
              </Form.Item>
            </Col>
          </Row>

          {/* Actions */}
          <div style={{ display: 'flex', justifyContent: 'flex-end' }}>
            <Space>
              {isEditMode && (
                <Button icon={<CloseOutlined />} onClick={onCancelEdit} disabled={disabled}>
                  Cancel
                </Button>
              )}
              <Button
                type="primary"
                icon={isEditMode ? <EditOutlined /> : <PlusOutlined />}
                onClick={() => void handleSubmit()}
                disabled={disabled}
              >
                {isEditMode ? 'Update Item' : 'Add Item'}
              </Button>
            </Space>
          </div>
        </Form>
      </Card>

      {/* Rate History Modal */}
      <PRRateHistoryModal
        open={rateHistoryOpen}
        onClose={() => setRateHistoryOpen(false)}
        itemCode={rateHistoryData.itemCode}
        itemName={rateHistoryData.itemName}
      />
    </>
  )
}
