using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using Spinrise.Application.Areas.Common.Lookup.DTOs;
using Spinrise.Domain.Entities;
using Spinrise.Infrastructure.Reports.Engine;

namespace Spinrise.Infrastructure.Areas.Purchase.Reports;

/// <summary>
/// Purchase Requisition PDF — A4 Landscape, pixel-perfect against PR_Requisition.frx.
/// Unit basis: 1 FR unit (96 DPI) = 0.264583 mm.
/// Delegates all rendering to <see cref="QuestPdfTemplateEngine"/>; this class owns only
/// style constants and config assembly.
/// </summary>
internal sealed class PurchaseRequisitionQuestDocument : IDocument
{
    private readonly DivisionDTO _div;
    private readonly PurchaseRequisitionHeader _header;
    private readonly byte[]? _logo;

    // ── Page ──────────────────────────────────────────────────────────────────────
    private const float PageMargin = 6.3f;    // FRX LeftMargin/TopMargin/RightMargin/BottomMargin
    private const float TableInset = 2.2f;    // FRX table Left=8 FR × 0.264583

    // ── Font ──────────────────────────────────────────────────────────────────────
    private const string FontFamily = "Calibri";
    private const float FsCompany  = 14f;    // DIV_PRINTNAME  — 14pt Bold Navy
    private const float FsDivision = 9f;     // DIV_UNITNAME   — 9pt Bold Navy
    private const float FsAddress  = 8f;     // address lines  — 8pt Normal
    private const float FsTitle    = 12f;    // report title   — 12pt Bold Maroon
    private const float FsInfo     = 10f;    // info labels/values — 10pt
    private const float FsTh       = 10f;    // column headers — 10pt Bold
    private const float FsData     = 9f;     // data cells     — 9pt Normal
    private const float FsSig      = 10f;    // signature      — 10pt

    // ── Colours ───────────────────────────────────────────────────────────────────
    private const string Navy   = "#000080";
    private const string Maroon = "#800000";
    private const string Black  = "#000000";

    // ── Borders (pt) ─────────────────────────────────────────────────────────────
    private const float BdBox  = 1.5f;   // outer section boxes  — FRX Border.Width="1.5"
    private const float BdCell = 0.5f;   // column header inner  — FRX default
    private const float BdData = 0.67f;  // data cells           — FRX Border.Width="0.67"

    // ── Column widths (mm) ── FR widths × 0.264583 — Σ = 280.0 mm ───────────────
    //  0=S.No  1=ItemCode  2=ItemName  3=Unit  4=ReqQty  5=ReqDate  6=CurrStk
    //  7=Rate  8=Value     9=Date      10=AppCost         11=Remarks
    private static readonly float[] Cols =
        { 8.9f, 17.8f, 64.6f, 11.1f, 21.2f, 19f, 23.0f, 19.1f, 24.1f, 21.8f, 22.7f, 24.77f };

    // ── Info section constants (mm) ───────────────────────────────────────────────
    private const float LeftPanelW  = 141.5f;  // FRX Line5 Left=543 → (543-8) × 0.264583
    private const float LeftLabelW  = 34.2f;   // FRX labels Width=129.33 × 0.264583
    private const float LeftIndent  = 8.5f;    // FRX (40-8) × 0.264583
    private const float RightLabelW = 29.4f;   // FRX labels Width=111 × 0.264583
    private const float RightIndent = 10.8f;   // FRX (584-543) × 0.264583
    private const float SepW        = 2.1f;    // FRX separator Width=8 × 0.264583

    // ── Row heights (mm) ─────────────────────────────────────────────────────────
    private const float DataRowH = 8.4f;   // FRX DataBand Height=31.9 × 0.264583
    private const float MachRowH = 5.0f;   // FRX ChildBand DetailMachNo Height=18.9 × 0.264583
    private const float SigH     = 22.9f;  // FRX ChildBand Child1 Height=86.55 × 0.264583

    // ─────────────────────────────────────────────────────────────────────────────

    public PurchaseRequisitionQuestDocument(
        DivisionDTO div, PurchaseRequisitionHeader header, byte[]? logo)
    {
        _div    = div;
        _header = header;
        _logo   = logo;
    }

    public DocumentMetadata GetMetadata() => DocumentMetadata.Default;
    public DocumentSettings GetSettings() => DocumentSettings.Default;

    // ── Document ──────────────────────────────────────────────────────────────────

    public void Compose(IDocumentContainer container)
    {
        var hdr  = BuildHeader();
        var info = BuildInfo();
        var tbl  = BuildTable();
        var sig  = BuildSignature();

        container.Page(page =>
        {
            page.Size(PageSizes.A4.Landscape());
            page.MarginHorizontal(PageMargin, Unit.Millimetre);
            page.MarginVertical(PageMargin, Unit.Millimetre);
            page.DefaultTextStyle(x => x.FontFamily(FontFamily).FontSize(FsData).FontColor(Black));

            page.Header().Element(c => QuestPdfTemplateEngine.RenderHeader(c, hdr));

            page.Content()
            .Column(col =>
            {
                col.Spacing(4);
                col.Item().PaddingTop(3f, Unit.Millimetre)
                   .Element(c => QuestPdfTemplateEngine.RenderInfoSection(c, info));
                //col.Item()
                //   .Element(c => QuestPdfTemplateEngine.RenderTable(c, tbl));
                col.Item()
                    .PaddingBottom(2)
                    .BorderBottom(1) // how to shrink table to fit available space without cutting off rows? — add bottom border to fill gap
                    .BorderColor(Colors.Grey.Darken1)
                    .Element(c => QuestPdfTemplateEngine.RenderTable(c, tbl));
                //col.Item()
                //     .PaddingHorizontal(2.2f, Unit.Millimetre) // 👈 match table inset
                //     .PaddingBottom(2)
                //     .BorderBottom(1)
                //     .BorderColor(Colors.Grey.Darken1)
                //     .Element(c => QuestPdfTemplateEngine.RenderTable(c, tbl));
                col.Item()
                    .ExtendVertical() // takes remaining space
                    .AlignBottom()
                    .Element(c => QuestPdfTemplateEngine.RenderSignature(c, sig));
            });

        });
    }

    // ── Config builders ───────────────────────────────────────────────────────────

    private HeaderConfig BuildHeader() => new(
        InsetMm:     TableInset,
        PadBottomMm: 1f,
        BorderPt:    BdBox,
        BorderColor: Black,
        Logo:        new LogoConfig(_logo, WidthMm: 51.6f, MaxHeightMm: 28.7f, GapMm: 9.8f),
        CompanyFont: new StyleFont(FontFamily, FsCompany, Bold: true, Color: Navy),
        UnitFont:    new StyleFont(FontFamily, FsDivision, Bold: true, Color: Navy),
        AddressFont: new StyleFont(FontFamily, FsAddress),
        CompanyName: _div.DIV_PRINTNAME,
        UnitName:    _div.DIV_UNITNAME,
        AddressLines: new string[]
        {
            $"{_div.DIVISION_ADDR1}, {_div.DIVISION_ADDR2}",
            $"{_div.DIVISION_ADDR3} - {_div.PINCODE}, {_div.STATENAME}",
            string.IsNullOrWhiteSpace(_div.PHONE1) ? "" : $"Phone: {_div.PHONE1}",
            string.IsNullOrWhiteSpace(_div.EMAIL)  ? "" : $"Email: {_div.EMAIL}",
        });

    private InfoSectionConfig BuildInfo()
    {
        var app3 = _header.APP3DATE.HasValue
            ? _header.APP3DATE.Value.ToString("dd/MM/yyyy") : "";

        return new InfoSectionConfig(
            InsetMm:     TableInset,
            BorderPt:    BdBox,
            BorderColor: Black,
            Title:       "Purchase Requisition",
            TitleFont:   new StyleFont(FontFamily, FsTitle, Bold: true, Color: Maroon),
            TitlePadVMm: 3f,
            LabelFont:   new StyleFont(FontFamily, FsInfo, Bold: true),
            ValueFont:   new StyleFont(FontFamily, FsInfo, Bold: false),
            DividerMm:   0.53f,
            LeftPanel: new InfoPanelConfig(
                WidthMm: LeftPanelW, IndentMm: LeftIndent, PadVMm: 3f, RowSpacingMm: 3f,
                Rows: new InfoRowConfig[]
                {
                    new("Requester Name", _header.ReqName  ?? "",                    LeftLabelW, SepW),
                    new("Created By",     _header.CreatedBy,                          LeftLabelW, SepW),
                    new("Department",     _header.DepName  ?? _header.DepCode,        LeftLabelW, SepW),
                    new("Reference",      _header.RefNo    ?? "",                     LeftLabelW, SepW),
                }),
            RightPanel: new InfoPanelConfig(
                WidthMm: 0, IndentMm: RightIndent, PadVMm: 3f, RowSpacingMm: 3f,
                Rows: new InfoRowConfig[]
                {
                    new("PR.No.",        _header.PrNo.ToString(),                RightLabelW, SepW),
                    new("PR.Date",       _header.PrDate.ToString("dd/MM/yyyy"),  RightLabelW, SepW),
                    new("Approved Date", app3,                                   RightLabelW, SepW),
                }));
    }

    private TableConfig BuildTable()
    {
        var emptyMach = new MachCellConfig(MinHeightMm: MachRowH, BdSidePt: BdData, BdColor: Black);

        var rows = _header.Lines.Select((line, i) =>
        {
            var lpoRate    = line.LastPoRate ?? 0m;
            var lpoValue   = lpoRate * line.QtyRequired;
            var approxCost = (line.ApproxCost is null or <= 0m) ? lpoValue : line.ApproxCost.Value;
            var stock      = line.CurrentStock ?? 0m;

            DcCellConfig Dc(string text, DA align) =>
                new(text, align, MinHeightMm: DataRowH, FontSizePt: FsData, BdSidePt: BdData, BdColor: Black);

            DcCellConfig[] cells =
            {
                Dc((i + 1).ToString(),                                              DA.Center),
                Dc(line.ItemCode ?? "",                                             DA.Left),
                Dc(line.ItemName ?? "",                                             DA.Left),
                Dc(line.Uom ?? "",                                                  DA.Center),
                Dc(line.QtyRequired == 0m ? "" : line.QtyRequired.ToString("N2"),  DA.Right),
                Dc(line.RequiredDate?.ToString("dd/MM/yyyy") ?? "",                 DA.Center),
                Dc(stock < 1m ? "" : stock.ToString("N2"),                         DA.Right),
                Dc(lpoRate == 0m ? "" : lpoRate.ToString("N3"),                    DA.Right),
                Dc(lpoValue == 0m ? "" : ((long)Math.Round(lpoValue)).ToString(),  DA.Right),
                Dc(line.LastPoDate?.ToString("dd/MM/yyyy") ?? "",                   DA.Center),
                Dc(approxCost == 0m ? "" : approxCost.ToString("N2"),              DA.Right),
                Dc(line.Remarks ?? "",                                              DA.Left),
            };

            ChildRowConfig[] childRows =
            {
                 new($"DRAWING NO.:  {line.DrawNo ?? ""}",       FsData),
                new($"CATALOGUE NO.:  {line.CatNo ?? ""}",  FsData),
                new($"MACHINE NO.:  {line.MachineNo ?? ""}",    FsData),
               
            };

            return new DataRowConfig(cells, childRows);
        }).ToList();

        return new TableConfig(
            InsetMm:       TableInset,
            Columns:       Cols.Select(w => new ColDef(w)).ToArray(),
            Header:        BuildTableHeader(),
            EmptyMachCell: emptyMach,
            Rows:          rows);
    }

    private TableHeaderConfig BuildTableHeader()
    {
        // Standard two-row header cell
        ThCellConfig Th(string text, int rowSpan, bool topBd) => new(
            Text:      text,
            RowSpan:   (uint)rowSpan,
            ColSpan:   1u,
            BdTop:     topBd ? BdBox : null,
            BdRight:   BdCell,
            BdBottom:  BdBox,
            BdLeft:    BdCell,
            BdColor:   Black);

        ThCellConfig[] cells =
        {
            Th("S.No",                    rowSpan: 2, topBd: true),
            Th("Item Code",               rowSpan: 2, topBd: true),
            Th("Item Name",               rowSpan: 2, topBd: true),
            Th("Unit",                    rowSpan: 2, topBd: true),
            Th("Required\nQuantity",      rowSpan: 2, topBd: true),
            Th("Required\nDate",          rowSpan: 2, topBd: true),
            Th("Current stock\nQuantity", rowSpan: 2, topBd: true),

            // "Previous Purchase Details" — ColSpan=3, centered across Rate/Value/Date sub-columns
            new ThCellConfig(
                Text:     "Previous Purchase Details",
                RowSpan:  1u,
                ColSpan:  3u,
                BdTop:    BdBox,
                BdRight:  BdCell,
                BdBottom: BdCell,
                BdLeft:   BdCell,
                BdColor:  Black),

            Th("App. Cost\nValue", rowSpan: 2, topBd: true),
            Th("Remarks",          rowSpan: 2, topBd: true),

            // Row 2 — sub-headers under Previous Purchase Details
            Th("Rate/Unit", rowSpan: 1, topBd: false),
            Th("Value",     rowSpan: 1, topBd: false),
            Th("Date",      rowSpan: 1, topBd: false),
        };

        return new TableHeaderConfig(cells, Font: new StyleFont(FontFamily, FsTh, Bold: true, Color: Black));
    }

    private SignatureConfig BuildSignature()
    {
        var app1 = _header.APP1DATE.HasValue ? _header.APP1DATE.Value.ToString("dd/MM/yyyy") : "";
        var app3 = _header.APP3DATE.HasValue ? _header.APP3DATE.Value.ToString("dd/MM/yyyy") : "";

        return new SignatureConfig(
            InsetMm:     TableInset,
            MinHeightMm: SigH,
            BorderPt:    BdBox,
            BorderColor: Black,
            Font:        new StyleFont(FontFamily, FsSig),
            Blocks: new SigBlockConfig[]
            {
                new("Requested By",         _header.ReqName ?? "",     Date: null,  RightBorder: true,  PadV: 8f, PadH: 10f, NamePadTop: 6f),
                new("Approved By",          _header.FirstappUser ?? "", Date: app1, RightBorder: true,  PadV: 8f, PadH: 10f, NamePadTop: 6f),
                new("Authorised Signatory", _header.FinalAppUser ?? "", Date: app3, RightBorder: false, PadV: 8f, PadH: 10f, NamePadTop: 6f),
            });
    }
}
