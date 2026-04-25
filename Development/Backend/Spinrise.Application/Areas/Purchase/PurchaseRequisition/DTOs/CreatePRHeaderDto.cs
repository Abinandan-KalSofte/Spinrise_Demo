using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRHeaderDto
{
    // DivCode is injected server-side from the authenticated user's JWT claim.

    [Required]
    public DateTime PrDate { get; set; }

    [Required]
    [StringLength(10)]
    public string DepCode { get; set; } = string.Empty;

    // po_prh.Section VARCHAR(100)
    [StringLength(100)]
    public string? Section { get; set; }

    [Range(1, 99999)]
    public long? SubCost { get; set; }

    // po_prh.IType VARCHAR(20) — values come from po_type.TYPE_CODE
    [StringLength(20)]
    public string? IType { get; set; }

    // po_prh.ReqName VARCHAR(100) — stores pr_emp.ename (full employee name)
    [StringLength(100)]
    public string? ReqName { get; set; }

    // po_prh.RefNo VARCHAR(50)
    [StringLength(50)]
    public string? RefNo { get; set; }

    // po_prh.PoGroupCode VARCHAR(20)
    [StringLength(20)]
    public string? PoGroupCode { get; set; }

    // po_prh.ScopeCode VARCHAR(20)
    [StringLength(20)]
    public string? ScopeCode { get; set; }

    // po_prh.SaleOrderNo VARCHAR(50)
    [StringLength(50)]
    public string? SaleOrderNo { get; set; }

    public DateTime? SaleOrderDate { get; set; }

    public bool SubmitForApproval { get; set; } = false;  // G19: Differentiate Save vs Submit

    [Required]
    [MinLength(1, ErrorMessage = "At least one line item is required.")]
    public List<CreatePRLineDto> Lines { get; set; } = new();
}
