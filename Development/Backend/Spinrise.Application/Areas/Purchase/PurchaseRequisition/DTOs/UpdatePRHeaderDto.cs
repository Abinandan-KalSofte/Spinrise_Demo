using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class UpdatePRHeaderDto
{
    // DivCode is injected server-side from the authenticated user's JWT claim.

    [Required]
    [Range(1, long.MaxValue, ErrorMessage = "A valid PR number is required.")]
    public long PrNo { get; set; }

    [Required]
    [StringLength(3)]
    public string DepCode { get; set; } = string.Empty;

    [StringLength(20)]
    public string? Section { get; set; }

    [Range(1, 99999)]
    public long? SubCost { get; set; }

    [StringLength(1)]
    public string? IType { get; set; }

    [StringLength(10)]
    public string? ReqName { get; set; }

    [StringLength(20)]
    public string? RefNo { get; set; }

    [StringLength(5)]
    public string? PoGroupCode { get; set; }

    [StringLength(2)]
    public string? ScopeCode { get; set; }

    [StringLength(25)]
    public string? SaleOrderNo { get; set; }

    public DateTime? SaleOrderDate { get; set; }

    [Required]
    [MinLength(1, ErrorMessage = "At least one line item is required.")]
    public List<UpdatePRLineDto> Lines { get; set; } = new();
}
