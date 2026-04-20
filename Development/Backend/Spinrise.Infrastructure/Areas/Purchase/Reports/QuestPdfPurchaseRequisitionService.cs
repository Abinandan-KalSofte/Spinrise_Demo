using ClosedXML.Excel;
using Microsoft.Extensions.Logging;
using QuestPDF.Companion;
using QuestPDF.Fluent;
using QuestPDF.Infrastructure;
using Spinrise.Application.Interfaces;
using Spinrise.Infrastructure.Data;

namespace Spinrise.Infrastructure.Areas.Purchase.Reports;

/// <summary>
/// Purchase Requisition report service — QuestPDF implementation.
///
/// Replaces FastReportService for PDF generation; delegates Excel and CSV
/// to IReportExportService (ClosedXML / CsvHelper) unchanged.
///
/// PDF layout matches the Crystal Report / FastReport visual exactly:
///   • A4 Landscape
///   • Company header with logo
///   • Info section (requester, dept, reference | PR no, date, approved)
///   • 12-column item table with merged "Previous Purchase Details" header
///   • Machine sub-row per line item
///   • Signature footer (Requested By / Approved By / Authorised Signatory)
/// </summary>
public sealed class QuestPdfPurchaseRequisitionService : IPurchaseReportService
{
    private readonly IReportExportService            _exportService;
    private readonly IPurchaseRequisitionRepository  _repository;
    private readonly IDatewisePrReportRepository     _datewiseRepo;
    private readonly ILookupRepository               _lookupRepository;
    private readonly IUnitOfWork                     _uow;
    private readonly ILogger<QuestPdfPurchaseRequisitionService> _logger;

    public QuestPdfPurchaseRequisitionService(
        IReportExportService           exportService,
        IPurchaseRequisitionRepository repository,
        IDatewisePrReportRepository    datewiseRepo,
        IUnitOfWork                    uow,
        ILogger<QuestPdfPurchaseRequisitionService> logger,
        ILookupRepository              lookupRepository)
    {
        _exportService    = exportService;
        _repository       = repository;
        _datewiseRepo     = datewiseRepo;
        _lookupRepository = lookupRepository;
        _uow              = uow;
        _logger           = logger;

        // Community licence must be set once before the first document is generated.
        QuestPDF.Settings.License = LicenseType.Community;
    }

    // ── PDF ───────────────────────────────────────────────────────────────────────

    public async Task<byte[]> GetPurchaseRequisitionPdfAsync(
        string divCode, long prNo, string user, DateTime? startDate = null, DateTime? endDate = null)
    {
        _logger.LogInformation(
            "Generating PR PDF (QuestPDF) — divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();
        try
        {
            var divisions = await _lookupRepository.GetDivisionDetailsAsync(divCode);
            var division  = divisions?.FirstOrDefault()
                            ?? throw new InvalidOperationException($"Division not found: divCode={divCode}");

            var prData = await _repository.GetByIdAsync(divCode, prNo, startDate, endDate)
                         ?? throw new InvalidOperationException(
                             $"PR not found: divCode={divCode}, prNo={prNo}");

            await _uow.CommitAsync();

            // Try to load company logo from well-known path (same convention as .frx template).
            

            byte[]? logoBytes = divisions.FirstOrDefault()?.DIV_LOGO != null
                 ? divisions.First().DIV_LOGO
                 : null;

            //var shortUser = user.Contains('@') ? user.Split('@')[0] : user;

            var document = new PurchaseRequisitionQuestDocument(division, prData, user, logoBytes);

#if DEBUG
            // Opens / refreshes the QuestPDF Companion App preview.
            // The Companion App must be running before hitting this endpoint.
            // Hot-reload: in VS enable "Hot Reload on Save"; in Rider press Alt+F10.
           // document.ShowInCompanion();
#endif

            return document.GeneratePdf();
        }
        catch (Exception ex)
        {
            await _uow.RollbackAsync();
            _logger.LogError(ex,
                "Error generating PR PDF — divCode={DivCode}, prNo={PrNo}", divCode, prNo);
            throw;
        }
    }

    // ── PDF by date range ─────────────────────────────────────────────────────────

    public async Task<byte[]> GetPurchaseRequisitionPdfByDateRangeAsync(
        string divCode, DateTime startDate, DateTime endDate)
    {
        _logger.LogInformation(
            "Generating PR PDF by date range (QuestPDF) — divCode={DivCode}, {Start} to {End}",
            divCode, startDate, endDate);

        await _uow.BeginAsync();
        try
        {
            var divisions = await _lookupRepository.GetDivisionDetailsAsync(divCode);
            var division  = divisions?.FirstOrDefault()
                            ?? throw new InvalidOperationException($"Division not found: divCode={divCode}");

            var headers = (await _repository.GetByDateRangeAsync(divCode, startDate, endDate)).ToList();
            if (headers.Count == 0)
                throw new InvalidOperationException(
                    $"No Purchase Requisitions found for divCode={divCode} in the specified date range.");

            await _uow.CommitAsync();

            byte[]? logoBytes = divisions.FirstOrDefault()?.DIV_LOGO;

            var documents = headers
                .Select(h => (IDocument)new PurchaseRequisitionQuestDocument(division, h, string.Empty, logoBytes))
                .ToList();

            return Document.Merge(documents).GeneratePdf();
        }
        catch (Exception ex)
        {
            await _uow.RollbackAsync();
            _logger.LogError(ex,
                "Error generating PR PDF by date range — divCode={DivCode}, {Start} to {End}",
                divCode, startDate, endDate);
            throw;
        }
    }

    // ── Excel ─────────────────────────────────────────────────────────────────────

    public async Task<byte[]> GetPurchaseRequisitionExcelAsync(string divCode, long prNo)
    {
        _logger.LogInformation(
            "Generating PR Excel — divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();
        try
        {
            var prData = await _repository.GetByIdAsync(divCode, prNo);
            await _uow.CommitAsync();

            if (prData is null)
                throw new InvalidOperationException(
                    $"Purchase Requisition not found: divCode={divCode}, prNo={prNo}");

            var rows = BuildReportRows(prData);
            return await _exportService.ExportToExcelAsync(rows, "Purchase Requisition");
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    // ── CSV ───────────────────────────────────────────────────────────────────────

    public async Task<byte[]> GetPurchaseRequisitionCsvAsync(string divCode, long prNo)
    {
        _logger.LogInformation(
            "Generating PR CSV — divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();
        try
        {
            var prData = await _repository.GetByIdAsync(divCode, prNo);
            await _uow.CommitAsync();

            if (prData is null)
                throw new InvalidOperationException(
                    $"Purchase Requisition not found: divCode={divCode}, prNo={prNo}");

            var rows = BuildReportRows(prData);
            return await _exportService.ExportToCsvAsync(rows);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    // ── Datewise Excel ────────────────────────────────────────────────────────────

    public async Task<byte[]> GetDatewisePrExcelAsync(
        string divCode, DateTime startDate, DateTime endDate)
    {
        _logger.LogInformation(
            "Generating Datewise PR Excel — divCode={DivCode}, {Start} to {End}",
            divCode, startDate, endDate);

        await _uow.BeginAsync();
        try
        {
            var rows = (await _datewiseRepo.GetDatewiseAsync(divCode, startDate, endDate)).ToList();
            await _uow.CommitAsync();
            return BuildDatewiseExcel(rows, startDate, endDate);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    // ── Datewise CSV ──────────────────────────────────────────────────────────────

    public async Task<byte[]> GetDatewisePrCsvAsync(
        string divCode, DateTime startDate, DateTime endDate)
    {
        _logger.LogInformation(
            "Generating Datewise PR CSV — divCode={DivCode}, {Start} to {End}",
            divCode, startDate, endDate);

        await _uow.BeginAsync();
        try
        {
            var rows = await _datewiseRepo.GetDatewiseAsync(divCode, startDate, endDate);
            await _uow.CommitAsync();
            return await _exportService.ExportToCsvAsync(rows);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    // ── Datewise Excel builder ────────────────────────────────────────────────────
    //
    // Column map (1-based, 13 total):
    //  A1=PrNo  B2=ItemCode  C3=ItemName(merged C-F)
    //  G7=Unit  H8=DeptName(merged H-I)
    //  J10=Required  K11=Ordered  L12=Received  M13=Status

    private static byte[] BuildDatewiseExcel(
        List<DatewisePrReportRowDto> rows, DateTime startDate, DateTime endDate)
    {
        const int LastCol = 13;

        // ── Colour palette (International ERP standard) ───────────────────────────
        var navy        = XLColor.FromHtml("#1F3864");   // company banner bg
        var midBlue     = XLColor.FromHtml("#2F5496");   // report title bg
        var bandBlue    = XLColor.FromHtml("#4472C4");   // column-header band bg
        var groupBg     = XLColor.FromHtml("#BDD7EE");   // date-group row bg
        var groupFg     = XLColor.FromHtml("#1F3864");   // date-group row text
        var altRow      = XLColor.FromHtml("#EBF3FB");   // alternate data row bg
        var borderGray  = XLColor.FromHtml("#A6B8CC");   // grid border colour
        var qtyBlue     = XLColor.FromHtml("#1F497D");   // qty number colour
        var totalBg     = XLColor.FromHtml("#D6E4F0");   // totals row bg
        var totalFg     = XLColor.FromHtml("#1F3864");   // totals row text
        var white       = XLColor.White;
        var statusOpen  = XLColor.FromHtml("#155724");   // green
        var statusConv  = XLColor.FromHtml("#0C3547");   // teal
        var statusCanc  = XLColor.FromHtml("#721C24");   // red

        using var wb = new XLWorkbook();
        var ws       = wb.Worksheets.Add("PR Datewise Report");

        ws.Style.Font.FontName = "Calibri";
        ws.Style.Font.FontSize = 9;

        // ── Column widths ─────────────────────────────────────────────────────────
        ws.Column(1).Width  = 7;   // PR No.
        ws.Column(2).Width  = 11;  // Item Code
        ws.Column(3).Width  = 14;  // Item Name part-1
        ws.Column(4).Width  = 14;  // Item Name part-2 (merged C:F)
        ws.Column(5).Width  = 6;
        ws.Column(6).Width  = 6;
        ws.Column(7).Width  = 7;   // Unit
        ws.Column(8).Width  = 14;  // Department (merged H:I)
        ws.Column(9).Width  = 8;
        ws.Column(10).Width = 12;  // Required Qty
        ws.Column(11).Width = 12;  // Ordered Qty
        ws.Column(12).Width = 12;  // Received Qty
        ws.Column(13).Width = 12;  // Status

        var first      = rows.FirstOrDefault();
        var divName    = (first?.DivName ?? string.Empty).ToUpper();
        var printedAt  = DateTime.Now.ToString("dd/MM/yyyy  HH:mm");
        var dateRange  = $"Period :  {startDate:dd/MM/yyyy}  –  {endDate:dd/MM/yyyy}";

        // ── R1: Company banner (full-width merge) ─────────────────────────────────
        ws.Row(1).Height = 24;
        MergeSet(ws, 1, 1, LastCol, divName,
            bold: true, sz: 13,
            h: XLAlignmentHorizontalValues.Center, v: XLAlignmentVerticalValues.Center,
            bg: navy, fg: white);

        // ── R2: Report title ──────────────────────────────────────────────────────
        ws.Row(2).Height = 18;
        MergeSet(ws, 2, 1, LastCol, "PURCHASE REQUISITION REPORT — DATE WISE",
            bold: true, sz: 11,
            h: XLAlignmentHorizontalValues.Center, v: XLAlignmentVerticalValues.Center,
            bg: midBlue, fg: white);

        // ── R3: Period + print date ───────────────────────────────────────────────
        ws.Row(3).Height = 15;
        MergeSet(ws, 3, 1, 7, dateRange,
            sz: 9, h: XLAlignmentHorizontalValues.Left, v: XLAlignmentVerticalValues.Center,
            bg: bandBlue, fg: white);
        MergeSet(ws, 3, 8, LastCol, $"Printed :  {printedAt}",
            sz: 9, h: XLAlignmentHorizontalValues.Right, v: XLAlignmentVerticalValues.Center,
            bg: bandBlue, fg: white);

        // ── R4: thin rule ─────────────────────────────────────────────────────────
        ws.Row(4).Height = 3;
        FillRow(ws, 4, 1, LastCol, navy);

        // ── R5: Quantity group-span label ─────────────────────────────────────────
        ws.Row(5).Height = 14;
        FillRow(ws, 5, 1, LastCol, bandBlue);
        MergeSet(ws, 5, 10, 12, "◄──────── Quantity ────────►",
            bold: true, sz: 9,
            h: XLAlignmentHorizontalValues.Center, v: XLAlignmentVerticalValues.Center,
            bg: bandBlue, fg: white);

        // ── R6: Column headers ────────────────────────────────────────────────────
        ws.Row(6).Height = 20;
        var headers = new (int c1, int c2, string lbl, XLAlignmentHorizontalValues align)[]
        {
            (1,  1,  "PR No.",       XLAlignmentHorizontalValues.Center),
            (2,  2,  "Item Code",    XLAlignmentHorizontalValues.Left),
            (3,  6,  "Item Name",    XLAlignmentHorizontalValues.Left),
            (7,  7,  "Unit",         XLAlignmentHorizontalValues.Center),
            (8,  9,  "Department",   XLAlignmentHorizontalValues.Left),
            (10, 10, "Required",     XLAlignmentHorizontalValues.Right),
            (11, 11, "Ordered",      XLAlignmentHorizontalValues.Right),
            (12, 12, "Received",     XLAlignmentHorizontalValues.Right),
            (13, 13, "Status",       XLAlignmentHorizontalValues.Center),
        };

        FillRow(ws, 6, 1, LastCol, bandBlue);
        foreach (var (c1, c2, lbl, align) in headers)
        {
            MergeSet(ws, 6, c1, c2, lbl,
                bold: true, sz: 9,
                h: align, v: XLAlignmentVerticalValues.Center,
                bg: bandBlue, fg: white,
                borderBottom: XLBorderStyleValues.Medium, borderBottomColor: navy);
        }

        // ── R7: thin separator ────────────────────────────────────────────────────
        ws.Row(7).Height = 3;
        FillRow(ws, 7, 1, LastCol, navy);

        // ── Data rows (start R8) ──────────────────────────────────────────────────
        int  rowNum = 8;
        bool isAlt  = false;

        foreach (var dateGroup in rows.GroupBy(r => r.PrDate.Date).OrderBy(g => g.Key))
        {
            // Date-group header row
            ws.Row(rowNum).Height = 15;
            MergeSet(ws, rowNum, 1, LastCol,
                $"  PR Date :   {dateGroup.Key:dd/MM/yyyy   —   dddd, MMMM dd, yyyy}",
                bold: true, sz: 9,
                h: XLAlignmentHorizontalValues.Left, v: XLAlignmentVerticalValues.Center,
                bg: groupBg, fg: groupFg,
                borderBottom: XLBorderStyleValues.Thin, borderBottomColor: borderGray);
            rowNum++;
            isAlt = false;

            foreach (var prGroup in dateGroup.GroupBy(r => r.PrNo).OrderBy(g => g.Key))
            {
                bool firstInPr = true;

                foreach (var row in prGroup)
                {
                    ws.Row(rowNum).Height = 14;
                    var bg = isAlt ? altRow : white;

                    FillRow(ws, rowNum, 1, LastCol, bg);

                    // PR No — first line of each PR group only
                    if (firstInPr)
                    {
                        var prCell = ws.Cell(rowNum, 1);
                        prCell.Value                      = (double)row.PrNo;
                        prCell.Style.Font.Bold            = true;
                        prCell.Style.Font.FontSize        = 9;
                        prCell.Style.Font.FontColor       = navy;
                        prCell.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center;
                        prCell.Style.Fill.BackgroundColor = bg;
                    }

                    // Item Code
                    DataCell(ws.Cell(rowNum, 2),  row.ItemCode ?? string.Empty, bg);

                    // Item Name (merged C:F)
                    ws.Range(rowNum, 3, rowNum, 6).Merge();
                    DataCell(ws.Cell(rowNum, 3), row.ItemName ?? string.Empty, bg,
                        wrap: true);

                    // Unit
                    DataCell(ws.Cell(rowNum, 7), row.Uom ?? string.Empty, bg,
                        h: XLAlignmentHorizontalValues.Center);

                    // Department (merged H:I)
                    ws.Range(rowNum, 8, rowNum, 9).Merge();
                    DataCell(ws.Cell(rowNum, 8), row.DepName ?? string.Empty, bg);

                    // Qty columns
                    SetQtyCell(ws.Cell(rowNum, 10), row.QtyRequired, bg, qtyBlue);
                    SetQtyCell(ws.Cell(rowNum, 11), row.QtyOrdered,  bg, qtyBlue);
                    SetQtyCell(ws.Cell(rowNum, 12), row.QtyReceived, bg, qtyBlue);

                    // Status with colour coding
                    string rawStatus = (row.PrStatus ?? string.Empty).Trim().ToUpperInvariant();
                    string displayStatus = rawStatus switch
                    {
                        "" => "Requested",
                        "O" => "Ordered",
                        "C" => "Received",
                        "Z" => "Fore Closed",
                        "D" => "Final Level Approved",
                        "F" => "First Level Approved",
                        _ => rawStatus
                    };

                    // Optional ERP color standard
                    var statusFg = rawStatus switch
                    {
                        "" => XLColor.DarkBlue,      // Requested
                        "O" => XLColor.Orange,        // Ordered
                        "C" => XLColor.Green,         // Received
                        "Z" => XLColor.Red,           // Fore Closed
                        "D" => XLColor.DarkGreen,     // Final Approved
                        "F" => XLColor.Blue,          // First Approved
                        _ => XLColor.Black
                    };
                    var statusCell = ws.Cell(rowNum, 13);
                    statusCell.Value = displayStatus;
                    statusCell.Style.Font.FontSize = 9;
                    statusCell.Style.Font.Bold = true;
                    statusCell.Style.Font.FontColor = statusFg;
                    statusCell.Style.Fill.BackgroundColor = bg;
                    statusCell.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center;
                    statusCell.Style.Alignment.Vertical = XLAlignmentVerticalValues.Center;

                    // Row hairline border
                    ws.Range(rowNum, 1, rowNum, LastCol)
                      .Style.Border.BottomBorder      = XLBorderStyleValues.Hair;
                    ws.Range(rowNum, 1, rowNum, LastCol)
                      .Style.Border.BottomBorderColor = borderGray;

                    firstInPr = false;
                    isAlt     = !isAlt;
                    rowNum++;
                }

                // Slightly thicker separator after each PR group
                ws.Range(rowNum - 1, 1, rowNum - 1, LastCol)
                  .Style.Border.BottomBorder      = XLBorderStyleValues.Thin;
                ws.Range(rowNum - 1, 1, rowNum - 1, LastCol)
                  .Style.Border.BottomBorderColor = borderGray;
            }
        }

        // ── Totals row ────────────────────────────────────────────────────────────
        ws.Row(rowNum).Height = 16;
        FillRow(ws, rowNum, 1, LastCol, totalBg);
        MergeSet(ws, rowNum, 1, 9, $"Total :  {rows.Count} line(s)",
            bold: true, sz: 9,
            h: XLAlignmentHorizontalValues.Right, v: XLAlignmentVerticalValues.Center,
            bg: totalBg, fg: totalFg,
            borderTop: XLBorderStyleValues.Medium, borderTopColor: navy);

        int dataStart = 8, dataEnd = rowNum - 1;
        foreach (var qCol in new[] { 10, 11, 12 })
        {
            var letter    = ws.Column(qCol).ColumnLetter();
            var totalCell = ws.Cell(rowNum, qCol);
            totalCell.FormulaA1                     = $"=SUM({letter}{dataStart}:{letter}{dataEnd})";
            totalCell.Style.NumberFormat.Format     = "#,##0.000";
            totalCell.Style.Font.Bold               = true;
            totalCell.Style.Font.FontSize           = 9;
            totalCell.Style.Font.FontColor          = totalFg;
            totalCell.Style.Fill.BackgroundColor    = totalBg;
            totalCell.Style.Alignment.Horizontal    = XLAlignmentHorizontalValues.Right;
            totalCell.Style.Alignment.Vertical      = XLAlignmentVerticalValues.Center;
            totalCell.Style.Border.TopBorder        = XLBorderStyleValues.Medium;
            totalCell.Style.Border.TopBorderColor   = navy;
        }

        // ── Page & print setup ────────────────────────────────────────────────────
        ws.PageSetup.PageOrientation = XLPageOrientation.Landscape;
        ws.PageSetup.PaperSize       = XLPaperSize.A4Paper;
        ws.PageSetup.FitToPages(1, 0);
        ws.PageSetup.SetRowsToRepeatAtTop(1, 7);
        ws.PageSetup.Margins.Left    = 0.4;
        ws.PageSetup.Margins.Right   = 0.4;
        ws.PageSetup.Margins.Top     = 0.5;
        ws.PageSetup.Margins.Bottom  = 0.5;
        ws.PageSetup.Header.Left.AddText(divName,    XLHFOccurrence.AllPages);
        ws.PageSetup.Footer.Left.AddText(dateRange,  XLHFOccurrence.AllPages);
        ws.PageSetup.Footer.Right.AddText("Page &P of &N", XLHFOccurrence.AllPages);

        ws.SheetView.FreezeRows(7);

        using var stream = new MemoryStream();
        wb.SaveAs(stream);
        return stream.ToArray();
    }

    // Merges a row range and sets value + style.
    private static void MergeSet(
        IXLWorksheet ws, int row, int col1, int col2, string value,
        bool bold = false, double sz = 9,
        XLAlignmentHorizontalValues h = XLAlignmentHorizontalValues.Left,
        XLAlignmentVerticalValues   v = XLAlignmentVerticalValues.Center,
        XLColor? bg = null, XLColor? fg = null,
        XLBorderStyleValues borderBottom      = XLBorderStyleValues.None,
        XLColor?            borderBottomColor = null,
        XLBorderStyleValues borderTop         = XLBorderStyleValues.None,
        XLColor?            borderTopColor    = null)
    {
        var range = ws.Range(row, col1, row, col2);
        if (col2 > col1) range.Merge();

        var cell = ws.Cell(row, col1);
        cell.Value                      = value;
        cell.Style.Font.Bold            = bold;
        cell.Style.Font.FontSize        = sz > 0 ? sz : 9;
        cell.Style.Alignment.Horizontal = h;
        cell.Style.Alignment.Vertical   = v;
        cell.Style.Alignment.WrapText   = true;

        if (bg is not null) range.Style.Fill.BackgroundColor = bg;
        if (fg is not null) cell.Style.Font.FontColor        = fg;

        if (borderBottom != XLBorderStyleValues.None)
        {
            range.Style.Border.BottomBorder      = borderBottom;
            range.Style.Border.BottomBorderColor = borderBottomColor ?? XLColor.Black;
        }
        if (borderTop != XLBorderStyleValues.None)
        {
            range.Style.Border.TopBorder      = borderTop;
            range.Style.Border.TopBorderColor = borderTopColor ?? XLColor.Black;
        }
    }

    // Fills an entire row range with a background colour.
    private static void FillRow(IXLWorksheet ws, int row, int col1, int col2, XLColor bg)
        => ws.Range(row, col1, row, col2).Style.Fill.BackgroundColor = bg;

    // Sets a plain data cell value + bg + optional alignment.
    private static void DataCell(
        IXLCell cell, string value, XLColor bg,
        XLAlignmentHorizontalValues h = XLAlignmentHorizontalValues.Left,
        bool wrap = false)
    {
        cell.Value                      = value;
        cell.Style.Font.FontSize        = 9;
        cell.Style.Fill.BackgroundColor = bg;
        cell.Style.Alignment.Horizontal = h;
        cell.Style.Alignment.Vertical   = XLAlignmentVerticalValues.Center;
        if (wrap) cell.Style.Alignment.WrapText = true;
    }

    private static void SetQtyCell(IXLCell cell, decimal? value, XLColor bg, XLColor fg)
    {
        cell.Style.Fill.BackgroundColor  = bg;
        cell.Style.Alignment.Vertical    = XLAlignmentVerticalValues.Center;
        if (value is null or 0) return;
        cell.Value                       = (double)value.Value;
        cell.Style.NumberFormat.Format   = "#,##0.000";
        cell.Style.Alignment.Horizontal  = XLAlignmentHorizontalValues.Right;
        cell.Style.Font.FontSize         = 9;
        cell.Style.Font.FontColor        = fg;
    }

    // ── Shared helpers ────────────────────────────────────────────────────────────

    private static IEnumerable<PurchaseRequisitionReportRowDto> BuildReportRows(
        Spinrise.Domain.Entities.PurchaseRequisitionHeader prData)
    {
        return prData.Lines!.Select((line, index) =>
        {
            var lastPoRate  = line.LastPoRate ?? 0m;
            var approxCost  = line.ApproxCost ?? (lastPoRate * line.QtyRequired);

            return new PurchaseRequisitionReportRowDto
            {
                SerialNo                = index + 1,
                ItemCode                = line.ItemCode,
                ItemName                = line.ItemName  ?? string.Empty,
                Unit                    = line.Uom       ?? string.Empty,
                RequiredQuantity        = line.QtyRequired,
                RequiredDate            = line.RequiredDate?.ToString("dd-MMM-yyyy") ?? string.Empty,
                CurrentStockQuantity    = line.CurrentStock ?? 0m,
                PreviousPurchaseRate    = lastPoRate,
                PreviousPurchaseValue   = lastPoRate * line.QtyRequired,
                PreviousPurchaseDate    = line.LastPoDate?.ToString("dd-MMM-yyyy") ?? string.Empty,
                ApproxCostValue         = approxCost,
                Remarks                 = line.Remarks   ?? string.Empty,
            };
        });
    }
}
