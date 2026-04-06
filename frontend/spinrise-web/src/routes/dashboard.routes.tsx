/* eslint-disable react-refresh/only-export-components */
import { lazy } from 'react'
import type { RouteObject } from 'react-router-dom'
import MainLayout from '@/shared/layouts/MainLayout'
import ProtectedRoute from './ProtectedRoute'

const DashboardPage = lazy(() => import('@/features/dashboard/pages/DashboardPage'))
const PurchaseRequisitionReportPage = lazy(
  () => import('@/features/purchase-reports/pages/PurchaseRequisitionReportPage'),
)
const PurchaseRequisitionPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionPage'),
)

export const dashboardRoutes: RouteObject[] = [
  {
    path: '/',
    element: (
      <ProtectedRoute>
        <MainLayout />
      </ProtectedRoute>
    ),
    children: [
      {
        index: true,
        element: <DashboardPage />,
      },
      {
        path: 'purchase/reports/purchase-requisition',
        element: <PurchaseRequisitionReportPage />,
      },
      {
        path: 'purchase/requisition/new',
        element: <PurchaseRequisitionPage />,
      },
    ],
  },
]
