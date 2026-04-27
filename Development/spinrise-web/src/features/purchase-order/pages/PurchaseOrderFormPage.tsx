import { useCallback, useEffect, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import {
  Alert, Button, Card, Col, Collapse, DatePicker, Flex, Form,
  Input, InputNumber, Row, Select, Skeleton, Space, Tag, Tooltip,
  Typography, message,
} from 'antd'
import {
  ArrowLeftOutlined,
  CheckCircleOutlined,
  ClockCircleOutlined,
  InfoCircleOutlined,
  SaveOutlined,
  ShoppingCartOutlined,
} from '@ant-design/icons'
import dayjs, { type Dayjs } from 'dayjs'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import { POLineTable } from '../components/po-form/POLineTable'
import { PRIndentPanel } from '../components/po-form/PRIndentPanel'
import type {
  PODefaultsDto,
  PODetailDto,
  POLineFormItem,
  PRLineDto,
  CreatePORequest,
  UpdatePORequest,
} from '../types'

const { Panel } = Collapse
const CARD_SHADOW = '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)'

interface HeaderFormValues {
  contDt:          Dayjs
  supCd:           string
  brkCd?:          string
  areaCode:        string
  payMode:         string
  dlyType:         string
  acceptance:      string
  transport:       string
  supFileName:     string
  cntCode?:        string
  imInd?:          string
  arrivalType?:    string
  rateUnit?:       string
  dueDate?:        Dayjs | null
  cropYear?:       string
  season?:         string
  millRefNo?:      string
  deliveryTerms?:  string
  remarks?:        string
  currCode?:       string
  taxChoice?:      string
  creditDays?:     number
  interestPer?:    number
  lotFrom?:        number
  lotTo?:          number
  commPer?:        number
  terms1?:         string
  terms1Days?:     number
  terms2?:         string
  terms2Days?:     number
  ftAmt?:          number
  ftFlg?:          string
  tcsPer?:         number
  freightPerBale?: number
  preparedBy?:     string
  grade?:          string
  staple?:         string
  micronaire?:     string
  strength?:       string
  moisture?:       string
  trash?:          string
}

export default function PurchaseOrderFormPage() {
  const navigate              = useNavigate()
  const { contNo, contDt: contDtParam } = useParams<{ contNo?: string; contDt?: string }>()
  const isEdit                = Boolean(contNo && contDtParam)

  const [form]             = Form.useForm<HeaderFormValues>()
  const [pageLoading,      setPageLoading]      = useState(true)
  const [saving,           setSaving]           = useState(false)
  const [defaults,         setDefaults]         = useState<PODefaultsDto | null>(null)
  const [detail,           setDetail]           = useState<PODetailDto | null>(null)
  const [lines,            setLines]            = useState<POLineFormItem[]>([])
  const [warnings,         setWarnings]         = useState<string[]>([])
  const [addedPRKeys,      setAddedPRKeys]      = useState<Set<string>>(new Set())

  const prBased = defaults?.params?.prBased === 'Y'

  // ── Load defaults + (edit) detail ─────────────────────────────────────────
  useEffect(() => {
    const init = async () => {
      try {
        const def = await purchaseOrderApi.getDefaults()
        setDefaults(def)

        if (isEdit && contNo && contDtParam) {
          const det = await purchaseOrderApi.getById(contNo, contDtParam)
          setDetail(det)

          const first = det.lines[0]
          if (first) {
            form.setFieldsValue({
              contDt:         dayjs(first.contDt),
              supCd:          first.supplierCode ?? '',
              brkCd:          first.agentCode    ?? '',
              areaCode:       first.areaCode     ?? '',
              payMode:        first.payMode       ?? '',
              dlyType:        first.dlyType       ?? '',
              acceptance:     first.acceptance    ?? '',
              transport:      first.transport     ?? '',
              supFileName:    first.supFileName   ?? '',
              cntCode:        first.countryCode   ?? '',
              imInd:          first.imInd         ?? 'L',
              arrivalType:    first.arrivalType   ?? 'P',
              rateUnit:       first.rateUnit      ?? '',
              dueDate:        first.dueDate ? dayjs(first.dueDate) : null,
              cropYear:       first.cropYear      ?? '',
              season:         first.season        ?? '',
              millRefNo:      first.millRefNo     ?? '',
              deliveryTerms:  first.deliveryTerms ?? '',
              remarks:        first.remarks       ?? '',
              currCode:       first.currCode      ?? '',
              taxChoice:      first.taxChoice     ?? 'SINGLE',
              creditDays:     Number(first.creditDays),
              interestPer:    Number(first.interestPer),
              lotFrom:        Number(first.supplierLotFrom ?? 0),
              lotTo:          Number(first.supplierLotTo ?? 0),
              commPer:        Number(first.commPer),
              terms1:         first.terms1        ?? '',
              terms1Days:     Number(first.terms1Days),
              terms2:         first.terms2        ?? '',
              terms2Days:     Number(first.terms2Days),
              ftAmt:          Number(first.ftAmt),
              ftFlg:          first.ftFlg         ?? 'N',
              tcsPer:         Number(first.tcsPer),
              freightPerBale: Number(first.freightPerBale),
              preparedBy:     first.preparedBy    ?? '',
              grade:          first.grade         ?? '',
              staple:         first.staple        ?? '',
              micronaire:     first.micronaire     ?? '',
              strength:       first.strength      ?? '',
              moisture:       first.moisture      ?? '',
              trash:          first.trash         ?? '',
            } as Partial<HeaderFormValues>)
          }

          setLines(det.lines.map((l) => ({
            key:         crypto.randomUUID(),
            varCode:     l.varCode,
            varName:     l.varName ?? '',
            bbFlag:      l.bbFlag,
            ordQty:      Number(l.ordQty),
            ordKgs:      Number(l.ordKgs),
            candyRate:   Number(l.candyRate),
            rateKg:      Number(l.rateKg),
            taxCode:     l.taxCode   ?? '',
            hsn:         l.hsn       ?? '',
            cgstPer:     Number(l.cgstPer),
            sgstPer:     Number(l.sgstPer),
            igstPer:     Number(l.igstPer),
            cashDisPer:  Number(l.cashDisPer),
            tradeDisPer: Number(l.tradeDisPer),
            cessPer:     Number(l.cessPer),
            insPer:      Number(l.insPer),
            noOfLoad:    Number(l.noOfLoad),
            iPrNo:       l.iPrNo    ?? null,
            prDate:      l.prDate   ?? null,
            prSNo:       l.prSNo    ?? null,
          })))
        } else {
          // New PO defaults
          form.setFieldsValue({
            contDt:      dayjs(),
            arrivalType: 'P',
            imInd:       'L',
            taxChoice:   'SINGLE',
            ftFlg:       'N',
            currCode:    def.defaultCurrency ?? '',
          })
        }
      } catch {
        message.error('Failed to load form data.')
      } finally {
        setPageLoading(false)
      }
    }
    void init()
  }, []) // eslint-disable-line react-hooks/exhaustive-deps

  // ── PR indent → add variety line ─────────────────────────────────────────
  const handleAddPRLine = useCallback((pr: PRLineDto) => {
    const key = `${pr.prNo}|${pr.prSNo}|${pr.varCode}`
    if (addedPRKeys.has(key)) return

    const newLine: POLineFormItem = {
      key:         crypto.randomUUID(),
      varCode:     pr.varCode,
      varName:     pr.varName ?? '',
      bbFlag:      'B',
      ordQty:      pr.balanceQty,
      ordKgs:      pr.balanceKgs,
      candyRate:   Number(pr.candyRate) || 0,
      rateKg:      0,
      taxCode:     '',
      hsn:         '',
      cgstPer:     0,
      sgstPer:     0,
      igstPer:     0,
      cashDisPer:  0,
      tradeDisPer: 0,
      cessPer:     0,
      insPer:      0,
      noOfLoad:    0,
      iPrNo:       pr.prNo,
      prDate:      pr.prDate,
      prSNo:       pr.prSNo,
    }

    setLines((prev) => [...prev, newLine])
    setAddedPRKeys((prev) => new Set([...prev, key]))
    message.success(`Variety ${pr.varCode} added from PR #${pr.prNo}`)
  }, [addedPRKeys])

  // ── Save ─────────────────────────────────────────────────────────────────
  const handleSave = async () => {
    let values: HeaderFormValues
    try {
      values = await form.validateFields()
    } catch {
      message.error('Please fill all required fields.')
      return
    }

    if (lines.length === 0) {
      message.error('Please add at least one variety line.')
      return
    }

    setSaving(true)
    setWarnings([])
    try {
      const payload: CreatePORequest = {
        contDt:         values.contDt.format('YYYY-MM-DD'),
        supCd:          values.supCd.trim(),
        brkCd:          values.brkCd?.trim(),
        areaCode:       values.areaCode.trim(),
        payMode:        values.payMode.trim(),
        dlyType:        values.dlyType.trim(),
        acceptance:     values.acceptance.trim(),
        transport:      values.transport.trim(),
        supFileName:    values.supFileName.trim(),
        cntCode:        values.cntCode?.trim(),
        imInd:          values.imInd ?? 'L',
        arrivalType:    values.arrivalType ?? 'P',
        rateUnit:       values.rateUnit?.trim(),
        dueDate:        values.dueDate?.format('YYYY-MM-DD') ?? null,
        cropYear:       values.cropYear?.trim(),
        season:         values.season?.trim(),
        millRefNo:      values.millRefNo?.trim(),
        deliveryTerms:  values.deliveryTerms?.trim(),
        remarks:        values.remarks?.trim(),
        currCode:       values.currCode?.trim(),
        taxChoice:      values.taxChoice ?? 'SINGLE',
        creditDays:     values.creditDays ?? 0,
        interestPer:    values.interestPer ?? 0,
        lotFrom:        values.lotFrom ?? 0,
        lotTo:          values.lotTo ?? 0,
        commPer:        values.commPer ?? 0,
        terms1:         values.terms1?.trim(),
        terms1Days:     values.terms1Days ?? 0,
        terms2:         values.terms2?.trim(),
        terms2Days:     values.terms2Days ?? 0,
        ftAmt:          values.ftAmt ?? 0,
        ftFlg:          values.ftFlg ?? 'N',
        tcsPer:         values.tcsPer ?? 0,
        freightPerBale: values.freightPerBale ?? 0,
        preparedBy:     values.preparedBy?.trim(),
        grade:          values.grade?.trim(),
        staple:         values.staple?.trim(),
        micronaire:     values.micronaire?.trim(),
        strength:       values.strength?.trim(),
        moisture:       values.moisture?.trim(),
        trash:          values.trash?.trim(),
        lines: lines.map((l) => ({
          varCode:     l.varCode,
          bbFlag:      l.bbFlag,
          ordQty:      l.ordQty,
          ordKgs:      l.ordKgs,
          candyRate:   l.candyRate,
          rateKg:      l.rateKg,
          taxCode:     l.taxCode || undefined,
          hsn:         l.hsn || undefined,
          cgstPer:     l.cgstPer,
          sgstPer:     l.sgstPer,
          igstPer:     l.igstPer,
          cashDisPer:  l.cashDisPer,
          tradeDisPer: l.tradeDisPer,
          cessPer:     l.cessPer,
          insPer:      l.insPer,
          noOfLoad:    l.noOfLoad,
          iPrNo:       l.iPrNo ?? undefined,
          prDate:      l.prDate ?? undefined,
          prSNo:       l.prSNo ?? undefined,
        })),
      }

      if (isEdit && contNo && contDtParam) {
        const updatePayload: UpdatePORequest = { ...payload, contNo }
        await purchaseOrderApi.update(contNo, contDtParam, updatePayload)
        message.success('Purchase Order updated successfully.')
      } else {
        const result = await purchaseOrderApi.create(payload)
        message.success(`Purchase Order #${result.contNo} created successfully.`)
      }

      navigate('/purchase/order')
    } catch (err: unknown) {
      const errMsg = err instanceof Error ? err.message : 'Save failed. Please try again.'
      message.error(errMsg)
    } finally {
      setSaving(false)
    }
  }

  const watchedContDt    = Form.useWatch('contDt',    form)
  const watchedSupCd     = Form.useWatch('supCd',     form)

  if (pageLoading) {
    return (
      <Flex vertical gap={16}>
        <Skeleton active paragraph={{ rows: 2 }} />
        <Skeleton active paragraph={{ rows: 6 }} />
      </Flex>
    )
  }

  const isApproved = detail?.lines[0]?.firstAppFlg === 'Y' || detail?.lines[0]?.appFlg === 'Y'

  return (
    <Flex vertical gap={16}>

      {/* ── Page Header ──────────────────────────────────────────────────── */}
      <div style={{
        display: 'flex', alignItems: 'center',
        justifyContent: 'space-between', paddingBottom: 16, borderBottom: '1px solid #f0f0f0',
      }}>
        <Space>
          <Button icon={<ArrowLeftOutlined />} onClick={() => navigate('/purchase/order')} />
          <div style={{ display: 'flex', alignItems: 'center', gap: 10 }}>
            <ShoppingCartOutlined style={{ fontSize: 20, color: '#1677ff' }} />
            <Typography.Title level={4} style={{ margin: 0 }}>
              {isEdit ? `Edit PO #${contNo}` : 'New Purchase Order'}
            </Typography.Title>
            {isApproved && <Tag color="green" icon={<CheckCircleOutlined />}>Approved</Tag>}
            {detail?.lines[0]?.cancelFlg === 'Y' && <Tag color="red">Cancelled</Tag>}
          </div>
        </Space>
        <Space>
          <Button onClick={() => navigate('/purchase/order')}>Cancel</Button>
          <Button
            type="primary"
            icon={<SaveOutlined />}
            loading={saving}
            onClick={() => void handleSave()}
            disabled={isApproved || detail?.lines[0]?.cancelFlg === 'Y'}
          >
            {isEdit ? 'Update' : 'Save PO'}
          </Button>
        </Space>
      </div>

      {/* ── Warnings ──────────────────────────────────────────────────────── */}
      {warnings.map((w, i) => (
        <Alert key={i} type="warning" showIcon message={w} />
      ))}

      {prBased && (
        <Alert
          type="info"
          showIcon
          icon={<InfoCircleOutlined />}
          message="PR-Based mode: HSN and Tax Code are mandatory for each variety."
        />
      )}

      {/* ── Header Form ───────────────────────────────────────────────────── */}
      <Card
        title="PO Header"
        bordered={false}
        style={{ boxShadow: CARD_SHADOW }}
        styles={{ body: { paddingBottom: 8 } }}
      >
        <Form form={form} layout="vertical" size="small">
          <Row gutter={[16, 0]}>
            <Col xs={12} sm={6} md={4}>
              <Form.Item
                name="contDt"
                label="PO Date"
                rules={[{ required: true, message: 'Required' }]}
              >
                <DatePicker style={{ width: '100%' }} format="DD-MMM-YYYY" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="supCd"
                label="Supplier Code"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input style={{ textTransform: 'uppercase' }} placeholder="SUPCODE" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item name="brkCd" label="Agent/Broker Code">
                <Input style={{ textTransform: 'uppercase' }} placeholder="BRKTCODE" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="areaCode"
                label="Area"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input style={{ textTransform: 'uppercase' }} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item name="cntCode" label="Country Code">
                <Input style={{ textTransform: 'uppercase' }} />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={12} sm={6} md={4}>
              <Form.Item
                name="payMode"
                label="Pay Mode"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item
                name="dlyType"
                label="Delivery Type"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="acceptance"
                label="Acceptance"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={5}>
              <Form.Item
                name="transport"
                label="Transport"
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="arrivalType" label="Arrival Type">
                <Select
                  options={[
                    { value: 'P', label: 'Pack-wise' },
                    { value: 'K', label: 'KGS-wise' },
                  ]}
                />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="imInd" label="Local/Import">
                <Select
                  options={[
                    { value: 'L', label: 'Local' },
                    { value: 'I', label: 'Import' },
                  ]}
                />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="currCode" label="Currency">
                <Input style={{ textTransform: 'uppercase' }} placeholder="INR" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="rateUnit" label="Rate Unit">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="dueDate" label="Due Date">
                <DatePicker style={{ width: '100%' }} format="DD-MMM-YYYY" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="cropYear" label="Crop Year">
                <Input placeholder="2025-26" />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="season" label="Season">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="taxChoice" label="Tax Choice">
                <Select
                  options={[
                    { value: 'SINGLE', label: 'Single' },
                    { value: 'BOTH',   label: 'Both' },
                  ]}
                />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="creditDays" label="Credit Days">
                <InputNumber style={{ width: '100%' }} min={0} precision={0} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="interestPer" label="Interest %">
                <InputNumber style={{ width: '100%' }} min={0} precision={2} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="commPer" label="Comm %">
                <InputNumber style={{ width: '100%' }} min={0} precision={2} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="tcsPer" label="TCS %">
                <InputNumber style={{ width: '100%' }} min={0} precision={2} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="freightPerBale" label="Freight/Bale">
                <InputNumber style={{ width: '100%' }} min={0} precision={2} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="lotFrom" label="Lot From">
                <InputNumber style={{ width: '100%' }} min={0} precision={0} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="lotTo" label="Lot To">
                <InputNumber style={{ width: '100%' }} min={0} precision={0} />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={3}>
              <Form.Item name="ftAmt" label="FT Amt">
                <InputNumber style={{ width: '100%' }} min={0} precision={2} />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="grade" label="Grade">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="staple" label="Staple">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="micronaire" label="Micronaire">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="strength" label="Strength">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="moisture" label="Moisture">
                <Input />
              </Form.Item>
            </Col>
            <Col xs={12} sm={6} md={4}>
              <Form.Item name="trash" label="Trash">
                <Input />
              </Form.Item>
            </Col>
          </Row>

          <Row gutter={[16, 0]}>
            <Col xs={24} sm={12}>
              <Form.Item name="remarks" label="Remarks">
                <Input.TextArea rows={2} />
              </Form.Item>
            </Col>
            <Col xs={24} sm={6}>
              <Form.Item
                name="supFileName"
                label={
                  <span>
                    Supplier Price List File{' '}
                    <span style={{ color: '#ff4d4f' }}>*</span>
                    <Tooltip title="Enter the filename of the uploaded supplier price list">
                      <InfoCircleOutlined style={{ marginLeft: 4, color: '#aaa' }} />
                    </Tooltip>
                  </span>
                }
                rules={[{ required: true, message: 'Required' }]}
              >
                <Input placeholder="price-list.pdf" />
              </Form.Item>
            </Col>
            <Col xs={24} sm={6}>
              <Form.Item name="preparedBy" label="Prepared By">
                <Input />
              </Form.Item>
            </Col>
          </Row>
        </Form>
      </Card>

      {/* ── Variety Lines ─────────────────────────────────────────────────── */}
      <Card
        title={
          <Space>
            Variety Lines
            <Tag color="blue">{lines.length}</Tag>
          </Space>
        }
        bordered={false}
        style={{ boxShadow: CARD_SHADOW }}
      >
        <POLineTable lines={lines} prBased={prBased} onChange={setLines} />
      </Card>

      {/* ── PR Indent Panel ───────────────────────────────────────────────── */}
      <Collapse
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 8 }}
      >
        <Panel
          header={
            <Space>
              <ClockCircleOutlined style={{ color: '#d97706' }} />
              <span>Pending PR Lines (Indent)</span>
              <Typography.Text type="secondary" style={{ fontSize: 12 }}>
                — click + to add a variety from PR
              </Typography.Text>
            </Space>
          }
          key="pr-indent"
        >
          <PRIndentPanel
            contDt={watchedContDt ? (watchedContDt as Dayjs).format('YYYY-MM-DD') : null}
            supplierCode={watchedSupCd || null}
            onAddLine={handleAddPRLine}
            addedKeys={addedPRKeys}
          />
        </Panel>
      </Collapse>

      {/* ── Approval Status (edit mode) ───────────────────────────────────── */}
      {isEdit && detail && detail.approvalConfig.length > 0 && (
        <Card
          title={<Space><CheckCircleOutlined />Approval Configuration</Space>}
          bordered={false}
          style={{ boxShadow: CARD_SHADOW }}
        >
          <Row gutter={[12, 12]}>
            {detail.approvalConfig.map((cfg) => (
              <Col key={cfg.appSno} xs={24} sm={8}>
                <Card
                  size="small"
                  style={{ borderRadius: 8, border: '1px solid #f0f0f0' }}
                >
                  <Typography.Text strong style={{ display: 'block' }}>
                    Level {cfg.appLevel} — {cfg.appLevelName}
                  </Typography.Text>
                  <Typography.Text type="secondary" style={{ fontSize: 12 }}>
                    {cfg.appUserPrintName || cfg.appUserName || cfg.appUserId}
                  </Typography.Text>
                  {cfg.appDesignation && (
                    <Typography.Text type="secondary" style={{ fontSize: 11, display: 'block' }}>
                      {cfg.appDesignation}
                    </Typography.Text>
                  )}
                </Card>
              </Col>
            ))}
          </Row>

          {/* Approval flags */}
          <Space style={{ marginTop: 12 }}>
            {detail.lines[0] && (
              <>
                <Tag color={detail.lines[0].firstAppFlg === 'Y' ? 'green' : 'default'}>
                  Level 1: {detail.lines[0].firstAppFlg === 'Y' ? 'Approved' : 'Pending'}
                </Tag>
                <Tag color={detail.lines[0].appFlg === 'Y' ? 'green' : 'default'}>
                  Final: {detail.lines[0].appFlg === 'Y' ? 'Approved' : 'Pending'}
                </Tag>
              </>
            )}
          </Space>
        </Card>
      )}

    </Flex>
  )
}
