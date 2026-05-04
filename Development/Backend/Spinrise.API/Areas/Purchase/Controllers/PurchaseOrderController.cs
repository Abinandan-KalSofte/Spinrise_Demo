using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.DTOs;
using Spinrise.Application.Areas.Purchase.PurchaseOrder.Interfaces;
using Spinrise.Shared;

namespace Spinrise.API.Controllers;

[Authorize]
[Area("Purchase")]
[Route("api/v1/rmi/po")]
public class PurchaseOrderController : BaseApiController
{
    private readonly IPurchaseOrderService _service;

    public PurchaseOrderController(IPurchaseOrderService service) => _service = service;

    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token.");

    private string RequireUserId() =>
        User.FindFirst(SpinriseClaims.UserId)?.Value
        ?? User.FindFirst(JwtRegisteredClaimNames.Sub)?.Value
        ?? "SYSTEM";

    private static bool TryParseContNo(string raw, out decimal contNo) =>
        decimal.TryParse(raw, out contNo);

    // GET api/v1/rmi/po
    [HttpGet]
    public async Task<IActionResult> GetList([FromQuery] POListQueryDto query)
    {
        query.DivCode = RequireDivCode();
        var result = await _service.GetListAsync(query);
        return Success(result, $"{result.TotalCount} purchase orders found.");
    }

    // GET api/v1/rmi/po/summary
    [HttpGet("summary")]
    public async Task<IActionResult> GetSummary()
    {
        var result = await _service.GetSummaryAsync(RequireDivCode());
        return Success(result);
    }

    // GET api/v1/rmi/po/defaults
    [HttpGet("defaults")]
    public async Task<IActionResult> GetDefaults()
    {
        var result = await _service.GetDefaultsAsync(RequireDivCode());
        return Success(result);
    }

    // GET api/v1/rmi/po/params
    [HttpGet("params")]
    public async Task<IActionResult> GetParams()
    {
        var checks = await _service.RunPreChecksAsync(RequireDivCode());
        return Success(checks);
    }

    // GET api/v1/rmi/po/delete-reasons
    [HttpGet("delete-reasons")]
    public async Task<IActionResult> GetDeleteReasons()
    {
        var result = await _service.GetDeleteReasonsAsync();
        return Success(result);
    }

    // GET api/v1/rmi/po/pr-lines
    [HttpGet("pr-lines")]
    public async Task<IActionResult> GetPRLines([FromQuery] PRLineFilterDto filter)
    {
        var divCode = RequireDivCode();
        var contDt  = string.IsNullOrEmpty(filter.ContDt) ? DateTime.Today : DateTime.Parse(filter.ContDt);

        IEnumerable<PRLineDto> result;
        if (!string.IsNullOrEmpty(filter.Indent) || !string.IsNullOrEmpty(filter.ItemCode) || !string.IsNullOrEmpty(filter.ItemName))
            result = await _service.FilterPRLinesAsync(divCode, contDt, filter);
        else
            result = await _service.GetPendingPRLinesAsync(divCode, contDt, filter.SortBy, filter.SupplierCode, null);

        return Success(result);
    }

    // GET api/v1/rmi/po/gst-config?supplierCode=XXX
    [HttpGet("gst-config")]
    public async Task<IActionResult> GetGSTConfig([FromQuery] string supplierCode)
    {
        var result = await _service.GetGSTConfigAsync(supplierCode);
        if (result == null) return NotFound("Supplier not found.");
        return Success(result);
    }

    // GET api/v1/rmi/po/{contno}/{contdt}
    [HttpGet("{contNo}/{contDt}")]
    public async Task<IActionResult> GetById(string contNo, string contDt)
    {
        if (!TryParseContNo(contNo, out var no)) return BadRequest("Invalid PO number.");
        if (!DateTime.TryParse(Uri.UnescapeDataString(contDt), out var dt)) return BadRequest("Invalid date format.");

        var result = await _service.GetDetailAsync(no, dt, RequireDivCode());
        if (result == null) return NotFound("Purchase Order not found.");
        return Success(result);
    }

    // POST api/v1/rmi/po
    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreatePODto dto)
    {
        dto.DivCode = RequireDivCode();
        var (success, message, contNo, warnings) = await _service.CreateAsync(dto, RequireUserId());
        if (!success) return BadRequest(new { message, warnings });
        return Success(new { contNo, warnings }, message);
    }

    // PUT api/v1/rmi/po/{contno}/{contdt}
    [HttpPut("{contNo}/{contDt}")]
    public async Task<IActionResult> Update(string contNo, string contDt, [FromBody] UpdatePODto dto)
    {
        if (!TryParseContNo(contNo, out var no)) return BadRequest("Invalid PO number.");
        if (!DateTime.TryParse(Uri.UnescapeDataString(contDt), out var dt)) return BadRequest("Invalid date format.");

        dto.DivCode = RequireDivCode();
        dto.ContDt  = dt;
        var (success, message, warnings) = await _service.UpdateAsync(no, dto, RequireUserId());
        if (!success) return BadRequest(new { message, warnings });
        return Success(new { warnings }, message);
    }

    // DELETE api/v1/rmi/po/{contno}/{contdt}
    [HttpDelete("{contNo}/{contDt}")]
    public async Task<IActionResult> Delete(string contNo, string contDt, [FromBody] PODeleteRequestDto dto)
    {
        if (!TryParseContNo(contNo, out var no)) return BadRequest("Invalid PO number.");
        if (!DateTime.TryParse(Uri.UnescapeDataString(contDt), out var dt)) return BadRequest("Invalid date format.");

        dto.ContNo  = no;
        dto.DivCode = RequireDivCode();
        dto.ContDt  = dt;
        var (success, message) = await _service.DeleteAsync(dto, RequireUserId());
        if (!success) return BadRequest(new { message });
        return Success(new { }, message);
    }

    // GET api/v1/rmi/po/{contno}/{contdt}/approval
    [HttpGet("{contNo}/{contDt}/approval")]
    public async Task<IActionResult> GetApprovalStatus(string contNo, string contDt)
    {
        if (!TryParseContNo(contNo, out var no)) return BadRequest("Invalid PO number.");
        if (!DateTime.TryParse(Uri.UnescapeDataString(contDt), out var dt)) return BadRequest("Invalid date format.");

        var result = await _service.GetApprovalStatusAsync(no, dt, RequireDivCode());
        if (result == null) return NotFound("Purchase Order not found.");
        return Success(result);
    }

    // POST api/v1/rmi/po/{contno}/{contdt}/approve
    [HttpPost("{contNo}/{contDt}/approve")]
    public async Task<IActionResult> Approve(string contNo, string contDt, [FromBody] POApprovalActionDto dto)
    {
        if (!TryParseContNo(contNo, out var no)) return BadRequest("Invalid PO number.");
        if (!DateTime.TryParse(Uri.UnescapeDataString(contDt), out var dt)) return BadRequest("Invalid date format.");

        dto.ContNo  = no;
        dto.DivCode = RequireDivCode();
        dto.ContDt  = dt;
        var (success, message) = await _service.ApproveAsync(dto, RequireUserId());
        if (!success) return BadRequest(new { message });
        return Success(new { }, message);
    }
}
