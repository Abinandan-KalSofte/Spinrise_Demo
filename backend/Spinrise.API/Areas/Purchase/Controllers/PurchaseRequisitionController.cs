using System;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.DTOs.PurchaseRequisitions;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Purchase")]
[Route("api/v1/purchase-requisitions")]
public class PurchaseRequisitionController : BaseApiController
{
    private readonly IPurchaseRequisitionService _service;

    public PurchaseRequisitionController(IPurchaseRequisitionService service)
    {
        _service = service;
    }

    // Extracts the authenticated user's division code from the JWT claim.
    // Throws 401 if the claim is missing — prevents any cross-division access.
    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token. Access denied.");

    // Creates audit context from current request and user claims.
    private AuditContext CreateAuditContext()
    {
        var userId = User.FindFirst(JwtRegisteredClaimNames.Sub)?.Value ?? User.FindFirst(JwtRegisteredClaimNames.Email)?.Value ?? "SYSTEM";
        var userName = User.FindFirst(JwtRegisteredClaimNames.Email)?.Value ?? "SYSTEM";
        var ipAddress = HttpContext.Connection.RemoteIpAddress?.ToString() ?? "unknown";
        var hostName = Environment.MachineName;
        return new AuditContext(userId, userName, ipAddress, hostName);
    }

    [HttpGet("pre-checks")]
    public async Task<IActionResult> RunPreChecks()
    {
        var divCode = RequireDivCode();
        var result = await _service.RunPreChecksAsync(divCode);
        return Success(result, "Pre-checks completed.");
    }

    [HttpGet("item-info")]
    public async Task<IActionResult> GetItemInfo(
        [FromQuery] string depCode,
        [FromQuery] string itemCode,
        [FromQuery] DateTime yfDate,
        [FromQuery] DateTime ylDate,
        [FromQuery] bool pendingIndentCheckEnabled,
        [FromQuery] bool pendingPRCheckEnabled)
    {
        var divCode = RequireDivCode();

        // Build a minimal flags object from query params so the service
        // can gate the optional pending checks without a second pre-checks round-trip.
        var flags = new PreCheckResult
        {
            PendingIndentCheckEnabled = pendingIndentCheckEnabled,
            PendingPRCheckEnabled     = pendingPRCheckEnabled,
        };

        var result = await _service.GetItemInfoAsync(divCode, depCode, itemCode, yfDate, ylDate, flags);
        if (result is null)
        {
            return Failure("Item not found.", StatusCodes.Status404NotFound);
        }

        return Success(result, "Item info retrieved successfully.");
    }

    [HttpGet("delete-reasons")]
    public async Task<IActionResult> GetDeleteReasons()
    {
        var result = await _service.GetDeleteReasonsAsync();
        return Success(result, "Delete reasons retrieved successfully.");
    }

    [HttpGet]
    public async Task<IActionResult> GetAll(
        [FromQuery] string? prNo,
        [FromQuery] DateTime? fromDate,
        [FromQuery] DateTime? toDate,
        [FromQuery] string? depCode,
        [FromQuery] string? status)
    {
        var divCode = RequireDivCode();
        var result = await _service.GetAllAsync(divCode, prNo, fromDate, toDate, depCode, status);
        return Success(result, "Purchase Requisitions retrieved successfully.");
    }

    [HttpGet("{prNo:long}")]
    public async Task<IActionResult> GetById(long prNo)
    {
        var divCode = RequireDivCode();
        var result = await _service.GetByIdAsync(divCode, prNo);
        if (result is null)
        {
            return Failure("Purchase Requisition not found.", StatusCodes.Status404NotFound);
        }

        return Success(result, "Purchase Requisition retrieved successfully.");
    }

    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreatePRHeaderDto dto)
    {
        var divCode  = RequireDivCode();
        var audit = CreateAuditContext();
        var (success, message, prNo) = await _service.CreateAsync(dto, divCode, audit);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return Success(new { PrNo = prNo }, message, StatusCodes.Status201Created);
    }

    [HttpPut("{prNo:long}")]
    public async Task<IActionResult> Update(long prNo, [FromBody] UpdatePRHeaderDto dto)
    {
        if (dto.PrNo != prNo)
        {
            return Failure("PR Number in URL and body do not match.", StatusCodes.Status400BadRequest);
        }

        var divCode    = RequireDivCode();
        var audit = CreateAuditContext();
        var (success, message) = await _service.UpdateAsync(dto, divCode, audit);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo:long}")]
    public async Task<IActionResult> Delete(long prNo, [FromQuery] string deleteReasonCode)
    {
        var divCode = RequireDivCode();
        var audit = CreateAuditContext();
        var (success, message) = await _service.DeleteAsync(divCode, prNo, deleteReasonCode, audit);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo:long}/lines/{lineNo:int}")]
    public async Task<IActionResult> DeleteLine(long prNo, int lineNo, [FromQuery] string deleteReasonCode)
    {
        var divCode = RequireDivCode();
        var audit = CreateAuditContext();
        var (success, message) = await _service.DeleteLineAsync(divCode, prNo, lineNo, deleteReasonCode, audit);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }
}
