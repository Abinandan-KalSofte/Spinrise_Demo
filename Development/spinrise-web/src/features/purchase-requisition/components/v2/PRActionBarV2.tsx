import {
  Button,
  Dropdown,
  Popconfirm,
  Space,
  Tag,
  Typography,
  theme,
} from 'antd'
import {
  SaveOutlined,
  SendOutlined,
  DeleteOutlined,
  PrinterOutlined,
  DownOutlined,
} from '@ant-design/icons'
import type { MenuProps } from 'antd'
import { PR_STATUS_LABELS } from '../../types'

export type PrintFormat = 'pdf' | 'excel' | 'csv'

interface PRActionBarV2Props {
  prNo:        number | null
  prStatus:    string | null   // null = unsaved
  saving:      boolean
  canSave:     boolean         // lines.length > 0
  onSaveDraft: () => void
  onSubmit:    () => void
  onDelete?:   () => void
  onPrint?:    (format: PrintFormat) => void
}

export function PRActionBarV2({
  prNo,
  prStatus,
  saving,
  canSave,
  onSaveDraft,
  onSubmit,
  onDelete,
  onPrint,
}: PRActionBarV2Props) {
  const { token } = theme.useToken()

  const printMenu: MenuProps = {
    items: [
      { key: 'pdf',   label: 'PDF'   },
      { key: 'excel', label: 'Excel' },
      { key: 'csv',   label: 'CSV'   },
    ],
    onClick: ({ key }) => onPrint?.(key as PrintFormat),
  }

  const statusTag = prStatus ? (PR_STATUS_LABELS[prStatus] ?? null) : null

  return (
    <div
      style={{
        position: 'sticky',
        bottom: 0,
        zIndex: 100,
        background: token.colorBgContainer,
        borderTop: `1px solid ${token.colorBorderSecondary}`,
        padding: '10px 24px',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'space-between',
        boxShadow: '0 -2px 8px rgba(0,0,0,0.06)',
      }}
    >
      {/* Left — PR identity */}
      <Space size={8}>
        <Typography.Title level={5} style={{ margin: 0 }}>
          Purchase Requisition
        </Typography.Title>
        {prNo ? (
          <Typography.Text type="secondary" style={{ fontSize: 13 }}>
            {prNo}
          </Typography.Text>
        ) : (
          <Typography.Text type="secondary" style={{ fontSize: 13 }}>
            New
          </Typography.Text>
        )}
        {statusTag && (
          <Tag color={statusTag.color} style={{ marginLeft: 4 }}>
            {statusTag.label}
          </Tag>
        )}
      </Space>

      {/* Right — actions */}
      <Space>
        {onPrint && prNo && (
          <Dropdown menu={printMenu}>
            <Button icon={<PrinterOutlined />}>
              Print <DownOutlined />
            </Button>
          </Dropdown>
        )}

        {onDelete && prNo && (
          <Popconfirm
            title="Delete Purchase Requisition"
            description="This action cannot be undone."
            okText="Delete"
            okButtonProps={{ danger: true }}
            onConfirm={onDelete}
          >
            <Button icon={<DeleteOutlined />} danger disabled={saving}>
              Delete
            </Button>
          </Popconfirm>
        )}

        <Button
          icon={<SaveOutlined />}
          loading={saving}
          disabled={!canSave || saving}
          onClick={onSaveDraft}
        >
          Save Draft
        </Button>

        <Button
          type="primary"
          icon={<SendOutlined />}
          loading={saving}
          disabled={!canSave || saving}
          onClick={onSubmit}
        >
          Submit
        </Button>
      </Space>
    </div>
  )
}
