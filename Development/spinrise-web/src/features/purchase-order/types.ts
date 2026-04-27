// ── Shared ────────────────────────────────────────────────────────────────────

export interface PagedResult<T> {
  items: T[]
  totalCount: number
  page: number
  pageSize: number
  totalPages: number
}

// ── Param / Defaults ─────────────────────────────────────────────────────────

export interface POParamDto {
  suppLotNoReqArrival: string
  centralizedOrder: string
  seasonCalcReq: string
  masterEntryFlg: string
  prBased: string
  poApproval: string
  addTaxRequired: string
  defaultFTAmt: number
}

export interface PODefaultsDto {
  defaultCurrency: string | null
  params: POParamDto
}

export interface POPreCheckResultDto {
  finYearOpen: boolean
  supplierMasterExists: boolean
  areaMasterExists: boolean
  varietyMasterExists: boolean
  rateUnitMasterExists: boolean
  payModeMasterExists: boolean
  delReasonMasterExists: boolean
  allPassed: boolean
}

export interface GSTConfigDto {
  supplierCode: string
  supplierName: string | null
  gstStateCode: string
  gstinno: string
  suppType: string
  supplierCategory: 'REGISTERED' | 'UNREGISTERED' | 'FOREIGN'
}

// ── List / Summary ────────────────────────────────────────────────────────────

export interface POListQuery {
  page?: number
  pageSize?: number
  searchText?: string
  fromDate?: string
  toDate?: string
  supplierCode?: string
}

export interface POSummaryDto {
  contNo: string
  contDt: string
  divCode: string
  supplierCode: string | null
  supplierName: string | null
  varietyCount: number
  poStatus: string
  firstAppFlg: string
  appFlg: string
  cancelFlg: string
  payMode: string | null
  currCode: string | null
  arrivalType: string | null
  preparedBy: string | null
  prepDate: string | null
  isPRBased: boolean
}

// ── Detail ────────────────────────────────────────────────────────────────────

export interface POLineDto {
  contNo: string
  contDt: string
  divCode: string
  supplierCode: string | null
  supplierName: string | null
  agentCode: string | null
  areaCode: string | null
  areaName: string | null
  varCode: string
  varName: string | null
  countryCode: string | null
  bbFlag: string
  ordQty: number
  ordKgs: number
  candyRate: number
  rateKg: number
  payMode: string
  dlyType: string
  imInd: string | null
  arrivalType: string | null
  dueDate: string | null
  cropYear: string | null
  acceptance: string | null
  rateUnit: string | null
  remarks: string | null
  currCode: string | null
  taxCode: string | null
  taxChoice: string | null
  hsn: string | null
  cgstPer: number
  sgstPer: number
  igstPer: number
  cashDisPer: number
  tradeDisPer: number
  cessPer: number
  insPer: number
  creditDays: number
  interestPer: number
  commPer: number
  transport: string | null
  deliveryAddCode: string | null
  billingAddCode: string | null
  contactPerson: string | null
  deliveryTerms: string | null
  supFileName: string | null
  terms1: string | null
  terms1Days: number
  terms2: string | null
  terms2Days: number
  season: string | null
  millRefNo: string | null
  ftAmt: number
  ftFlg: string | null
  tcsPer: number
  grade: string | null
  staple: string | null
  micronaire: string | null
  strength: string | null
  moisture: string | null
  trash: string | null
  noOfLoad: number
  freightPerBale: number
  supplierLotFrom: number
  supplierLotTo: number
  preparedBy: string | null
  firstAppFlg: string
  appFlg: string
  cancelFlg: string | null
  iPrNo: number | null
  prDate: string | null
  prSNo: number | null
}

export interface DeliveryScheduleDto {
  contNo: string
  contDt: string
  divCode: string
  delDate: string
  qty: number
  delAdd: string | null
  varCode: string | null
  instruction: string | null
}

export interface DiscountRateDto {
  divCode: string | null
  contNo: number
  contDt: string
  varCode: string | null
  dType: string | null
  dRate: number
  docno: number
  docSno: number
}

export interface POApprovalConfigDto {
  appSno: number
  appLevelId: string | null
  appLevelName: string | null
  appUserId: string | null
  appUserName: string | null
  appUserPrintName: string | null
  appDesignation: string | null
  appLevel: string | null
  appActiveFlg: string | null
  imagePath: string | null
}

export interface PODetailDto {
  lines: POLineDto[]
  deliverySchedule: DeliveryScheduleDto[]
  discountRates: DiscountRateDto[]
  approvalConfig: POApprovalConfigDto[]
}

// ── PR Lines (Indent) ─────────────────────────────────────────────────────────

export interface PRLineDto {
  prNo: number
  prDate: string
  varCode: string
  varName: string | null
  packType: string | null
  balanceQty: number
  balanceKgs: number
  prSNo: number
  requisitionerName: string | null
  masterDocNo: number | null
  masterDocSno: number | null
  candyRate: number
}

export interface PRLineFilterQuery {
  sortBy?: number
  indent?: string
  itemCode?: string
  itemName?: string
  supplierCode?: string
  plant?: string
  contDt?: string
}

// ── Approval ─────────────────────────────────────────────────────────────────

export interface POApprovalStatusDto {
  firstAppFlg: string
  appFlg: string
  finalAppFlg: string
  appUserId: string | null
  appDate: string | null
  firstAppUserId: string | null
  firstAppDate: string | null
  config: POApprovalConfigDto[]
}

export interface POApprovalActionRequest {
  level: number
  action: 'APPROVE' | 'REJECT'
  appUserId?: string
  appIPAddr?: string
}

// ── Delete ────────────────────────────────────────────────────────────────────

export interface PODeleteRequest {
  deleteReasonCode: string
}

export interface DeleteReasonDto {
  code: string
  description: string
}

// ── Create / Update ───────────────────────────────────────────────────────────

export interface CreatePOLineRequest {
  varCode: string
  bbFlag?: string
  ordQty: number
  ordKgs: number
  candyRate: number
  rateKg?: number
  taxCode?: string
  hsn?: string
  cgstPer?: number
  sgstPer?: number
  igstPer?: number
  cashDisPer?: number
  tradeDisPer?: number
  cessPer?: number
  insPer?: number
  iPrNo?: number | null
  prDate?: string | null
  prSNo?: number | null
  msDocNo?: number | null
  msDocSno?: number | null
  ptyContNo?: string
  plotNo?: string
  wosamplePrNo?: string
  pressMarkNo?: string
  noOfLoad?: number
}

export interface CreateDeliveryScheduleRequest {
  delDate: string
  qty: number
  delAdd?: string
  varCode?: string
  instruction?: string
}

export interface CreateDiscountRateRequest {
  varCode?: string
  dType?: string
  dRate: number
  docno: number
  docSno: number
}

export interface CreatePORequest {
  contDt: string
  supCd: string
  brkCd?: string
  areaCode: string
  payMode: string
  dlyType: string
  acceptance: string
  transport: string
  supFileName: string
  cntCode?: string
  imInd?: string
  arrivalType?: string
  rateUnit?: string
  dueDate?: string | null
  cropYear?: string
  season?: string
  millRefNo?: string
  deliveryAddCode?: string
  billingAddCode?: string
  contactPerson?: string
  deliveryTerms?: string
  remarks?: string
  currCode?: string
  taxChoice?: string
  creditDays?: number
  interestPer?: number
  lotFrom?: number
  lotTo?: number
  finalWeighment?: string
  sampleFlg?: string
  commPer?: number
  terms1?: string
  terms1Days?: number
  terms2?: string
  terms2Days?: number
  ftAmt?: number
  ftFlg?: string
  susCatType?: string
  payCode?: string
  lineNo?: string
  plCode?: string
  tcsPer?: number
  freightPerBale?: number
  preparedBy?: string
  grade?: string
  staple?: string
  micronaire?: string
  strength?: string
  moisture?: string
  trash?: string
  lines: CreatePOLineRequest[]
  deliverySchedule?: CreateDeliveryScheduleRequest[]
  discountRates?: CreateDiscountRateRequest[]
}

export interface UpdatePORequest extends CreatePORequest {
  contNo: string
}

// ── Local Form State ──────────────────────────────────────────────────────────

export interface POLineFormItem {
  key: string
  varCode: string
  varName: string
  bbFlag: string
  ordQty: number
  ordKgs: number
  candyRate: number
  rateKg: number
  taxCode: string
  hsn: string
  cgstPer: number
  sgstPer: number
  igstPer: number
  cashDisPer: number
  tradeDisPer: number
  cessPer: number
  insPer: number
  noOfLoad: number
  iPrNo: number | null
  prDate: string | null
  prSNo: number | null
}

export interface POScheduleFormItem {
  key: string
  delDate: string | null
  qty: number
  varCode: string
  delAdd: string
  instruction: string
}

export interface PODiscountFormItem {
  key: string
  varCode: string
  dType: string
  dRate: number
  docno: number
  docSno: number
}

// ── Status labels ─────────────────────────────────────────────────────────────

export const PO_STATUS_LABELS: Record<string, { label: string; color: string }> = {
  OPEN:      { label: 'Open',      color: 'blue'   },
  APPROVED:  { label: 'Approved',  color: 'green'  },
  PARTIAL:   { label: 'Partial',   color: 'orange' },
  COMPLETED: { label: 'Completed', color: 'purple' },
  CANCELLED: { label: 'Cancelled', color: 'red'    },
}
