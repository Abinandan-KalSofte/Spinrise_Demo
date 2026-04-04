using System.Data;
using System.Globalization;
using System.Reflection;
using ClosedXML.Excel;
using CsvHelper;
using FastReport;
using FastReport.Export.PdfSimple;
using Microsoft.Extensions.Logging;
using Spinrise.Application.Interfaces;

namespace Spinrise.Infrastructure.Reports;

/// <summary>
/// Generic report export service that handles PDF (FastReport), Excel (ClosedXML),
/// and CSV (CsvHelper) exports. Reusable across all ERP modules.
/// All methods operate in-memory — no file system writes.
/// </summary>
public class ReportExportService : IReportExportService
{
    private readonly ILogger<ReportExportService> _logger;

    public ReportExportService(ILogger<ReportExportService> logger)
    {
        _logger = logger;
    }

    /// <inheritdoc />
    public Task<byte[]> ExportToPdfAsync<T>(string reportPath, IEnumerable<T> data, string dataSourceName)
    {
        if (string.IsNullOrWhiteSpace(reportPath))
            throw new ArgumentException("Report template path must be provided.", nameof(reportPath));

        if (!File.Exists(reportPath))
            throw new FileNotFoundException("FastReport template was not found.", reportPath);

        _logger.LogInformation("Generating PDF report from template '{Template}' with data source '{DataSource}'",
            reportPath, dataSourceName);

        var dataTable = ToDataTable(data, dataSourceName);

        using var report = new Report();
        report.Load(reportPath);
        report.RegisterData(dataTable, dataSourceName);
        report.Prepare();

        using var stream = new MemoryStream();
        using var pdfExport = new PDFSimpleExport();
        report.Export(pdfExport, stream);

        _logger.LogInformation("PDF export complete — {Bytes} bytes", stream.Length);
        return Task.FromResult(stream.ToArray());
    }

    /// <inheritdoc />
    public Task<byte[]> ExportToExcelAsync<T>(IEnumerable<T> data, string sheetName = "Report")
    {
        _logger.LogInformation("Generating Excel report, sheet='{Sheet}'", sheetName);

        var rows = data.ToList();
        var properties = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);

        using var workbook = new XLWorkbook();
        var sheet = workbook.Worksheets.Add(sheetName);

        // Header row — bold, auto-width
        for (var col = 0; col < properties.Length; col++)
        {
            var headerCell = sheet.Cell(1, col + 1);
            headerCell.Value = properties[col].Name;
            headerCell.Style.Font.Bold = true;
            headerCell.Style.Fill.BackgroundColor = XLColor.LightBlue;
        }

        // Data rows
        for (var rowIdx = 0; rowIdx < rows.Count; rowIdx++)
        {
            for (var col = 0; col < properties.Length; col++)
            {
                var value = properties[col].GetValue(rows[rowIdx]);
                SetCellValue(sheet.Cell(rowIdx + 2, col + 1), value);
            }
        }

        sheet.Columns().AdjustToContents();

        using var stream = new MemoryStream();
        workbook.SaveAs(stream);

        _logger.LogInformation("Excel export complete — {Rows} rows, {Bytes} bytes", rows.Count, stream.Length);
        return Task.FromResult(stream.ToArray());
    }

    /// <inheritdoc />
    public async Task<byte[]> ExportToCsvAsync<T>(IEnumerable<T> data)
    {
        _logger.LogInformation("Generating CSV report for type '{Type}'", typeof(T).Name);

        using var stream = new MemoryStream();
        // UTF-8 BOM so Excel opens the CSV without encoding issues
        await using var writer = new StreamWriter(stream, new System.Text.UTF8Encoding(encoderShouldEmitUTF8Identifier: true), leaveOpen: true);
        await using var csv = new CsvWriter(writer, CultureInfo.InvariantCulture);

        await csv.WriteRecordsAsync(data);
        await writer.FlushAsync();

        _logger.LogInformation("CSV export complete — {Bytes} bytes", stream.Length);
        return stream.ToArray();
    }

    // -------------------------------------------------------------------------
    // Helpers
    // -------------------------------------------------------------------------

    /// <summary>
    /// Converts an <see cref="IEnumerable{T}"/> to a <see cref="DataTable"/> using
    /// public instance property names as column names. Used by FastReport data binding.
    /// The .frx template must reference these column names inside its data band.
    /// </summary>
    private static DataTable ToDataTable<T>(IEnumerable<T> data, string tableName)
    {
        var table = new DataTable(tableName);
        var properties = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);

        foreach (var prop in properties)
        {
            var columnType = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
            table.Columns.Add(prop.Name, columnType);
        }

        foreach (var item in data)
        {
            var row = table.NewRow();
            foreach (var prop in properties)
                row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
            table.Rows.Add(row);
        }

        return table;
    }

    /// <summary>
    /// Assigns a boxed value to a ClosedXML cell with correct type mapping.
    /// Numeric types (int, long, decimal, float, double) map to XLCellValue as double
    /// to avoid implicit conversion ambiguity in ClosedXML 0.104+.
    /// </summary>
    private static void SetCellValue(IXLCell cell, object? value)
    {
        if (value is null) return;

        switch (value)
        {
            case string s:
                cell.Value = s;
                break;
            case bool b:
                cell.Value = b;
                break;
            case DateTime dt:
                cell.Value = dt;
                break;
            case int i:
                cell.Value = (double)i;
                break;
            case long l:
                cell.Value = (double)l;
                break;
            case decimal d:
                cell.Value = (double)d;
                break;
            case float f:
                cell.Value = (double)f;
                break;
            case double dbl:
                cell.Value = dbl;
                break;
            default:
                cell.Value = value.ToString() ?? string.Empty;
                break;
        }
    }
}
