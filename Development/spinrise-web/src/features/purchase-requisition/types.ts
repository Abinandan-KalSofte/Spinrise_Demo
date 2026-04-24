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
  currentStock?: number
  pendingPrQty?: number
  pendingPoQty?: number
  minLevel?: number
  itemGroup?: string
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
  prSNo?: number            // set after save — used for per-line API deletion
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
  itemGroup?: string
  // V2 additions
  categoryCode: string
  model:        string
  maxCost:      number | null
  rate:         number | null
  // Print fields (Rec #28)
  drawNo:       string
  catNo:        string
}

// ── Header form values (Ant Design Form) ─────────────────────────────────────
// divCode is NOT included here — it is injected from the JWT on the server.

export interface PRHeaderFormValues {
  prDate: Dayjs
  depCode: string
  section: string
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
  categoryCode?: string
  model?:        string
  maxCost?:      number | null
  rate?:         number | null
  // Print fields (Rec #28)
  drawNo?:       string
  catNo?:        string
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
  submitForApproval?: boolean  // G19: Differentiate Save vs Submit
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
  categoryCode?: string
  drawNo?: string
  catNo?: string
  model?: string
  maxCost?: number
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
  budgetBalance?: number
  hasPendingIndentWarning: boolean
  pendingIndentWarningMessage?: string
  // Approval pipeline (display-only)
  level1ApproverName?: string
  level1ApprovedAt?: string
  level2ApproverName?: string
  level2ApprovedAt?: string
  finalApproverName?: string
  finalApprovedAt?: string
  lines: PRLineResponse[]
}

export interface PRSummaryResponse {
  id: number
  divCode: string
  prNo: number
  prDate: string
  depCode: string
  depName?: string
  planNo?: number
  refNo?: string
  reqName?: string
  prStatus: string
  isDeleted: boolean
  createdBy: string
  createdAt: string
  lineCount: number
}

export interface PRItemHistoryDto {
  poNo: string
  poDate: string
  supplierCode?: string
  supplierName?: string
  rate: number
  orderQty: number
  receivedQty: number
  pendingQty: number
}

export interface PreCheckResult {
  // Setup existence (V1–V3) — false means the form should be blocked
  itemMasterExists:    boolean
  departmentExists:    boolean
  docNumberConfigured: boolean
  // po_para / in_para configuration flags
  backDateAllowed:           boolean
  budgetValidationEnabled:   boolean
  pendingIndentCheckEnabled: boolean
  pendingPRCheckEnabled:     boolean
  itemGroupFilterEnabled:    boolean
  approvalStatusVisible:     boolean
  manualPrNumberEnabled:     boolean
  pendingPoDetailsEnabled:   boolean
  purTypeFlgEnabled:         boolean
  requireRequesterName:      boolean
  requireRefNo:              boolean
}

export const PR_STATUS_LABELS: Record<string, { label: string; color: string }> = {
  OPEN:      { label: 'Open',      color: 'blue'    },
  PENDING:   { label: 'Pending',   color: 'orange'  },  // G19: Added for submitted PRs
  APPROVED:  { label: 'Approved',  color: 'purple'  },
  RECEIVED:  { label: 'Received',  color: 'cyan'    },
  CANCELLED: { label: 'Cancelled', color: 'red'     },
  CONVERTED: { label: 'Converted', color: 'green'   },
}
