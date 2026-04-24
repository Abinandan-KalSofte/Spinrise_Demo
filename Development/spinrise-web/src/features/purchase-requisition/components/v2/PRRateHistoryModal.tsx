import { useEffect, useMemo, useState } from 'react'
import { Modal, Table, Tag, Typography } from 'antd'
import type { ColumnsType } from 'antd/es/table'
import { HistoryOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import { purchaseRequisitionApi } from '../../api/purchaseRequisitionApi'
import type { PRItemHistoryDto } from '../../types'

interface PRRateHistoryModalProps {
  open:     boolean
  onClose:  () => void
  itemCode: string
  itemName: string
}

export function PRRateHistoryModal({ open, onClose, itemCode, itemName }: PRRateHistoryModalProps) {
  const [rows,    setRows]    = useState<PRItemHistoryDto[]>([])
  const [loading, setLoading] = useState(false)

  const COLUMNS = useMemo((): ColumnsType<PRItemHistoryDto> => [
    {
      title:     'PO No',
      dataIndex: 'poNo',
      key:       'poNo',
      width:     90,
    },
    {
      title:     'PO Date',
      dataIndex: 'poDate',
      key:       'poDate',
      width:     100,
      render:    (v: string) => dayjs(v).format('DD-MM-YYYY'),
    },
    {
      title:     'Supplier',
      dataIndex: 'supplierName',
      key:       'supplierName',
      ellipsis:  true,
      render:    (v?: string) => v || <Typography.Text type="secondary">—</Typography.Text>,
    },
    {
      title:     'Rate (₹)',
      dataIndex: 'rate',
      key:       'rate',
      width:     100,
      align:     'right',
      render:    (v: number) => (
        <Tag color="blue" style={{ fontVariantNumeric: 'tabular-nums' }}>
          ₹ {Number(v ?? 0).toFixed(2)}
        </Tag>
      ),
    },
    {
      title:     'Order Qty',
      dataIndex: 'orderQty',
      key:       'orderQty',
      width:     90,
      align:     'right',
    },
    {
      title:     'Rcvd Qty',
      dataIndex: 'receivedQty',
      key:       'receivedQty',
      width:     85,
      align:     'right',
    },
    {
      title:     'Pending',
      dataIndex: 'pendingQty',
      key:       'pendingQty',
      width:     80,
      align:     'right',
      render:    (v: number) =>
        v > 0
          ? <Tag color="orange" style={{ fontVariantNumeric: 'tabular-nums' }}>{v}</Tag>
          : <Typography.Text type="secondary">—</Typography.Text>,
    },
  ], [])

  useEffect(() => {
    if (!open || !itemCode) return
    setLoading(true)
    purchaseRequisitionApi.getItemHistory(itemCode)
      .then(setRows)
      .catch(() => setRows([]))
      .finally(() => setLoading(false))
  }, [open, itemCode])

  return (
    <Modal
      title={
        <Typography.Text strong>
          <HistoryOutlined style={{ marginRight: 8, color: '#1677ff' }} />
          Purchase History — {itemCode}
        </Typography.Text>
      }
      open={open}
      onCancel={onClose}
      footer={null}
      width={800}
      styles={{ body: { paddingTop: 8 } }}
    >
      <Typography.Text type="secondary" style={{ display: 'block', marginBottom: 12, fontSize: 13 }}>
        {itemName}
      </Typography.Text>

      <Table<PRItemHistoryDto>
        rowKey={(r) => `${r.poNo}-${r.poDate}`}
        columns={COLUMNS}
        dataSource={rows}
        loading={loading}
        size="small"
        pagination={false}
        scroll={{ x: 640 }}
        locale={{ emptyText: 'No purchase history found.' }}
      />
    </Modal>
  )
}
