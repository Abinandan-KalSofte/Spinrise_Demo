using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRLineDto
{
    // po_prl.ItemCode VARCHAR(30)
    [Required]
    [StringLength(30)]
    public string ItemCode { get; set; } = string.Empty;

    [Range(0.0001, double.MaxValue, ErrorMessage = "Quantity Required must be greater than 0.")]
    public decimal QtyRequired { get; set; }

    public DateTime? RequiredDate { get; set; }

    // po_prl.Place VARCHAR(100)
    [StringLength(100)]
    public string? Place { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? ApproxCost { get; set; }

    // po_prl.Remarks VARCHAR(500)
    [StringLength(500)]
    public string? Remarks { get; set; }

    // po_prl.MachineNo VARCHAR(30)
    [StringLength(30)]
    public string? MachineNo { get; set; }

    // po_prl.CostCentreCode VARCHAR(20)
    [StringLength(20)]
    public string? CostCentreCode { get; set; }

    // po_prl.BudgetGroupCode VARCHAR(20)
    [StringLength(20)]
    public string? BudgetGroupCode { get; set; }

    [Range(0, 99999)]
    public long? SubCostCode { get; set; }

    public bool IsSample { get; set; }

    // ── Auto-filled on item select (frontend populates from GetItemInfo) ──────

    // po_prl.ItemName VARCHAR(200)
    [StringLength(200)]
    public string? ItemName { get; set; }

    // po_prl.Uom VARCHAR(20)
    [StringLength(20)]
    public string? Uom { get; set; }

    [Range(0, 99999999.99, ErrorMessage = "Rate must be between 0 and 99,999,999.99")]
    public decimal? Rate { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? CurrentStock { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? LastPoRate { get; set; }

    public DateTime? LastPoDate { get; set; }

    // po_prl.LastPoSupplierCode VARCHAR(20)
    [StringLength(20)]
    public string? LastPoSupplierCode { get; set; }

    // po_prl.LastPoSupplierName VARCHAR(100)
    [StringLength(100)]
    public string? LastPoSupplierName { get; set; }

    // ── Print fields (from IN_ITEM — required on printed PR) ──────────────────
    [StringLength(25)]
    public string? DrawNo { get; set; }

    [StringLength(25)]
    public string? CatNo { get; set; }

    // ── User-entered V2 fields ────────────────────────────────────────────────

    // in_cat.CATCODE is 1-char
    [StringLength(1)]
    public string? CategoryCode { get; set; }

    // po_prl.Model VARCHAR(100)
    [StringLength(100)]
    public string? Model { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? MaxCost { get; set; }
}
