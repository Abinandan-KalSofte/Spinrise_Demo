import { useEffect, useRef } from 'react'
import {
  Alert, Breadcrumb, Button, Card, Divider, Form, Space, Spin, Tag, Typography,
} from 'antd'
import {
  CheckOutlined, CloseOutlined, ShoppingCartOutlined, WarningOutlined,
} from '@ant-design/icons'
import { Link, useNavigate } from 'react-router-dom'
import dayjs from 'dayjs'
import { usePurchaseOrderForm } from '../hooks/usePurchaseOrderForm'
import type { POHeaderFormValues } from '../hooks/usePurchaseOrderForm'
import type { POParamDto } from '../types'
import { POHeaderForm }      from '../components/po-form/POHeaderForm'
import { POLineItemsTable }  from '../components/po-form/POLineItemsTable'
import { PODeliveryTable }   from '../components/po-form/PODeliveryTable'
import { PRLinePickerModal } from '../components/po-form/PRLinePickerModal'

const CARD_SHADOW = '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)'

const defaultPOParam: POParamDto = {
  requireSupplierLotNo:  true,
  centralizedOrder:      false,
  autoCalculateSeason:   false,
  masterEntryRequired:   false,
  prBased:               true,
  approvalEnabled:       true,
  additionalTaxRequired: false,
  ftAmt:                 0,
  woSample:              true,
}

export default function PurchaseOrderNewPage() {
  const navigate     = useNavigate()
  const [headerForm] = Form.useForm<POHeaderFormValues>()
  const initialized  = useRef(false)

  const {
    defaults, gstConfig, gstLoading,
    lines, delivery,
    prLines, prLinesLoading, prPickerOpen,
    defaultsLoading, saving, warnings,
    paymentModes, currencies,
    rateUnitValue, rateUnitSuggestion, rateUnits, weighments, activeTaxCodes,
    fetchGSTConfig, openPRPicker,
    handleRateUnitChange,
    addPRLines, addBlankLine,
    updateLine, removeLine,
    addDeliveryRow, updateDelivery, removeDelivery,
    setPrPickerOpen, doCreate,
  } = usePurchaseOrderForm()

  // Set base defaults on first load
  useEffect(() => {
    if (defaults && !initialized.current) {
      initialized.current = true
      headerForm.setFieldsValue({
        contDt:         dayjs(),
        currCode:       defaults.defaultCurrency || 'INR',
        ftFlg:          'N',
        lineNo:         1,
        commPer:        0,
        commPerBal:     0,
        tcsPer:         0,
        ftAmt:          0,
        spotExpense:    0,
        incidentCharge: 0,
        lotFrom:        0,
        lotTo:          0,
      })
    }
  }, [defaults, headerForm])

  // Set param-driven defaults when param arrives
  useEffect(() => {
    if (defaults?.param) {
      headerForm.setFieldsValue({
        sampleFlg:  defaults.param.woSample ? 'Y' : 'N',
        arrivalType: 'P',
        taxChoice:  'SINGLE',
        imInd:      'L',
      })
    }
  }, [defaults]) // eslint-disable-line react-hooks/exhaustive-deps

  // Auto-set arrivalType when rate unit changes
  useEffect(() => {
    if (rateUnitSuggestion) {
      headerForm.setFieldValue('arrivalType', rateUnitSuggestion)
    }
  }, [rateUnitSuggestion]) // eslint-disable-line react-hooks/exhaustive-deps

  // Reactive watches for derived values
  const arrivalType = (Form.useWatch('arrivalType', headerForm) as string | undefined) ?? 'P'
  const sampleFlgVal = Form.useWatch('sampleFlg', headerForm) as string | undefined
  const sampleMode  = sampleFlgVal === 'Y'

  const igstFlg = gstConfig
    ? (gstConfig.stateFlag === 'F' ? 'F' : gstConfig.gstStateCode === gstConfig.stateCode ? 'Y' : 'N')
    : 'Y'

  const handleSave = async () => {
    let values: POHeaderFormValues
    try {
      values = await headerForm.validateFields()
    } catch {
      return
    }
    await doCreate(values)
  }

  if (defaultsLoading) {
    return (
      <div style={{ padding: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <Spin tip="Loading configuration…" />
      </div>
    )
  }

  const gstLabel = gstConfig
    ? (gstConfig.suppType === 'I' ? 'IGST' : 'CGST + SGST')
    : null

  return (
    <div className="pr-page">

      {/* ── Sticky Header ────────────────────────────────────────────── */}
      <div className="pr-page__header">
        <Breadcrumb
          style={{ fontSize: 11 }}
          items={[
            { title: <Link to="/purchase/order" style={{ color: '#9ca3af' }}>Purchase Orders</Link> },
            { title: <span style={{ color: '#6b7280' }}>New PO</span> },
          ]}
        />
        <div className="pr-page__title-bar">
          <div className="pr-page__title-group">
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <div style={{ width: 4, height: 28, borderRadius: 2, background: '#1677ff', flexShrink: 0 }} />
              <ShoppingCartOutlined style={{ color: '#1677ff', fontSize: 13 }} />
              <Typography.Text strong style={{ fontSize: 15, color: '#111827', lineHeight: 1 }}>
                New Purchase Order
              </Typography.Text>
            </div>
          </div>
          <div className="pr-page__actions">
            <Space size={6}>
              <Button
                type="text"
                icon={<CloseOutlined />}
                disabled={saving}
                onClick={() => navigate('/purchase/order')}
                style={{ color: '#6b7280' }}
              >
                Cancel
              </Button>
              <Divider type="vertical" style={{ height: 24, margin: '0 2px', borderColor: '#e5e7eb' }} />
              <Button
                type="primary"
                icon={<CheckOutlined />}
                loading={saving}
                onClick={() => void handleSave()}
                style={{ fontWeight: 600, paddingInline: 20 }}
              >
                Save PO
              </Button>
            </Space>
          </div>
        </div>
      </div>

      {/* ── Body ─────────────────────────────────────────────────────── */}
      <div className="pr-page__body">

        {/* Warnings */}
        {warnings.map((w) => (
          <Alert key={w} type="warning" showIcon icon={<WarningOutlined />} message={w} closable />
        ))}

        {/* Header Form */}
        <POHeaderForm
          form={headerForm}
          disabled={saving}
          onSupplierBlur={(supCd) => void fetchGSTConfig(supCd)}
          onRateUnitChange={handleRateUnitChange}
          paymentModes={paymentModes}
          currencies={currencies}
          rateUnits={rateUnits}
          activeTaxCodes={activeTaxCodes}
          param={defaults?.param ?? defaultPOParam}
          gstConfig={gstConfig}
          initialSupplierName={null}
          initialAreaName={null}
        />

        {/* Variety Lines */}
        <Card
          bordered={false}
          style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
          styles={{ body: { padding: '16px 20px' } }}
          title={<span style={{ fontSize: 13, fontWeight: 600 }}>Variety Lines</span>}
          extra={
            <Space size={6}>
              {gstLoading && <Spin size="small" />}
              {gstLabel && (
                <Tag color={gstLabel === 'IGST' ? 'orange' : 'green'} style={{ fontSize: 11, fontWeight: 600 }}>
                  {gstLabel}
                </Tag>
              )}
              {gstConfig?.gstStateCode && (
                <Tag style={{ fontSize: 11 }}>State: {gstConfig.gstStateCode}</Tag>
              )}
            </Space>
          }
        >
          <POLineItemsTable
            lines={lines}
            prBased={defaults?.prBased ?? true}
            sampleMode={sampleMode}
            arrivalType={arrivalType}
            rateUnitValue={rateUnitValue}
            igstFlg={igstFlg}
            disabled={saving}
            onAdd={addBlankLine}
            onPickPR={() => void openPRPicker(
              headerForm.getFieldValue('contDt') as dayjs.Dayjs | undefined
                ? (headerForm.getFieldValue('contDt') as dayjs.Dayjs).format('YYYY-MM-DD')
                : undefined,
              (headerForm.getFieldValue('supCd') as string | undefined)?.trim().toUpperCase(),
            )}
            onUpdate={updateLine}
            onRemove={removeLine}
          />
        </Card>

        {/* Delivery Schedule */}
        <Card
          bordered={false}
          style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
          styles={{ body: { padding: '16px 20px' } }}
          title={<span style={{ fontSize: 13, fontWeight: 600 }}>Delivery Schedule</span>}
        >
          <PODeliveryTable
            rows={delivery}
            orderedQty={lines.reduce((s, l) => s + l.ordQty, 0)}
            orderDate={
              headerForm.getFieldValue('contDt') != null
                ? (headerForm.getFieldValue('contDt') as dayjs.Dayjs).format('YYYY-MM-DD')
                : dayjs().format('YYYY-MM-DD')
            }
            varCodeOptions={[...new Set(lines.map((l) => l.varCode).filter(Boolean))]}
            weighments={weighments}
            disabled={saving}
            onAdd={addDeliveryRow}
            onUpdate={updateDelivery}
            onRemove={removeDelivery}
          />
        </Card>

      </div>

      {/* PR Line Picker */}
      <PRLinePickerModal
        open={prPickerOpen}
        loading={prLinesLoading}
        lines={prLines}
        onSelect={(sel) => addPRLines(sel, gstConfig)}
        onClose={() => setPrPickerOpen(false)}
      />

    </div>
  )
}
