namespace Spinrise.Application.Interfaces;

/// <summary>
/// Generic report export service reusable across all ERP modules (Purchase, Finance, HR, etc.).
/// Each export method accepts a typed data collection and returns raw bytes suitable for
/// streaming directly to the HTTP response via FileStreamResult.
/// </summary>
public interface IReportExportService
{
    /// <summary>
    /// Exports data to PDF using a FastReport .frx template.
    /// The template must reference column names that match the public property names of <typeparamref name="T"/>.
    /// </summary>
    /// <param name="reportPath">Absolute path to the .frx report template file.</param>
    /// <param name="data">Typed data rows to populate the report data source.</param>
    /// <param name="dataSourceName">Name of the data source as defined in the .frx template.</param>
    Task<byte[]> ExportToPdfAsync<T>(string reportPath, IEnumerable<T> data, string dataSourceName);

    /// <summary>
    /// Exports data to an Excel (.xlsx) workbook using ClosedXML.
    /// Column headers are derived from the public property names of <typeparamref name="T"/>.
    /// </summary>
    /// <param name="data">Typed data rows to write as Excel rows.</param>
    /// <param name="sheetName">Name of the worksheet tab (defaults to "Report").</param>
    Task<byte[]> ExportToExcelAsync<T>(IEnumerable<T> data, string sheetName = "Report");

    /// <summary>
    /// Exports data to a CSV file using CsvHelper.
    /// Column headers are derived from the public property names of <typeparamref name="T"/>.
    /// </summary>
    /// <param name="data">Typed data rows to write as CSV records.</param>
    Task<byte[]> ExportToCsvAsync<T>(IEnumerable<T> data);
}
