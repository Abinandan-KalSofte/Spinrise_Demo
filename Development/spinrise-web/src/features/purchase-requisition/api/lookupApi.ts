import { apiHelpers } from '@/shared/api/client'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  ItemLookup,
  MachineLookup,
  SubCostLookup,
} from '../types'

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
  getMachines:    () => apiHelpers.get<MachineLookup[]>(`${BASE}/machines`),
  getSubCosts:    () => apiHelpers.get<SubCostLookup[]>(`${BASE}/sub-costs`),
}
