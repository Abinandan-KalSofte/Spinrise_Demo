import type { DashboardData } from '../types'

// ── Backend integration ────────────────────────────────────────────────────────
// Swap this stub with a real call when the API is ready:
//
//   import { apiHelpers } from '@/shared/api/client'
//   export const getDashboardData = () => apiHelpers.get<DashboardData>('dashboard')
//
// The response shape must match DashboardData — no UI changes required.
// ──────────────────────────────────────────────────────────────────────────────

export const getDashboardData = (): Promise<DashboardData> =>
  Promise.resolve(DUMMY)

// ── Dummy data ────────────────────────────────────────────────────────────────

const DUMMY: DashboardData = {
  stats: {
    totalAmount:    74503000,
    pendingAmount:  12000000,
    approvedAmount: 50003000,
    rejectedCount:  12,
    totalTrend:     8.4,
    pendingTrend:   -3.2,
    approvedTrend:  12.1,
    rejectedTrend:  2.0,
  },
  trend: [
    { month: 'Apr', amount: 4200000 },
    { month: 'May', amount: 5800000 },
    { month: 'Jun', amount: 3900000 },
    { month: 'Jul', amount: 7100000 },
    { month: 'Aug', amount: 6500000 },
    { month: 'Sep', amount: 8200000 },
    { month: 'Oct', amount: 7400000 },
    { month: 'Nov', amount: 9100000 },
    { month: 'Dec', amount: 6800000 },
    { month: 'Jan', amount: 7500000 },
    { month: 'Feb', amount: 8900000 },
    { month: 'Mar', amount: 5200000 },
  ],
  statusDist: [
    { status: 'Open',     count: 45,  color: '#1677ff' },
    { status: 'Approved', count: 112, color: '#52c41a' },
    { status: 'Rejected', count: 12,  color: '#ff4d4f' },
  ],
  recent: [
    { key: '1', poNo: 'PO-2024-0312', date: '2024-03-15', vendor: 'Tech Supplies Ltd',    amount: 285000, status: 'APPROVED' },
    { key: '2', poNo: 'PO-2024-0311', date: '2024-03-14', vendor: 'Global Materials Co',  amount: 142500, status: 'OPEN'     },
    { key: '3', poNo: 'PO-2024-0310', date: '2024-03-13', vendor: 'Prime Parts Inc',      amount: 89000,  status: 'REJECTED' },
    { key: '4', poNo: 'PO-2024-0309', date: '2024-03-12', vendor: 'Industrial Supplies',  amount: 430000, status: 'APPROVED' },
    { key: '5', poNo: 'PO-2024-0308', date: '2024-03-11', vendor: 'Metro Equipment Corp', amount: 175000, status: 'OPEN'     },
  ],
}
