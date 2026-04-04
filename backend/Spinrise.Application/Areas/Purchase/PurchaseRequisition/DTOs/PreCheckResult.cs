namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PreCheckResult
{
    public bool ItemMasterExists { get; set; }
    public bool DepartmentExists { get; set; }
    public bool DocNumberConfigured { get; set; }
}
