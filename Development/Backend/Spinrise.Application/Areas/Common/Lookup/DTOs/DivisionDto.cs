namespace Spinrise.Application.Areas.Common.Lookup.DTOs;

public class DivisionDTO
{
    public byte[]? DIV_LOGO { get; set; }
    public string DIV_PRINTNAME { get; init; } = string.Empty;
    public string DIV_UNITNAME { get; init; } = string.Empty;
    public string DIVISION_ADDR1 { get; init; } = string.Empty;
    public string DIVISION_ADDR2 { get; init; } = string.Empty;
    public string DIVISION_ADDR3 { get; init; } = string.Empty;
    public string PINCODE { get; init; } = string.Empty;
    public string STATENAME { get; init; } = string.Empty;
    public string PHONE1 { get; init; } = string.Empty;
    public string EMAIL { get; init; } = string.Empty;
}
