import {
  Col,
  DatePicker,
  Form,
  Input,
  Row,
  Select,
  Tag,
  Tooltip,
  Typography,
} from "antd";
import { CalendarOutlined } from "@ant-design/icons";
import type { FormInstance } from "antd";
import dayjs from "dayjs";
import {
  prefixFilterOption,
  priorityFilterSort,
} from "@/shared/utils/selectUtils";
import { useAuthStore } from "@/features/auth/store/useAuthStore";
import type {
  DepartmentLookup,
  EmployeeLookup,
  POTypeLookup,
  PRHeaderFormValues,
} from "../../types";

// ─── Types ────────────────────────────────────────────────────────────────────

interface PRHeaderCardsProps {
  form: FormInstance<PRHeaderFormValues>;
  departments: DepartmentLookup[];
  employees: EmployeeLookup[];
  poTypes: POTypeLookup[];
  savedPrNo?: number | null;
  disabled?: boolean;
  requireRequesterName?: boolean;
  requireRefNo?: boolean;
  pendingPoDetailsEnabled?: boolean;
  backDateAllowed?: boolean;
  budgetValidationEnabled?: boolean;
  budgetBalance?: number | null;
  approvalVisible?: boolean;
  level1ApproverName?: string | null;
  level1ApprovedAt?: string | null;
  level2ApproverName?: string | null;
  level2ApprovedAt?: string | null;
  finalApproverName?: string | null;
  finalApprovedAt?: string | null;
  createdBy?: string | null;
}

// ─── Design tokens ────────────────────────────────────────────────────────────

const ACCENT   = "#185FA5";
const LABEL_COLOR = "#475569";
const LABEL: React.CSSProperties = {
  fontSize: 11,
  fontWeight: 600,
  color: LABEL_COLOR,
  letterSpacing: "0.01em",
};
const ITEM: React.CSSProperties = { marginBottom: 0 };

function FieldLabel({ text, required }: { text: string; required?: boolean }) {
  return (
    <span style={LABEL}>
      {text}
      {required && <span style={{ color: "#ef4444", marginLeft: 2 }}>*</span>}
    </span>
  );
}

// ─── Component ────────────────────────────────────────────────────────────────

export function PRHeaderCards({
  form,
  departments,
  employees,
  savedPrNo = null,
  disabled = false,
  requireRequesterName = false,
  requireRefNo = false,
  backDateAllowed = true,
  budgetValidationEnabled = false,
  budgetBalance = null,
  approvalVisible = false,
  level1ApproverName = null,
  level1ApprovedAt = null,
  level2ApproverName = null,
  level2ApprovedAt = null,
  finalApproverName = null,
  finalApprovedAt = null,
  createdBy = null,
}: PRHeaderCardsProps) {
  const processingDate = useAuthStore((s) => s.processingDate);
  const procDay = processingDate ? dayjs(processingDate) : dayjs();

  const deptOptions = departments.map((d) => ({
    value: d.depCode,
    label: `${d.depCode} – ${d.depName}`,
  }));
  const empOptions = employees.map((e) => ({
    value: e.empNo,
    label: `${e.empNo} – ${e.eName}`,
  }));
  const requisitionTypeOptions = [
    { value: "E", label: "Emergency" },
    { value: "O", label: "Ordinary" },
    { value: "U", label: "Urgent" },
  ];

  const blockTab = (field: keyof PRHeaderFormValues) => (e: { key: string; preventDefault: () => void }) => {
    if (e.key !== "Tab") return;
    const val = form.getFieldValue(field);
    const empty = val === undefined || val === null || val === "";
    if (empty) {
      e.preventDefault();
      void form.validateFields([field]);
    }
  };

  return (
    <div style={{
      background: "#ffffff",
      borderBottom: "1px solid #e2e2e2",
      padding: "10px 20px 10px 20px",
      display: "flex",
      flexDirection: "column",
      gap: 0,
    }}>
      {/* ── Header meta row ─────────────────────────────────────────────────── */}
      <div style={{
        display: "flex",
        alignItems: "center",
        justifyContent: "space-between",
        marginBottom: 8,
      }}>
        <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
          <Typography.Text style={{ fontSize: 11, fontWeight: 700, color: ACCENT, letterSpacing: "0.06em", textTransform: "uppercase" }}>
            Requisition Details
          </Typography.Text>
          <div style={{
            display:       "inline-flex",
            alignItems:    "center",
            gap:           5,
            background:    "linear-gradient(135deg, #eff6ff, #dbeafe)",
            border:        "1px solid #bfdbfe",
            borderRadius:  20,
            padding:       "2px 10px 2px 7px",
            boxShadow:     "0 1px 4px rgba(22,119,255,0.12)",
          }}>
            <CalendarOutlined style={{ color: ACCENT, fontSize: 11 }} />
            <span style={{ fontSize: 11, fontWeight: 700, color: "#1e40af", letterSpacing: "0.02em" }}>
              {procDay.format("DD MMM YYYY")}
            </span>
          </div>
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
          {createdBy && (
            <span style={{ fontSize: 11, color: "#94A3B8" }}>
              Created by <strong style={{ color: "#475569" }}>{createdBy}</strong>
            </span>
          )}
          {savedPrNo && (
            <Tag
              color="blue"
              style={{ fontSize: 12, fontWeight: 700, fontFamily: "monospace", marginRight: 0, padding: "1px 10px" }}
            >
              PR-{String(savedPrNo).padStart(5, "0")}
            </Tag>
          )}
          {budgetValidationEnabled && budgetBalance != null && (
            <Tag color={budgetBalance > 0 ? "green" : "red"} style={{ marginRight: 0 }}>
              Budget: ₹{budgetBalance.toLocaleString("en-IN", { minimumFractionDigits: 2 })}
            </Tag>
          )}
        </div>
      </div>

      {/* ── Form fields ─────────────────────────────────────────────────────── */}
      <Form
        form={form}
        layout="vertical"
        initialValues={{ prDate: procDay }}
        disabled={disabled}
        size="small"
        style={{ flex: 1 }}
      >
        <Row gutter={[12, 6]}>
          {/* PR Date — editable, defaults to login (processing) date */}
          <Col xs={24} sm={12} md={4}>
            <Form.Item
              name="prDate"
              label={<FieldLabel text="PR Date" required />}
              rules={[{ required: true, message: "Required" }]}
              style={ITEM}
            >
              <DatePicker
                style={{ width: "100%" }}
                format="DD-MM-YYYY"
                allowClear={false}
                disabledDate={(d) => {
                  if (d.isAfter(procDay, "day")) return true;
                  if (!backDateAllowed && d.isBefore(procDay, "day")) return true;
                  return false;
                }}
              />
            </Form.Item>
          </Col>

          {/* Department */}
          <Col xs={24} sm={12} md={5}>
            <Form.Item
              name="depCode"
              label={<FieldLabel text="Department" required />}
              rules={[{ required: true, message: "Required" }]}
              style={ITEM}
            >
              <div onKeyDown={blockTab("depCode")}>
                <Select
                  showSearch
                  placeholder="Select department…"
                  options={deptOptions}
                  filterOption={prefixFilterOption}
                  filterSort={priorityFilterSort}
                  allowClear
                />
              </div>
            </Form.Item>
          </Col>

          {/* Section */}
          <Col xs={24} sm={12} md={3}>
            <Form.Item name="section" label={<FieldLabel text="Section" />} style={ITEM}>
              <Input placeholder="e.g. Spinning" maxLength={100} />
            </Form.Item>
          </Col>

          {/* Requested By */}
          <Col xs={24} sm={12} md={4}>
            <Form.Item
              name="reqName"
              label={<FieldLabel text="Requested By" required={requireRequesterName} />}
              rules={requireRequesterName ? [{ required: true, message: "Required" }] : []}
              style={ITEM}
            >
              <div onKeyDown={requireRequesterName ? blockTab("reqName") : undefined}>
                <Select
                  showSearch
                  placeholder="Select employee…"
                  options={empOptions}
                  filterOption={prefixFilterOption}
                  filterSort={priorityFilterSort}
                  allowClear
                />
              </div>
            </Form.Item>
          </Col>

          {/* Requisition Type */}
          <Col xs={24} sm={12} md={4}>
            <Form.Item
              name="iType"
              label={<FieldLabel text="Requisition Type" required />}
              rules={[{ required: true, message: "Required" }]}
              style={ITEM}
            >
              <div onKeyDown={blockTab("iType")}>
                <Select
                  placeholder="Select type…"
                  options={requisitionTypeOptions}
                  allowClear
                />
              </div>
            </Form.Item>
          </Col>

          {/* Reference No. */}
          <Col xs={24} sm={12} md={4}>
            <Form.Item
              name="refNo"
              label={<FieldLabel text="Reference No." required={requireRefNo} />}
              rules={requireRefNo ? [{ required: true, message: "Required" }] : []}
              style={ITEM}
            >
              <Input
                placeholder="REF-…"
                maxLength={50}
                onChange={(e) => form.setFieldValue("refNo", e.target.value.toUpperCase())}
                style={{ textTransform: "uppercase" }}
              />
            </Form.Item>
          </Col>
        </Row>
      </Form>

      {/* ── Approval chain (compact inline) ─────────────────────────────────── */}
      {approvalVisible && (level1ApproverName || level2ApproverName || finalApproverName) && (
        <div style={{ display: "flex", gap: 6, flexWrap: "wrap", marginTop: 6, paddingTop: 6, borderTop: "1px dashed #E5E7EB" }}>
          <span style={{ fontSize: 10, color: "#94A3B8", alignSelf: "center" }}>Approvals:</span>
          {level1ApproverName && (
            <Tooltip title={level1ApprovedAt ?? ""}>
              <Tag color="blue" style={{ fontSize: 10, marginRight: 0 }}>
                L1: {level1ApproverName}
              </Tag>
            </Tooltip>
          )}
          {level2ApproverName && (
            <Tooltip title={level2ApprovedAt ?? ""}>
              <Tag color="geekblue" style={{ fontSize: 10, marginRight: 0 }}>
                L2: {level2ApproverName}
              </Tag>
            </Tooltip>
          )}
          {finalApproverName && (
            <Tooltip title={finalApprovedAt ?? ""}>
              <Tag color="green" style={{ fontSize: 10, marginRight: 0 }}>
                Final: {finalApproverName}
              </Tag>
            </Tooltip>
          )}
        </div>
      )}
    </div>
  );
}
