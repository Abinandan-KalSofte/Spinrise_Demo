using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class UpdatePRHeaderDto
{
    // DivCode is injected server-side from the authenticated user's JWT claim.

    [Required]
    [StringLength(20)]
    public string PrNo { get; set; } = string.Empty;

    [Required]
    [StringLength(10)]
    public string DepCode { get; set; } = string.Empty;

    [StringLength(100)]
    public string? Section { get; set; }

    [StringLength(20)]
    public string? SubCostCode { get; set; }

    [StringLength(20)]
    public string? IType { get; set; }

    [StringLength(100)]
    public string? ReqName { get; set; }

    [StringLength(50)]
    public string? RefNo { get; set; }

    [StringLength(20)]
    public string? PoGroupCode { get; set; }

    [StringLength(10)]
    public string? ScopeCode { get; set; }

    [StringLength(50)]
    public string? SaleOrderNo { get; set; }

    public DateTime? SaleOrderDate { get; set; }

    [Required]
    [MinLength(1, ErrorMessage = "At least one line item is required.")]
    public List<UpdatePRLineDto> Lines { get; set; } = new();
}
