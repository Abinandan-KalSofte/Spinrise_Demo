namespace Spinrise.Application.Areas.Common.Lookup.DTOs;

public class VarietyLookupDto
{
    public string VarCode  { get; set; } = string.Empty;
    public string VarName  { get; set; } = string.Empty;
    public string HsnCode  { get; set; } = string.Empty;
    public decimal CgstPer { get; set; }
    public decimal SgstPer { get; set; }
    public decimal IgstPer { get; set; }
    public string TaxCode  { get; set; } = string.Empty;
}
