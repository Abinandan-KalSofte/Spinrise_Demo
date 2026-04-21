using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRLineDto
{
    [Required]
    [StringLength(10)]
    public string ItemCode { get; set; } = string.Empty;

    [Range(0.0001, double.MaxValue, ErrorMessage = "Quantity Required must be greater than 0.")]
    public decimal QtyRequired { get; set; }

    public DateTime? RequiredDate { get; set; }

    [StringLength(40)]
    public string? Place { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? ApproxCost { get; set; }

    [StringLength(50)]
    public string? Remarks { get; set; }

    [StringLength(5)]
    public string? MachineNo { get; set; }

    [StringLength(5)]
    public string? CostCentreCode { get; set; }

    [StringLength(4)]
    public string? BudgetGroupCode { get; set; }

    [Range(0, 99999)]
    public long? SubCostCode { get; set; }

    public bool IsSample { get; set; }

    // ── Auto-filled on item select (frontend populates from GetItemInfo) ──────
    [StringLength(200)]
    public string? ItemName { get; set; }

    [StringLength(3)]
    public string? Uom { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? Rate { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? CurrentStock { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? LastPoRate { get; set; }

    public DateTime? LastPoDate { get; set; }

    [StringLength(8)]
    public string? LastPoSupplierCode { get; set; }

    [StringLength(100)]
    public string? LastPoSupplierName { get; set; }

    // ── Print fields (from IN_ITEM — required on printed PR, Rec #28) ─────────
    [StringLength(25)]
    public string? DrawNo { get; set; }

    [StringLength(25)]
    public string? CatNo { get; set; }

    // ── User-entered V2 fields ────────────────────────────────────────────────
    [StringLength(1)]
    public string? CategoryCode { get; set; }

    [StringLength(100)]
    public string? Model { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? MaxCost { get; set; }
}
