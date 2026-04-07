namespace Spinrise.Application.Areas.Inventory.Stock.DTOs;

public class StockResponseDto
{
    public string   ItemCode { get; init; } = string.Empty;
    public string   ItemName { get; init; } = string.Empty;
    public string   Uom      { get; init; } = string.Empty;

    public decimal  OpQty    { get; init; }
    public decimal  RcdQty   { get; init; }
    public decimal  IsdQty   { get; init; }
    public decimal  BalQty   { get; init; }
    public decimal  Value    { get; init; }

    public decimal  QcStk    { get; init; }
    public decimal  OpVal    { get; init; }
    public decimal  RcVal    { get; init; }
    public decimal  IsdVal   { get; init; }
    public decimal  QcVal    { get; init; }

    /// <summary>Populated only when the query was filtered to a specific godown.</summary>
    public string?  GodCode  { get; init; }
}
