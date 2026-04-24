import { Button, Card, Descriptions, Modal, Skeleton, Space, Table, Tag, Tooltip, Typography } from 'antd'
import dayjs from 'dayjs'
import type { PRHeaderResponse } from '../../types'
import { STATUS_TAG } from './prListConfig'

interface PRViewModalProps {
  open:    boolean
  pr:      PRHeaderResponse | null
  loading: boolean
  onClose: () => void
}

export function PRViewModal({ open, pr, loading, onClose }: PRViewModalProps) {
  return (
    <Modal
      open={open}
      centered
      onCancel={onClose}
      width={960}
      title={
        pr ? (
          <Space size={10}>
            <Typography.Text strong style={{ fontSize: 16 }}>PR #{pr.prNo}</Typography.Text>
            <Tag
              color={STATUS_TAG[pr.prStatus]?.color ?? 'default'}
              style={{ fontWeight: 600, fontSize: 12 }}
            >
              {STATUS_TAG[pr.prStatus]?.label ?? pr.prStatus}
            </Tag>
          </Space>
        ) : 'Purchase Requisition'
      }
      footer={<Button type="primary" onClick={onClose}>Close</Button>}
      styles={{ body: { maxHeight: '70vh', overflowY: 'auto', paddingTop: 8 } }}
      destroyOnClose
    >
      {loading ? (
        <Skeleton active paragraph={{ rows: 8 }} />
      ) : pr ? (
        <PRViewContent pr={pr} />
      ) : null}
    </Modal>
  )
}

// ── Private sub-component ──────────────────────────────────────────────────────

function PRViewContent({ pr }: { pr: PRHeaderResponse }) {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>

      <Descriptions
        size="small"
        bordered
        column={{ xs: 1, sm: 2 }}
        labelStyle={{ fontWeight: 500, width: 130, background: '#fafafa' }}
      >
        <Descriptions.Item label="PR No">
          <Typography.Text strong style={{ fontSize: 15 }}>#{pr.prNo}</Typography.Text>
        </Descriptions.Item>
        <Descriptions.Item label="PR Date">
          {pr.prDate ? dayjs(pr.prDate).format('DD/MM/YYYY') : '—'}
        </Descriptions.Item>
        <Descriptions.Item label="Department">
          {pr.depName ? `${pr.depCode} – ${pr.depName}` : (pr.depCode || '—')}
        </Descriptions.Item>
        <Descriptions.Item label="Section">{pr.section || '—'}</Descriptions.Item>
        <Descriptions.Item label="Requested By">{pr.reqName || '—'}</Descriptions.Item>
        <Descriptions.Item label="Reference No">{pr.refNo || '—'}</Descriptions.Item>
        <Descriptions.Item label="Indent Type">{pr.iType || '—'}</Descriptions.Item>
        <Descriptions.Item label="PO Group">{pr.poGroupCode || '—'}</Descriptions.Item>
        <Descriptions.Item label="Sale Order No">{pr.saleOrderNo || '—'}</Descriptions.Item>
        <Descriptions.Item label="Scope Code">{pr.scopeCode || '—'}</Descriptions.Item>
        <Descriptions.Item label="Status">
          <Tag color={STATUS_TAG[pr.prStatus]?.color ?? 'default'} style={{ fontWeight: 600 }}>
            {STATUS_TAG[pr.prStatus]?.label ?? pr.prStatus}
          </Tag>
        </Descriptions.Item>
        <Descriptions.Item label="Created By">{pr.createdBy}</Descriptions.Item>
      </Descriptions>

      <Card
        size="small"
        bordered
        style={{ borderRadius: 6 }}
        title={
          <Space size={6}>
            <Typography.Text strong style={{ fontSize: 13 }}>Line Items</Typography.Text>
            <Tag style={{ fontVariantNumeric: 'tabular-nums' }}>{pr.lines.length}</Tag>
          </Space>
        }
        styles={{ body: { padding: 0 } }}
      >
        <Table
          size="small"
          rowKey="prSNo"
          dataSource={pr.lines}
          scroll={{ x: 680 }}
          pagination={false}
          columns={[
            { title: '#', dataIndex: 'prSNo', key: 'prSNo', width: 44, align: 'center' },
            {
              title: 'Item Code', dataIndex: 'itemCode', key: 'itemCode', width: 100,
              render: (v: string) => (
                <Typography.Text code style={{ fontSize: 11 }}>{v}</Typography.Text>
              ),
            },
            {
              title: 'Description', dataIndex: 'itemName', key: 'itemName', ellipsis: true,
              render: (v: string | undefined) => v
                ? <Tooltip title={v}><span style={{ display: 'block', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>{v}</span></Tooltip>
                : '—',
            },
            {
              title: 'UOM', dataIndex: 'uom', key: 'uom', width: 60, align: 'center',
              render: (v: string | undefined) => v || '—',
            },
            {
              title: 'Qty', dataIndex: 'qtyRequired', key: 'qtyRequired', width: 72, align: 'right',
              render: (v: number) => <strong>{v}</strong>,
            },
            {
              title: 'Stock', dataIndex: 'currentStock', key: 'currentStock', width: 80, align: 'right',
              render: (v: number | undefined) =>
                v != null ? v : <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Last Rate', dataIndex: 'lastPoRate', key: 'lastPoRate', width: 100, align: 'right',
              render: (v: number | undefined) =>
                v != null
                  ? `₹${v.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                  : <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Reqd. Date', dataIndex: 'requiredDate', key: 'requiredDate', width: 100,
              render: (v: string | undefined) =>
                v ? dayjs(v).format('DD/MM/YYYY') : <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Approx. Cost', dataIndex: 'approxCost', key: 'approxCost', width: 110, align: 'right' as const,
              render: (val: number | undefined, row: { lastPoRate?: number; qtyRequired: number }) => {
                const v = val && val > 0 ? val : (row.lastPoRate ?? 0) * (row.qtyRequired ?? 0)
                return v > 0
                  ? `₹ ${v.toLocaleString('en-IN', { minimumFractionDigits: 2 })}`
                  : <Typography.Text type="secondary">—</Typography.Text>
              },
            },
            {
              title: 'Remarks', dataIndex: 'remarks', key: 'remarks', ellipsis: true,
              render: (v: string | undefined) => v
                ? <Tooltip title={v}><span style={{ display: 'block', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>{v}</span></Tooltip>
                : <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Machine', dataIndex: 'machineNo', key: 'machineNo', width: 90,
              render: (v: string | undefined) => v || <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Sub-Cost', dataIndex: 'subCostCode', key: 'subCostCode', width: 80, align: 'right' as const,
              render: (v: number | undefined) =>
                v != null ? v : <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Draw No', dataIndex: 'drawNo', key: 'drawNo', width: 90,
              render: (v: string | undefined) => v || <Typography.Text type="secondary">—</Typography.Text>,
            },
            {
              title: 'Cat', dataIndex: 'categoryCode', key: 'categoryCode', width: 56, align: 'center' as const,
              render: (v: string | undefined) => v || <Typography.Text type="secondary">—</Typography.Text>,
            },
          ]}
        />
      </Card>

    </div>
  )
}
