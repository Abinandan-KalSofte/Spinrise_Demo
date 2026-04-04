using System.Data;
using FastReport;
using FastReport.Export.PdfSimple;
using Microsoft.Extensions.Logging;
using Spinrise.Application.Interfaces;

namespace Spinrise.Infrastructure.Reports;

/// <summary>
/// Purchase Requisition report service.
///
/// PDF export uses a FastReport .frx template with a raw DataTable whose column names
/// are fixed to match the existing template ("KSP_PurchaseReq"). This is intentional:
/// the .frx template was designed against legacy column aliases, and changing those
/// names would require a template redesign.
///
/// Excel and CSV exports use <see cref="IReportExportService"/> with the typed
/// <see cref="PurchaseRequisitionReportRowDto"/>, which produces clean, human-readable
/// column headers without coupling to the legacy template column names.
///
/// For NEW modules, design the .frx template column names to match the DTO property
/// names from the start, then use <see cref="IReportExportService.ExportToPdfAsync{T}"/>
/// directly instead of the manual DataTable approach used here.
/// </summary>
public class FastReportService : IPurchaseReportService
{
    private readonly IReportExportService _exportService;
    private readonly ILogger<FastReportService> _logger;

    public FastReportService(IReportExportService exportService, ILogger<FastReportService> logger)
    {
        _exportService = exportService;
        _logger = logger;
    }

    // -------------------------------------------------------------------------
    // IPurchaseReportService
    // -------------------------------------------------------------------------

    //public Task<byte[]> GetPurchaseRequisitionPdfAsync(int id)
    //{
    //    ValidateId(id);

    //    var reportPath = Path.Combine(AppContext.BaseDirectory, "Reports", "Purchase", "PO_Sample.frx");
    //    if (!File.Exists(reportPath))
    //        throw new FileNotFoundException("FastReport template was not found.", reportPath);

    //    _logger.LogInformation("Generating PR PDF for id={Id}", id);

    //    // PDF uses the legacy DataTable with template-specific column names.
    //    var dataTable = BuildLegacyDataTable(id);

    //    using var report = new Report();
    //    report.Load(reportPath);
    //    report.RegisterData(dataTable, "KSP_PurchaseReq");
    //    report.Prepare();

    //    using var stream = new MemoryStream();
    //    using var pdfExport = new PDFSimpleExport();
    //    report.Export(pdfExport, stream);

    //    _logger.LogInformation("PR PDF complete — {Bytes} bytes", stream.Length);
    //    return Task.FromResult(stream.ToArray());
    //}

    public Task<byte[]> GetPurchaseRequisitionPdfAsync(int id)
    {
        ValidateId(id);

        var reportPath = Path.Combine(AppContext.BaseDirectory, "Reports", "Purchase", "PO_Sample.frx");
        if (!File.Exists(reportPath))
            throw new FileNotFoundException("FastReport template was not found.", reportPath);

        _logger.LogInformation("Generating PR PDF for id={Id}", id);

        var dataTable = BuildLegacyDataTable(id);

        if (dataTable.Rows.Count == 0)
            throw new InvalidOperationException("No data found for report.");

        using var report = new Report();

        try
        {
            report.Load(reportPath);
            report.RegisterData(dataTable, "KSP_PurchaseReq");

            report.DoublePass = true; // ✅ KEY FIX

            report.Prepare();

            using var stream = new MemoryStream();
            using var pdfExport = new PDFSimpleExport();

            report.Export(pdfExport, stream);

            stream.Position = 0; // ✅ safety

            return Task.FromResult(stream.ToArray());
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error generating PR PDF for id={Id}", id);
            throw;
        }
    }

    public Task<byte[]> GetPurchaseRequisitionExcelAsync(int id)
    {
        ValidateId(id);
        _logger.LogInformation("Generating PR Excel for id={Id}", id);

        var rows = BuildReportRows();
        return _exportService.ExportToExcelAsync(rows, "Purchase Requisition");
    }

    public Task<byte[]> GetPurchaseRequisitionCsvAsync(int id)
    {
        ValidateId(id);
        _logger.LogInformation("Generating PR CSV for id={Id}", id);

        var rows = BuildReportRows();
        return _exportService.ExportToCsvAsync(rows);
    }

    // -------------------------------------------------------------------------
    // Data builders
    // -------------------------------------------------------------------------

    /// <summary>
    /// Returns typed DTO rows used for Excel and CSV exports.
    /// Maps from the demo catalogue to the clean <see cref="PurchaseRequisitionReportRowDto"/>.
    /// In production, replace with a repository call such as:
    ///   <c>await _repo.GetReportRowsAsync(id)</c>
    /// </summary>
    private static IEnumerable<PurchaseRequisitionReportRowDto> BuildReportRows()
    {
        var catalogue = GetCatalogue();
        var reqDate = new DateTime(2026, 4, 15, 0, 0, 0, DateTimeKind.Unspecified);

        return catalogue.Select((item, index) =>
        {
            var qty = (decimal)((index % 10 + 1) * 2);
            var lpoDate = new DateTime(2025, index % 12 + 1, index % 28 + 1, 0, 0, 0, DateTimeKind.Unspecified);

            return new PurchaseRequisitionReportRowDto
            {
                SerialNo             = index + 1,
                ItemCode             = item.Code,
                ItemName             = item.Name,
                Unit                 = item.Uom,
                RequiredQuantity     = qty,
                RequiredDate         = reqDate.ToString("dd-MMM-yyyy"),
                CurrentStockQuantity = item.CurStock,
                PreviousPurchaseRate = item.LpoRate,
                PreviousPurchaseValue= item.LpoRate * qty,
                PreviousPurchaseDate = lpoDate.ToString("dd-MMM-yyyy"),
                ApproxCostValue      = item.LpoRate * qty,
                Remarks              = item.Remarks ?? string.Empty
            };
        });
    }

    /// <summary>
    /// Builds the legacy <see cref="DataTable"/> whose column names are hardcoded to
    /// match the existing PO_Sample.frx template. Used exclusively for PDF export.
    /// </summary>
    private static DataTable BuildLegacyDataTable(int id)
    {
        var table = new DataTable("KSP_PurchaseReq");

        table.Columns.Add("prno",         typeof(decimal));
        table.Columns.Add("prdate",       typeof(DateTime));
        table.Columns.Add("refno",        typeof(string));
        table.Columns.Add("APP1DATE",     typeof(DateTime));
        table.Columns.Add("APP3DATE",     typeof(DateTime));
        table.Columns.Add("qtyind",       typeof(decimal));
        table.Columns.Add("reqddate",     typeof(DateTime));
        table.Columns.Add("remarks",      typeof(string));
        table.Columns.Add("curstock",     typeof(decimal));
        table.Columns.Add("LPO_RATE",     typeof(decimal));
        table.Columns.Add("LPO_DATE",     typeof(DateTime));
        table.Columns.Add("FirstappUser", typeof(string));
        table.Columns.Add("FinalAppUser", typeof(string));
        table.Columns.Add("DEPNAME",      typeof(string));
        table.Columns.Add("ename",        typeof(string));
        table.Columns.Add("ITEMCODE",     typeof(string));
        table.Columns.Add("ITEMNAME",     typeof(string));
        table.Columns.Add("ITEMSPEC1",    typeof(string));
        table.Columns.Add("ITEMSPEC2",    typeof(string));
        table.Columns.Add("ITEMSPEC3",    typeof(string));
        table.Columns.Add("UOM",          typeof(string));
        table.Columns.Add("CATLNO",       typeof(string));
        table.Columns.Add("DRAWNO",       typeof(string));
        table.Columns.Add("MAC_NO",       typeof(string));
        table.Columns.Add("ADD1",         typeof(string));
        table.Columns.Add("ADD2",         typeof(string));
        table.Columns.Add("ADD3",         typeof(string));
        table.Columns.Add("CITY",         typeof(string));
        table.Columns.Add("PINCODE",      typeof(string));
        table.Columns.Add("PHONE1",       typeof(string));
        table.Columns.Add("EMAIL",        typeof(string));
        table.Columns.Add("STATENAME",    typeof(string));
        table.Columns.Add("DIV_PRINTNAME",typeof(string));
        table.Columns.Add("DIV_UNITNAME", typeof(string));
        table.Columns.Add("DIV_LOGO",     typeof(byte[]));
        table.Columns.Add("APPCOST",      typeof(decimal));

        var prDate   = new DateTime(2026, 4,  1, 0, 0, 0, DateTimeKind.Unspecified);
        var app1Date = new DateTime(2026, 4,  2, 0, 0, 0, DateTimeKind.Unspecified);
        var app3Date = new DateTime(2026, 4,  3, 0, 0, 0, DateTimeKind.Unspecified);
        var reqDate  = new DateTime(2026, 4, 15, 0, 0, 0, DateTimeKind.Unspecified);

        string[] departments    = ["Maintenance Department", "Production Department", "Utility Department", "Engineering Department", "Quality Control"];
        string[] requesters     = ["Alice Kumar", "Bala Murugan", "Chitra Devi", "David Raja", "Ezhil Arasan"];
        string[] firstApprovers = ["John Smith", "Karthik Rajan", "Leela Priya"];
        string[] finalApprovers = ["Robert Johnson", "Suresh Babu", "Vikram Nair"];

        var catalogue = GetCatalogue();
        for (var i = 0; i < catalogue.Length; i++)
        {
            var item    = catalogue[i]; 
            var lpoDate = new DateTime(2025, i % 12 + 1, i % 28 + 1, 0, 0, 0, DateTimeKind.Unspecified);
            var qty     = (decimal)((i % 10 + 1) * 2);
            var appcost = item.LpoRate * qty;

            table.Rows.Add(
                (decimal)id,
                prDate,
                $"REF-2026-{id:D3}",
                app1Date,
                app3Date,
                qty,
                reqDate,
                (object?)item.Remarks ?? DBNull.Value,
                item.CurStock,
                item.LpoRate,
                lpoDate,
                firstApprovers[i % firstApprovers.Length],
                finalApprovers[i % finalApprovers.Length],
                departments[i % departments.Length],
                requesters[i % requesters.Length],
                item.Code,
                item.Name,
                (object?)item.Spec1  ?? DBNull.Value,
                DBNull.Value,
                DBNull.Value,
                item.Uom,
                DBNull.Value,
                (object?)item.DrawNo ?? DBNull.Value,
                (object?)item.MacNo  ?? DBNull.Value,
                "123, Industrial Estate, Phase II",
                "Near Railway Station",
                DBNull.Value,
                "Chennai",
                "600001",
                "+91 44 2345 6789",
                "info@abcpvtltd.com",
                "Tamil Nadu",
                "Company Name",
                "Unit - I",
                DBNull.Value,
                appcost
            );
        }

        return table;
    }

    // -------------------------------------------------------------------------
    // Shared catalogue (demo data — replace with DB call in production)
    // -------------------------------------------------------------------------

    private sealed record CatalogueItem(
        string Code, string Name, string Uom,
        string? Spec1, string? MacNo, string? DrawNo,
        decimal LpoRate, decimal CurStock, string? Remarks);

    private static CatalogueItem[] GetCatalogue() =>
    [
        new("500012", "PRESSURE SCREEN SHAFT SLEEVE - VSL 09",     "NOS", "Mat: SS316L",       "VSL-09",  "DRW-5001", 34020m,  0m, null),
        new("840R018","RATCHET LEVER HOIST - 750 KG",              "NOS",  null,                null,       null,        770m,  0m, null),
        new("610023", "BEARING PLUMMER BLOCK SNL 511",              "NOS", "SKF OEM",            "PM-02",   "DRW-6102",  4850m,  2m, null),
        new("730041", "V-BELT SPB 2500",                            "NOS",  null,                null,       null,        320m,  5m, "For conveyor"),
        new("220018", "HYDRAULIC OIL ISO 68 - 200 LTR DRUM",       "NOS",  null,                null,       null,       7200m,  0m, null),
        new("315007", "MECHANICAL SEAL 40MM",                       "NOS", "Burgmann M74-D",    "PP-07",   "DRW-3150",  2100m,  0m, null),
        new("420055", "IMPELLER 200MM SS304",                       "NOS", "200mm OD, 8mm Bore","PMP-01",  "DRW-4200",  8900m,  0m, null),
        new("510089", "CONTROL VALVE DN50 PN16",                    "NOS",  null,                null,      "DRW-5100", 15600m,  0m, null),
        new("612034", "COUPLING FLEXIBLE LOVEJOY L-095",            "NOS",  null,               "MOT-05",   null,        980m,  1m, null),
        new("714022", "GREASE NLGI 2 - 1 KG CAN",                  "NOS",  null,                null,       null,        480m, 10m, null),
        new("810066", "FILTER ELEMENT 10 MICRON",                   "NOS",  null,               "HYD-03",  "DRW-8100",  1250m,  0m, null),
        new("920014", "PRESSURE GAUGE 0-10 BAR 63MM",              "NOS",  null,                null,       null,       1100m,  2m, null),
        new("335029", "SOLENOID VALVE 24VDC 1/2 INCH",             "NOS", "IP65 Class",          null,       null,       3200m,  0m, null),
        new("445010", "PROXIMITY SENSOR NPN 18MM",                  "NOS",  null,                null,       null,        750m,  0m, null),
        new("556088", "CONTACTOR 40A 3POLE 415V",                   "NOS",  null,               "PNL-01",   null,       1800m,  0m, null),
        new("667043", "OVERLOAD RELAY 25-40A",                      "NOS",  null,               "PNL-01",   null,        950m,  0m, null),
        new("778021", "PUSH BUTTON GREEN NC",                       "NOS",  null,                null,       null,        220m,  5m, null),
        new("889055", "LIMIT SWITCH LSE-11",                        "NOS",  null,               "CON-02",   null,        580m,  0m, null),
        new("991002", "CABLE TRAY 100X50MM - 3MTR",                "NOS",  null,                null,       null,       1350m,  0m, null),
        new("112034", "SS PIPE 2 INCH SCH 40 - 6M",                "NOS", "ASTM A312 TP316",    null,      "DRW-1120",  3900m,  0m, null),
        new("223068", "FLANGE BLIND DN50 PN16 SS316",              "NOS",  null,                null,      "DRW-2230",  2200m,  0m, null),
        new("334091", "GASKET SPIRAL WOUND 50MM",                   "NOS",  null,                null,       null,        380m,  4m, null),
        new("445122", "BOLT HEX M16x60 SS316",                     "NOS",  null,                null,       null,         48m, 20m, null),
        new("556133", "NUT HEX M16 SS316",                         "NOS",  null,                null,       null,         28m, 20m, null),
        new("667144", "WASHER PLAIN M16 SS316",                     "NOS",  null,                null,       null,         12m, 30m, null),
        new("778155", "ELECTRODE WELDING 3.15MM E6013 - 5KG",      "PKT",  null,                null,       null,        680m,  2m, null),
        new("889166", "WIRE ROPE 12MM - 50M ROLL",                 "ROL",  null,               "CRN-01",   null,       4200m,  0m, null),
        new("990177", "HOOK BLOCK 5 TON",                           "NOS",  null,               "CRN-01",  "DRW-9900", 18500m,  0m, null),
        new("101188", "ANTI-VIBRATION MOUNT M12 50KG",             "NOS",  null,               "MOT-03",   null,        320m,  0m, null),
        new("202199", "NEOPRENE RUBBER SHEET 5MM - 1M X 1M",       "NOS",  null,                null,       null,        850m,  0m, null),
    ];

    // -------------------------------------------------------------------------
    // Guard
    // -------------------------------------------------------------------------

    private static void ValidateId(int id)
    {
        if (id <= 0)
            throw new ArgumentOutOfRangeException(nameof(id), "A valid Purchase Requisition id is required.");
    }
}
