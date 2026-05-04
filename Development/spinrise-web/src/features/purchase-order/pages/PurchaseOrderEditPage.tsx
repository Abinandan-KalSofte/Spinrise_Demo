import { useCallback, useEffect, useState } from 'react'
import {
  Alert, App, Breadcrumb, Button, Card, Col, Descriptions,
  Input, Modal, Row, Space, Spin, Table, Tag, Tooltip, Typography,
} from 'antd'
import {
  ArrowLeftOutlined, CheckCircleOutlined, CloseCircleOutlined, StopOutlined,
} from '@ant-design/icons'
import { Link, useNavigate, useParams } from 'react-router-dom'
import dayjs from 'dayjs'
import type { ColumnsType } from 'antd/es/table'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import type {
  PODetailResponse, POLineResponse, DeliveryScheduleResponse,
  DiscountRateDto, POApprovalStatus,
} from '../types'

const CARD_SHADOW = '0 4px 16px rgba(0,0,0,0.08), 0 1px 4px rgba(0,0,0,0.05)'
const fmt2 = (v: number) => v?.toLocaleString('en-IN', { minimumFractionDigits: 2 }) ?? '—'

function ApprovalStatusTag({ approval, cancelFlag }: { approval: POApprovalStatus | null; cancelFlag: string }) {
  if (cancelFlag === 'Y')            return <Tag color="red">Cancelled</Tag>
  if (!approval)                     return <Tag color="blue">Pending</Tag>
  if (approval.appFlg === 'Y')       return <Tag color="green">Approved</Tag>
  if (approval.fAppFlg === 'Y')      return <Tag color="geekblue">L2 Approved</Tag>
  if (approval.firstAppFlg === 'Y')  return <Tag color="orange">L1 Approved</Tag>
  return <Tag color="blue">Pending</Tag>
}

export default function PurchaseOrderEditPage() {
  const { message } = App.useApp()
  const navigate    = useNavigate()
  const { contNo: contNoParam, contDt: contDtParam } = useParams<{ contNo: string; contDt: string }>()

  const contNo = Number(contNoParam)
  const contDt = decodeURIComponent(contDtParam ?? '')

  const [detail,     setDetail]     = useState<PODetailResponse | null>(null)
  const [approval,   setApproval]   = useState<POApprovalStatus | null>(null)
  const [loading,    setLoading]    = useState(true)
  const [approveOpen, setApproveOpen] = useState(false)
  const [approveLevel, setApproveLevel] = useState(1)
  const [approveAction, setApproveAction] = useState<'APPROVE' | 'REJECT'>('APPROVE')
  const [remarks,    setRemarks]    = useState('')
  const [submitting, setSubmitting] = useState(false)

  const loadDetail = useCallback(async () => {
    setLoading(true)
    try {
      const [det, appr] = await Promise.all([
        purchaseOrderApi.getById(contNo, contDt),
        purchaseOrderApi.getApprovalStatus(contNo, contDt),
      ])
      setDetail(det)
      setApproval(appr)
    } catch {
      void message.error('Failed to load Purchase Order.')
    } finally {
      setLoading(false)
    }
  }, [contNo, contDt, message])

  useEffect(() => { void loadDetail() }, [loadDetail])

  const openApproveModal = (level: number, action: 'APPROVE' | 'REJECT') => {
    setApproveLevel(level)
    setApproveAction(action)
    setRemarks('')
    setApproveOpen(true)
  }

  const handleApproveConfirm = async () => {
    setSubmitting(true)
    try {
      await purchaseOrderApi.approve(contNo, contDt, {
        level: approveLevel, action: approveAction, remarks: remarks.trim() || undefined,
      })
      void message.success(`PO ${approveAction === 'APPROVE' ? 'approved' : 'rejected'} at Level ${approveLevel}.`)
      setApproveOpen(false)
      void loadDetail()
    } catch {
      void message.error('Approval action failed.')
    } finally {
      setSubmitting(false)
    }
  }

  if (loading) {
    return (
      <div style={{ padding: 48, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <Spin tip="Loading Purchase Order…" />
      </div>
    )
  }

  if (!detail) {
    return (
      <Alert
        type="error" showIcon
        message="Purchase Order not found"
        action={<Button size="small" onClick={() => navigate('/purchase/order')}>Back to list</Button>}
      />
    )
  }

  const h           = detail.header
  const isCancelled = h.cancelFlag === 'Y'
  const isApproved  = h.appFlg    === 'Y'
  const canL1       = !isCancelled && !isApproved && approval?.firstAppFlg !== 'Y'
  const canL2       = !isCancelled && !isApproved && approval?.firstAppFlg === 'Y' && approval.fAppFlg !== 'Y'
  const canFinal    = !isCancelled && !isApproved && approval?.fAppFlg === 'Y' && approval.appFlg !== 'Y'

  const lineColumns: ColumnsType<POLineResponse> = [
    {
      title: 'Variety', dataIndex: 'varCode', width: 90, fixed: 'left',
      render: (v: string) => <span style={{ fontWeight: 600 }}>{v}</span>,
    },
    { title: 'Name', dataIndex: 'varName', width: 150, ellipsis: true },
    { title: 'Pack', dataIndex: 'packType', width: 65 },
    { title: 'Qty (Candy)', dataIndex: 'ordQty', width: 100, align: 'right', render: (v: number) => <Tag color="blue">{v}</Tag> },
    { title: 'Qty (Kg)', dataIndex: 'ordKgs', width: 90, align: 'right', render: (v: number) => v?.toLocaleString('en-IN') },
    { title: 'Rate/Candy', dataIndex: 'candyRate', width: 110, align: 'right', render: (v: number) => fmt2(v) },
    { title: 'Rate/Kg', dataIndex: 'rateKg', width: 90, align: 'right', render: (v: number) => v?.toFixed(4) },
    { title: 'CGst%', dataIndex: 'cgstPer', width: 72, align: 'right' },
    { title: 'SGst%', dataIndex: 'sgstPer', width: 72, align: 'right' },
    { title: 'IGst%', dataIndex: 'igstPer', width: 72, align: 'right' },
    { title: 'HSN', dataIndex: 'hsn', width: 90 },
    {
      title: 'PR No', dataIndex: 'iPrNo', width: 70, align: 'center',
      render: (v: number | null) => v ? <Tag color="purple" style={{ fontSize: 11 }}>{v}</Tag> : null,
    },
  ]

  const delColumns: ColumnsType<DeliveryScheduleResponse> = [
    { title: 'Delivery Date', dataIndex: 'delDate', width: 130, render: (v: string) => dayjs(v).format('DD-MMM-YYYY') },
    { title: 'Qty', dataIndex: 'delQty', width: 80, align: 'right' },
    { title: 'Variety', dataIndex: 'varCode', width: 90 },
    { title: 'Address', dataIndex: 'delAddress', ellipsis: true },
    { title: 'Instruction', dataIndex: 'instruction', ellipsis: true },
  ]

  const discColumns: ColumnsType<DiscountRateDto> = [
    { title: 'Variety', dataIndex: 'varCode', width: 100 },
    { title: 'Supplier', dataIndex: 'supCd', width: 100 },
    {
      title: 'Type', dataIndex: 'discType', width: 90,
      render: (v: string) => <Tag color={v === 'C' ? 'blue' : 'green'}>{v === 'C' ? 'Cash' : 'Trade'}</Tag>,
    },
    { title: 'Rate %', dataIndex: 'discPer', width: 80, align: 'right', render: (v: number) => fmt2(v) },
  ]

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>

      {/* ── Back nav ──────────────────────────────────────────────────── */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <Button
            type="text" size="small" icon={<ArrowLeftOutlined />}
            onClick={() => navigate('/purchase/order')}
            style={{ color: '#595959' }}
          >
            Back
          </Button>
          <Breadcrumb
            style={{ fontSize: 11 }}
            items={[
              { title: <Link to="/purchase/order" style={{ color: '#9ca3af' }}>Purchase Orders</Link> },
              { title: <span style={{ color: '#6b7280' }}>PO #{contNo}</span> },
            ]}
          />
        </div>
        <Space size={6}>
          {canL1 && (
            <>
              <Button type="primary" icon={<CheckCircleOutlined />} onClick={() => openApproveModal(1, 'APPROVE')}>
                L1 Approve
              </Button>
              <Tooltip title="Reject at L1">
                <Button danger icon={<CloseCircleOutlined />} onClick={() => openApproveModal(1, 'REJECT')} />
              </Tooltip>
            </>
          )}
          {canL2 && (
            <>
              <Button type="primary" icon={<CheckCircleOutlined />} onClick={() => openApproveModal(2, 'APPROVE')}>
                L2 Approve
              </Button>
              <Tooltip title="Reject at L2">
                <Button danger icon={<CloseCircleOutlined />} onClick={() => openApproveModal(2, 'REJECT')} />
              </Tooltip>
            </>
          )}
          {canFinal && (
            <>
              <Button type="primary" icon={<CheckCircleOutlined />} onClick={() => openApproveModal(3, 'APPROVE')}>
                Final Approve
              </Button>
              <Tooltip title="Reject">
                <Button danger icon={<CloseCircleOutlined />} onClick={() => openApproveModal(3, 'REJECT')} />
              </Tooltip>
            </>
          )}
        </Space>
      </div>

      {/* ── Title + status ────────────────────────────────────────────── */}
      <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginTop: -6 }}>
        <Typography.Title level={4} style={{ margin: 0 }}>
          Purchase Order #{contNo}
        </Typography.Title>
        <ApprovalStatusTag approval={approval} cancelFlag={h.cancelFlag} />
      </div>

      {isCancelled && (
        <Alert type="error" showIcon icon={<StopOutlined />} message="This Purchase Order has been cancelled." />
      )}

      {/* ── PO Details ───────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: '16px 20px' } }}
        title={<span style={{ fontSize: 13, fontWeight: 600 }}>PO Details</span>}
      >
        <Row gutter={[32, 8]}>
          <Col xs={24} sm={12}>
            <Descriptions
              size="small" column={2}
              labelStyle={{ color: '#6b7280', fontSize: 12, fontWeight: 500 }}
              contentStyle={{ fontSize: 13 }}
            >
              <Descriptions.Item label="PO Date">{dayjs(h.contDt).format('DD-MMM-YYYY')}</Descriptions.Item>
              <Descriptions.Item label="Supplier">{h.supCd}{h.supplierName ? ` – ${h.supplierName}` : ''}</Descriptions.Item>
              <Descriptions.Item label="Area">{h.areaCode || '—'}</Descriptions.Item>
              <Descriptions.Item label="Currency">{h.currCode || '—'}</Descriptions.Item>
              <Descriptions.Item label="Payment Mode">{h.payMode || '—'}</Descriptions.Item>
              <Descriptions.Item label="Delivery Type">{h.dlyType || '—'}</Descriptions.Item>
              <Descriptions.Item label="Crop Year">{h.cropYear || '—'}</Descriptions.Item>
              <Descriptions.Item label="Season">{h.season || '—'}</Descriptions.Item>
              <Descriptions.Item label="Tax Choice">{h.taxChoice || '—'}</Descriptions.Item>
              <Descriptions.Item label="Sample">{h.wosample === 'Y' ? 'Yes' : 'No'}</Descriptions.Item>
              <Descriptions.Item label="Prepared By">{h.createdBy || '—'}</Descriptions.Item>
            </Descriptions>
          </Col>
          <Col xs={24} sm={12}>
            <Descriptions
              size="small" column={2}
              labelStyle={{ color: '#6b7280', fontSize: 12, fontWeight: 500 }}
              contentStyle={{ fontSize: 13 }}
            >
              <Descriptions.Item label="Commission %">{fmt2(h.commPer)}</Descriptions.Item>
              <Descriptions.Item label="Comm / Bale">{fmt2(h.commPerBal)}</Descriptions.Item>
              <Descriptions.Item label="TCS %">{fmt2(h.tcsPer)}</Descriptions.Item>
              <Descriptions.Item label="FT Flag">{h.ftFlg}</Descriptions.Item>
              <Descriptions.Item label="FT Amount">{fmt2(h.ftAmt)}</Descriptions.Item>
              <Descriptions.Item label="Spot Expense">{fmt2(h.spotExpense)}</Descriptions.Item>
              <Descriptions.Item label="Incident Charge">{fmt2(h.incidentCharge)}</Descriptions.Item>
              <Descriptions.Item label="Acceptance">{h.acceptance || '—'}</Descriptions.Item>
              <Descriptions.Item label="Transport">{h.transport || '—'}</Descriptions.Item>
            </Descriptions>
          </Col>
        </Row>
      </Card>

      {/* ── Variety Lines ────────────────────────────────────────────── */}
      <Card
        bordered={false}
        style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
        styles={{ body: { padding: 0 } }}
        title={<span style={{ fontSize: 13, fontWeight: 600 }}>Variety Lines ({detail.lines.length})</span>}
      >
        <Table<POLineResponse>
          rowKey={(r) => `${r.varCode}|${r.lineNo}`}
          columns={lineColumns}
          dataSource={detail.lines}
          size="small"
          pagination={false}
          scroll={{ x: 'max-content' }}
          locale={{ emptyText: 'No lines' }}
        />
      </Card>

      {/* ── Delivery Schedule ────────────────────────────────────────── */}
      {detail.deliverySchedule.length > 0 && (
        <Card
          bordered={false}
          style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
          styles={{ body: { padding: 0 } }}
          title={<span style={{ fontSize: 13, fontWeight: 600 }}>Delivery Schedule</span>}
        >
          <Table<DeliveryScheduleResponse>
            rowKey={(_, i) => String(i)}
            columns={delColumns}
            dataSource={detail.deliverySchedule}
            size="small"
            pagination={false}
          />
        </Card>
      )}

      {/* ── Discount Rates ───────────────────────────────────────────── */}
      {detail.discountRates.length > 0 && (
        <Card
          bordered={false}
          style={{ boxShadow: CARD_SHADOW, borderRadius: 10 }}
          styles={{ body: { padding: 0 } }}
          title={<span style={{ fontSize: 13, fontWeight: 600 }}>Discount Rates</span>}
        >
          <Table<DiscountRateDto>
            rowKey={(_, i) => String(i)}
            columns={discColumns}
            dataSource={detail.discountRates}
            size="small"
            pagination={false}
          />
        </Card>
      )}

      {/* ── Approval Modal ───────────────────────────────────────────── */}
      <Modal
        open={approveOpen}
        title={
          <Space>
            {approveAction === 'APPROVE'
              ? <CheckCircleOutlined style={{ color: '#16a34a' }} />
              : <CloseCircleOutlined  style={{ color: '#dc2626' }} />
            }
            {approveAction === 'APPROVE'
              ? `Approve PO #${contNo} — Level ${approveLevel}`
              : `Reject PO #${contNo} — Level ${approveLevel}`}
          </Space>
        }
        onCancel={() => setApproveOpen(false)}
        onOk={() => void handleApproveConfirm()}
        okText={approveAction === 'APPROVE' ? 'Confirm Approve' : 'Confirm Reject'}
        okButtonProps={{ danger: approveAction === 'REJECT', loading: submitting }}
        width={460}
        destroyOnClose
      >
        <Typography.Paragraph style={{ color: '#374151', marginBottom: 14 }}>
          {approveAction === 'APPROVE'
            ? `You are about to approve PO #${contNo} at Level ${approveLevel}.`
            : `You are about to reject PO #${contNo} at Level ${approveLevel}. The PO will need to be re-submitted for approval.`}
        </Typography.Paragraph>
        <Typography.Text style={{ fontSize: 12, color: '#6b7280', display: 'block', marginBottom: 6 }}>
          Remarks (optional)
        </Typography.Text>
        <Input.TextArea
          rows={3}
          value={remarks}
          onChange={(e) => setRemarks(e.target.value)}
          placeholder="Enter remarks…"
        />
      </Modal>

    </div>
  )
}
