// ── List ──────────────────────────────────────────────────────────────────
export interface POSummaryResponse {
  contNo:       number
  contDt:       string
  divCode:      string
  supCd:        string
  supplierName: string
  varietyCount: number
  firstAppFlg:  string
  fAppFlg:      string
  appFlg:       string
  cancelFlag:   string
  createdBy:    string | null
  totalCount:   number
}

export interface POListQuery {
  page?:         number
  pageSize?:     number
  searchText?:   string
  fromDate?:     string
  toDate?:       string
  supplierCode?: string
  status?:       string
}

export interface PagedResult<T> {
  items:      T[]
  totalCount: number
  page:       number
  pageSize:   number
  totalPages: number
}

// ── Detail ────────────────────────────────────────────────────────────────
export interface POLineResponse {
  contNo:        number
  contDt:        string
  divCode:       string
  supCd:         string
  supplierName:  string
  payMode:       string
  areaCode:      string
  areaName:      string
  currCode:      string
  dlyType:       string
  acceptance:    string
  transport:     string
  supFileName:   string
  cropYear:      string
  season:        string
  ftFlg:         string
  ftAmt:         number
  taxChoice:     string
  commPer:       number
  commPerBal:    number
  tcsPer:        number
  spotExpense:   number
  incidentCharge:number
  susCatType:    string
  plCode:        string
  lineNo:        number
  wosample:      string   // mapped from SAMPLEFLG
  firstAppFlg:   string
  fAppFlg:       string
  appFlg:        string
  cancelFlag:    string
  nonRecieveLot: string
  // Per-variety
  varCode:       string
  varName:       string
  ordQty:        number
  ordKgs:        number
  candyRate:     number
  packType:      string
  bbFlag:        string
  cashDisPer:    number
  tradeDisPer:   number
  cessPer:       number
  insPer:        number
  hsn:           string
  cgstPer:       number
  sgstPer:       number
  igstPer:       number
  taxCode:       string
  iPrNo:         number | null
  prDate:        string | null
  prSno:         number
  msDocNo:       string
  msDocSno:      string
  noOfLoad:      number
  rateKg:        number
  createdBy:     string | null
}

export interface DeliveryScheduleResponse {
  divCode:     string
  contNo:      number
  contDate:    string
  delDate:     string
  delQty:      number
  delAddress:  string
  varCode:     string
  instruction: string
}

export interface DiscountRateDto {
  contNo:   number
  contDt:   string
  varCode:  string
  supCd:    string
  discType: string
  discPer:  number
}

export interface PODetailResponse {
  header:           POLineResponse
  lines:            POLineResponse[]
  deliverySchedule: DeliveryScheduleResponse[]
  discountRates:    DiscountRateDto[]
}

// ── Create / Update ───────────────────────────────────────────────────────
export interface CreatePOLineRequest {
  varCode:     string
  ordQty:      number
  ordKgs:      number
  candyRate:   number
  packType?:   string
  bbFlag?:     string
  cashDisPer:  number
  tradeDisPer: number
  cessPer:     number
  insPer:      number
  hsn?:        string
  cgstPer:     number
  sgstPer:     number
  igstPer:     number
  taxCode?:    string
  iPrNo?:      number | null
  prDate?:     string | null
  prSno?:      number | null
  msDocNo?:    string | null
  msDocSno?:   string | null
  noOfLoad:    number
  rateKg:      number
}

export interface CreateDeliveryScheduleRequest {
  delDate:      string
  delQty:       number
  delAddress?:  string
  varCode?:     string
  instruction?: string
}

export interface CreateDiscountRateRequest {
  varCode:  string
  supCd:    string
  discType: string
  discRate: number
}

export interface CreatePORequest {
  contDt:         string
  supCd:          string
  payMode?:       string
  areaCode?:      string
  currCode?:      string
  dlyType?:       string
  acceptance?:    string
  transport?:     string
  supFileName?:   string
  cropYear?:      string
  season?:        string
  ftFlg?:         string
  ftAmt:          number
  taxChoice?:     string
  commPer:        number
  commPerBal:     number
  tcsPer:         number
  spotExpense:    number
  incidentCharge: number
  susCatType?:    string
  plCode?:        string
  lineNo:         number
  sampleFlg:      string
  lotFrom:        number
  lotTo:          number
  lines:            CreatePOLineRequest[]
  deliverySchedule: CreateDeliveryScheduleRequest[]
  discountRates:    CreateDiscountRateRequest[]
}

// ── Config ────────────────────────────────────────────────────────────────
export interface POParamDto {
  requireSupplierLotNo:  boolean
  centralizedOrder:      boolean
  autoCalculateSeason:   boolean
  masterEntryRequired:   boolean
  prBased:               boolean
  approvalEnabled:       boolean
  additionalTaxRequired: boolean
  ftAmt:                 number
}

export interface PODefaultsDto {
  defaultCurrency: string
  prBased:         boolean
  centralizedOrder:boolean
}

export interface GSTConfigDto {
  gstStateCode: string
  gstInNo:      string
  suppType:     string
  stateCode:    string
}

// ── PR Lines ──────────────────────────────────────────────────────────────
export interface PRLineDto {
  prNo:             number
  prDate:           string
  varCode:          string
  varName:          string
  packType:         string
  balanceQty:       number
  prSno:            number
  requisitionerName:string
  masterDocNo:      number
  masterDocSno:     number
  candyRate:        number
}

export interface PRLineFilter {
  sortBy:        number
  indent?:       string
  itemCode?:     string
  itemName?:     string
  contDt?:       string
  supplierCode?: string
}

// ── Approval ──────────────────────────────────────────────────────────────
export interface POApprovalStatus {
  firstAppFlg: string
  fAppFlg:     string
  appFlg:      string
  cancelFlag:  string
}

export interface POApprovalAction {
  level:    number
  action:   string
  remarks?: string
}

// ── Summary KPIs ──────────────────────────────────────────────────────────
export interface POSummaryCounts {
  totalPOs:       number
  totalCancelled: number
  totalApproved:  number
  totalLevel1:    number
  totalPending:   number
}

// ── Lookups ───────────────────────────────────────────────────────────────
export interface PODeleteReasonDto {
  code:        string
  description: string
}
