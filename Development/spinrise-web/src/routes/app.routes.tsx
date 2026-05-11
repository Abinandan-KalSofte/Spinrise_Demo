/* eslint-disable react-refresh/only-export-components */
import { lazy } from 'react'
import type { RouteObject } from 'react-router-dom'
import MainLayout from '@/shared/layouts/MainLayout'
import ProtectedRoute from './ProtectedRoute'
import ErrorPage from '@/shared/components/ErrorPage'

const DashboardPage = lazy(() => import('@/features/dashboard/pages/DashboardPage'))
const PurchaseRequisitionReportPage = lazy(
  () => import('@/features/purchase-reports/pages/PurchaseRequisitionReportPage'),
)
const DatewisePrReportPage = lazy(
  () => import('@/features/purchase-reports/pages/DatewisePrReportPage'),
)
const PurchaseRequisitionListPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionListPage'),
)
const PurchaseRequisitionNewPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionNewPage'),
)
const PurchaseRequisitionEditPage = lazy(
  () => import('@/features/purchase-requisition/pages/PurchaseRequisitionEditPage'),
)
const PurchaseOrderListPage = lazy(
  () => import('@/features/purchase-order/pages/PurchaseOrderListPage'),
)
const PurchaseOrderNewPage = lazy(
  () => import('@/features/purchase-order/pages/PurchaseOrderNewPage'),
)
const PurchaseOrderEditPage = lazy(
  () => import('@/features/purchase-order/pages/PurchaseOrderEditPage'),
)
const RequisitionV1NewPage = lazy(
  () => import('@/features/purchase-requisition/pages/RequisitionV1NewPage'),
)
const RequisitionV2NewPage = lazy(
  () => import('@/features/purchase-requisition/pages/RequisitionV2NewPage'),
)
const RequisitionV3NewPage = lazy(
  () => import('@/features/purchase-requisition/pages/RequisitionV3NewPage'),
)
const RequisitionV1PrintPreviewPage = lazy(
  () => import('@/features/purchase-requisition/pages/RequisitionV1PrintPreviewPage'),
)

export const dashboardRoutes: RouteObject[] = [
  {
    path: '/',
    element: (
      <ProtectedRoute>
        <MainLayout />
      </ProtectedRoute>
    ),
    errorElement: <ErrorPage />,
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
        path: 'purchase/reports/datewise',
        element: <DatewisePrReportPage />,
      },
      {
        path: 'purchase/requisition',
        element: <PurchaseRequisitionListPage />,
      },
      {
        path: 'purchase/requisition/new',
        element: <PurchaseRequisitionNewPage />,
      },
      {
        path: 'purchase/requisition/edit/:prNo',
        element: <PurchaseRequisitionEditPage />,
      },
      {
        path: 'purchase/requisition/v1/new',
        element: <RequisitionV1NewPage />,
      },
      {
        path: 'purchase/requisition/v2/new',
        element: <RequisitionV2NewPage />,
      },
      {
        path: 'purchase/requisition/v3/new',
        element: <RequisitionV3NewPage />,
      },
      {
        path: 'purchase/requisition/v1/print-preview/:prNo',
        element: <RequisitionV1PrintPreviewPage />,
      },
      {
        path: 'purchase/order',
        element: <PurchaseOrderListPage />,
      },
      {
        path: 'purchase/order/new',
        element: <PurchaseOrderNewPage />,
      },
      {
        path: 'purchase/order/edit/:contNo/:contDt',
        element: <PurchaseOrderEditPage />,
      },
    ],
  },
]
