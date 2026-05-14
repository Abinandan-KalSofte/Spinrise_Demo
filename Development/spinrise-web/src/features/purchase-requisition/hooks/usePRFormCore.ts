import { useEffect, useRef, useState } from 'react'
import { App, Form } from 'antd'
import dayjs from 'dayjs'
import { useNavigate } from 'react-router-dom'
import { useAuthStore } from '@/features/auth/store/useAuthStore'
import { generateUUID } from '@/shared/lib/uuid'
import { getFYBounds } from '@/shared/lib/dateUtils'
import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'
import { useLookupStore } from '../store/useLookupStore'
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  CreatePRRequest,
  UpdatePRRequest,
  PreCheckResult,
} from '../types'

export type PRFormMode = 'new' | 'view' | 'edit'

export function usePRFormCore() {
  const { message } = App.useApp()
  const navigate = useNavigate()
  const [headerForm] = Form.useForm<PRHeaderFormValues>()

  const authUser = useAuthStore((s) => s.user)
  const divCode  = authUser?.divCode ?? ''
  const depCode  = (Form.useWatch('depCode', headerForm) as string | undefined) ?? ''

  // ── Core state ────────────────────────────────────────────────────────────
  const [items,                 setItems]                 = useState<PRLineFormItem[]>([])
  const [savedPrNo,             setSavedPrNo]             = useState<number | null>(null)
  const [savedPr,               setSavedPr]               = useState<PRHeaderResponse | null>(null)
  const [prStatus,              setPrStatus]              = useState<string | null>(null)
  // Tracks the last-created PR's date; persists through initNewMode() for date-order validation
  const [lastPrDate,            setLastPrDate]            = useState<string | null>(null)
  const [saving,                setSaving]                = useState(false)
  const [deleting,              setDeleting]              = useState(false)
  const [preCheckResult,        setPreCheckResult]        = useState<PreCheckResult | null>(null)
  const [preCheckMsg,           setPreCheckMsg]           = useState<string | null>(null)
  const [preCheckLoading,       setPreCheckLoading]       = useState(false)
  const [deleteReasons,         setDeleteReasons]         = useState<{ reasonCode: string; reasonDesc: string }[]>([])
  const [selectedDeleteReason,  setSelectedDeleteReason]  = useState<string | null>(null)
  const [deleteModalOpen,       setDeleteModalOpen]       = useState(false)
  const [warnings,              setWarnings]              = useState<string[]>([])

  // ── Mode & navigation state ───────────────────────────────────────────────
  const [mode,       setMode]       = useState<PRFormMode>('new')
  const [navLoading, setNavLoading] = useState(false)
  const [isDirty,    setIsDirty]    = useState(false)

  const markDirty = () => setIsDirty(true)
  const clearDirty = () => setIsDirty(false)

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    departments, employees, poTypes, machines, indentTypes,
    loaded: lookupsLoaded, loading: lookupsLoading, error: lookupsError,
    loadAll,
  } = useLookupStore()

  useEffect(() => { void loadAll() }, [loadAll])

  useEffect(() => {
    if (divCode) void runPreChecks()
  }, [divCode]) // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    void (async () => {
      try { setDeleteReasons(await purchaseRequisitionApi.getDeleteReasons()) }
      catch { /* non-critical */ }
    })()
  }, [])

  // ── Pre-checks ────────────────────────────────────────────────────────────
  const runPreChecks = async () => {
    setPreCheckLoading(true)
    try {
      const result = await purchaseRequisitionApi.preChecks()
      setPreCheckResult(result)
      if      (!result.itemMasterExists)    setPreCheckMsg('Item Master is not configured.')
      else if (!result.departmentExists)    setPreCheckMsg('No departments configured for this division.')
      else if (!result.docNumberConfigured) setPreCheckMsg('PR document number series is not configured.')
      else                                  setPreCheckMsg(null)
    } catch { /* non-critical */ }
    finally { setPreCheckLoading(false) }
  }

  // ── Map saved line → local form item ─────────────────────────────────────
  const mapSavedLine = (line: PRLineResponse): PRLineFormItem => ({
    key:                generateUUID(),
    prSNo:              line.prSNo,
    itemCode:           line.itemCode,
    itemName:           line.itemName           ?? '',
    uom:                line.uom                ?? '',
    currentStock:       line.currentStock       ?? null,
    minLevel:           null,
    qtyRequired:        line.qtyRequired,
    requiredDate:       line.requiredDate       ?? null,
    place:              line.place              ?? '',
    approxCost:         line.approxCost         ?? null,
    remarks:            line.remarks            ?? '',
    machineNo:          line.machineNo          ?? '',
    costCentreCode:     line.costCentreCode     ?? '',
    budgetGroupCode:    line.budgetGroupCode     ?? '',
    subCostCode:        line.subCostCode != null ? Number(line.subCostCode) : null,
    subCostName:        line.subCostName        ?? null,
    isSample:           line.isSample,
    lastPoRate:         line.lastPoRate         ?? null,
    lastPoDate:         line.lastPoDate         ?? null,
    lastPoSupplierCode: line.lastPoSupplierCode ?? null,
    lastPoSupplierName: line.lastPoSupplierName ?? null,
    categoryCode:       line.categoryCode       ?? '',
    model:              line.model              ?? '',
    maxCost:            line.maxCost            ?? null,
    rate:               line.rate               ?? null,
    drawNo:             line.drawNo             ?? '',
    catNo:              line.catNo              ?? '',
  })

  // ── Fill form from saved PR ───────────────────────────────────────────────
  const fillFormFromPr = (pr: PRHeaderResponse) => {
    headerForm.setFieldsValue({
      prDate:       dayjs(pr.prDate),
      depCode:      pr.depCode,
      section:      pr.section      ?? '',
      iType:        pr.iType        ?? '',
      reqName:      pr.reqName      ?? '',
      refNo:        pr.refNo        ?? '',
      poGroupCode:  pr.poGroupCode  ?? '',
      scopeCode:    pr.scopeCode    ?? '',
      saleOrderNo:  pr.saleOrderNo  ?? '',
      saleOrderDate: pr.saleOrderDate ? dayjs(pr.saleOrderDate) : null,
    })
  }

  // ── Load record by prNo ───────────────────────────────────────────────────
  const loadRecord = async (prNo: number): Promise<string | null> => {
    setNavLoading(true)
    try {
      const { yfDate, ylDate } = getFYBounds()
      const pr = await purchaseRequisitionApi.getById(prNo, yfDate, ylDate)
      fillFormFromPr(pr)
      setItems(pr.lines.map(mapSavedLine))
      setSavedPrNo(pr.prNo)
      setSavedPr(pr)
      setPrStatus(pr.prStatus)
      setMode('view')
      clearDirty()
      return pr.prStatus
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to load the requisition.')
      return null
    } finally {
      setNavLoading(false)
    }
  }

  // ── Load last record (on mount) ───────────────────────────────────────────
  const loadLastRecord = async () => {
    const { yfDate, ylDate } = getFYBounds()
    setNavLoading(true)
    try {
      const result = await purchaseRequisitionApi.getLastRecord(yfDate, ylDate)
      // Capture the last PR's date here — this is the floor for new PR date selection.
      // Stored separately so it survives initNewMode() which clears savedPr.
      setLastPrDate(result.prDate)
      await loadRecord(result.prNo)
    } catch {
      setNavLoading(false)
    }
  }

  // ── Navigate FIRST / PREV / NEXT / LAST ──────────────────────────────────
  const navigateRecord = async (direction: 'FIRST' | 'PREV' | 'NEXT' | 'LAST') => {
    const { yfDate, ylDate } = getFYBounds()
    setNavLoading(true)
    try {
      const result = await purchaseRequisitionApi.navigate(
        direction, savedPrNo ?? undefined, yfDate, ylDate,
      )
      await loadRecord(result.prNo)
    } catch {
      const label = direction === 'FIRST' || direction === 'PREV' ? 'first' : 'last'
      void message.info(`Already at the ${label} record.`)
      setNavLoading(false)
    }
  }

  // ── Init new mode (F3) ────────────────────────────────────────────────────
  const initNewMode = () => {
    headerForm.resetFields()
    setItems([])
    setSavedPrNo(null)
    setSavedPr(null)
    setPrStatus(null)
    setMode('new')
    clearDirty()
  }

  // ── Build API payload ─────────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): CreatePRRequest => ({
    prDate:        values.prDate.format('YYYY-MM-DD'),
    depCode:       values.depCode,
    section:       values.section?.trim()      || undefined,
    iType:         values.iType?.trim()        || undefined,
    reqName:       values.reqName?.trim()      || undefined,
    refNo:         values.refNo?.trim().toUpperCase() || undefined,
    poGroupCode:   values.poGroupCode?.trim()  || undefined,
    scopeCode:     values.scopeCode?.trim()    || undefined,
    saleOrderNo:   values.saleOrderNo?.trim()  || undefined,
    saleOrderDate: values.saleOrderDate?.format('YYYY-MM-DD') ?? null,
    lines: items
      .filter((l) => l.itemCode.trim() !== '')
      .map((l) => ({
        itemCode:           l.itemCode,
        itemName:           l.itemName           || undefined,
        uom:                l.uom                || undefined,
        rate:               l.rate               ?? undefined,
        currentStock:       l.currentStock       ?? undefined,
        qtyRequired:        l.qtyRequired,
        requiredDate:       l.requiredDate        ?? null,
        approxCost:         l.approxCost          ?? undefined,
        machineNo:          l.machineNo           || undefined,
        remarks:            l.remarks             || undefined,
        costCentreCode:     l.costCentreCode      || undefined,
        budgetGroupCode:    l.budgetGroupCode      || undefined,
        subCostCode:        l.subCostCode         ?? undefined,
        isSample:           l.isSample,
        lastPoRate:         l.lastPoRate          ?? undefined,
        lastPoDate:         l.lastPoDate          ?? undefined,
        lastPoSupplierCode: l.lastPoSupplierCode  ?? undefined,
        lastPoSupplierName: l.lastPoSupplierName  ?? undefined,
        categoryCode:       l.categoryCode        || undefined,
        model:              l.model               || undefined,
        maxCost:            l.maxCost             ?? undefined,
      })),
  })

  // ── Save / Submit ─────────────────────────────────────────────────────────
  const doSave = async (saveMode: 'draft' | 'submit' = 'draft') => {
    let values: PRHeaderFormValues
    try { values = await headerForm.validateFields() }
    catch { message.error('Please fill in all required fields in the Requisition Details section.'); return }

    const validLines = items.filter((l) => l.itemCode.trim() !== '')
    if (validLines.length === 0) {
      message.error('Please add at least one item to the requisition before saving.')
      return
    }

    // Processing-date order validation: only for new PRs, not edits.
    // Uses day-level granularity to strip time-part differences safely.
    if (mode === 'new' && lastPrDate) {
      if (dayjs(values.prDate).isBefore(dayjs(lastPrDate), 'day')) {
        const formatted = dayjs(lastPrDate).format('DD-MMM-YYYY')
        void message.error(
          `Processing Date cannot be earlier than the latest Purchase Requisition date (${formatted}).`,
        )
        headerForm.scrollToField('prDate')
        return
      }
    }

    setSaving(true)
    try {
      const payload = buildPayload(values)
      payload.submitForApproval = saveMode === 'submit'

      let prNo: number
      if (mode === 'edit' && savedPrNo) {
        const updatePayload: UpdatePRRequest = { ...payload, prNo: savedPrNo }
        await purchaseRequisitionApi.update(savedPrNo, updatePayload)
        prNo = savedPrNo
      } else {
        const result = await purchaseRequisitionApi.create(payload)
        prNo = result.prNo
        // Advance the floor: subsequent PRs in this session must be >= this date
        setLastPrDate(payload.prDate)
      }

      setSavedPrNo(prNo)
      setPrStatus(saveMode === 'submit' ? 'PENDING' : 'OPEN')
      const { yfDate, ylDate } = getFYBounds()
      const fullPr = await purchaseRequisitionApi.getById(prNo, yfDate, ylDate)
      setSavedPr(fullPr)
      setItems(fullPr.lines.map(mapSavedLine))
      setMode('view')
      clearDirty()
      const action = saveMode === 'submit' ? 'submitted for approval' : 'saved as draft'
      message.success(`PR ${prNo} ${action}.`)
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to save the requisition. Please try again.')
    } finally { setSaving(false) }
  }

  // ── Delete PR ─────────────────────────────────────────────────────────────
  const handleDeleteClick = () => {
    if (!savedPrNo) return
    setSelectedDeleteReason(null)
    setDeleteModalOpen(true)
  }

  const handleDeleteConfirm = async () => {
    if (!selectedDeleteReason || !savedPrNo) {
      message.error('Please select a cancellation reason before proceeding.')
      return
    }
    setDeleteModalOpen(false)
    setDeleting(true)
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, selectedDeleteReason)
      void message.success(`PR ${savedPrNo} deleted.`)
      navigate('/purchase/requisition')
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : 'Failed to cancel the requisition.')
    } finally { setDeleting(false) }
  }

  // ── KPI computations ─────────────────────────────────────────────────────
  const validLines = items.filter((l) => l.itemCode.trim() !== '')
  const totalCost  = validLines.reduce((s, l) => s + (l.approxCost ?? 0), 0)
  const totalQtyByUOM = validLines.reduce<Record<string, number>>((acc, l) => {
    if (l.uom) acc[l.uom] = (acc[l.uom] ?? 0) + (l.qtyRequired ?? 0)
    return acc
  }, {})
  const totalQtyDisplay = Object.entries(totalQtyByUOM)
    .sort(([a], [b]) => a.localeCompare(b))
    .map(([uom, qty]) =>
      `${uom}: ${qty.toLocaleString('en-IN', { minimumFractionDigits: 3, maximumFractionDigits: 3 })}`,
    )
    .join(' | ') || '—'

  const pageBusy = saving || deleting || navLoading

  // ── Ctrl+S global shortcut ────────────────────────────────────────────────
  const doSaveRef = useRef(doSave)
  doSaveRef.current = doSave
  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      if (e.ctrlKey && e.key === 's') {
        e.preventDefault()
        if (!saving && !deleting) void doSaveRef.current('submit')
      }
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [saving, deleting])

  return {
    // form
    headerForm, depCode, authUser, divCode,
    // state
    items, setItems,
    savedPrNo, savedPr, prStatus,
    lastPrDate,
    saving, deleting, pageBusy,
    preCheckResult, preCheckMsg, preCheckLoading,
    deleteReasons, selectedDeleteReason, setSelectedDeleteReason,
    deleteModalOpen, setDeleteModalOpen,
    warnings, setWarnings,
    // mode & navigation
    mode, setMode,
    navLoading,
    isDirty, markDirty, clearDirty,
    // lookups
    departments, employees, poTypes, machines, indentTypes,
    lookupsLoaded, lookupsLoading, lookupsError, loadAll,
    // KPI
    validLines, totalCost, totalQtyByUOM, totalQtyDisplay,
    // actions
    doSave, handleDeleteClick, handleDeleteConfirm, mapSavedLine,
    loadRecord, loadLastRecord, navigateRecord, initNewMode,
  }
}
