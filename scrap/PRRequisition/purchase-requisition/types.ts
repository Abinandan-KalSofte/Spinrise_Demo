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

export interface PreCheckResult {
  itemMasterExists: boolean
  departmentExists: boolean
  docNumberConfigured: boolean
}

export interface CreatePRLineDto {
  itemCode: string
  qtyRequired: number
  requiredDate?: string | null
  place?: string | null
  approxCost?: number | null
  remarks?: string | null
  machineNo?: string | null
  costCentreCode?: string | null
  budgetGroupCode?: string | null
  isSample: boolean
}

export interface CreatePRDto {
  divCode: string
  prDate: string
  depCode: string
  section?: string | null
  subCostCode?: string | null
  iType?: string | null
  reqName?: string | null
  refNo?: string | null
  poGroupCode?: string | null
  scopeCode?: string | null
  saleOrderNo?: string | null
  saleOrderDate?: string | null
  lines: CreatePRLineDto[]
}

export interface UpdatePRDto extends CreatePRDto {
  prNo: string
}

export interface PRLineDto {
  id: number
  prSNo: number
  itemCode: string
  itemName?: string
  uom?: string
  rate?: number
  currentStock?: number
  qtyRequired: number
  requiredDate?: string
  place?: string
  approxCost?: number
  remarks?: string
  machineNo?: string
  costCentreCode?: string
  budgetGroupCode?: string
  lastPoRate?: number
  lastPoDate?: string
  lastPoSupplierCode?: string
  lastPoSupplierName?: string
  isSample: boolean
}

export interface PRSummaryDto {
  id: number
  divCode: string
  prNo: string
  prDate: string
  depCode: string
  depName?: string
  reqName?: string
  prStatus: string
  createdBy: string
  createdAt: string
  lineCount: number
}

export interface PRDetailDto extends Omit<PRSummaryDto, 'lineCount'> {
  section?: string
  subCostCode?: string
  iType?: string
  refNo?: string
  poGroupCode?: string
  scopeCode?: string
  saleOrderNo?: string
  saleOrderDate?: string
  modifiedBy?: string
  modifiedAt?: string
  hasPendingIndentWarning: boolean
  pendingIndentWarningMessage?: string
  lines: PRLineDto[]
}
