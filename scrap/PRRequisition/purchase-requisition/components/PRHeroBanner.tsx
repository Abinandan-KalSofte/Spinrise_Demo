import { Tag, Typography } from 'antd'

const { Title, Text } = Typography

interface Props {
  prNo: string
  status?: string
}

export function PRHeroBanner({ prNo, status = 'Draft' }: Props) {
  return (
    <div className="pr-page__hero">
      <div>
        <Tag color="geekblue" className="pr-page__hero-tag">
          Purchase Module
        </Tag>
        <Title level={2} className="pr-page__hero-title">
          Purchase Requisition
        </Title>
        <Text className="pr-page__hero-sub">
          Create and manage internal purchase requests with full item tracking, machine
          linkage, and cost centre allocation.
        </Text>
      </div>
      <div className="pr-page__hero-meta">
        <div className="pr-page__hero-meta-item">
          <span>Document No.</span>
          <strong>{prNo}</strong>
        </div>
        <div className="pr-page__hero-meta-item">
          <span>Status</span>
          <strong>{status}</strong>
        </div>
      </div>
    </div>
  )
}
