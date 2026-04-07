import { create } from 'zustand'
import { lookupApi } from '../api/lookupApi'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  MachineLookup,
  SubCostLookup,
} from '../types'

interface LookupState {
  departments: DepartmentLookup[]
  employees:   EmployeeLookup[]
  poTypes:     POTypeLookup[]
  machines:    MachineLookup[]
  subCosts:    SubCostLookup[]
  loaded:  boolean
  loading: boolean
  error:   string | null
  loadAll: () => Promise<void>
  reset:   () => void
}

export const useLookupStore = create<LookupState>()((set, get) => ({
  departments: [],
  employees:   [],
  poTypes:     [],
  machines:    [],
  subCosts:    [],
  loaded:  false,
  loading: false,
  error:   null,

  loadAll: async () => {
    if (get().loaded || get().loading) return
    set({ loading: true, error: null })
    try {
      const [departments, employees, poTypes, machines, subCosts] =
        await Promise.all([
          lookupApi.getDepartments(),
          lookupApi.getEmployees(),
          lookupApi.getPOTypes(),
          lookupApi.getMachines(),
          lookupApi.getSubCosts(),
        ])
      set({ departments, employees, poTypes, machines, subCosts, loaded: true })
    } catch {
      set({ error: 'Failed to load reference data. Please refresh the page.' })
    } finally {
      set({ loading: false })
    }
  },

  reset: () =>
    set({
      departments: [], employees: [], poTypes: [],
      machines: [], subCosts: [],
      loaded: false, loading: false, error: null,
    }),
}))
