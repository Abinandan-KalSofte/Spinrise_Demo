namespace Spinrise.Application.Areas.Common.Lookup.DTOs;

public class ItemLookupDto
{
    public string   ItemCode       { get; init; } = string.Empty;
    public string   ItemName       { get; init; } = string.Empty;
    public string   Uom            { get; init; } = string.Empty;
    public decimal? CurrentStock   { get; init; }
    public decimal? PendingPrQty   { get; init; }
    public decimal? PendingPoQty   { get; init; }
    public decimal? MinLevel       { get; init; }
    public string?  DrawNo         { get; init; }
    public string?  CatNo          { get; init; }
}
