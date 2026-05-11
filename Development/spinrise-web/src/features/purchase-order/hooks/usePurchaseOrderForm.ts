import { useCallback, useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { message, Modal } from 'antd'
import dayjs, { type Dayjs } from 'dayjs'
import { purchaseOrderApi } from '../api/purchaseOrderApi'
import { lookupApi } from '@/shared/lookup/api/lookupApi'
import { generateUUID } from '@/shared/lib/uuid'
import type {
  PODefaultsDto, GSTConfigDto, PRLineDto,
  CreatePORequest, CreatePOLineRequest, CreateDeliveryScheduleRequest,
} from '../types'
import type {
  PaymentModeLookup, CurrencyLookup,
  RateUnitLookup, WeighmentLookup, TaxCodeLookup,
} from '@/features/purchase-requisition/types'

export interface POLineFormItem {
  key:          string
  varCode:      string
  varName:      string
  packType:     string
  bbFlag:       string
  ordQty:       number
  ordKgs:       number
  candyRate:    number
  cashDisPer:   number
  tradeDisPer:  number
  cessPer:      number
  insPer:       number
  hsn:          string
  cgstPer:      number
  sgstPer:      number
  igstPer:      number
  taxCode:      string
  noOfLoad:     number
  rateKg:       number
  iPrNo:        number | null
  prDate:       string | null
  prSno:        number | null
  msDocNo:      string | null
  msDocSno:     string | null
  millSampleNo: string   // SNO — with-sample mode entry
  suppSampleNo: string   // PTY_CONTNO — read-only, set by system
}

export interface PODeliveryItem {
  key:         string
  delDate:     string
  delQty:      number
  delAddress:  string
  varCode:     string
  instruction: string
  weighment:   string
}

export interface POHeaderFormValues {
  contDt:          Dayjs
  supCd:           string
  payMode:         string
  areaCode:        string
  currCode:        string
  dlyType:         string
  acceptance:      string
  transport:       string
  supFileName:     string
  cropYear:        string
  season:          string
  ftFlg:           string
  ftAmt:           number
  taxChoice:       string
  commPer:         number
  commPerBal:      number
  tcsPer:          number
  spotExpense:     number
  incidentCharge:  number
  susCatType:      string
  plCode:          string
  lineNo:          number
  sampleFlg:       string
  lotFrom:         number
  lotTo:           number
  // Header additions
  agentCode:        string
  imInd:            string
  millRefNo:        string
  rateUnit:         string
  arrivalType:      string          // 'P' | 'K'
  finalWeighment:   string
  // Payment & Terms (Tab 1)
  billingAddress:   string
  deliveryAddrCode: string
  contactPerson:    string
  terms1:           string
  terms1Days:       number | null
  terms2:           string
  terms2Days:       number | null
  creditDays:       number | null
  interestPer:      number | null
  deliveryTerms:    string
  remarks:          string
  // Tax Details (Tab 2)
  perBaleTruck:     string
  commonTaxCode:    string
  // Cotton Quality (string — DB varchar)
  grade:            string
  staple:           string
  mic:              string
  strength:         string
  moisture:         string
  trash:            string
}

function blankLine(gstConfig: GSTConfigDto | null): POLineFormItem {
  const interstate = gstConfig?.suppType === 'I'
  return {
    key: generateUUID(),
    varCode: '', varName: '', packType: '', bbFlag: 'N',
    ordQty: 0, ordKgs: 0, candyRate: 0,
    cashDisPer: 0, tradeDisPer: 0, cessPer: 0, insPer: 0,
    hsn: '',
    cgstPer:  interstate ? 0 : 2.5,
    sgstPer:  interstate ? 0 : 2.5,
    igstPer:  interstate ? 5 : 0,
    taxCode: '', noOfLoad: 0, rateKg: 0,
    iPrNo: null, prDate: null, prSno: null, msDocNo: null, msDocSno: null,
    millSampleNo: '', suppSampleNo: '',
  }
}

export function usePurchaseOrderForm() {
  const navigate = useNavigate()

  const [defaults,         setDefaults]         = useState<PODefaultsDto | null>(null)
  const [gstConfig,        setGstConfig]        = useState<GSTConfigDto | null>(null)
  const [gstLoading,       setGstLoading]       = useState(false)
  const [lines,            setLines]            = useState<POLineFormItem[]>([])
  const [delivery,         setDelivery]         = useState<PODeliveryItem[]>([])
  const [prLines,          setPrLines]          = useState<PRLineDto[]>([])
  const [prLinesLoading,   setPrLinesLoading]   = useState(false)
  const [prPickerOpen,     setPrPickerOpen]     = useState(false)
  const [defaultsLoading,  setDefaultsLoading]  = useState(true)
  const [saving,           setSaving]           = useState(false)
  const [warnings,         setWarnings]         = useState<string[]>([])
  const [paymentModes,     setPaymentModes]     = useState<PaymentModeLookup[]>([])
  const [currencies,       setCurrencies]       = useState<CurrencyLookup[]>([])
  const [rateUnitValue,    setRateUnitValue]    = useState<number>(168)
  const [rateUnitSuggestion, setRateUnitSuggestion] = useState<'P' | 'K' | null>(null)
  const [rateUnits,        setRateUnits]        = useState<RateUnitLookup[]>([])
  const [weighments,       setWeighments]       = useState<WeighmentLookup[]>([])
  const [activeTaxCodes,   setActiveTaxCodes]   = useState<TaxCodeLookup[]>([])

  useEffect(() => {
    void Promise.all([
      purchaseOrderApi.getDefaults(),
      lookupApi.getPaymentModes().catch(() => [] as PaymentModeLookup[]),
      lookupApi.getCurrencies().catch(()  => [] as CurrencyLookup[]),
      lookupApi.getRateUnits().catch(()   => [] as RateUnitLookup[]),
      lookupApi.getWeighments().catch(()  => [] as WeighmentLookup[]),
      lookupApi.getActiveTaxCodes().catch(() => [] as TaxCodeLookup[]),
    ]).then(([def, pm, curr, ru, wm, tc]) => {
      setDefaults(def)
      setPaymentModes(pm)
      setCurrencies(curr)
      setRateUnits(ru)
      setWeighments(wm)
      setActiveTaxCodes(tc)
    }).catch(() => undefined)
      .finally(() => setDefaultsLoading(false))
  }, [])

  const fetchGSTConfig = useCallback(async (supCd: string) => {
    const code = supCd.trim().toUpperCase()
    if (!code) { setGstConfig(null); return }
    setGstLoading(true)
    try {
      const cfg = await purchaseOrderApi.getGSTConfig(code)
      setGstConfig(cfg)
    } catch {
      setGstConfig(null)
    } finally {
      setGstLoading(false)
    }
  }, [])

  const openPRPicker = useCallback(async (contDt?: string, supplierCode?: string) => {
    setPrPickerOpen(true)
    setPrLinesLoading(true)
    try {
      const result = await purchaseOrderApi.getPRLines({ sortBy: 1, contDt, supplierCode })
      setPrLines(result)
    } catch {
      void message.error('Failed to load PR lines.')
    } finally {
      setPrLinesLoading(false)
    }
  }, [])

  const handleRateUnitChange = useCallback((unitName: string, value: number) => {
    setRateUnitValue(value > 0 ? value : 168)
    const upper = unitName.toUpperCase()
    if (upper.includes('CANDY')) setRateUnitSuggestion('P')
    else if (upper.includes('KGS')) setRateUnitSuggestion('K')
    else setRateUnitSuggestion(null)
  }, [])

  const addPRLines = useCallback((selected: PRLineDto[], cfg: GSTConfigDto | null) => {
    const existingKeys = new Set(lines.map((l) => `${l.varCode}|${l.iPrNo}|${l.prSno}`))
    const interstate   = cfg?.suppType === 'I'
    const toAdd        = selected.filter((pr) => !existingKeys.has(`${pr.varCode}|${pr.prNo}|${pr.prSno}`))
    const newLines: POLineFormItem[] = toAdd.map((pr) => ({
      key:         generateUUID(),
      varCode:     pr.varCode,
      varName:     pr.varName,
      packType:    pr.packType ?? '',
      bbFlag:      'N',
      ordQty:      pr.balanceQty,
      ordKgs:      parseFloat((pr.balanceQty * rateUnitValue).toFixed(3)),
      candyRate:   pr.candyRate ?? 0,
      cashDisPer:  0, tradeDisPer: 0, cessPer: 0, insPer: 0,
      hsn:         '',
      cgstPer:     interstate ? 0 : 2.5,
      sgstPer:     interstate ? 0 : 2.5,
      igstPer:     interstate ? 5 : 0,
      taxCode:     '',
      noOfLoad:    0,
      rateKg:      pr.candyRate > 0 ? parseFloat((pr.candyRate / rateUnitValue).toFixed(5)) : 0,
      iPrNo:       pr.prNo,
      prDate:      pr.prDate,
      prSno:       pr.prSno,
      msDocNo:     pr.masterDocNo  != null ? String(pr.masterDocNo)  : null,
      msDocSno:    pr.masterDocSno != null ? String(pr.masterDocSno) : null,
      millSampleNo: '',
      suppSampleNo: '',
    }))
    setLines((prev) => [...prev, ...newLines])
    setPrPickerOpen(false)
  }, [lines, rateUnitValue])

  const addBlankLine = useCallback(() => {
    setLines((prev) => [...prev, blankLine(gstConfig)])
  }, [gstConfig])

  const updateLine = useCallback((key: string, patch: Partial<POLineFormItem>) => {
    setLines((prev) => prev.map((l) => (l.key === key ? { ...l, ...patch } : l)))
  }, [])

  const removeLine = useCallback((key: string) => {
    setLines((prev) => prev.filter((l) => l.key !== key))
  }, [])

  const addDeliveryRow = useCallback(() => {
    setDelivery((prev) => [...prev, {
      key:         generateUUID(),
      delDate:     dayjs().add(7, 'day').format('YYYY-MM-DD'),
      delQty:      0,
      delAddress:  '',
      varCode:     '',
      instruction: '',
      weighment:   '',
    }])
  }, [])

  const updateDelivery = useCallback((key: string, patch: Partial<PODeliveryItem>) => {
    setDelivery((prev) => prev.map((d) => (d.key === key ? { ...d, ...patch } : d)))
  }, [])

  const removeDelivery = useCallback((key: string) => {
    setDelivery((prev) => prev.filter((d) => d.key !== key))
  }, [])

  const doCreate = useCallback(async (hv: POHeaderFormValues) => {
    if (lines.length === 0)                    { void message.error('Add at least one variety line.'); return }
    if (lines.some((l) => !l.varCode.trim())) { void message.error('All variety codes are required.'); return }

    // Tab 1 mandatory fields
    if (!hv.dlyType?.trim())     { void message.error('Please enter the Delivery Type'); return }
    if (!hv.acceptance?.trim())  { void message.error('Please enter the Accepted Person'); return }
    if (!hv.transport?.trim())   { void message.error('Please enter the Mode of Transport'); return }
    if (!hv.supFileName?.trim()) { void message.error('Please Upload Supplier Price List'); return }

    // Lot validation when required
    if (defaults?.param?.requireSupplierLotNo) {
      if (!hv.lotFrom) { void message.error('Please enter Supplier From Lot No.'); return }
      if (!hv.lotTo)   { void message.error('Please enter the Supplier To Lot No.'); return }
      if (hv.lotFrom > hv.lotTo) { void message.error('Supplier From Lot No. should not be greater than To Lot No.'); return }
    }

    // Rate > 0 check
    const zeroRate = lines.find((l) => l.varCode && l.candyRate <= 0)
    if (zeroRate) { void message.error(`Please Enter the Rate for variety ${zeroRate.varCode}`); return }

    // Qty check per ArrivalType
    const at = hv.arrivalType || 'P'
    for (const l of lines.filter((l) => l.varCode)) {
      if (at === 'P' && l.ordQty <= 0) { void message.error(`Please enter the Order Quantity for variety ${l.varCode}`); return }
      if (at === 'K' && l.ordKgs <= 0) { void message.error(`Please enter the order Kgs for variety ${l.varCode}`); return }
    }

    // GST = 0 warning with Modal.confirm
    const zeroGstLines = lines.filter((l) => l.varCode && l.cgstPer === 0 && l.sgstPer === 0 && l.igstPer === 0)
    if (zeroGstLines.length > 0) {
      setSaving(true)
      const confirmed = await new Promise<boolean>((resolve) => {
        Modal.confirm({
          title: 'GST% is 0 — Confirm?',
          content: `GST% is zero for: ${zeroGstLines.map((l) => l.varCode).join(', ')}. Continue?`,
          okText: 'Yes, Continue',
          cancelText: 'Cancel',
          onOk:    () => resolve(true),
          onCancel:() => resolve(false),
        })
      })
      if (!confirmed) { setSaving(false); return }
    }

    // Delivery schedule cumulative check
    if (delivery.length > 0) {
      const totalSched   = delivery.reduce((s, d) => s + d.delQty, 0)
      const totalOrdered = lines.reduce((s, l) => s + l.ordQty, 0)
      if (totalSched > totalOrdered) {
        void message.error('Schedule Quantity total must not exceed Order Quantity')
        return
      }
    }

    setSaving(true)
    try {
      const supCd = hv.supCd.trim().toUpperCase()
      const payload: CreatePORequest = {
        contDt:         hv.contDt.format('YYYY-MM-DD'),
        supCd,
        payMode:        hv.payMode        || undefined,
        areaCode:       hv.areaCode       || undefined,
        currCode:       hv.currCode       || undefined,
        dlyType:        hv.dlyType        || undefined,
        acceptance:     hv.acceptance     || undefined,
        transport:      hv.transport      || undefined,
        supFileName:    hv.supFileName    || undefined,
        cropYear:       hv.cropYear       || undefined,
        season:         hv.season         || undefined,
        ftFlg:          hv.ftFlg          || 'N',
        ftAmt:          hv.ftAmt          ?? 0,
        taxChoice:      hv.taxChoice      || undefined,
        commPer:        hv.commPer        ?? 0,
        commPerBal:     hv.commPerBal     ?? 0,
        tcsPer:         hv.tcsPer         ?? 0,
        spotExpense:    hv.spotExpense     ?? 0,
        incidentCharge: hv.incidentCharge ?? 0,
        susCatType:     hv.susCatType     || undefined,
        plCode:         hv.plCode         || undefined,
        lineNo:         hv.lineNo         ?? 1,
        sampleFlg:      hv.sampleFlg      ?? 'N',
        lotFrom:        hv.lotFrom        ?? 0,
        lotTo:          hv.lotTo          ?? 0,
        agentCode:        hv.agentCode        || undefined,
        imInd:            hv.imInd            || 'L',
        millRefNo:        hv.millRefNo         || undefined,
        rateUnit:         hv.rateUnit          || undefined,
        arrivalType:      hv.arrivalType        || 'P',
        finalWeighment:   hv.finalWeighment     || 'S',
        billingAddress:   hv.billingAddress     || undefined,
        deliveryAddrCode: hv.deliveryAddrCode   || undefined,
        contactPerson:    hv.contactPerson      || undefined,
        terms1:           hv.terms1             || undefined,
        terms1Days:       hv.terms1Days         ?? undefined,
        terms2:           hv.terms2             || undefined,
        terms2Days:       hv.terms2Days         ?? undefined,
        creditDays:       hv.creditDays         ?? undefined,
        interestPer:      hv.interestPer        ?? undefined,
        deliveryTerms:    hv.deliveryTerms      || undefined,
        remarks:          hv.remarks            || undefined,
        perBaleTruck:     hv.perBaleTruck       || undefined,
        grade:            hv.grade              || undefined,
        staple:           hv.staple             || undefined,
        mic:              hv.mic                || undefined,
        strength:         hv.strength           || undefined,
        moisture:         hv.moisture           || undefined,
        trash:            hv.trash              || undefined,
        lines: lines.map((l): CreatePOLineRequest => ({
          varCode:      l.varCode,
          ordQty:       l.ordQty,
          ordKgs:       l.ordKgs,
          candyRate:    l.candyRate,
          packType:     l.packType     || undefined,
          bbFlag:       l.bbFlag       || undefined,
          cashDisPer:   l.cashDisPer,
          tradeDisPer:  l.tradeDisPer,
          cessPer:      l.cessPer,
          insPer:       l.insPer,
          hsn:          l.hsn          || undefined,
          cgstPer:      l.cgstPer,
          sgstPer:      l.sgstPer,
          igstPer:      l.igstPer,
          taxCode:      l.taxCode      || undefined,
          noOfLoad:     l.noOfLoad,
          rateKg:       l.rateKg,
          iPrNo:        l.iPrNo        ?? undefined,
          prDate:       l.prDate       ?? undefined,
          prSno:        l.prSno        ?? undefined,
          msDocNo:      l.msDocNo      ?? undefined,
          msDocSno:     l.msDocSno     ?? undefined,
          millSampleNo: l.millSampleNo || undefined,
        })),
        deliverySchedule: delivery.map((d): CreateDeliveryScheduleRequest => ({
          delDate:     d.delDate,
          delQty:      d.delQty,
          delAddress:  d.delAddress  || undefined,
          varCode:     d.varCode     || undefined,
          instruction: d.instruction || undefined,
          weighment:   d.weighment   || undefined,
        })),
        discountRates: lines.flatMap((l) => {
          const rates = []
          if (l.cashDisPer  > 0) rates.push({ varCode: l.varCode, supCd, discType: 'C', discRate: l.cashDisPer })
          if (l.tradeDisPer > 0) rates.push({ varCode: l.varCode, supCd, discType: 'T', discRate: l.tradeDisPer })
          return rates
        }),
      }
      const result = await purchaseOrderApi.create(payload)
      if (result.warnings?.length) setWarnings(result.warnings)
      void message.success(`PO ${result.contNo} created successfully.`)
      navigate('/purchase/order')
    } catch (err: unknown) {
      void message.error(err instanceof Error ? err.message : 'Failed to save PO.')
    } finally {
      setSaving(false)
    }
  }, [lines, delivery, defaults, navigate])

  return {
    defaults, gstConfig, gstLoading,
    lines, delivery,
    prLines, prLinesLoading, prPickerOpen,
    defaultsLoading, saving, warnings,
    paymentModes, currencies,
    rateUnitValue, rateUnitSuggestion, rateUnits, weighments, activeTaxCodes,
    fetchGSTConfig, openPRPicker,
    handleRateUnitChange,
    addPRLines, addBlankLine,
    updateLine, removeLine,
    addDeliveryRow, updateDelivery, removeDelivery,
    setPrPickerOpen, doCreate,
  }
}
