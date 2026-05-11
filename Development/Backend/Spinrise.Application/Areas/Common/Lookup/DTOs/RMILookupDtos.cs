namespace Spinrise.Application.Areas.Common.Lookup.DTOs;

public class RateUnitLookupDto
{
    public string  UnitName { get; set; } = string.Empty;
    public decimal Value    { get; set; }   // divisor: rateKg = ROUND(candyRate / Value, 5)
}

public class WeighmentLookupDto
{
    public string WCode { get; set; } = string.Empty;
    public string WName { get; set; } = string.Empty;
}

public class AgentLookupDto
{
    public string AgentCode { get; set; } = string.Empty;
    public string AgentName { get; set; } = string.Empty;
}

public class EmployeeRMILookupDto
{
    public string EmpCode { get; set; } = string.Empty;
    public string EmpName { get; set; } = string.Empty;
}

public class TaxCodeLookupDto
{
    public string  TaxCode { get; set; } = string.Empty;
    public string  TaxName { get; set; } = string.Empty;
    public decimal TaxPer  { get; set; }
}
