namespace Spinrise.Application.DTOs.PurchaseRequisitions;

/// <summary>
/// Carries per-request audit identity data from the HTTP layer
/// into the service / repository write methods.
/// Populated in the controller from HttpContext and JWT claims.
/// </summary>
public sealed record AuditContext(
    string UserId,
    string UserName,
    string IpAddress,
    string HostName
);
