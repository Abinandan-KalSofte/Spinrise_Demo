
import { apiHelpers } from '@/shared/api/client'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  ItemLookup,
  MachineLookup,
  SubCostLookup,
  SupplierLookup,
  VarietyLookup,
  AreaLookup,
  PaymentModeLookup,
  CurrencyLookup,
  RateUnitLookup,
  WeighmentLookup,
  AgentLookup,
  EmployeeRMILookup,
  TaxCodeLookup,
  IndentTypeLookup,
} from '@/features/purchase-requisition/types'
import type { PagedResult } from '@/features/purchase-requisition/api/purchaseRequisitionApi'

const BASE = 'lookups'

export const lookupApi = {
  getDepartments: () => apiHelpers.get<DepartmentLookup[]>(`${BASE}/departments`),
  getEmployees:   () => apiHelpers.get<EmployeeLookup[]>(`${BASE}/employees`),
  getPOTypes:     () => apiHelpers.get<POTypeLookup[]>(`${BASE}/po-types`),
  searchItems: (search: string, depCode?: string, itemGroup?: string) => {
    let url = `${BASE}/items?search=${encodeURIComponent(search)}`
    if (depCode)   url += `&depCode=${encodeURIComponent(depCode)}`
    if (itemGroup) url += `&itemGroup=${encodeURIComponent(itemGroup)}`
    return apiHelpers.get<ItemLookup[]>(url)
  },
  getMachines: (depCode?: string) =>
    apiHelpers.get<MachineLookup[]>(`${BASE}/machines${depCode ? `?depCode=${encodeURIComponent(depCode)}` : ''}`),
  getSubCosts:    () => apiHelpers.get<SubCostLookup[]>(`${BASE}/sub-costs`),
  searchSuppliers: (search: string) =>
    apiHelpers.get<SupplierLookup[]>(`${BASE}/suppliers?search=${encodeURIComponent(search)}`),
  searchVarieties: (search: string) =>
    apiHelpers.get<VarietyLookup[]>(`${BASE}/varieties?search=${encodeURIComponent(search)}`),
  searchAreas: (search: string) =>
    apiHelpers.get<AreaLookup[]>(`${BASE}/areas?search=${encodeURIComponent(search)}`),
  getPaymentModes: () =>
    apiHelpers.get<PaymentModeLookup[]>(`${BASE}/payment-modes`),
  getCurrencies: () =>
    apiHelpers.get<CurrencyLookup[]>(`${BASE}/currencies`),
  getRateUnits: () =>
    apiHelpers.get<RateUnitLookup[]>(`${BASE}/rate-units`),
  getWeighments: () =>
    apiHelpers.get<WeighmentLookup[]>(`${BASE}/weighments`),
  searchAgents: (term: string) =>
    apiHelpers.get<AgentLookup[]>(`${BASE}/agents?term=${encodeURIComponent(term)}`),
  searchEmployees: (term: string) =>
    apiHelpers.get<EmployeeRMILookup[]>(`${BASE}/employees/search?term=${encodeURIComponent(term)}`),
  getActiveTaxCodes: () =>
    apiHelpers.get<TaxCodeLookup[]>(`${BASE}/tax-codes`),

  getIndentTypes: () =>
    apiHelpers.get<IndentTypeLookup[]>(`${BASE}/indent-types`),

  getItemsPaginated: (params: { search?: string; depCode?: string; page: number; pageSize: number }) => {
    const qs = new URLSearchParams()
    if (params.search)  qs.set('search',   params.search)
    if (params.depCode) qs.set('depCode',  params.depCode)
    qs.set('page',     String(params.page))
    qs.set('pageSize', String(params.pageSize))
    return apiHelpers.get<PagedResult<ItemLookup>>(`${BASE}/items/paginated?${qs.toString()}`)
  },
}
