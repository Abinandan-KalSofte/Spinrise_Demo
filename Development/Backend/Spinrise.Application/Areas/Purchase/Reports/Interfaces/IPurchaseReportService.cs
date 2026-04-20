namespace Spinrise.Application.Interfaces;

/// <summary>
/// Purchase module report service.
/// Each method fetches module-specific data and delegates export formatting
/// to <see cref="IReportExportService"/> in the Infrastructure layer.
/// 
/// All methods require multi-tenant context: divCode (division code) extracted from JWT
/// and prNo (Purchase Requisition number).
/// </summary>
public interface IPurchaseReportService
{
    /// <summary>
    /// Returns a PDF byte array for the Purchase Requisition using the .frx template.
    /// Fetches real data from the database instead of demo data.
    /// </summary>
    /// <param name="divCode">Division code from JWT claims (multi-tenant context)</param>
    /// <param name="prNo">Purchase Requisition number</param>
    Task<byte[]> GetPurchaseRequisitionPdfAsync(string divCode, long prNo, string user, DateTime? startDate = null, DateTime? endDate = null);

    /// <summary>
    /// Returns a merged PDF byte array for all Purchase Requisitions within a date range.
    /// </summary>
    Task<byte[]> GetPurchaseRequisitionPdfByDateRangeAsync(string divCode, DateTime startDate, DateTime endDate);

    /// <summary>
    /// Returns an Excel (.xlsx) byte array for the Purchase Requisition line items.
    /// Fetches real data from the database instead of demo data.
    /// </summary>
    /// <param name="divCode">Division code from JWT claims (multi-tenant context)</param>
    /// <param name="prNo">Purchase Requisition number</param>
    Task<byte[]> GetPurchaseRequisitionExcelAsync(string divCode, long prNo);

    /// <summary>
    /// Returns a CSV byte array for the Purchase Requisition line items.
    /// Fetches real data from the database instead of demo data.
    /// </summary>
    /// <param name="divCode">Division code from JWT claims (multi-tenant context)</param>
    /// <param name="prNo">Purchase Requisition number</param>
    Task<byte[]> GetPurchaseRequisitionCsvAsync(string divCode, long prNo);

    /// <summary>
    /// Returns an Excel (.xlsx) byte array for all PRs within a date range,
    /// grouped by PR Date then PR Number — mirrors the Crystal Report datewise layout.
    /// </summary>
    Task<byte[]> GetDatewisePrExcelAsync(string divCode, DateTime startDate, DateTime endDate);

    /// <summary>
    /// Returns a flat CSV byte array for all PRs within a date range.
    /// </summary>
    Task<byte[]> GetDatewisePrCsvAsync(string divCode, DateTime startDate, DateTime endDate);
}
