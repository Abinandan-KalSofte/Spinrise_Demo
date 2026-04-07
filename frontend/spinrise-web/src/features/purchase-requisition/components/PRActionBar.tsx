import {
  Affix,
  Button,
  Popconfirm,
  Space,
  Typography,
  theme,
  Dropdown,
} from 'antd'
import {
  SaveOutlined,
  PlusOutlined,
  DeleteOutlined,
  PrinterOutlined,
  DownOutlined,
} from '@ant-design/icons'
import type { MenuProps } from 'antd'

interface PRActionBarProps {
  prNo: string | null
  isEditMode: boolean
  saving: boolean
  canSave: boolean
  onSave: () => void
  onAddItem: () => void
  onDelete?: () => void
  onPrint?: (format: 'pdf' | 'excel' | 'csv') => void
}

export function PRActionBar({
  prNo,
  isEditMode,
  saving,
  canSave,
  onSave,
  onAddItem,
  onDelete,
  onPrint,
}: PRActionBarProps) {
  const { token } = theme.useToken()

  const printMenu: MenuProps = {
    items: [
      { key: 'pdf',   label: 'PDF'   },
      { key: 'excel', label: 'Excel' },
      { key: 'csv',   label: 'CSV'   },
    ],
    onClick: ({ key }) => onPrint?.(key as 'pdf' | 'excel' | 'csv'),
  }

  return (
    <Affix offsetTop={0} style={{ zIndex: 100 }}>
      <div
        style={{
          background: token.colorBgContainer,
          borderBottom: `1px solid ${token.colorBorderSecondary}`,
          padding: '10px 24px',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-between',
          boxShadow: '0 2px 8px rgba(0,0,0,0.06)',
        }}
      >
        <Typography.Title level={5} style={{ margin: 0, color: token.colorTextHeading }}>
          Purchase Requisition
          {prNo && (
            <Typography.Text
              type="secondary"
              style={{ marginLeft: 8, fontWeight: 'normal', fontSize: 13 }}
            >
              {prNo}
            </Typography.Text>
          )}
          {!prNo && (
            <Typography.Text
              type="secondary"
              style={{ marginLeft: 8, fontWeight: 'normal', fontSize: 13 }}
            >
              New
            </Typography.Text>
          )}
        </Typography.Title>

        <Space>
          <Button icon={<PlusOutlined />} onClick={onAddItem}>
            Add Item
          </Button>

          {isEditMode && onPrint && (
            <Dropdown menu={printMenu} disabled={!prNo}>
              <Button icon={<PrinterOutlined />}>
                Print <DownOutlined />
              </Button>
            </Dropdown>
          )}

          {isEditMode && onDelete && (
            <Popconfirm
              title="Delete Purchase Requisition"
              description="This action cannot be undone. Delete this PR?"
              okText="Delete"
              okButtonProps={{ danger: true }}
              onConfirm={onDelete}
            >
              <Button icon={<DeleteOutlined />} danger>
                Delete
              </Button>
            </Popconfirm>
          )}

          <Button
            type="primary"
            icon={<SaveOutlined />}
            loading={saving}
            disabled={!canSave}
            onClick={onSave}
          >
            Save
          </Button>
        </Space>
      </div>
    </Affix>
  )
}
