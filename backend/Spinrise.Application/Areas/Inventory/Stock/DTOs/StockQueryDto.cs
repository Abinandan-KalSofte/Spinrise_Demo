using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.Areas.Inventory.Stock.DTOs;

public class StockQueryDto
{
    [Required(ErrorMessage = "DivCode is required.")]
    public string DivCode { get; set; } = string.Empty;

    [Required(ErrorMessage = "ItemCode is required.")]
    public string ItemCode { get; set; } = string.Empty;

    [Required(ErrorMessage = "YFDate is required.")]
    public DateTime YFDate { get; set; }

    [Required(ErrorMessage = "EndDate is required.")]
    public DateTime EndDate { get; set; }

    /// <summary>Opening year-month key used in IN_IDET (format YYYY00, e.g. 202600).</summary>
    [Required(ErrorMessage = "OYM is required.")]
    public string OYM { get; set; } = string.Empty;

    /// <summary>Godown code filter. Null aggregates across all godowns.</summary>
    public string? GodCode { get; set; }

    /// <summary>Include TCTYPE 12 in receipt set (true for stkchk1, false for stkchk2).</summary>
    public bool IncludeType12 { get; set; } = true;

    /// <summary>Include TCTYPE 11 in issue set (true for stkchk1, false for stkchk2).</summary>
    public bool IncludeType11 { get; set; } = true;
}
