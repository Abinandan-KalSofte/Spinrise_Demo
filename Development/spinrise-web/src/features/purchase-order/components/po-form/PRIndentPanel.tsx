import { useEffect, useState } from 'react'
import { Button, Empty, Input, Select, Space, Spin, Table, Tag, Tooltip } from 'antd'
import { PlusCircleOutlined, SearchOutlined } from '@ant-design/icons'
import type { ColumnsType } from 'antd/es/table'
import dayjs from 'dayjs'
import { purchaseOrderApi } from '../../api/purchaseOrderApi'
import type { PRLineDto } from '../../types'

interface Props {
  contDt: string | null
  supplierCode: string | null
  onAddLine: (pr: PRLineDto) => void
  addedKeys: Set<string>
}

function prKey(pr: PRLineDto) {
  return `${pr.prNo}|${pr.prSNo}|${pr.varCode}`
}

export function PRIndentPanel({ contDt, supplierCode, onAddLine, addedKeys }: Props) {
  const [lines,    setLines]    = useState<PRLineDto[]>([])
  const [loading,  setLoading]  = useState(false)
  const [sortBy,   setSortBy]   = useState(1)
  const [search,   setSearch]   = useState('')

  useEffect(() => {
    if (!contDt) return
    setLoading(true)
    purchaseOrderApi.getPRLines({
      contDt,
      supplierCode: supplierCode || undefined,
      sortBy,
    })
      .then(setLines)
      .catch(() => setLines([]))
      .finally(() => setLoading(false))
  }, [contDt, supplierCode, sortBy])

  const filtered = search.trim()
    ? lines.filter((l) =>
        l.varCode.toLowerCase().includes(search.toLowerCase()) ||
        (l.varName ?? '').toLowerCase().includes(search.toLowerCase()) ||
        String(l.prNo).includes(search)
      )
    : lines

  const columns: ColumnsType<PRLineDto> = [
    {
      title: 'PR No',
      dataIndex: 'prNo',
      width: 70,
      render: (v) => <span style={{ fontVariantNumeric: 'tabular-nums' }}>{v}</span>,
    },
    {
      title: 'PR Date',
      dataIndex: 'prDate',
      width: 100,
      render: (v) => dayjs(v).format('DD-MMM-YYYY'),
    },
    {
      title: 'Variety',
      dataIndex: 'varCode',
      width: 90,
      render: (v, r) => (
        <Tooltip title={r.varName}>
          <Tag color="blue">{v}</Tag>
        </Tooltip>
      ),
    },
    {
      title: 'Pack Type',
      dataIndex: 'packType',
      width: 80,
      render: (v) => v || '—',
    },
    {
      title: 'Bal Qty',
      dataIndex: 'balanceQty',
      width: 80,
      align: 'right',
      render: (v: number) => v.toFixed(0),
    },
    {
      title: 'Bal Kgs',
      dataIndex: 'balanceKgs',
      width: 80,
      align: 'right',
      render: (v: number) => v.toFixed(2),
    },
    {
      title: 'Rate',
      dataIndex: 'candyRate',
      width: 80,
      align: 'right',
      render: (v: number) => v > 0 ? v.toFixed(2) : '—',
    },
    {
      title: '',
      width: 50,
      align: 'center',
      render: (_, r) => {
        const key     = prKey(r)
        const already = addedKeys.has(key)
        return (
          <Button
            size="small"
            type="text"
            icon={<PlusCircleOutlined />}
            disabled={already || r.balanceQty <= 0}
            style={{ color: already ? '#aaa' : '#1677ff' }}
            onClick={() => onAddLine(r)}
          />
        )
      },
    },
  ]

  return (
    <div>
      <Space style={{ marginBottom: 8 }}>
        <Select
          size="small"
          value={sortBy}
          onChange={setSortBy}
          style={{ width: 150 }}
          options={[
            { value: 1, label: 'Sort by Variety' },
            { value: 2, label: 'Sort by PR Date' },
            { value: 3, label: 'Sort by Requisitioner' },
          ]}
        />
        <Input
          size="small"
          prefix={<SearchOutlined />}
          placeholder="Filter variety / PR no…"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          style={{ width: 200 }}
          allowClear
        />
      </Space>

      {loading ? (
        <div style={{ textAlign: 'center', padding: 24 }}><Spin /></div>
      ) : filtered.length === 0 ? (
        <Empty description="No pending PR lines" image={Empty.PRESENTED_IMAGE_SIMPLE} style={{ padding: 16 }} />
      ) : (
        <Table<PRLineDto>
          rowKey={prKey}
          columns={columns}
          dataSource={filtered}
          size="small"
          pagination={false}
          scroll={{ x: 'max-content', y: 280 }}
        />
      )}
    </div>
  )
}
