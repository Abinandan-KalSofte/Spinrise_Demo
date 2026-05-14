import { http, HttpResponse } from 'msw'

const BASE = /\/purchase-requisitions/

export const prHandlers = [
  http.get(/\/purchase-requisitions\/pre-checks/, () =>
    HttpResponse.json({
      success: true,
      message: 'Pre-checks completed.',
      data: {
        itemMasterExists:    true,
        departmentExists:    true,
        docNumberConfigured: true,
        backDateAllowed:     false,
        requireRefNo:        false,
        pendingIndentCheckEnabled: false,
        pendingPRCheckEnabled:     false,
        pendingPoDetailsEnabled:   false,
        purTypeFlgEnabled:         false,
      },
    }),
  ),

  http.get(/\/purchase-requisitions\/paginated/, () =>
    HttpResponse.json({
      success: true,
      message: 'Purchase Requisitions retrieved successfully.',
      data: {
        items:      [],
        totalCount: 0,
        page:       1,
        pageSize:   20,
        totalPages: 0,
      },
    }),
  ),

  http.get(/\/purchase-requisitions\/summary/, () =>
    HttpResponse.json({
      success: true,
      message: 'Summary counts retrieved.',
      data: { totalCount: 5, openCount: 3, approvedCount: 1, cancelledCount: 1 },
    }),
  ),

  http.get(/\/purchase-requisitions\/(\d+)$/, ({ params }) =>
    HttpResponse.json({
      success: true,
      message: 'Purchase Requisition retrieved successfully.',
      data: {
        prNo:     Number(params[0] ?? 1),
        prDate:   new Date().toISOString().split('T')[0],
        depCode:  'DEP1',
        depName:  'Test Department',
        prStatus: 'OPEN',
        lines:    [],
      },
    }),
  ),

  http.post(BASE, () =>
    HttpResponse.json(
      {
        success: true,
        message: 'Purchase Requisition created successfully.',
        data:    { prNo: 100 },
      },
      { status: 201 },
    ),
  ),

  http.put(/\/purchase-requisitions\/\d+$/, () =>
    HttpResponse.json({
      success: true,
      message: 'Purchase Requisition updated successfully.',
    }),
  ),

  http.delete(/\/purchase-requisitions\/\d+$/, () =>
    HttpResponse.json({
      success: true,
      message: 'Purchase Requisition deleted successfully.',
    }),
  ),
]
