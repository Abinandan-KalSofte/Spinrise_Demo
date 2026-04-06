import { Button, Card, Col, Row, Space, Typography } from 'antd'
import { ReloadOutlined, SaveOutlined } from '@ant-design/icons'

const { Text } = Typography

interface Props {
  itemCount: number
  saving: boolean
  onSave: () => void
  onReset: () => void
}

export function PRFooterActions({ itemCount, saving, onSave, onReset }: Props) {
  return (
    <Card className="pr-card pr-card--actions">
      <Row justify="space-between" align="middle">
        <Col>
          <Text type="secondary">
            {itemCount} item{itemCount !== 1 ? 's' : ''} in requisition
          </Text>
        </Col>
        <Col>
          <Space size="middle">
            <Button
              icon={<ReloadOutlined />}
              size="large"
              onClick={onReset}
              className="pr-btn--reset"
            >
              Clear All
            </Button>
            <Button
              type="primary"
              icon={<SaveOutlined />}
              size="large"
              loading={saving}
              onClick={onSave}
              className="pr-btn--save"
            >
              Save Requisition
            </Button>
          </Space>
        </Col>
      </Row>
    </Card>
  )
}
