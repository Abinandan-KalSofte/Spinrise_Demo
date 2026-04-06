export interface PRItem {
  id: string
  itemCode: string
  itemName: string
  uom: string
  rate: number
  currentStock: number
  quantityRequired: number
  costCentre: string
  budgetGroup: string
  machineNo: string
  machineModel: string
  machineDescription: string
  requiredDate: string
  place: string
  approxCost: number
  remarks: string
  sampleFlag: boolean
}

export interface DepartmentOption {
  code: string
  name: string
}

export interface POGroupOption {
  code: string
  name: string
}

export interface ItemGroupOption {
  code: string
  name: string
}

export interface ItemOption {
  code: string
  name: string
  uom: string
  rate: number
  currentStock: number
}

export interface MachineOption {
  code: string
  model: string
  description: string
}

export interface RequesterOption {
  code: string
  name: string
}

export interface ScopeOption {
  code: string
  name: string
}
