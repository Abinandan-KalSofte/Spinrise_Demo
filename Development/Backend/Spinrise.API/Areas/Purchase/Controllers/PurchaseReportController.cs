using Microsoft.AspNetCore.Authorization;
using Spinrise.Shared;
using System.IdentityModel.Tokens.Jwt;

namespace Spinrise.API.Controllers;

/// <summary>
/// Purchase module report endpoints.
/// Returns raw file bytes as <see cref="FileStreamResult"/> with the correct
/// Content-Type and Content-Disposition headers so browsers trigger a download.
///
/// Routes follow the Spinrise convention:
///   GET api/v1/purchase/reports/pr/{id}/pdf
///   GET api/v1/purchase/reports/pr/{id}/excel
///   GET api/v1/purchase/reports/pr/{id}/csv
/// </summary>
[Area("Purchase")]
[Route(ApiRoutes.PurchaseReports.BaseRoute)]
[Authorize]
public class PurchaseReportController : BaseApiController
{
    private readonly IPurchaseReportService _reportService;
    private readonly ILogger<PurchaseReportController> _logger;

    public PurchaseReportController(
        IPurchaseReportService reportService,
        ILogger<PurchaseReportController> logger)
    {
        _reportService = reportService;
        _logger = logger;
    }

    // Extracts the authenticated user's division code from the JWT claim.
    // Throws 401 if the claim is missing — prevents any cross-division access.
    private string? GetDivCode() =>
        User.FindFirst(SpinriseClaims.DivCode)?.Value?.Trim();
    private string? GetUser() =>
        User.FindFirst(SpinriseClaims.UserName)?.Value?.Trim();

    /// <summary>
    /// Downloads all Purchase Requisitions in a date range as a merged PDF.
    /// GET api/v1/purchase/reports/pr/pdf?startDate=yyyy-MM-dd&amp;endDate=yyyy-MM-dd
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Pdf)]
    public async Task<IActionResult> GetPdf(
        [FromQuery] DateTime startDate,
        [FromQuery] DateTime endDate)
        {
        var divCode = GetDivCode();
        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (startDate > endDate)
            return Failure("startDate must be on or before endDate.", StatusCodes.Status400BadRequest);

        if ((endDate - startDate).TotalDays > 365)
            return Failure("Date range must not exceed 365 days.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation(
            "[{CorrelationId}] PDF export requested for divCode={DivCode}, {Start} to {End}",
            correlationId, divCode, startDate, endDate);

        var bytes    = await _reportService.GetPurchaseRequisitionPdfByDateRangeAsync(divCode, startDate, endDate);
        var fileName = $"PurchaseRequisition_{divCode}_{startDate:yyyyMMdd}_{endDate:yyyyMMdd}.pdf";
        return File(bytes, ContentTypes.Pdf, fileName);
    }

    /// <summary>
    /// Downloads a Purchase Requisition as a PDF using QuestPDF.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.PdfQuest)]
    public async Task<IActionResult> GetPdfQuest(
        long id,
        [FromQuery] DateTime? startDate,
        [FromQuery] DateTime? endDate)
    {
        var divCode = GetDivCode();
        var user    = GetUser();

        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (id <= 0)
            return Failure("A valid Purchase Requisition number is required.", StatusCodes.Status400BadRequest);

        if (startDate.HasValue && endDate.HasValue && startDate.Value > endDate.Value)
            return Failure("startDate must be on or before endDate.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation(
            "[{CorrelationId}] QuestPDF export requested for divCode={DivCode}, prNo={PrNo}, {Start} to {End}",
            correlationId, divCode, id, startDate, endDate);

        var bytes = await _reportService.GetPurchaseRequisitionPdfAsync(divCode, id, user, startDate, endDate);
        return File(bytes, ContentTypes.Pdf, $"PurchaseRequisition_{id}.pdf");
    }

    /// <summary>
    /// Downloads a Purchase Requisition line items as an Excel (.xlsx) workbook.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Excel)]
    public async Task<IActionResult> GetExcel(long id)
    {
        var divCode = GetDivCode();
        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (id <= 0)
            return Failure("A valid Purchase Requisition number is required.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation("[{CorrelationId}] Excel export requested for divCode={DivCode}, prNo={PrNo}", correlationId, divCode, id);

        var bytes = await _reportService.GetPurchaseRequisitionExcelAsync(divCode, id);
        return File(bytes, ContentTypes.Excel, $"PurchaseRequisition_{id}.xlsx");
    }

    /// <summary>
    /// Downloads a Purchase Requisition line items as a CSV file.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Csv)]
    public async Task<IActionResult> GetCsv(long id)
    {
        var divCode = GetDivCode();
        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (id <= 0)
            return Failure("A valid Purchase Requisition number is required.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation("[{CorrelationId}] CSV export requested for divCode={DivCode}, prNo={PrNo}", correlationId, divCode, id);

        var bytes = await _reportService.GetPurchaseRequisitionCsvAsync(divCode, id);
        return File(bytes, ContentTypes.Csv, $"PurchaseRequisition_{id}.csv");
    }

    /// <summary>
    /// Downloads all PRs for the authenticated division within a date range as Excel (.xlsx).
    /// Grouped by PR Date → PR Number — mirrors the Crystal Report datewise layout.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.DatewiseExcel)]
    public async Task<IActionResult> GetDatewiseExcel(
        [FromQuery] DateTime startDate,
        [FromQuery] DateTime endDate)
    {
        var divCode = GetDivCode();
        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (startDate > endDate)
            return Failure("startDate must be on or before endDate.", StatusCodes.Status400BadRequest);

        if ((endDate - startDate).TotalDays > 365)
            return Failure("Date range must not exceed 365 days.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation(
            "[{CorrelationId}] Datewise Excel requested — divCode={DivCode}, {Start} to {End}",
            correlationId, divCode, startDate, endDate);

        var bytes    = await _reportService.GetDatewisePrExcelAsync(divCode, startDate, endDate);
        var fileName = $"PRDatewise_{divCode}_{startDate:yyyyMMdd}_{endDate:yyyyMMdd}.xlsx";
        return File(bytes, ContentTypes.Excel, fileName);
    }

    /// <summary>
    /// Downloads all PRs for the authenticated division within a date range as CSV.
    /// Flat export — one row per item line.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.DatewiseCsv)]
    public async Task<IActionResult> GetDatewiseCsv(
        [FromQuery] DateTime startDate,
        [FromQuery] DateTime endDate)
    {
        var divCode = GetDivCode();
        if (string.IsNullOrWhiteSpace(divCode))
            return Failure("Division code is required.", StatusCodes.Status401Unauthorized);

        if (startDate > endDate)
            return Failure("startDate must be on or before endDate.", StatusCodes.Status400BadRequest);

        if ((endDate - startDate).TotalDays > 365)
            return Failure("Date range must not exceed 365 days.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation(
            "[{CorrelationId}] Datewise CSV requested — divCode={DivCode}, {Start} to {End}",
            correlationId, divCode, startDate, endDate);

        var bytes    = await _reportService.GetDatewisePrCsvAsync(divCode, startDate, endDate);
        var fileName = $"PRDatewise_{divCode}_{startDate:yyyyMMdd}_{endDate:yyyyMMdd}.csv";
        return File(bytes, ContentTypes.Csv, fileName);
    }
}
