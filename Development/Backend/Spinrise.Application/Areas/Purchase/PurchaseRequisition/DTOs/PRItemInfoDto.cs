namespace Spinrise.Application.DTOs.PurchaseRequisitions;

/// <summary>
/// Returned by GET /purchase-requisitions/item-info when the user
/// selects an item in the PR entry form.
/// Consolidates rate, stock, last-PO data, and soft warnings
/// into one API call.
/// </summary>
public class PRItemInfoDto
{
    // ── Item rate (in_item base, overridden by last GRN receipt) ────────────
    public decimal Rate { get; set; }

    // ── Current stock (from usp_PR_GetItemInfo stock calculation) ────────────
    public decimal CurrentStock { get; set; }

    // ── Last PO details (po_ordh / po_ordl / fa_slmas) ───────────────────────
    public decimal?  LastPoRate          { get; set; }
    public DateTime? LastPoDate          { get; set; }
    public string?   LastPoSupplierCode  { get; set; }
    public string?   LastPoSupplierName  { get; set; }

    // ── Soft warnings (non-blocking) ─────────────────────────────────────────
    public bool     HasPendingIndent     { get; set; }
    public decimal  PendingIndentQty     { get; set; }

    public bool     HasPendingPR         { get; set; }
    public string?  PendingPrNo          { get; set; }
    public DateTime? PendingPrDate       { get; set; }
}

/// <summary>Raw SP result for usp_PR_GetItemInfo — Dapper maps this directly.</summary>
public class PRItemInfoRaw
{
    public decimal   Rate                { get; set; }
    public decimal   CurrentStock        { get; set; }
    public decimal?  LastPoRate          { get; set; }
    public DateTime? LastPoDate          { get; set; }
    public string?   LastPoSupplierCode  { get; set; }
    public string?   LastPoSupplierName  { get; set; }
}

/// <summary>Raw SP result for usp_PR_PendingIndentCheck.</summary>
public class PendingIndentResult
{
    public bool    HasPendingIndent { get; set; }
    public decimal PendingQty       { get; set; }
}

/// <summary>Raw SP result for usp_PR_PendingPRCheck.</summary>
public class PendingPRResult
{
    public bool      HasPendingPR  { get; set; }
    public string?   PendingPrNo  { get; set; }
    public DateTime? PendingPrDate { get; set; }
}
