import { useState } from 'react'
import { Button, Modal, Space, Table, Tag, Typography } from 'antd'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import type { PRLineDto } from '../../types'

interface Props {
  open:     boolean
  loading:  boolean
  lines:    PRLineDto[]
  onSelect: (selected: PRLineDto[]) => void
  onClose:  () => void
}

export function PRLinePickerModal({ open, loading, lines, onSelect, onClose }: Props) {
  const [selected, setSelected] = useState<PRLineDto[]>([])

  const columns: ColumnsType<PRLineDto> = [
    {
      title: 'PR No',
      dataIndex: 'prNo',
      width: 75,
      render: (v: number) => <span style={{ fontWeight: 600 }}>{v}</span>,
    },
    {
      title: 'PR Date',
      dataIndex: 'prDate',
      width: 100,
      render: (v: string) => dayjs(v).format('DD-MMM-YY'),
    },
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 90,
      render: (v: string, r) => (
        <div>
          <div style={{ fontWeight: 600 }}>{v}</div>
          <div style={{ fontSize: 11, color: '#6b7280' }}>{r.varName}</div>
        </div>
      ),
    },
    {
      title: 'Pack',
      dataIndex: 'packType',
      width: 55,
    },
    {
      title: 'Bal Qty',
      dataIndex: 'balanceQty',
      width: 75,
      align: 'right',
      render: (v: number) => <Tag color="blue">{v}</Tag>,
    },
    {
      title: 'Rate/Candy',
      dataIndex: 'candyRate',
      width: 90,
      align: 'right',
      render: (v: number) => v != null
        ? v.toLocaleString('en-IN', { minimumFractionDigits: 2 })
        : '—',
    },
    {
      title: 'Requisitioner',
      dataIndex: 'requisitionerName',
      ellipsis: true,
    },
  ]

  const handleOk = () => {
    if (selected.length === 0) return
    onSelect(selected)
    setSelected([])
  }

  const handleClose = () => {
    setSelected([])
    onClose()
  }

  const rowKey = (r: PRLineDto) => `${r.prNo}|${r.prSno}|${r.varCode}`

  return (
    <Modal
      open={open}
      title={
        <Space>
          <Typography.Text strong>Select Pending PR Lines</Typography.Text>
          {selected.length > 0 && (
            <Tag color="blue">{selected.length} selected</Tag>
          )}
        </Space>
      }
      width={820}
      onCancel={handleClose}
      footer={[
        <Button key="cancel" onClick={handleClose}>Cancel</Button>,
        <Button
          key="add"
          type="primary"
          disabled={selected.length === 0}
          onClick={handleOk}
        >
          {selected.length > 0 ? `Add ${selected.length} Line${selected.length > 1 ? 's' : ''}` : 'Add Lines'}
        </Button>,
      ]}
      destroyOnClose
    >
      <Table<PRLineDto>
        rowKey={rowKey}
        columns={columns}
        dataSource={lines}
        loading={loading}
        size="small"
        scroll={{ x: 'max-content', y: 400 }}
        pagination={false}
        rowSelection={{
          type: 'checkbox',
          selectedRowKeys: selected.map(rowKey),
          onChange: (_, rows) => setSelected(rows),
        }}
        locale={{ emptyText: 'No pending PR lines found' }}
      />
    </Modal>
  )
}
