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

    [HttpGet("pre-checks")]
    public async Task<IActionResult> RunPreChecks([FromQuery] string divCode)
    {
        if (string.IsNullOrWhiteSpace(divCode))
        {
            return Failure("Division code is required.", StatusCodes.Status400BadRequest);
        }

        var result = await _service.RunPreChecksAsync(divCode);
        return Success(result, "Pre-checks completed.");
    }

    [HttpGet]
    public async Task<IActionResult> GetAll(
        [FromQuery] string divCode,
        [FromQuery] string? prNo,
        [FromQuery] DateTime? fromDate,
        [FromQuery] DateTime? toDate,
        [FromQuery] string? depCode,
        [FromQuery] string? status)
    {
        if (string.IsNullOrWhiteSpace(divCode))
        {
            return Failure("Division code is required.", StatusCodes.Status400BadRequest);
        }

        var result = await _service.GetAllAsync(divCode, prNo, fromDate, toDate, depCode, status);
        return Success(result, "Purchase Requisitions retrieved successfully.");
    }

    [HttpGet("{prNo}")]
    public async Task<IActionResult> GetById([FromQuery] string divCode, string prNo)
    {
        if (string.IsNullOrWhiteSpace(divCode))
        {
            return Failure("Division code is required.", StatusCodes.Status400BadRequest);
        }

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
        var createdBy = "SYSTEM";
        var (success, message, prNo) = await _service.CreateAsync(dto, createdBy);
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

        var modifiedBy = "SYSTEM";
        var (success, message) = await _service.UpdateAsync(dto, modifiedBy);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo}")]
    public async Task<IActionResult> Delete([FromQuery] string divCode, string prNo)
    {
        var (success, message) = await _service.DeleteAsync(divCode, prNo);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }

    [HttpDelete("{prNo}/lines/{lineNo:int}")]
    public async Task<IActionResult> DeleteLine([FromQuery] string divCode, string prNo, int lineNo)
    {
        var (success, message) = await _service.DeleteLineAsync(divCode, prNo, lineNo);
        if (!success)
        {
            return Failure(message, StatusCodes.Status400BadRequest);
        }

        return SuccessMessage(message);
    }
}
