import type { Dayjs } from 'dayjs'

// ── Lookup types ─────────────────────────────────────────────────────────────

export interface DepartmentLookup {
  depCode: string
  depName: string
}

export interface EmployeeLookup {
  empNo: string
  eName: string
}

export interface POTypeLookup {
  typeCode: string
  typName: string
}

export interface ItemLookup {
  itemCode: string
  itemName: string
  uom: string
}

export interface MachineLookup {
  macNo: string
  description: string
}

export interface SubCostLookup {
  sccCode: number
  sccName: string
}

// ── PR Line local form state ──────────────────────────────────────────────────

export interface PRLineFormItem {
  key: string               // crypto.randomUUID() — local only, not sent to API
  itemCode: string
  itemName: string
  uom: string
  currentStock: number | null
  qtyRequired: number
  requiredDate: string | null
  place: string
  approxCost: number | null
  remarks: string
  machineNo: string
  costCentreCode: string
  budgetGroupCode: string
  subCostCode: number | null
  isSample: boolean
  lastPoRate: number | null
  lastPoDate: string | null
  lastPoSupplierCode: string | null
  lastPoSupplierName: string | null
  // V2 additions
  model:   string
  maxCost: number | null
  rate:    number | null
}

// ── Header form values (Ant Design Form) ─────────────────────────────────────
// divCode is NOT included here — it is injected from the JWT on the server.

export interface PRHeaderFormValues {
  prDate: Dayjs
  depCode: string
  section: string
  subCost: number | null
  iType: string
  reqName: string
  refNo: string
  poGroupCode: string
  scopeCode: string
  saleOrderNo: string
  saleOrderDate: Dayjs | null
}

// ── API request types ─────────────────────────────────────────────────────────
// divCode is NOT sent from the frontend. The server extracts it from the JWT.
export interface PRItemInfoDto {
  rate: number
  currentStock: number
  lastPoRate?: number
  lastPoDate?: string
  lastPoSupplierCode?: string
  lastPoSupplierName?: string
  hasPendingIndent: boolean
  pendingIndentQty: number
  hasPendingPR: boolean
  pendingPrNo?: string
  pendingPrDate?: string
}
export interface CreatePRLineRequest {
  itemCode: string
  itemName?: string
  uom?: string
  currentStock?: number | null
  qtyRequired: number
  requiredDate?: string | null
  place?: string
  approxCost?: number | null
  remarks?: string
  machineNo?: string
  costCentreCode?: string
  budgetGroupCode?: string
  subCostCode?: number | null
  isSample: boolean
  lastPoRate?: number | null
  lastPoDate?: string | null
  lastPoSupplierCode?: string | null
  lastPoSupplierName?: string | null
  // V2 additions
  model?:   string
  maxCost?: number | null
  rate?:    number | null
}

export interface CreatePRRequest {
  prDate: string
  depCode: string
  section?: string
  subCost?: number | null
  iType?: string
  reqName?: string
  refNo?: string
  poGroupCode?: string
  scopeCode?: string
  saleOrderNo?: string
  saleOrderDate?: string | null
  lines: CreatePRLineRequest[]
}

export type UpdatePRLineRequest = CreatePRLineRequest

export interface UpdatePRRequest extends CreatePRRequest {
  prNo: number
}

// ── API response types ────────────────────────────────────────────────────────

export interface PRLineResponse {
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
  subCostCode?: number
  lastPoRate?: number
  lastPoDate?: string
  lastPoSupplierCode?: string
  lastPoSupplierName?: string
  isSample: boolean
}

export interface PRHeaderResponse {
  id: number
  divCode: string
  prNo: number
  prDate: string
  depCode: string
  depName?: string
  section?: string
  subCost?: number
  iType?: string
  reqName?: string
  refNo?: string
  poGroupCode?: string
  scopeCode?: string
  saleOrderNo?: string
  saleOrderDate?: string
  prStatus: string
  createdBy: string
  createdAt: string
  modifiedBy?: string
  modifiedAt?: string
  hasPendingIndentWarning: boolean
  pendingIndentWarningMessage?: string
  lines: PRLineResponse[]
}

export interface PRSummaryResponse {
  id: number
  divCode: string
  prNo: number
  prDate: string
  depCode: string
  depName?: string
  reqName?: string
  prStatus: string
  createdBy: string
  createdAt: string
  lineCount: number
}

export interface PreCheckResult {
  hasPendingIndent: boolean
  message?: string
}

export const PR_STATUS_LABELS: Record<string, { label: string; color: string }> = {
  O: { label: 'Open',      color: 'blue'   },
  A: { label: 'Approved',  color: 'green'  },
  C: { label: 'Closed',    color: 'default'},
  X: { label: 'Cancelled', color: 'red'    },
}
