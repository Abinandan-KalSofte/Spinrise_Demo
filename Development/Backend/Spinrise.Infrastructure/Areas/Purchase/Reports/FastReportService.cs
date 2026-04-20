using FastReport;
using FastReport.Data;
using FastReport.Export.PdfSimple;
using Microsoft.Extensions.Logging;
using Spinrise.Application.Interfaces;
using Spinrise.Domain.Entities;
using Spinrise.Infrastructure.Data;
using System.Data;

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
    private readonly IPurchaseRequisitionRepository _repository;
    private readonly ILookupRepository _lookupRepository;
    private readonly IUnitOfWork _uow;
    private readonly ILogger<FastReportService> _logger;

    public FastReportService(
        IReportExportService exportService,
        IPurchaseRequisitionRepository repository,
        IUnitOfWork uow,
        ILogger<FastReportService> logger,
        ILookupRepository lookupRepository)
    {
        _exportService = exportService;
        _repository = repository;
        _lookupRepository = lookupRepository;
        _uow = uow;
        _logger = logger;
    }

    public async Task<byte[]> GetPurchaseRequisitionPdfAsync(string divCode, long prNo, string user, DateTime? startDate = null, DateTime? endDate = null)
    {
        var reportPath = Path.Combine(AppContext.BaseDirectory, "Reports", "Purchase", "PR_Requisition.frx");

        if (!File.Exists(reportPath))
            throw new FileNotFoundException("FastReport template was not found.", reportPath);

        _logger.LogInformation("Generating PR PDF for divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();

        try
        {
            var po_divisionList = await _lookupRepository.GetDivisionDetailsAsync(divCode);
            var po_division = po_divisionList?.FirstOrDefault();
            var po_details = await _repository.GetByIdAsync(divCode, prNo);

            if (po_division == null)
                throw new InvalidOperationException($"Division not found: divCode={divCode}");


            if (po_details == null)
                throw new InvalidOperationException($"PR not found: divCode={divCode}, prNo={prNo}");

            var items = po_details.Lines;

            await _uow.CommitAsync();

            if (items == null || !items.Any())
                throw new InvalidOperationException("No detail records found for report.");

            using var report = new Report();
            report.Load(reportPath);

            var table = BuildReportDataTable(po_division, po_details, items, user);

            report.RegisterData(table, "KSP_PurchaseReq");
            report.DoublePass = true;
            report.Prepare(true);

            using var stream = new MemoryStream();
            using var pdfExport = new PDFSimpleExport();
            report.Export(pdfExport, stream);

            stream.Position = 0;
            return stream.ToArray();
        }
        catch (Exception ex)
        {
            await _uow.RollbackAsync();
            _logger.LogError(ex, "Error generating PR PDF for divCode={DivCode}, prNo={PrNo}", divCode, prNo);
            throw;
        }
    }

    public Task<byte[]> GetPurchaseRequisitionPdfByDateRangeAsync(
        string divCode, DateTime startDate, DateTime endDate)
        => throw new NotSupportedException(
            "GetPurchaseRequisitionPdfByDateRangeAsync is not supported by FastReportService. Use QuestPdfPurchaseRequisitionService.");

    public async Task<byte[]> GetPurchaseRequisitionExcelAsync(string divCode, long prNo)
    {
        _logger.LogInformation("Generating PR Excel for divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();
        try
        {
            var prData = await _repository.GetByIdAsync(divCode, prNo);
            await _uow.CommitAsync();

            if (prData is null)
                throw new InvalidOperationException($"Purchase Requisition not found: divCode={divCode}, prNo={prNo}");

            var rows = BuildReportRows(prData);
            return await _exportService.ExportToExcelAsync(rows, "Purchase Requisition");
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    public async Task<byte[]> GetPurchaseRequisitionCsvAsync(string divCode, long prNo)
    {
        _logger.LogInformation("Generating PR CSV for divCode={DivCode}, prNo={PrNo}", divCode, prNo);

        await _uow.BeginAsync();
        try
        {
            var prData = await _repository.GetByIdAsync(divCode, prNo);
            await _uow.CommitAsync();

            if (prData is null)
                throw new InvalidOperationException($"Purchase Requisition not found: divCode={divCode}, prNo={prNo}");

            var rows = BuildReportRows(prData);
            return await _exportService.ExportToCsvAsync(rows);
        }
        catch
        {
            await _uow.RollbackAsync();
            throw;
        }
    }

    // ── Datewise — not implemented in the legacy FastReport service ───────────────

    public Task<byte[]> GetDatewisePrExcelAsync(string divCode, DateTime startDate, DateTime endDate)
        => throw new NotSupportedException("Use QuestPdfPurchaseRequisitionService for datewise exports.");

    public Task<byte[]> GetDatewisePrCsvAsync(string divCode, DateTime startDate, DateTime endDate)
        => throw new NotSupportedException("Use QuestPdfPurchaseRequisitionService for datewise exports.");

    private static IEnumerable<PurchaseRequisitionReportRowDto> BuildReportRows(PurchaseRequisitionHeader prData)
    {
        return prData.Lines!.Select((line, index) =>
        {
            var reqDate = line.RequiredDate?.ToString("dd-MMM-yyyy") ?? string.Empty;
            var lpoDate = line.LastPoDate?.ToString("dd-MMM-yyyy") ?? string.Empty;
            var lastPoRate = line.LastPoRate ?? 0m;
            var approxCost = line.ApproxCost ?? (lastPoRate * line.QtyRequired);

            return new PurchaseRequisitionReportRowDto
            {
                SerialNo = index + 1,
                ItemCode = line.ItemCode,
                ItemName = line.ItemName ?? string.Empty,
                Unit = line.Uom ?? string.Empty,
                RequiredQuantity = line.QtyRequired,
                RequiredDate = reqDate,
                CurrentStockQuantity = line.CurrentStock ?? 0m,
                PreviousPurchaseRate = lastPoRate,
                PreviousPurchaseValue = lastPoRate * line.QtyRequired,
                PreviousPurchaseDate = lpoDate,
                ApproxCostValue = approxCost,
                Remarks = line.Remarks ?? string.Empty
            };
        });
    }

    private static DataTable BuildReportDataTable(DivisionDTO division, PurchaseRequisitionHeader header, List<PurchaseRequisitionLine> items, string user)
    {
        var dt = new DataTable("KSP_PurchaseReq");

        // Define columns matching FR template structure

        // Header-level columns (repeated for each line)
        dt.Columns.Add("DIV_PRINTNAME", typeof(string));
        dt.Columns.Add("DIV_UNITNAME", typeof(string));
        dt.Columns.Add("DIVISION_ADDR1", typeof(string));
        dt.Columns.Add("DIVISION_ADDR2", typeof(string));
        dt.Columns.Add("DIVISION_ADDR3", typeof(string));
        dt.Columns.Add("PINCODE", typeof(string));
        dt.Columns.Add("STATENAME", typeof(string));
        dt.Columns.Add("PHONE1", typeof(string));
        dt.Columns.Add("EMAIL", typeof(string));
        dt.Columns.Add("prno", typeof(decimal));
        dt.Columns.Add("prdate", typeof(DateTime));
        dt.Columns.Add("refno", typeof(string));
        dt.Columns.Add("DEPNAME", typeof(string));
        dt.Columns.Add("ename", typeof(string));
        dt.Columns.Add("APP1DATE", typeof(DateTime));
        dt.Columns.Add("APP3DATE", typeof(DateTime));
        dt.Columns.Add("FirstappUser", typeof(string));
        dt.Columns.Add("FinalAppUser", typeof(string));
        dt.Columns.Add("ITEMCODE", typeof(string));
        dt.Columns.Add("ITEMNAME", typeof(string));
        dt.Columns.Add("UOM", typeof(string));
        dt.Columns.Add("qtyind", typeof(decimal));
        dt.Columns.Add("reqddate", typeof(DateTime));
        dt.Columns.Add("curstock", typeof(decimal));
        dt.Columns.Add("LPO_RATE", typeof(decimal));
        dt.Columns.Add("LPO_DATE", typeof(DateTime));
        dt.Columns.Add("APPCOST", typeof(decimal));
        dt.Columns.Add("MAC_NO", typeof(string));
        //dt.Columns.Add("ADD1", typeof(string));
        //dt.Columns.Add("ADD2", typeof(string));
        //dt.Columns.Add("ADD3", typeof(string));
        //dt.Columns.Add("CITY", typeof(string));
        //dt.Columns.Add("PINCODE", typeof(string));
        //dt.Columns.Add("PHONE1", typeof(string));
        //dt.Columns.Add("EMAIL", typeof(string));
        //dt.Columns.Add("STATENAME", typeof(string));
        //dt.Columns.Add("DIV_PRINTNAME", typeof(string));
        //dt.Columns.Add("DIV_UNITNAME", typeof(string));
        dt.Columns.Add("DIV_LOGO", typeof(byte[]));
        dt.Columns.Add("remarks", typeof(string));
        dt.Columns.Add("User", typeof(string));

        // Populate rows from header and items
        foreach (var line in items)
        {
            var lastPoRate = line.LastPoRate ?? 0m;
            var approxCost = line.ApproxCost ?? (lastPoRate * line.QtyRequired);

            dt.Rows.Add(
                division.DIV_PRINTNAME ?? string.Empty,
                division.DIV_UNITNAME ?? string.Empty,
                division.DIVISION_ADDR1 ?? string.Empty,
                division.DIVISION_ADDR2 ?? string.Empty,
                division.DIVISION_ADDR3 ?? string.Empty,
                division.PINCODE ?? string.Empty,
                division.STATENAME ?? string.Empty,
                division.PHONE1 ?? string.Empty,
                division.EMAIL ?? string.Empty,
                Convert.ToDecimal(header.PrNo),
                header.PrDate,
                header.RefNo ?? string.Empty,
                header.DepName ?? string.Empty,
                header.ReqName ?? string.Empty,
                DBNull.Value,
                DBNull.Value,
                string.Empty,
                string.Empty,
                line.ItemCode ?? string.Empty,
                line.ItemName ?? string.Empty,
                line.Uom ?? string.Empty,
                line.QtyRequired,
                line.RequiredDate ?? (object)DBNull.Value,
                line.CurrentStock ?? 0m,
                lastPoRate,
                line.LastPoDate ?? (object)DBNull.Value,
                approxCost,
                line.MachineNo ?? string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                //string.Empty,
                DBNull.Value,
                line.Remarks ?? string.Empty,
                user.Split('@')[0]
            );
        }

        return dt;
    }
}
