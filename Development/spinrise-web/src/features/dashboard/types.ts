export interface DashboardStats {
  totalAmount:    number
  pendingAmount:  number
  approvedAmount: number
  rejectedCount:  number
  totalTrend:     number   // % change vs previous period (+/-)
  pendingTrend:   number
  approvedTrend:  number
  rejectedTrend:  number
}

export interface TrendPoint {
  month:  string
  amount: number
}

export interface StatusPoint {
  status: string
  count:  number
  color:  string
}

export interface RecentPO {
  key:    string
  poNo:   string
  date:   string
  vendor: string
  amount: number
  status: string
}

export interface DashboardData {
  stats:      DashboardStats
  trend:      TrendPoint[]
  statusDist: StatusPoint[]
  recent:     RecentPO[]
}
