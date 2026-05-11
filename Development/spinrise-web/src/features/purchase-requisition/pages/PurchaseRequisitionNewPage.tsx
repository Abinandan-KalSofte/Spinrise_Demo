import { useEffect, useRef, useState } from "react";
import {
  Alert,
  App,
  Form,
  Modal,
  Select,
  Skeleton,
  Space,
  Spin,
  Typography,
} from "antd";
import {
  CheckOutlined,
  CloseOutlined,
  DeleteOutlined,
  DoubleLeftOutlined,
  DoubleRightOutlined,
  EditOutlined,

  LeftOutlined,
  PlusOutlined,
  PrinterOutlined,
  RightOutlined,
  SearchOutlined,
  UnorderedListOutlined,
} from "@ant-design/icons";
import { useNavigate } from "react-router-dom";

import { useAuthStore } from "@/features/auth/store/useAuthStore";
import { generateUUID } from "@/shared/lib/uuid";
import { getFYBounds } from "@/shared/lib/dateUtils";
import { purchaseRequisitionApi } from "../api/purchaseRequisitionApi";
import { useLookupStore } from "../store/useLookupStore";
import { PRHeaderCards } from "../components/pr-form/PRHeaderCards";
import { PRLineItemsTable } from "../components/pr-form/PRLineItemsTable";
import { PR_STATUS_LABELS } from "../types";
import type {
  PRHeaderFormValues,
  PRHeaderResponse,
  PRLineFormItem,
  PRLineResponse,
  CreatePRRequest,
  PreCheckResult,
} from "../types";

// ── CEO design tokens ─────────────────────────────────────────────────────────

const C = {
  blue:    '#185FA5',
  blueLt:  '#E6F1FB',
  green:   '#3B6D11',
  greenLt: '#EAF3DE',
  amber:   '#BA7517',
  amberLt: '#FAEEDA',
  red:     '#A32D2D',
  redLt:   '#FCEBEB',
  bg:      '#f5f5f3',
  bg2:     '#fafaf8',
  border:  '#e2e2e2',
  border2: '#d0d0d0',
  text:    '#1a1a1a',
  text2:   '#4a4a4a',
  text3:   '#888',
} as const

// ── Toolbar button ─────────────────────────────────────────────────────────────

interface TbBtnProps {
  icon:       React.ReactNode
  label?:     string
  kbd?:       string
  onClick?:   () => void
  disabled?:  boolean
  variant?:   'default' | 'primary' | 'success' | 'danger' | 'icon'
  title?:     string
}
function TbBtn({ icon, label, kbd, onClick, disabled = false, variant = 'default', title }: TbBtnProps) {
  const base: React.CSSProperties = {
    display: 'inline-flex', alignItems: 'center', gap: 5,
    padding: variant === 'icon' ? '5px 8px' : '5px 11px',
    border: `1px solid ${C.border2}`, borderRadius: 6,
    background: '#fff', fontSize: 12, fontWeight: 500,
    cursor: disabled ? 'not-allowed' : 'pointer',
    color: C.text, opacity: disabled ? 0.35 : 1,
    fontFamily: 'inherit', whiteSpace: 'nowrap',
    transition: 'background 0.12s, opacity 0.12s',
  }
  const variants: Partial<Record<string, React.CSSProperties>> = {
    primary: { background: C.blue,   color: '#fff', borderColor: C.blue },
    success: { background: '#3B6D11', color: '#fff', borderColor: '#3B6D11' },
    danger:  { color: C.red, borderColor: '#E24B4A', background: '#fff' },
  }
  return (
    <button
      style={{ ...base, ...(variants[variant] ?? {}) }}
      onClick={!disabled ? onClick : undefined}
      disabled={disabled}
      title={title}
    >
      {icon}
      {label && <span>{label}</span>}
      {kbd && (
        <span style={{
          fontSize: 10, padding: '1px 4px',
          border: `1px solid ${C.border2}`, borderRadius: 3,
          color: C.text3, background: C.bg, fontFamily: 'monospace', marginLeft: 2,
        }}>{kbd}</span>
      )}
    </button>
  )
}
function TbSep() {
  return <div style={{ width: 1, height: 22, background: C.border, margin: '0 3px', flexShrink: 0 }} />
}

// ── Metric card ───────────────────────────────────────────────────────────────

function MetricCard({ label, value, sub, valueColor }: {
  label: string; value: React.ReactNode; sub?: string; valueColor?: string
}) {
  return (
    <div style={{ background: '#fff', border: `1px solid ${C.border}`, borderRadius: 10, padding: '10px 13px' }}>
      <div style={{ fontSize: 10, fontWeight: 600, color: C.text3, textTransform: 'uppercase', letterSpacing: '0.4px', marginBottom: 3 }}>
        {label}
      </div>
      <div style={{ fontSize: 18, fontWeight: 700, color: valueColor ?? C.text, lineHeight: 1.2, fontVariantNumeric: 'tabular-nums' }}>
        {value}
      </div>
      {sub && <div style={{ fontSize: 11, color: C.text3, marginTop: 2 }}>{sub}</div>}
    </div>
  )
}


// ── Page ─────────────────────────────────────────────────────────────────────

export default function PurchaseRequisitionNewPage() {
  const { message } = App.useApp();
  const navigate = useNavigate();
  const [headerForm] = Form.useForm<PRHeaderFormValues>();

  const authUser = useAuthStore((s) => s.user)
  const divCode = authUser?.divCode ?? ""
  const depCode = (Form.useWatch("depCode", headerForm) as string | undefined) ?? ""

  // ── State ─────────────────────────────────────────────────────────────────
  const [items, setItems] = useState<PRLineFormItem[]>([]);
  const [savedPrNo, setSavedPrNo] = useState<number | null>(null);
  const [savedPr, setSavedPr] = useState<PRHeaderResponse | null>(null);
  const [prStatus, setPrStatus] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);
  const [deleting, setDeleting] = useState(false);

  const [preCheckResult, setPreCheckResult] = useState<PreCheckResult | null>(
    null,
  );
  const [preCheckMsg, setPreCheckMsg] = useState<string | null>(null);
  const [preCheckLoading, setPreCheckLoading] = useState(false);

  const [deleteReasons, setDeleteReasons] = useState<
    { reasonCode: string; reasonDesc: string }[]
  >([]);
  const [selectedDeleteReason, setSelectedDeleteReason] = useState<
    string | null
  >(null);
  const [deleteModalOpen, setDeleteModalOpen] = useState(false);

  const [warnings, setWarnings] = useState<string[]>([]); // G11: Store item warnings

  // ── Lookups ───────────────────────────────────────────────────────────────
  const {
    departments,
    employees,
    poTypes,
    machines,
    loaded: lookupsLoaded,
    loading: lookupsLoading,
    error: lookupsError,
    loadAll,
  } = useLookupStore();

  useEffect(() => {
    void loadAll();
  }, [loadAll]);
  useEffect(() => {
    if (divCode) void runPreChecks();
  }, [divCode]); // eslint-disable-line react-hooks/exhaustive-deps
  useEffect(() => {
    void (async () => {
      try {
        setDeleteReasons(await purchaseRequisitionApi.getDeleteReasons());
      } catch {
        /* non-critical */
      }
    })();
  }, []);

  // ── Pre-checks ────────────────────────────────────────────────────────────
  const runPreChecks = async () => {
    setPreCheckLoading(true);
    try {
      const result = await purchaseRequisitionApi.preChecks();
      setPreCheckResult(result);
      if (!result.itemMasterExists)
        setPreCheckMsg("Item Master is not configured.");
      else if (!result.departmentExists)
        setPreCheckMsg("No departments configured for this division.");
      else if (!result.docNumberConfigured)
        setPreCheckMsg("PR document number series is not configured.");
      else setPreCheckMsg(null);
    } catch {
      /* non-critical */
    } finally {
      setPreCheckLoading(false);
    }
  };

  // ── Map saved line to form item ───────────────────────────────────────────
  const mapSavedLine = (line: PRLineResponse): PRLineFormItem => ({
    key: generateUUID(),
    prSNo: line.prSNo,
    itemCode: line.itemCode,
    itemName: line.itemName ?? "",
    uom: line.uom ?? "",
    currentStock: line.currentStock ?? null,
    minLevel: null,
    qtyRequired: line.qtyRequired,
    requiredDate: line.requiredDate ?? null,
    place: line.place ?? "",
    approxCost: line.approxCost ?? null,
    remarks: line.remarks ?? "",
    machineNo: line.machineNo ?? "",
    costCentreCode: line.costCentreCode ?? "",
    budgetGroupCode: line.budgetGroupCode ?? "",
    subCostCode: line.subCostCode ?? null,
    subCostName: line.subCostName ?? null,
    isSample: line.isSample,
    lastPoRate: line.lastPoRate ?? null,
    lastPoDate: line.lastPoDate ?? null,
    lastPoSupplierCode: line.lastPoSupplierCode ?? null,
    lastPoSupplierName: line.lastPoSupplierName ?? null,
    categoryCode: line.categoryCode ?? "",
    model: line.model ?? "",
    maxCost: line.maxCost ?? null,
    rate: line.rate ?? null,
    drawNo: line.drawNo ?? "",
    catNo: line.catNo ?? "",
  });

  // ── Build payload ─────────────────────────────────────────────────────────
  const buildPayload = (values: PRHeaderFormValues): CreatePRRequest => ({
    prDate: values.prDate.format("YYYY-MM-DD"),
    depCode: values.depCode,
    section: values.section?.trim() || undefined,
    iType: values.iType?.trim() || undefined,
    reqName: values.reqName?.trim() || undefined,
    refNo: values.refNo?.trim().toUpperCase() || undefined,
    poGroupCode: values.poGroupCode?.trim() || undefined,
    scopeCode: values.scopeCode?.trim() || undefined,
    saleOrderNo: values.saleOrderNo?.trim() || undefined,
    saleOrderDate: values.saleOrderDate?.format("YYYY-MM-DD") ?? null,
    lines: items
      .filter((l) => l.itemCode.trim() !== "")
      .map((l) => ({
        itemCode: l.itemCode,
        itemName: l.itemName || undefined,
        uom: l.uom || undefined,
        rate: l.rate ?? undefined,
        currentStock: l.currentStock ?? undefined,
        qtyRequired: l.qtyRequired,
        requiredDate: l.requiredDate ?? null,
        approxCost: l.approxCost ?? undefined,
        machineNo: l.machineNo || undefined,
        remarks: l.remarks || undefined,
        costCentreCode: l.costCentreCode || undefined,
        budgetGroupCode: l.budgetGroupCode || undefined,
        subCostCode: l.subCostCode ?? undefined,
        isSample: l.isSample,
        lastPoRate: l.lastPoRate ?? undefined,
        lastPoDate: l.lastPoDate ?? undefined,
        lastPoSupplierCode: l.lastPoSupplierCode ?? undefined,
        lastPoSupplierName: l.lastPoSupplierName ?? undefined,
        categoryCode: l.categoryCode || undefined,
        model: l.model || undefined,
        maxCost: l.maxCost ?? undefined,
      })),
  });

  // ── Save / Submit ─────────────────────────────────────────────────────────
  const doSave = async (mode: "draft" | "submit" = "draft") => {
    let values: PRHeaderFormValues;
    try {
      values = await headerForm.validateFields();
    } catch {
      message.error("Please fill in all required fields in the Requisition Details section.");
      return;
    }
    const validLines = items.filter((l) => l.itemCode.trim() !== "");
    if (validLines.length === 0) {
      message.error("Please add at least one item to the requisition before saving.");
      return;
    }
    setSaving(true);
    try {
      const payload = buildPayload(values);
      payload.submitForApproval = mode === "submit";

      const result = await purchaseRequisitionApi.create(payload);
      setSavedPrNo(result.prNo);
      // G19: Set status based on submit mode
      setPrStatus(mode === "submit" ? "PENDING" : "OPEN");
      const { yfDate, ylDate } = getFYBounds();
      const fullPr = await purchaseRequisitionApi.getById(result.prNo, yfDate, ylDate);
      setSavedPr(fullPr);
      setItems(fullPr.lines.map(mapSavedLine));
      const action =
        mode === "submit" ? "submitted for approval" : "saved as draft";
      message.success(`PR ${result.prNo} ${action}.`);
      if (mode === "submit") {
        navigate("/purchase/requisition");
      }
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : "Failed to save the requisition. Please try again.");
    } finally {
      setSaving(false);
    }
  };

  // ── Delete PR ─────────────────────────────────────────────────────────────
  const handleDeleteClick = () => {
    if (!savedPrNo) return;
    setSelectedDeleteReason(null);
    setDeleteModalOpen(true);
  };
  const handleDeleteConfirm = async () => {
    if (!selectedDeleteReason || !savedPrNo) {
      message.error("Please select a cancellation reason before proceeding.");
      return;
    }
    setDeleteModalOpen(false);
    setDeleting(true);
    try {
      await purchaseRequisitionApi.deletePR(savedPrNo, selectedDeleteReason);
      void message.success(`PR ${savedPrNo} deleted.`);
      navigate("/purchase/requisition");
    } catch (err: unknown) {
      message.error(err instanceof Error ? err.message : "Failed to cancel the requisition. Please try again.");
    } finally {
      setDeleting(false);
    }
  };

  // ── Print ─────────────────────────────────────────────────────────────────
  // ── Derived ───────────────────────────────────────────────────────────────
  const pageBusy    = saving || deleting
  const validLines  = items.filter((l) => l.itemCode.trim() !== "")
  const totalCost   = validLines.reduce((s, l) => s + (l.approxCost ?? 0), 0)
  const totalQtyByUOM = validLines.reduce<Record<string, number>>((acc, l) => {
    if (l.uom) acc[l.uom] = (acc[l.uom] ?? 0) + (l.qtyRequired ?? 0)
    return acc
  }, {})
  const totalQtyDisplay = Object.entries(totalQtyByUOM)
    .sort(([a], [b]) => a.localeCompare(b))
    .map(([uom, qty]) => `${uom}: ${qty.toLocaleString('en-IN', { minimumFractionDigits: 3, maximumFractionDigits: 3 })}`)
    .join(' | ') || '—'

  // Ctrl+S → save
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

  // ── Loading state ─────────────────────────────────────────────────────────
  if (lookupsLoading) {
    return (
      <div style={{ padding: 32 }}>
        <Spin tip="Loading reference data…">
          <Skeleton active paragraph={{ rows: 8 }} />
        </Spin>
      </div>
    );
  }

  // ── Render ────────────────────────────────────────────────────────────────
  return (
    <div className="pr-page" style={{ background: C.bg }}>

      {/* ══ CEO-style toolbar ════════════════════════════════════════════════ */}
      <div style={{
        background: '#fff', borderBottom: `1px solid ${C.border}`,
        display: 'flex', alignItems: 'center', gap: 3,
        padding: '0 12px', height: 44, flexShrink: 0,
      }}>
        <TbBtn variant="primary" icon={<PlusOutlined style={{ fontSize: 11 }} />} label="New PR" kbd="F3" disabled={!!savedPrNo} onClick={() => navigate('/purchase/requisition/v1/new')} />
        <TbBtn variant="success" icon={<CheckOutlined style={{ fontSize: 11 }} />} label="Save" kbd="Ctrl+S" disabled={pageBusy} onClick={() => void doSave('submit')} />
        <TbBtn icon={<EditOutlined style={{ fontSize: 11 }} />} label="Modify" kbd="F4" disabled />
        <TbBtn icon={<CloseOutlined style={{ fontSize: 11 }} />} label="Cancel" kbd="Esc" disabled={pageBusy} onClick={() => navigate('/purchase/requisition')} />
        <TbBtn variant="danger" icon={<DeleteOutlined style={{ fontSize: 11 }} />} label="Delete" kbd="Ctrl+D" disabled={!savedPrNo || pageBusy} onClick={handleDeleteClick} />
        <TbSep />
        <TbBtn icon={<PrinterOutlined style={{ fontSize: 11 }} />} label="Print" kbd="Ctrl+P" disabled={!savedPrNo} />
        <TbBtn icon={<SearchOutlined style={{ fontSize: 11 }} />} label="Find" kbd="Ctrl+F" onClick={() => navigate('/purchase/requisition')} />
        <TbBtn icon={<UnorderedListOutlined style={{ fontSize: 11 }} />} label="List" kbd="Ctrl+L" onClick={() => navigate('/purchase/requisition')} />
        <TbSep />
        <TbBtn variant="icon" icon={<DoubleLeftOutlined style={{ fontSize: 10 }} />} disabled title="First record" />
        <TbBtn variant="icon" icon={<LeftOutlined style={{ fontSize: 10 }} />} disabled title="Previous record" />
        <TbBtn variant="icon" icon={<RightOutlined style={{ fontSize: 10 }} />} disabled title="Next record" />
        <TbBtn variant="icon" icon={<DoubleRightOutlined style={{ fontSize: 10 }} />} disabled title="Last record" />
      </div>

      {/* ══ BODY ════════════════════════════════════════════════════════════ */}
      <div className="pr-page__body">

        {/* Alerts */}
        {lookupsError && (
          <Alert type="error" showIcon banner message={lookupsError}
            action={<span style={{ fontSize: 12, color: C.blue, cursor: 'pointer' }} onClick={() => void loadAll()}>Retry</span>}
          />
        )}
        {preCheckMsg && <Alert type="warning" showIcon banner message={preCheckMsg} />}
        {preCheckLoading && (
          <div style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '6px 16px', background: '#fff' }}>
            <Spin size="small" />
            <span style={{ fontSize: 12, color: C.text3 }}>Running pre-checks…</span>
          </div>
        )}
        {warnings.map((warn) => (
          <Alert key={warn} type="warning" showIcon banner message={warn} closable />
        ))}

        {/* ── Document Header — Zone B blue gradient ─────────────────────── */}
        <div style={{ borderBottom: `1px solid ${C.border}`, flexShrink: 0 }}>
          {/* Zone B: blue gradient band */}
          <div style={{
            background: 'linear-gradient(135deg, #0C447C 0%, #185FA5 100%)',
            padding: '10px 18px',
            display: 'flex', alignItems: 'center', justifyContent: 'space-between',
          }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 20 }}>
              <div>
                <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 2 }}>Document</div>
                <div style={{ fontSize: 12, fontWeight: 700, color: '#fff', letterSpacing: '.3px' }}>Purchase Requisition</div>
              </div>
              <div>
                <div style={{ fontSize: 10, color: 'rgba(255,255,255,.6)', marginBottom: 2 }}>PR Number</div>
                <div style={{ fontSize: 13, fontWeight: 700, color: '#fff', fontFamily: 'monospace' }}>
                  {savedPrNo ? `PR-${String(savedPrNo).padStart(5, '0')}` : 'Auto-generated on save'}
                </div>
              </div>
            </div>
            <span style={{
              fontSize: 11, padding: '4px 14px', borderRadius: 20, fontWeight: 700,
              background: 'rgba(255,255,255,.18)', color: '#fff', letterSpacing: '.4px',
            }}>
              {prStatus ? (PR_STATUS_LABELS[prStatus]?.label ?? prStatus) : 'Draft'}
            </span>
          </div>

          <Skeleton active loading={!lookupsLoaded && !lookupsError}>
            <PRHeaderCards
              form={headerForm}
              departments={departments}
              employees={employees}
              poTypes={poTypes}
              savedPrNo={savedPrNo}
              disabled={pageBusy}
              requireRequesterName={true}
              requireRefNo={preCheckResult?.requireRefNo ?? false}
              pendingPoDetailsEnabled={preCheckResult?.pendingPoDetailsEnabled ?? false}
              backDateAllowed={preCheckResult?.backDateAllowed ?? true}
              budgetValidationEnabled={preCheckResult?.budgetValidationEnabled ?? false}
              budgetBalance={savedPr?.budgetBalance ?? null}
              approvalVisible={false}
            />
          </Skeleton>
        </div>

      

        {/* ── Item Lines ─────────────────────────────────────────────────── */}
        <div style={{ flex: 1, overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
          <PRLineItemsTable
            items={items}
            machines={machines}
            depCode={depCode}
            prDate={headerForm.getFieldValue("prDate")?.format("YYYY-MM-DD")}
            preCheckResult={preCheckResult}
            disabled={pageBusy}
            savedPrNo={savedPrNo ?? undefined}
            deleteReasons={deleteReasons}
            onAdd={(item) => {
              setItems((prev) => {
                if (prev.some((l) => l.itemCode === item.itemCode)) {
                  void message.warning(`Item "${item.itemName}" (${item.itemCode}) is already in the list.`)
                  return prev
                }
                return [...prev, item]
              })
            }}
            onUpdate={(updated) => setItems((prev) => prev.map((l) => (l.key === updated.key ? updated : l)))}
            onDelete={(key) => setItems((prev) => prev.filter((l) => l.key !== key))}
            onWarning={(msg) => {
              setWarnings((prev) => [...new Set([...prev, msg])])
              setTimeout(() => setWarnings((prev) => prev.filter((m) => m !== msg)), 5000)
            }}
          />
        </div>

          {/* ── KPI Strip (5 cards — CEO closed decision) ──────────────────── */}
        <div style={{ background: C.bg2, padding: '10px 16px 12px', flexShrink: 0, borderBottom: `1px solid ${C.border}` }}>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: 10 }}>
            <MetricCard
              label="Total Lines"
              value={validLines.length}
              sub={`${validLines.length === 1 ? 'item' : 'items'} in this PR`}
              valueColor={C.blue}
            />
            <MetricCard
              label="Total Quantity"
              value={<span style={{ fontSize: 12, fontWeight: 700, fontFamily: 'monospace' }}>{totalQtyDisplay}</span>}
              sub="By unit of measure"
            />
            <MetricCard
              label="Approx. Budget"
              value={`₹ ${totalCost.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`}
              sub="Indicative cost"
              valueColor={C.amber}
            />
            <MetricCard
              label="Created By"
              value={savedPr?.createdBy ?? (authUser?.userId ?? '—')}
              sub={savedPr ? 'Saved' : 'Not yet saved'}
            />
            <MetricCard
              label="Approval Status"
              value={prStatus ? (PR_STATUS_LABELS[prStatus]?.label ?? prStatus) : 'Draft'}
              sub={savedPrNo ? 'Awaiting approval' : 'Not yet saved'}
            />
          </div>
        </div>

      </div>

      {/* Delete modal */}
      <Modal
        title={
          <Space>
            <DeleteOutlined style={{ color: "#dc2626" }} />
            Delete Purchase Requisition
          </Space>
        }
        open={deleteModalOpen}
        onCancel={() => setDeleteModalOpen(false)}
        onOk={() => void handleDeleteConfirm()}
        okText="Confirm Delete"
        okButtonProps={{ danger: true }}
        confirmLoading={deleting}
        width={440}
        destroyOnClose
      >
        <Typography.Paragraph style={{ color: "#374151", marginBottom: 16 }}>
          You are about to delete{" "}
          <Typography.Text strong>PR #{savedPrNo}</Typography.Text>. This action
          cannot be undone. Please select a reason.
        </Typography.Paragraph>
        <Select
          placeholder="Select delete reason…"
          value={selectedDeleteReason}
          onChange={setSelectedDeleteReason}
          options={deleteReasons.map((r) => ({
            value: r.reasonCode,
            label: `${r.reasonCode} – ${r.reasonDesc}`,
          }))}
          style={{ width: "100%" }}
        />
      </Modal>
    </div>
  );
}
