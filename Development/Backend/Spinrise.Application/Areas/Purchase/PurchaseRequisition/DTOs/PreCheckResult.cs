namespace Spinrise.Application.DTOs.PurchaseRequisitions;

/// <summary>
/// Maps the result set of usp_PR_PreChecks.
/// Consolidates all setup existence checks (V1–V3)
/// and every po_para / in_para configuration flag
/// into a single object, eliminating per-call
/// GetFeatureFlagAsync inline-SQL lookups.
/// </summary>
public class PreCheckResult
{
    // ── Setup existence (V1, V2, V3) ────────────────────────────────────────
    public bool ItemMasterExists    { get; set; }
    public bool DepartmentExists    { get; set; }
    public bool DocNumberConfigured { get; set; }

    // ── in_para ──────────────────────────────────────────────────────────────
    public bool BackDateAllowed { get; set; }

    // ── po_para flags ────────────────────────────────────────────────────────
    public bool BudgetValidationEnabled   { get; set; }   // BudgetQty = 'Y'
    public bool PendingIndentCheckEnabled { get; set; }   // PendingOrderPara = 'Y'
    public bool PendingPRCheckEnabled     { get; set; }   // PendPRCheck = 'Y'
    public bool ItemGroupFilterEnabled    { get; set; }   // IndItemGrp = 'Y'
    public bool ApprovalStatusVisible     { get; set; }   // PRApprovalStatus = 'Y'
    public bool ManualPrNumberEnabled     { get; set; }   // Manual_IndNo = 'Y'
    public bool PendingPoDetailsEnabled   { get; set; }   // Penpodetails = 'Y'
    public bool RequireRequesterName      { get; set; }   // RequireReqName = 'Y'
    public bool RequireRefNo              { get; set; }   // RequireRefNo = 'Y'
}
