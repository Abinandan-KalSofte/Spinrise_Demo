import { useRef, useState } from 'react'
import { AutoComplete, Card, Col, DatePicker, Form, Input, InputNumber, Radio, Row, Select } from 'antd'
import type { FormInstance } from 'antd'
import type { POHeaderFormValues } from '../../hooks/usePurchaseOrderForm'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import type { SupplierLookup, AreaLookup, PaymentModeLookup, CurrencyLookup } from '@/features/purchase-requisition/types'

interface Props {
  form:            FormInstance<POHeaderFormValues>
  disabled?:       boolean
  onSupplierBlur:  (supCd: string) => void
  paymentModes:    PaymentModeLookup[]
  currencies:      CurrencyLookup[]
}

const SEASON_OPTS = [
  { value: 'K', label: 'K – Kharif' },
  { value: 'R', label: 'R – Rabi'   },
  { value: 'S', label: 'S – Summer' },
]

const TAX_OPTS = [
  { value: 'G', label: 'G – GST'     },
  { value: 'N', label: 'N – Non-GST' },
]

const CARD_SHADOW = '0 2px 8px rgba(0,0,0,0.06)'
const ITEM: React.CSSProperties = { marginBottom: 10 }
const LABEL: React.CSSProperties = { fontSize: 12, fontWeight: 500 }
function FL({ text }: { text: string }) { return <span style={LABEL}>{text}</span> }

export function POHeaderForm({ form, disabled, onSupplierBlur, paymentModes, currencies }: Props) {
  const [supplierOpts, setSupplierOpts] = useState<{ value: string; label: string }[]>([])
  const [supplierName, setSupplierName] = useState('')
  const [areaOpts,     setAreaOpts]     = useState<{ value: string; label: string }[]>([])
  const supplierTimer  = useRef<ReturnType<typeof setTimeout>>()
  const supplierData   = useRef<SupplierLookup[]>([])
  const areaTimer      = useRef<ReturnType<typeof setTimeout>>()

  const pmOpts   = paymentModes.map((p) => ({ value: p.pmCode, label: `${p.pmCode} – ${p.pmName}` }))
  const currOpts = currencies.map((c) => ({ value: c.currCode, label: c.currName ?? c.currCode }))

  const handleSupplierSearch = (val: string) => {
    clearTimeout(supplierTimer.current)
    if (val.length < 2) { setSupplierOpts([]); return }
    supplierTimer.current = setTimeout(() => {
      lookupApi.searchSuppliers(val)
        .then((data: SupplierLookup[]) => {
          supplierData.current = data
          setSupplierOpts(data.map((s) => ({
            value: s.supCode,
            label: `${s.supCode} – ${s.supName}`,
          })))
        })
        .catch(() => undefined)
    }, 300)
  }

  const handleSupplierSelect = (val: string) => {
    const code = val.toUpperCase()
    form.setFieldValue('supCd', code)
    const found = supplierData.current.find((s) => s.supCode === val)
    if (found) setSupplierName(found.supName)
    onSupplierBlur(code)
  }

  const handleAreaSearch = (val: string) => {
    clearTimeout(areaTimer.current)
    if (val.length < 2) { setAreaOpts([]); return }
    areaTimer.current = setTimeout(() => {
      lookupApi.searchAreas(val)
        .then((data: AreaLookup[]) =>
          setAreaOpts(data.map((a) => ({
            value: a.areaCode,
            label: `${a.areaCode} – ${a.areaName}`,
          })))
        )
        .catch(() => undefined)
    }, 300)
  }

  return (
    <Form form={form} layout="vertical" size="small">
      {/* ── Basic Details ─────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10, marginBottom: 12 }}
        styles={{ body: { padding: '16px 20px 4px' } }}
        title={<span style={{ fontSize: 13, fontWeight: 600 }}>Basic Details</span>}
      >
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={5}>
            <Form.Item name="contDt" label={<FL text="PO Date" />} rules={[{ required: true, message: 'PO date is required' }]} style={ITEM}>
              <DatePicker style={{ width: '100%' }} format="DD-MMM-YYYY" disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={5}>
            <Form.Item name="supCd" label={<FL text="Supplier Code" />} rules={[{ required: true, whitespace: true, message: 'Supplier code is required' }]} style={ITEM}>
              <AutoComplete
                options={supplierOpts}
                onSearch={handleSupplierSearch}
                onSelect={handleSupplierSelect}
                onBlur={(e) => onSupplierBlur((e.target as HTMLInputElement).value)}
                disabled={disabled}
                placeholder="Type to search…"
                style={{ textTransform: 'uppercase' }}
                filterOption={false}
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={8}>
            <Form.Item label={<FL text="Supplier Name" />} style={ITEM}>
              <Input value={supplierName} disabled placeholder="Auto-filled on supplier selection" />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="areaCode" label={<FL text="Area Code" />} style={ITEM}>
              <AutoComplete
                options={areaOpts}
                onSearch={handleAreaSearch}
                disabled={disabled}
                placeholder="Type to search area…"
                filterOption={false}
              />
            </Form.Item>
          </Col>
        </Row>
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={6}>
            <Form.Item name="currCode" label={<FL text="Currency" />} style={ITEM}>
              <Select
                options={currOpts}
                allowClear
                showSearch
                disabled={disabled}
                placeholder="Select currency"
                filterOption={(input, opt) =>
                  (opt?.label ?? '').toLowerCase().includes(input.toLowerCase())
                }
              />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="payMode" label={<FL text="Payment Mode" />} style={ITEM}>
              <Select options={pmOpts} allowClear disabled={disabled} placeholder="Select" />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="dlyType" label={<FL text="Delivery Type" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="acceptance" label={<FL text="Acceptance" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={6}>
            <Form.Item name="transport" label={<FL text="Transport" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="cropYear" label={<FL text="Crop Year" />} style={ITEM}>
              <Input disabled={disabled} placeholder="e.g. 2025-26" />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="season" label={<FL text="Season" />} style={ITEM}>
              <Select options={SEASON_OPTS} allowClear disabled={disabled} placeholder="Select" />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="taxChoice" label={<FL text="Tax Type" />} style={ITEM}>
              <Select options={TAX_OPTS} allowClear disabled={disabled} placeholder="Select" />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="supFileName" label={<FL text="Supplier File No" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={6}>
            <Form.Item name="lineNo" label={<FL text="Line No" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={1} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="sampleFlg" label={<FL text="Sample" />} style={ITEM}>
              <Radio.Group disabled={disabled}>
                <Radio value="Y">Yes</Radio>
                <Radio value="N">No</Radio>
              </Radio.Group>
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="lotFrom" label={<FL text="Lot From" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="lotTo" label={<FL text="Lot To" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
        <Row gutter={[16, 0]}>
          <Col xs={24} sm={6}>
            <Form.Item name="plCode" label={<FL text="PL Code" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={24} sm={6}>
            <Form.Item name="susCatType" label={<FL text="Sus Category" />} style={ITEM}>
              <Input disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
      </Card>

      {/* ── Financial Terms ─────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10, marginBottom: 12 }}
        styles={{ body: { padding: '16px 20px 4px' } }}
        title={<span style={{ fontSize: 13, fontWeight: 600 }}>Financial Terms</span>}
      >
        <Row gutter={[16, 0]}>
          <Col xs={12} sm={4}>
            <Form.Item name="commPer" label={<FL text="Commission %" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} max={100} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={12} sm={4}>
            <Form.Item name="commPerBal" label={<FL text="Comm / Bale" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={12} sm={4}>
            <Form.Item name="tcsPer" label={<FL text="TCS %" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} max={100} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={12} sm={4}>
            <Form.Item name="spotExpense" label={<FL text="Spot Expense" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
          <Col xs={12} sm={4}>
            <Form.Item name="incidentCharge" label={<FL text="Incident Charge" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
        <Row gutter={[16, 0]}>
          <Col xs={12} sm={4}>
            <Form.Item name="ftFlg" label={<FL text="Fixed Transport" />} style={ITEM}>
              <Radio.Group disabled={disabled}>
                <Radio value="Y">Yes</Radio>
                <Radio value="N">No</Radio>
              </Radio.Group>
            </Form.Item>
          </Col>
          <Col xs={12} sm={4}>
            <Form.Item name="ftAmt" label={<FL text="FT Amount" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} step={0.01} disabled={disabled} />
            </Form.Item>
          </Col>
        </Row>
      </Card>
    </Form>
  )
}
