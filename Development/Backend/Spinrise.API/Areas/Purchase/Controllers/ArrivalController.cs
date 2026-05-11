using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Mvc;
using Spinrise.Application.Areas.Purchase.Arrival.DTOs;
using Spinrise.Application.Areas.Purchase.Arrival.Interfaces;
using Spinrise.Shared;

namespace Spinrise.API.Areas.Purchase.Controllers;

[Area("Purchase")]
[Route("api/v1/arrivals")]
public class ArrivalController : BaseApiController
{
    private readonly IArrivalService _service;

    public ArrivalController(IArrivalService service) => _service = service;

    private string RequireDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim()
        ?? throw new UnauthorizedAccessException("Division code not found in token.");

    private string CurrentUserId() =>
        User.FindFirst(SpinriseClaims.UserId)?.Value
     ?? User.FindFirst(JwtRegisteredClaimNames.Sub)?.Value
     ?? "SYSTEM";

    // GET api/v1/arrivals/config
    [HttpGet("config")]
    public async Task<IActionResult> GetConfig()
    {
        var divCode = RequireDivCode();
        var result  = await _service.GetParamAsync(divCode);
        return Success(result, "Arrival configuration loaded.");
    }

    // GET api/v1/arrivals/categories
    [HttpGet("categories")]
    public async Task<IActionResult> GetCategories()
    {
        var result = await _service.GetCategoriesAsync();
        return Success(result, "Categories loaded.");
    }

    // GET api/v1/arrivals/open-po-lines?supCode=&catCode=&yfDate=&ylDate=
    [HttpGet("open-po-lines")]
    public async Task<IActionResult> GetOpenPOLines(
        [FromQuery] string supCode,
        [FromQuery] string? catCode  = null,
        [FromQuery] string? yfDate   = null,
        [FromQuery] string? ylDate   = null)
    {
        var divCode = RequireDivCode();
        var result  = await _service.GetOpenPOLinesAsync(divCode, supCode, catCode, yfDate, ylDate);
        return Success(result, "Open PO lines loaded.");
    }

    // GET api/v1/arrivals/validate-lot?contNo=&contDt=&varCode=&lotNo=&isCentralised=
    [HttpGet("validate-lot")]
    public async Task<IActionResult> ValidateLot(
        [FromQuery] string  contNo,
        [FromQuery] string  contDt,
        [FromQuery] string  varCode,
        [FromQuery] decimal lotNo,
        [FromQuery] string  isCentralised = "N")
    {
        var divCode = RequireDivCode();
        var result  = await _service.ValidateLotRangeAsync(divCode, contNo, contDt, varCode, lotNo, isCentralised);
        return Success(result, result.IsValid ? "Lot number valid." : "Lot number out of range.");
    }

    // GET api/v1/arrivals?page=&pageSize=&searchText=&fromDate=&toDate=&supCode=&catCode=
    [HttpGet]
    public async Task<IActionResult> GetPaginated([FromQuery] ArrivalListQueryDto query)
    {
        query.DivCode = RequireDivCode();
        var result    = await _service.GetPaginatedAsync(query);
        return Success(result, "Arrivals retrieved.");
    }

    // GET api/v1/arrivals/{arrNo}?arrDate=
    [HttpGet("{arrNo:int}")]
    public async Task<IActionResult> GetById(int arrNo, [FromQuery] DateTime arrDate)
    {
        var divCode = RequireDivCode();
        var result  = await _service.GetByIdAsync(divCode, arrNo, arrDate);
        return Success(result, "Arrival detail retrieved.");
    }

    // POST api/v1/arrivals
    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreateArrivalRequest request)
    {
        request.DivCode = RequireDivCode();
        var arrNo       = await _service.CreateAsync(request, CurrentUserId());
        return Success(new { ArrNo = arrNo }, $"Arrival saved. Arrival No. is {arrNo}.");
    }

    // PUT api/v1/arrivals/{arrNo}
    [HttpPut("{arrNo:int}")]
    public async Task<IActionResult> Update(int arrNo, [FromBody] UpdateArrivalRequest request)
    {
        request.DivCode = RequireDivCode();
        request.ArrNo   = arrNo;
        await _service.UpdateAsync(request, CurrentUserId());
        return Success(new { ArrNo = arrNo }, "Arrival modified successfully.");
    }

    // PUT api/v1/arrivals/{arrNo}/freight?arrDate=
    [HttpPut("{arrNo:int}/freight")]
    public async Task<IActionResult> FreightOnlyUpdate(
        int arrNo,
        [FromQuery] DateTime arrDate,
        [FromBody] FreightOnlyUpdateRequest request)
    {
        var divCode = RequireDivCode();
        await _service.FreightOnlyUpdateAsync(divCode, arrNo, arrDate, request, CurrentUserId());
        return Success(new { ArrNo = arrNo }, "Freight updated successfully.");
    }

    // DELETE api/v1/arrivals/{arrNo}?arrDate=
    [HttpDelete("{arrNo:int}")]
    public async Task<IActionResult> Delete(int arrNo, [FromQuery] DateTime arrDate)
    {
        var divCode = RequireDivCode();
        await _service.DeleteAsync(divCode, arrNo, arrDate, CurrentUserId());
        return Success(new { ArrNo = arrNo }, "Arrival deleted successfully.");
    }
}
