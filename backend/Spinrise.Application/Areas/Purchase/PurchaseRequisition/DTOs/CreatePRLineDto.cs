using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRLineDto
{
    [Required]
    [StringLength(30)]
    public string ItemCode { get; set; } = string.Empty;

    [Range(0.0001, double.MaxValue, ErrorMessage = "Quantity Required must be greater than 0.")]
    public decimal QtyRequired { get; set; }

    public DateTime? RequiredDate { get; set; }

    [StringLength(100)]
    public string? Place { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? ApproxCost { get; set; }

    [StringLength(500)]
    public string? Remarks { get; set; }

    [StringLength(30)]
    public string? MachineNo { get; set; }

    [StringLength(20)]
    public string? CostCentreCode { get; set; }

    [StringLength(20)]
    public string? BudgetGroupCode { get; set; }

    public bool IsSample { get; set; }
}
