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
  searchItems:    (search: string) =>
    apiHelpers.get<ItemLookup[]>(`${BASE}/items?search=${encodeURIComponent(search)}`),
  getMachines:    () => apiHelpers.get<MachineLookup[]>(`${BASE}/machines`),
  getSubCosts:    () => apiHelpers.get<SubCostLookup[]>(`${BASE}/sub-costs`),
}
