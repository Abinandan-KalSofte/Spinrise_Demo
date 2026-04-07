import { Descriptions, Modal, Tag, Typography } from 'antd'
import { InfoCircleOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'

interface PRRateHistoryModalProps {
  open:               boolean
  onClose:            () => void
  itemCode:           string
  itemName:           string
  lastPoRate:         number | null
  lastPoDate:         string | null
  lastPoSupplierName: string | null
}

export function PRRateHistoryModal({
  open,
  onClose,
  itemCode,
  itemName,
  lastPoRate,
  lastPoDate,
  lastPoSupplierName,
}: PRRateHistoryModalProps) {
  const hasHistory = lastPoRate != null || lastPoDate != null || lastPoSupplierName != null

  return (
    <Modal
      title={
        <Typography.Text strong>
          <InfoCircleOutlined style={{ marginRight: 8, color: '#1677ff' }} />
          Rate History — {itemCode}
        </Typography.Text>
      }
      open={open}
      onCancel={onClose}
      footer={null}
      width={440}
    >
      <Typography.Text type="secondary" style={{ display: 'block', marginBottom: 16, fontSize: 13 }}>
        {itemName}
      </Typography.Text>

      {hasHistory ? (
        <Descriptions
          column={1}
          bordered
          size="small"
          styles={{ label: { width: 140, fontWeight: 500 } }}
        >
          <Descriptions.Item label="Last PO Rate">
            {lastPoRate != null ? (
              <Tag color="blue" style={{ fontSize: 14, padding: '2px 10px' }}>
                ₹{lastPoRate.toLocaleString('en-IN', { minimumFractionDigits: 2 })}
              </Tag>
            ) : (
              <Typography.Text type="secondary">—</Typography.Text>
            )}
          </Descriptions.Item>

          <Descriptions.Item label="Last PO Date">
            {lastPoDate
              ? dayjs(lastPoDate).format('DD-MM-YYYY')
              : <Typography.Text type="secondary">—</Typography.Text>
            }
          </Descriptions.Item>

          <Descriptions.Item label="Supplier">
            {lastPoSupplierName || <Typography.Text type="secondary">—</Typography.Text>}
          </Descriptions.Item>
        </Descriptions>
      ) : (
        <Typography.Text type="secondary">
          No purchase history available for this item.
        </Typography.Text>
      )}
    </Modal>
  )
}
