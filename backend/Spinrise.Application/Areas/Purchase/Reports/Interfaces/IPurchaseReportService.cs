namespace Spinrise.Application.Interfaces;

/// <summary>
/// Purchase module report service.
/// Each method fetches module-specific data and delegates export formatting
/// to <see cref="IReportExportService"/> in the Infrastructure layer.
/// </summary>
public interface IPurchaseReportService
{
    /// <summary>Returns a PDF byte array for the Purchase Requisition using the .frx template.</summary>
    Task<byte[]> GetPurchaseRequisitionPdfAsync(int id);

    /// <summary>Returns an Excel (.xlsx) byte array for the Purchase Requisition line items.</summary>
    Task<byte[]> GetPurchaseRequisitionExcelAsync(int id);

    /// <summary>Returns a CSV byte array for the Purchase Requisition line items.</summary>
    Task<byte[]> GetPurchaseRequisitionCsvAsync(int id);
}
