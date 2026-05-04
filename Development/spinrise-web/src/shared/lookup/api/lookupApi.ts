
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
} from '@/features/purchase-requisition/types'

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
}
