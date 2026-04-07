using System.IdentityModel.Tokens.Jwt;
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

    [HttpGet("pre-checks")]
    public async Task<IActionResult> RunPreChecks()
    {
        var divCode = RequireDivCode();
        var result = await _service.RunPreChecksAsync(divCode);
        return Success(result, "Pre-checks completed.");
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

    [HttpGet("{prNo}")]
    public async Task<IActionResult> GetById(string prNo)
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
        var createdBy = User.FindFirst(JwtRegisteredClaimNames.Email)?.Value ?? "SYSTEM";
        var (success, message, prNo) = await _service.CreateAsync(dto, divCode, createdBy);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return Success(new { PrNo = prNo }, message, StatusCodes.Status201Created);
    }

    [HttpPut("{prNo}")]
    public async Task<IActionResult> Update(string prNo, [FromBody] UpdatePRHeaderDto dto)
    {
        if (!string.Equals(dto.PrNo, prNo, StringComparison.OrdinalIgnoreCase))
        {
            return Failure("PR Number in URL and body do not match.", StatusCodes.Status400BadRequest);
        }

        var divCode    = RequireDivCode();
        var modifiedBy = User.FindFirst(JwtRegisteredClaimNames.Email)?.Value ?? "SYSTEM";
        var (success, message) = await _service.UpdateAsync(dto, divCode, modifiedBy);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo}")]
    public async Task<IActionResult> Delete(string prNo)
    {
        var divCode = RequireDivCode();
        var (success, message) = await _service.DeleteAsync(divCode, prNo);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo}/lines/{lineNo:int}")]
    public async Task<IActionResult> DeleteLine(string prNo, int lineNo)
    {
        var divCode = RequireDivCode();
        var (success, message) = await _service.DeleteLineAsync(divCode, prNo, lineNo);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }
}
