using Microsoft.AspNetCore.Authorization;
using Spinrise.Shared;

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

    /// <summary>
    /// Downloads a Purchase Requisition as a PDF using the FastReport .frx template.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Pdf)]
    public async Task<IActionResult> GetPdf(int id)
    {
        if (id <= 0)
            return Failure("A valid Purchase Requisition id is required.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation("[{CorrelationId}] PDF export requested for PR id={Id}", correlationId, id);

        var bytes = await _reportService.GetPurchaseRequisitionPdfAsync(id);
        return File(bytes, ContentTypes.Pdf, $"PurchaseRequisition_{id}.pdf");
    }

    /// <summary>
    /// Downloads a Purchase Requisition line items as an Excel (.xlsx) workbook.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Excel)]
    public async Task<IActionResult> GetExcel(int id)
    {
        if (id <= 0)
            return Failure("A valid Purchase Requisition id is required.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation("[{CorrelationId}] Excel export requested for PR id={Id}", correlationId, id);

        var bytes = await _reportService.GetPurchaseRequisitionExcelAsync(id);
        return File(bytes, ContentTypes.Excel, $"PurchaseRequisition_{id}.xlsx");
    }

    /// <summary>
    /// Downloads a Purchase Requisition line items as a CSV file.
    /// </summary>
    [HttpGet(ApiRoutes.PurchaseReports.Csv)]
    public async Task<IActionResult> GetCsv(int id)
    {
        if (id <= 0)
            return Failure("A valid Purchase Requisition id is required.", StatusCodes.Status400BadRequest);

        var correlationId = HttpContext.Items["CorrelationId"]?.ToString();
        _logger.LogInformation("[{CorrelationId}] CSV export requested for PR id={Id}", correlationId, id);

        var bytes = await _reportService.GetPurchaseRequisitionCsvAsync(id);
        return File(bytes, ContentTypes.Csv, $"PurchaseRequisition_{id}.csv");
    }
}
