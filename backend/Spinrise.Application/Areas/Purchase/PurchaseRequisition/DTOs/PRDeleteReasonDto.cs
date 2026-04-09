namespace Spinrise.Application.DTOs.PurchaseRequisitions;

/// <summary>One row from usp_PR_GetDeleteReasons (po_txndelreason).</summary>
public class PRDeleteReasonDto
{
    public string ReasonCode { get; set; } = string.Empty;
    public string ReasonDesc { get; set; } = string.Empty;
}
