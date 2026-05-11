import { useEffect, useRef, useState } from 'react'
import {
  AutoComplete, Badge, Col, Collapse, DatePicker, Form, Input, InputNumber,
  Radio, Row, Select, Switch, Tabs, Tag, Typography,
} from 'antd'
import type { FormInstance } from 'antd'
import type { POHeaderFormValues } from '../../hooks/usePurchaseOrderForm'
import type { POParamDto, GSTConfigDto } from '../../types'
import type {
  AreaLookup, CurrencyLookup, PaymentModeLookup, SupplierLookup,
  RateUnitLookup, TaxCodeLookup, AgentLookup, EmployeeRMILookup,
} from '@/features/purchase-requisition/types'
import { lookupApi } from '@/shared/lookup/api/lookupApi'

interface Props {
  form:                 FormInstance<POHeaderFormValues>
  disabled?:            boolean
  onSupplierBlur:       (supCd: string) => void
  onRateUnitChange:     (unitName: string, value: number) => void
  paymentModes:         PaymentModeLookup[]
  currencies:           CurrencyLookup[]
  rateUnits:            RateUnitLookup[]
  activeTaxCodes:       TaxCodeLookup[]
  param:                POParamDto
  gstConfig:            GSTConfigDto | null
  initialSupplierName?: string | null
  initialAreaName?:     string | null
}

// ── Style constants ───────────────────────────────────────────────────────────

const CONTAINER: React.CSSProperties = {
  background:   '#fff',
  border:       '1px solid #f0f0f0',
  borderRadius: 12,
  padding:      '20px 24px 8px',
  boxShadow:    '0 2px 8px rgba(0,0,0,0.06)',
  marginBottom: 12,
}

const ITEM: React.CSSProperties = { marginBottom: 10 }

const LABEL_STYLE: React.CSSProperties = {
  fontSize:      11,
  fontWeight:    600,
  textTransform: 'uppercase',
  letterSpacing: '0.05em',
  color:         '#64748b',
}

// ── Sub-components ────────────────────────────────────────────────────────────

function FL({ text }: { text: string }) {
  return <span style={LABEL_STYLE}>{text}</span>
}

function SectionHeader({ title }: { title: string }) {
  return (
    <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 12, marginTop: 8 }}>
      <div style={{ width: 3, height: 14, borderRadius: 2, background: '#1677ff', flexShrink: 0 }} />
      <Typography.Text style={{ fontSize: 11, fontWeight: 700, color: '#374151', textTransform: 'uppercase', letterSpacing: '0.06em' }}>
        {title}
      </Typography.Text>
    </div>
  )
}

// ── Component ─────────────────────────────────────────────────────────────────

export function POHeaderForm({
  form, disabled, onSupplierBlur, onRateUnitChange,
  paymentModes, currencies, rateUnits, activeTaxCodes,
  param, gstConfig,
  initialSupplierName, initialAreaName,
}: Props) {
  // Supplier
  const [supplierOpts,    setSupplierOpts]    = useState<{ value: string; label: string }[]>([])
  const [supplierDisplay, setSupplierDisplay] = useState('')
  const [supplierTag,     setSupplierTag]     = useState<{ code: string; name: string } | null>(null)
  const supplierTimer = useRef<ReturnType<typeof setTimeout>>()
  const supplierData  = useRef<SupplierLookup[]>([])

  // Area
  const [areaOpts,    setAreaOpts]    = useState<{ value: string; label: string }[]>([])
  const [areaDisplay, setAreaDisplay] = useState('')
  const [areaTag,     setAreaTag]     = useState<{ code: string; name: string } | null>(null)
  const areaTimer = useRef<ReturnType<typeof setTimeout>>()
  const areaData  = useRef<AreaLookup[]>([])

  // Agent
  const [agentOpts,    setAgentOpts]    = useState<{ value: string; label: string }[]>([])
  const [agentDisplay, setAgentDisplay] = useState('')
  const agentTimer = useRef<ReturnType<typeof setTimeout>>()
  const agentData  = useRef<AgentLookup[]>([])

  // Employee (Signatory)
  const [empOpts,    setEmpOpts]    = useState<{ value: string; label: string }[]>([])
  const [empDisplay, setEmpDisplay] = useState('')
  const empTimer = useRef<ReturnType<typeof setTimeout>>()
  const empData  = useRef<EmployeeRMILookup[]>([])

  // Conditional field
  const [showFtAmt,   setShowFtAmt]   = useState(false)
  const [taxChoice,   setTaxChoice]   = useState<string>('SINGLE')
  const [formTouched, setFormTouched] = useState(false)

  // Initialize display labels on edit
  useEffect(() => {
    if (initialSupplierName) {
      const code = form.getFieldValue('supCd') as string | undefined
      if (code) {
        const label = `${code} – ${initialSupplierName}`
        setSupplierDisplay(label)
        setSupplierTag({ code, name: initialSupplierName })
      }
    }
  }, [initialSupplierName]) // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    if (initialAreaName) {
      const code = form.getFieldValue('areaCode') as string | undefined
      if (code) {
        const label = `${code} – ${initialAreaName}`
        setAreaDisplay(label)
        setAreaTag({ code, name: initialAreaName })
      }
    }
  }, [initialAreaName]) // eslint-disable-line react-hooks/exhaustive-deps

  // Initialize showFtAmt and taxChoice from form value (edit mode)
  useEffect(() => {
    const ftFlg = form.getFieldValue('ftFlg') as string | undefined
    setShowFtAmt(ftFlg === 'Y')
    const tc = form.getFieldValue('taxChoice') as string
    setTaxChoice(tc || 'SINGLE')
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  const pmOpts   = paymentModes.map((p) => ({ value: p.pmCode, label: `${p.pmCode} – ${p.pmName}` }))
  const currOpts = currencies.map((c) => ({ value: c.currCode, label: c.currName ?? c.currCode }))

  // ── Supplier handlers ──────────────────────────────────────────────────────

  const handleSupplierSearch = (val: string) => {
    clearTimeout(supplierTimer.current)
    const upper = val.toUpperCase()
    setSupplierDisplay(upper)
    setSupplierTag(null)
    if (upper.length < 2) { setSupplierOpts([]); return }
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
    const found = supplierData.current.find((s) => s.supCode === val)
    const label = found ? `${found.supCode} – ${found.supName}` : val
    setSupplierDisplay(label)
    setSupplierTag({ code: val, name: found?.supName ?? '' })
    form.setFieldValue('supCd', val)
    onSupplierBlur(val)
    setSupplierOpts([])
  }

  // ── Area handlers ──────────────────────────────────────────────────────────

  const handleAreaSearch = (val: string) => {
    clearTimeout(areaTimer.current)
    if (val.length < 2) { setAreaOpts([]); return }
    areaTimer.current = setTimeout(() => {
      lookupApi.searchAreas(val)
        .then((data: AreaLookup[]) => {
          areaData.current = data
          setAreaOpts(data.map((a) => ({
            value: a.areaCode,
            label: `${a.areaCode} – ${a.areaName}`,
          })))
        })
        .catch(() => undefined)
    }, 300)
  }

  const handleAreaSelect = (val: string) => {
    const found = areaData.current.find((a) => a.areaCode === val)
    const label = found ? `${found.areaCode} – ${found.areaName}` : val
    setAreaDisplay(label)
    setAreaTag({ code: val, name: found?.areaName ?? '' })
    form.setFieldValue('areaCode', val)
    setAreaOpts([])
  }

  // ── Agent handlers ─────────────────────────────────────────────────────────

  const handleAgentSearch = (val: string) => {
    clearTimeout(agentTimer.current)
    const upper = val.toUpperCase()
    setAgentDisplay(upper)
    if (upper.length < 2) { setAgentOpts([]); return }
    agentTimer.current = setTimeout(() => {
      lookupApi.searchAgents(val)
        .then((data: AgentLookup[]) => {
          agentData.current = data
          setAgentOpts(data.map((a) => ({
            value: a.agentCode,
            label: `${a.agentCode} – ${a.agentName}`,
          })))
        })
        .catch(() => undefined)
    }, 300)
  }

  const handleAgentSelect = (val: string) => {
    const found = agentData.current.find((a) => a.agentCode === val)
    const label = found ? `${found.agentCode} – ${found.agentName}` : val
    setAgentDisplay(label)
    form.setFieldValue('agentCode', val)
    setAgentOpts([])
  }

  // ── Employee (Signatory) handlers ──────────────────────────────────────────

  const handleEmpSearch = (val: string) => {
    clearTimeout(empTimer.current)
    const upper = val.toUpperCase()
    setEmpDisplay(upper)
    if (upper.length < 2) { setEmpOpts([]); return }
    empTimer.current = setTimeout(() => {
      lookupApi.searchEmployees(val)
        .then((data: EmployeeRMILookup[]) => {
          empData.current = data
          setEmpOpts(data.map((e) => ({
            value: e.empCode,
            label: `${e.empCode} – ${e.empName}`,
          })))
        })
        .catch(() => undefined)
    }, 300)
  }

  const handleEmpSelect = (val: string) => {
    const found = empData.current.find((e) => e.empCode === val)
    const label = found ? `${found.empCode} – ${found.empName}` : val
    setEmpDisplay(label)
    form.setFieldValue('acceptance', val)
    setEmpOpts([])
  }

  // ── Payment tab badge ──────────────────────────────────────────────────────

  const paymentTabHasError = !form.getFieldValue('dlyType') || !form.getFieldValue('acceptance') || !form.getFieldValue('transport')
  const paymentTabLabel = (
    <Badge dot={paymentTabHasError && formTouched} color="red" offset={[4, 0]}>
      Payment &amp; Terms
    </Badge>
  )

  // ── Tab 0: Order Details ───────────────────────────────────────────────────

  const tab0Content = (
    <>
      <SectionHeader title="Basic Information" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={5}>
          <Form.Item
            name="contDt"
            label={<FL text="PO Date" />}
            rules={[{ required: true, message: 'PO date is required' }]}
            style={ITEM}
          >
            <DatePicker style={{ width: '100%' }} format="DD-MMM-YYYY" />
          </Form.Item>
        </Col>
        <Col xs={24} sm={8}>
          <Form.Item
            name="supCd"
            label={<FL text="Supplier" />}
            rules={[{ required: true, whitespace: true, message: 'Supplier is required' }]}
            style={ITEM}
            getValueProps={() => ({ value: supplierDisplay })}
          >
            <AutoComplete
              options={supplierOpts}
              onSearch={handleSupplierSearch}
              onSelect={handleSupplierSelect}
              onBlur={() => onSupplierBlur(form.getFieldValue('supCd') as string ?? '')}
              filterOption={false}
              placeholder="Type supplier code or name…"
              style={{ width: '100%' }}
            />
          </Form.Item>
          {supplierTag && (
            <div style={{ marginTop: -6, marginBottom: 10 }}>
              <Tag color="blue" style={{ fontSize: 11, maxWidth: '100%', overflow: 'hidden', textOverflow: 'ellipsis' }}>
                {supplierTag.code} – {supplierTag.name}
              </Tag>
            </div>
          )}
          {gstConfig && (
            <div style={{ marginTop: -4, marginBottom: 8 }}>
              {gstConfig.stateFlag === 'F'
                ? <Tag color="default">No GST (Foreign)</Tag>
                : gstConfig.gstStateCode === gstConfig.stateCode
                  ? <Tag color="green">Intra-State GST (CGST+SGST)</Tag>
                  : <Tag color="blue">Inter-State GST (IGST)</Tag>
              }
            </div>
          )}
        </Col>
        <Col xs={24} sm={5}>
          <Form.Item
            name="areaCode"
            label={<FL text="Area" />}
            style={ITEM}
            getValueProps={() => ({ value: areaDisplay })}
          >
            <AutoComplete
              options={areaOpts}
              onSearch={handleAreaSearch}
              onSelect={handleAreaSelect}
              filterOption={false}
              placeholder="Type area code or name…"
              style={{ width: '100%' }}
            />
          </Form.Item>
          {areaTag && (
            <div style={{ marginTop: -6, marginBottom: 10 }}>
              <Tag color="cyan" style={{ fontSize: 11 }}>
                {areaTag.code} – {areaTag.name}
              </Tag>
            </div>
          )}
        </Col>
        <Col xs={24} sm={3}>
          <Form.Item
            name="currCode"
            label={<FL text="Currency" />}
            rules={[{ required: true, message: 'Currency is required' }]}
            style={ITEM}
          >
            <Select
              options={currOpts}
              allowClear
              showSearch
              placeholder="Select"
              filterOption={(input, opt) =>
                (opt?.label ?? '').toLowerCase().includes(input.toLowerCase())
              }
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={3}>
          <Form.Item
            name="payMode"
            label={<FL text="Payment Mode" />}
            rules={[{ required: true, message: 'Payment mode is required' }]}
            style={ITEM}
          >
            <Select options={pmOpts} allowClear placeholder="Select" />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item name="imInd" label={<FL text="Import/Local/Other" />} style={ITEM}>
            <Radio.Group>
              <Radio.Button value="L">L</Radio.Button>
              <Radio.Button value="I">I</Radio.Button>
              <Radio.Button value="U">U</Radio.Button>
            </Radio.Group>
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Order Configuration" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={4}>
          <Form.Item
            name="rateUnit"
            label={<FL text="Rate Unit *" />}
            rules={[{ required: true, message: 'Rate unit is required' }]}
            style={ITEM}
          >
            <Select
              options={rateUnits.map((ru) => ({ value: ru.unitName, label: ru.unitName }))}
              allowClear
              showSearch
              placeholder="Select"
              onChange={(val) => {
                const found = rateUnits.find((ru) => ru.unitName === val)
                if (found) onRateUnitChange(found.unitName, found.value)
              }}
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item
            name="arrivalType"
            label={<FL text="Arrival Type *" />}
            rules={[{ required: true, message: 'Arrival type is required' }]}
            style={ITEM}
          >
            <Select
              options={[
                { value: 'P', label: 'P – Pack-wise (Bales)' },
                { value: 'K', label: 'K – KGS-wise' },
              ]}
              allowClear
              placeholder="Select"
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item name="finalWeighment" label={<FL text="Final Weighment" />} style={ITEM}>
            <Select
              options={[
                { value: 'M', label: 'M – Mill' },
                { value: 'S', label: 'S – Scale' },
              ]}
              allowClear
              placeholder="Select"
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={5}>
          <Form.Item
            name="agentCode"
            label={<FL text="Agent/Broker" />}
            style={ITEM}
            getValueProps={() => ({ value: agentDisplay })}
          >
            <AutoComplete
              options={agentOpts}
              onSearch={handleAgentSearch}
              onSelect={handleAgentSelect}
              filterOption={false}
              placeholder="Type agent code or name…"
              style={{ width: '100%' }}
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item name="millRefNo" label={<FL text="Mill Ref No" />} style={ITEM}>
            <Input />
          </Form.Item>
        </Col>
        <Col xs={24} sm={3}>
          <Form.Item name="cropYear" label={<FL text="Crop Year" />} style={ITEM}>
            <Input placeholder="e.g. 2025-26" />
          </Form.Item>
        </Col>
      </Row>

      {param.requireSupplierLotNo && (
        <>
          <SectionHeader title="Lot Numbers" />
          <Row gutter={[16, 0]}>
            <Col sm={4}>
              <Form.Item name="lotFrom" label={<FL text="Lot From *" />} rules={[{ required: true }]} style={ITEM}>
                <InputNumber style={{ width: '100%' }} min={0} precision={0} />
              </Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="lotTo" label={<FL text="Lot To *" />} rules={[{ required: true }]} style={ITEM}>
                <InputNumber style={{ width: '100%' }} min={0} precision={0} />
              </Form.Item>
            </Col>
          </Row>
        </>
      )}

      <SectionHeader title="Season & Sample" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={5}>
          <Form.Item name="season" label={<FL text="Season" />} style={ITEM}>
            <Input maxLength={25} placeholder="Free text" />
          </Form.Item>
        </Col>
        <Col xs={24} sm={5}>
          <Form.Item
            name="sampleFlg"
            label={<FL text="With Sample Mode" />}
            style={ITEM}
            getValueProps={(v) => ({ checked: v === 'Y' })}
            getValueFromEvent={(checked: boolean) => (checked ? 'Y' : 'N')}
          >
            <Switch checkedChildren="With Sample" unCheckedChildren="Rate-Master" />
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Foreign Trade" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={4}>
          <Form.Item
            name="ftFlg"
            label={<FL text="Fixed Transport" />}
            style={ITEM}
            getValueProps={(v) => ({ checked: v === 'Y' })}
            getValueFromEvent={(checked: boolean) => {
              setShowFtAmt(checked)
              return checked ? 'Y' : 'N'
            }}
          >
            <Switch checkedChildren="Yes" unCheckedChildren="No" />
          </Form.Item>
        </Col>
        {showFtAmt && (
          <Col xs={24} sm={4}>
            <Form.Item name="ftAmt" label={<FL text="FT Amount" />} style={ITEM}>
              <InputNumber style={{ width: '100%' }} min={0} step={0.01} precision={2} />
            </Form.Item>
          </Col>
        )}
      </Row>
    </>
  )

  // ── Tab 1: Payment & Terms ─────────────────────────────────────────────────

  const tab1Content = (
    <>
      <SectionHeader title="Delivery & Signatory" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={5}>
          <Form.Item
            name="dlyType"
            label={<FL text="Delivery Type *" />}
            rules={[{ required: true, message: 'Please enter the Delivery Type' }]}
            style={ITEM}
          >
            <Input />
          </Form.Item>
        </Col>
        <Col xs={24} sm={7}>
          <Form.Item
            name="acceptance"
            label={<FL text="Authorised Signatory *" />}
            rules={[{ required: true, message: 'Please enter the Accepted Person' }]}
            style={ITEM}
            getValueProps={() => ({ value: empDisplay })}
          >
            <AutoComplete
              options={empOpts}
              onSearch={handleEmpSearch}
              onSelect={handleEmpSelect}
              filterOption={false}
              placeholder="Type employee code or name…"
              style={{ width: '100%' }}
            />
          </Form.Item>
        </Col>
        <Col xs={24} sm={5}>
          <Form.Item
            name="transport"
            label={<FL text="Mode of Transport *" />}
            rules={[{ required: true, message: 'Please enter the Mode of Transport' }]}
            style={ITEM}
          >
            <Input />
          </Form.Item>
        </Col>
        <Col xs={24} sm={5}>
          <Form.Item
            name="supFileName"
            label={<FL text="Supplier PO File Ref *" />}
            rules={[{ required: true, message: 'Please Upload Supplier Price List' }]}
            style={ITEM}
          >
            <Input />
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Address" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={4}>
          <Form.Item name="billingAddress" label={<FL text="Billing Address" />} style={ITEM}>
            <Input maxLength={10} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item name="deliveryAddrCode" label={<FL text="Delivery Address Code" />} style={ITEM}>
            <Input maxLength={10} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={6}>
          <Form.Item name="contactPerson" label={<FL text="Contact Person" />} style={ITEM}>
            <Input maxLength={50} />
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Payment Terms" />
      <Row gutter={[16, 0]}>
        <Col sm={5}>
          <Form.Item name="terms1" label={<FL text="Term 1" />} style={ITEM}>
            <Input maxLength={50} />
          </Form.Item>
        </Col>
        <Col sm={2}>
          <Form.Item name="terms1Days" label={<FL text="Days 1" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} precision={0} />
          </Form.Item>
        </Col>
        <Col sm={5}>
          <Form.Item name="terms2" label={<FL text="Term 2" />} style={ITEM}>
            <Input maxLength={50} />
          </Form.Item>
        </Col>
        <Col sm={2}>
          <Form.Item name="terms2Days" label={<FL text="Days 2" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} precision={0} />
          </Form.Item>
        </Col>
        <Col sm={2}>
          <Form.Item name="creditDays" label={<FL text="Credit Days" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} precision={0} />
          </Form.Item>
        </Col>
        <Col sm={2}>
          <Form.Item name="interestPer" label={<FL text="Interest %" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} step={0.01} precision={2} />
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Additional" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={8}>
          <Form.Item name="deliveryTerms" label={<FL text="Delivery Terms" />} style={ITEM}>
            <Input maxLength={200} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={10}>
          <Form.Item name="remarks" label={<FL text="Remarks" />} style={ITEM}>
            <Input.TextArea maxLength={255} autoSize={{ minRows: 2, maxRows: 4 }} />
          </Form.Item>
        </Col>
      </Row>
    </>
  )

  // ── Tab 2: Financial & Tax ─────────────────────────────────────────────────

  const tab2Content = (
    <>
      <SectionHeader title="Tax Configuration" />
      <Row gutter={[16, 0]}>
        <Col sm={8}>
          <Form.Item name="taxChoice" label={<FL text="Tax Mode" />} style={ITEM}>
            <Radio.Group onChange={(e) => setTaxChoice(e.target.value as string)}>
              <Radio.Button value="SINGLE">Single per Line</Radio.Button>
              <Radio.Button value="COMMON">Common for All</Radio.Button>
            </Radio.Group>
          </Form.Item>
        </Col>
        {taxChoice === 'COMMON' && (
          <Col sm={6}>
            <Form.Item name="commonTaxCode" label={<FL text="Common Tax Code *" />} style={ITEM}>
              <Select
                options={activeTaxCodes.map((t) => ({ value: t.taxCode, label: `${t.taxCode} – ${t.taxName}` }))}
                showSearch
                allowClear
                placeholder="Select GST Code"
              />
            </Form.Item>
          </Col>
        )}
      </Row>

      <SectionHeader title="Commission & Charges" />
      <Row gutter={[16, 0]}>
        <Col xs={12} sm={3}>
          <Form.Item name="commPer" label={<FL text="Commission %" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={0} max={100} step={0.01} precision={2} />
          </Form.Item>
        </Col>
        <Col xs={12} sm={3}>
          <Form.Item name="commPerBal" label={<FL text="Comm/Bale" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={0} step={0.01} precision={2} />
          </Form.Item>
        </Col>
        <Col xs={12} sm={3}>
          <Form.Item name="perBaleTruck" label={<FL text="Per Bale/Truck" />} style={ITEM}>
            <Select
              options={[
                { value: '', label: '—' },
                { value: 'T', label: 'T – Truck' },
                { value: 'B', label: 'B – Bale' },
              ]}
              allowClear
              placeholder="Select"
            />
          </Form.Item>
        </Col>
        <Col xs={12} sm={3}>
          <Form.Item name="tcsPer" label={<FL text="TCS %" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={0} max={100} step={0.01} precision={2} />
          </Form.Item>
        </Col>
        <Col xs={12} sm={3}>
          <Form.Item name="spotExpense" label={<FL text="Spot Expense ₹" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={0} step={0.01} precision={2} />
          </Form.Item>
        </Col>
        <Col xs={12} sm={3}>
          <Form.Item name="incidentCharge" label={<FL text="Incidental %" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={0} step={0.01} precision={2} />
          </Form.Item>
        </Col>
      </Row>

      <SectionHeader title="Classification" />
      <Row gutter={[16, 0]}>
        <Col xs={24} sm={3}>
          <Form.Item name="susCatType" label={<FL text="Sus Category" />} style={ITEM}>
            <Input maxLength={3} />
          </Form.Item>
        </Col>
        <Col xs={24} sm={4}>
          <Form.Item name="plCode" label={<FL text="Plant Code" />} style={ITEM}>
            <Input />
          </Form.Item>
        </Col>
        <Col xs={24} sm={3}>
          <Form.Item name="lineNo" label={<FL text="Line Number" />} style={ITEM}>
            <InputNumber style={{ width: '100%' }} min={1} precision={0} />
          </Form.Item>
        </Col>
      </Row>

      <Collapse size="small" style={{ marginTop: 8 }}>
        <Collapse.Panel header="Cotton Quality Parameters (optional)" key="quality">
          <Row gutter={[16, 0]}>
            <Col sm={4}>
              <Form.Item name="grade"    label={<FL text="Grade" />}         style={ITEM}><Input maxLength={15} /></Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="staple"   label={<FL text="Staple Length" />} style={ITEM}><Input maxLength={25} /></Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="mic"      label={<FL text="Micronaire" />}    style={ITEM}><Input maxLength={15} /></Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="strength" label={<FL text="Strength g/tex" />}style={ITEM}><Input maxLength={20} /></Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="moisture" label={<FL text="Moisture %" />}    style={ITEM}><Input maxLength={20} /></Form.Item>
            </Col>
            <Col sm={4}>
              <Form.Item name="trash"    label={<FL text="Trash %" />}       style={ITEM}><Input maxLength={15} /></Form.Item>
            </Col>
          </Row>
        </Collapse.Panel>
      </Collapse>
    </>
  )

  // ── Render ─────────────────────────────────────────────────────────────────

  return (
    <div style={CONTAINER}>
      <Form
        form={form}
        layout="vertical"
        size="small"
        disabled={disabled}
        onValuesChange={() => setFormTouched(true)}
      >
        <Tabs
          defaultActiveKey="order"
          items={[
            { key: 'order',    label: 'Order Details',  children: <>{tab0Content}</> },
            { key: 'payment',  label: paymentTabLabel,  children: <>{tab1Content}</> },
            { key: 'financial',label: 'Financial & Tax',children: <>{tab2Content}</> },
          ]}
        />
      </Form>
    </div>
  )
}
