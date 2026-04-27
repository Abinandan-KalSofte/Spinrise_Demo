using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Area("Purchase")]
[Route("api/v1/rmi/po")]
[Authorize]
public class PurchaseOrderController : BaseApiController
{
    private readonly IPurchaseOrderService _service;

    public PurchaseOrderController(IPurchaseOrderService service)
    {
        _service = service;
    }

    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token.");

    private string GetUserId() =>
        User.FindFirst(SpinriseClaims.UserId)?.Value
     ?? User.FindFirst(JwtRegisteredClaimNames.Sub)?.Value
     ?? "system";

    private string? GetIPAddr() => HttpContext.Connection.RemoteIpAddress?.ToString();
    private string? GetHost()   => HttpContext.Request.Host.Host;

    // GET api/v1/rmi/po
    [HttpGet]
    public async Task<IActionResult> GetPaginated([FromQuery] POListQueryDto query)
    {
        try
        {
            var divCode = RequireDivCode();
            var result  = await _service.GetPaginatedAsync(divCode, query);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/{contNo}/{contDt}
    [HttpGet("{contNo}/{contDt}")]
    public async Task<IActionResult> GetById(string contNo, DateTime contDt)
    {
        try
        {
            var divCode = RequireDivCode();
            var result  = await _service.GetByIdAsync(contNo, contDt, divCode);
            if (result is null) return Failure(ErrorMessages.NotFound, StatusCodes.Status404NotFound);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/defaults
    [HttpGet("defaults")]
    public async Task<IActionResult> GetDefaults()
    {
        try
        {
            var divCode = RequireDivCode();
            var result  = await _service.GetDefaultsAsync(divCode);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/pre-checks
    [HttpGet("pre-checks")]
    public async Task<IActionResult> PreChecks()
    {
        try
        {
            var divCode = RequireDivCode();
            var result  = await _service.RunPreChecksAsync(divCode);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/delete-reasons
    [HttpGet("delete-reasons")]
    public async Task<IActionResult> GetDeleteReasons()
    {
        try
        {
            var result = await _service.GetDeleteReasonsAsync();
            return Success(result);
        }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/pr-lines
    [HttpGet("pr-lines")]
    public async Task<IActionResult> GetPRLines([FromQuery] PRLineFilterDto filter)
    {
        try
        {
            filter.DivCode = RequireDivCode();
            var result = await _service.GetPendingPRLinesAsync(filter);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // POST api/v1/rmi/po
    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreatePODto dto)
    {
        if (!ModelState.IsValid)
            return Failure(ErrorMessages.ValidationFailed, StatusCodes.Status422UnprocessableEntity, ModelState);
        try
        {
            dto.DivCode = RequireDivCode();
            var (contNo, warnings) = await _service.CreateAsync(dto, GetUserId(), GetIPAddr(), GetHost());
            return Success(new { ContNo = contNo }, string.Format(ErrorMessages.CreatedSuccessfully, "Purchase Order"), warnings);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (InvalidOperationException ex)   { return Failure(ex.Message, StatusCodes.Status400BadRequest); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // PUT api/v1/rmi/po/{contNo}/{contDt}
    [HttpPut("{contNo}/{contDt}")]
    public async Task<IActionResult> Update(string contNo, DateTime contDt, [FromBody] UpdatePODto dto)
    {
        if (!ModelState.IsValid)
            return Failure(ErrorMessages.ValidationFailed, StatusCodes.Status422UnprocessableEntity, ModelState);
        try
        {
            dto.DivCode = RequireDivCode();
            dto.ContNo  = contNo;
            dto.ContDt  = contDt;
            var warnings = await _service.UpdateAsync(dto, GetUserId(), GetIPAddr(), GetHost());
            return SuccessMessage(string.Format(ErrorMessages.UpdatedSuccessfully, "Purchase Order"), warnings);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (InvalidOperationException ex)   { return Failure(ex.Message, StatusCodes.Status400BadRequest); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // DELETE api/v1/rmi/po/{contNo}/{contDt}
    [HttpDelete("{contNo}/{contDt}")]
    public async Task<IActionResult> Delete(string contNo, DateTime contDt, [FromBody] PODeleteRequestDto dto)
    {
        if (!ModelState.IsValid)
            return Failure(ErrorMessages.ValidationFailed, StatusCodes.Status422UnprocessableEntity, ModelState);
        try
        {
            dto.ContNo  = contNo;
            dto.ContDt  = contDt;
            dto.DivCode = RequireDivCode();
            var (result, message) = await _service.DeleteAsync(dto, GetUserId());
            if (result < 0) return Failure(message, StatusCodes.Status400BadRequest);
            return SuccessMessage(message);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // GET api/v1/rmi/po/{contNo}/{contDt}/approval
    [HttpGet("{contNo}/{contDt}/approval")]
    public async Task<IActionResult> GetApprovalStatus(string contNo, DateTime contDt)
    {
        try
        {
            var divCode = RequireDivCode();
            var result  = await _service.GetApprovalStatusAsync(contNo, contDt, divCode);
            if (result is null) return Failure(ErrorMessages.NotFound, StatusCodes.Status404NotFound);
            return Success(result);
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }

    // POST api/v1/rmi/po/{contNo}/{contDt}/approve
    [HttpPost("{contNo}/{contDt}/approve")]
    public async Task<IActionResult> Approve(string contNo, DateTime contDt, [FromBody] POApprovalActionDto dto)
    {
        if (!ModelState.IsValid)
            return Failure(ErrorMessages.ValidationFailed, StatusCodes.Status422UnprocessableEntity, ModelState);
        try
        {
            dto.ContNo  = contNo;
            dto.ContDt  = contDt;
            dto.DivCode = RequireDivCode();
            dto.AppUserId ??= GetUserId();
            dto.AppIPAddr ??= GetIPAddr();
            await _service.ApproveAsync(dto);
            return SuccessMessage("Approval action recorded.");
        }
        catch (UnauthorizedAccessException ex) { return Failure(ex.Message, StatusCodes.Status401Unauthorized); }
        catch (Exception ex) { return Failure(ex.Message, StatusCodes.Status500InternalServerError); }
    }
}
