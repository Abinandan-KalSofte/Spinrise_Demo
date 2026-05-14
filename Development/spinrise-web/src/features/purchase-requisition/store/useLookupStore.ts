import { create } from 'zustand'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  MachineLookup,
  SubCostLookup,
  IndentTypeLookup,
} from '../types'

interface LookupState {
  departments: DepartmentLookup[]
  employees:   EmployeeLookup[]
  poTypes:     POTypeLookup[]
  machines:    MachineLookup[]
  subCosts:    SubCostLookup[]
  indentTypes: IndentTypeLookup[]
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
  indentTypes: [],
  loaded:  false,
  loading: false,
  error:   null,

  loadAll: async () => {
    if (get().loaded || get().loading) return
    set({ loading: true, error: null })
    try {
      const [departments, employees, poTypes, machines, subCosts, indentTypes] =
        await Promise.all([
          lookupApi.getDepartments(),
          lookupApi.getEmployees(),
          lookupApi.getPOTypes(),
          lookupApi.getMachines(),
          lookupApi.getSubCosts(),
          lookupApi.getIndentTypes(),
        ])
      set({ departments, employees, poTypes, machines, subCosts, indentTypes, loaded: true })
    } catch {
      set({ error: 'Failed to load reference data. Please refresh the page.' })
    } finally {
      set({ loading: false })
    }
  },

  reset: () =>
    set({
      departments: [], employees: [], poTypes: [],
      machines: [], subCosts: [], indentTypes: [],
      loaded: false, loading: false, error: null,
    }),
}))
