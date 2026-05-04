// ─────────────────────────────────────────────────────────────────────────────
// SPINRISE Dev Gap Analysis Generator — EPPlus 7
//
// Option A (dotnet-script):  dotnet tool install -g dotnet-script
//                            dotnet script SPINRISE_Dev_Gap_Analysis.cs
//
// Option B (console project): dotnet new console -n GapAnalysis
//                              cd GapAnalysis
//                              dotnet add package EPPlus --version 7.5.2
//                              Replace Program.cs content with everything BELOW the #r line
//                              dotnet run
// ─────────────────────────────────────────────────────────────────────────────

using System;
using System.Drawing;
using System.IO;
using OfficeOpenXml;
using OfficeOpenXml.Drawing.Chart;
using OfficeOpenXml.Style;

ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

var outPath = @"D:\Spinrise\Docs\Report\SPINRISE_Dev_Gap_Analysis.xlsx";
Directory.CreateDirectory(Path.GetDirectoryName(outPath)!);

using var pkg = new ExcelPackage();
pkg.Workbook.Properties.Author  = "Abinandan N";
pkg.Workbook.Properties.Title   = "SPINRISE Dev Gap Analysis — May 2026";
pkg.Workbook.Properties.Company = "Kalpatharu Software Ltd";
pkg.Workbook.Properties.Created = DateTime.Now;

// ── Palette ───────────────────────────────────────────────────────────────────
static Color H(string hex) => ColorTranslator.FromHtml(hex);
var cHdrBg  = H("#1F4E79");
var cHdrFg  = Color.White;
var cSubHdr = H("#BDD7EE");
var cRed    = H("#FF4D4D");
var cAmber  = H("#FFA500");
var cGreen  = H("#52C41A");
var cYesBg  = H("#E2EFDA");
var cNoBg   = H("#FFE6E6");
var cNABg   = H("#F2F2F2");
var cAmberBg= H("#FFF3CD");
var cAlt    = H("#F0F7FF");

// ── Helpers ───────────────────────────────────────────────────────────────────
void HdrStyle(ExcelRange r, Color bg, Color fg, float sz = 11f)
{
    r.Style.Font.Bold = true; r.Style.Font.Size = sz;
    r.Style.Font.Color.SetColor(fg);
    r.Style.Fill.PatternType = ExcelFillStyle.Solid;
    r.Style.Fill.BackgroundColor.SetColor(bg);
    r.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    r.Style.VerticalAlignment   = ExcelVerticalAlignment.Center;
    r.Style.WrapText = true;
    r.Style.Border.Bottom.Style = ExcelBorderStyle.Medium;
}

void Body(ExcelRange r)
{
    r.Style.Font.Name = "Calibri"; r.Style.Font.Size = 11;
    r.Style.VerticalAlignment = ExcelVerticalAlignment.Center;
}

void YN(ExcelWorksheet ws, int row, int col, string val)
{
    var c = ws.Cells[row, col];
    c.Value = val;
    Body(c);
    c.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    c.Style.Fill.PatternType = ExcelFillStyle.Solid;
    c.Style.Fill.BackgroundColor.SetColor(
        val == "Y"       ? cYesBg  :
        val == "N"       ? cNoBg   :
        val == "Partial" ? cAmberBg: cNABg);
}

void StatusCell(ExcelWorksheet ws, int row, int col, string val)
{
    var c = ws.Cells[row, col];
    c.Value = val; c.Style.Font.Bold = true;
    c.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    c.Style.Fill.PatternType = ExcelFillStyle.Solid;
    c.Style.Fill.BackgroundColor.SetColor(
        val == "Green"   ? cGreen :
        val == "Amber"   ? cAmber : cRed);
    c.Style.Font.Color.SetColor(val == "Amber" ? Color.Black : Color.White);
}

void Finalize(ExcelWorksheet ws, int lastRow, int lastCol)
{
    ws.View.FreezePanes(2, 1);
    ws.Cells[1, 1, lastRow, lastCol].AutoFilter = true;
    ws.Cells.AutoFitColumns(12, 55);
    ws.DefaultRowHeight = 18;
    ws.Row(1).Height = 28;
    ws.PrinterSettings.Orientation = eOrientation.Landscape;
    ws.PrinterSettings.FitToPage   = true;
    ws.PrinterSettings.FitToWidth  = 1;
    ws.PrinterSettings.FitToHeight = 0;
    ws.PrinterSettings.PrintArea   = ws.Cells[1, 1, lastRow, lastCol];
}


// ═══════════════════════════════════════════════════════════════════════════════
// SHEET 1 — MODULE TRACKER
// ═══════════════════════════════════════════════════════════════════════════════
var s1 = pkg.Workbook.Worksheets.Add("1 - Module Tracker");

string[] h1 = {
    "Blueprint\nID", "Dev ID", "Module / Sub-Module", "FSD Owner", "Dev Owner",
    "Phase", "Target", "FSD Status", "FSD Approved",
    "SPs\nReq.", "SPs\nBuilt", "SPs\n%",
    "Domain", "DTO", "Interface", "Service", "Repo", "Controller",  // Backend cols 13-18
    "Types", "API", "Store", "List", "New", "Edit",                  // Frontend cols 19-24
    "IST Status", "IST\nPass%", "Deployed?", "Open\nBugs",
    "Blockers / Notes", "Status"
};
for (int c = 1; c <= h1.Length; c++) { s1.Cells[1, c].Value = h1[c-1]; HdrStyle(s1.Cells[1, c], cHdrBg, cHdrFg); }
// Shade backend/frontend group headers slightly differently
for (int c = 13; c <= 18; c++) s1.Cells[1,c].Style.Fill.BackgroundColor.SetColor(H("#1A3A5C"));
for (int c = 19; c <= 24; c++) s1.Cells[1,c].Style.Fill.BackgroundColor.SetColor(H("#154360"));

// Module data ──────────────────────────────────────────────────────────────────
// (BpID, DevID, Name, FSDOwner, DevOwner, Phase, Target, FSDStatus, FSDDate,
//  SpReq, SpBuilt,  Dom,DTO,Iface,Svc,Repo,Ctrl, Types,API,Store,List,New,Edit,
//  ISTStatus, ISTPct, Deployed, Bugs, Blockers, RAG)
var mods = new (
    string bp, string dev, string name, string fsdOwn, string devOwn,
    string phase, string tgt, string fsdSt, string fsdDt,
    int spR, int spB,
    string dom, string dto, string ifc, string svc, string rep, string ctl,
    string typ, string api, string sto, string lst, string nw, string edt,
    string ist, string istPct, string dep, int bugs, string notes, string rag
)[] {
  ("M01","Dev-M01","PR Form (Purchase Requisition)","Mariyaiya M","Abinandan N",
   "Phase 1","Jun 2026","CEO Approved","Apr 2026",17,17,
   "Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y",
   "In Progress","~90%","N",5,
   "Issue #40 pending qty flag (Sasi); Issue #26 Sub-Cost Centre level (Sasi); IIS deploy pending; CEO demo 06 May","Amber"),

  ("M01","Dev-M02","RMI Purchase Order (PO Form)","Sasi (Sasikumar R)","Abinandan N",
   "Phase 1","Jul 2026","CEO Approved","Apr 2026",19,19,
   "Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y",
   "Not Started","-","N",3,
   "VW_rm_SupplierVariety columns unverified; dropdown UX fix pending; merged_jat.sql deploy pending","Amber"),

  ("M01","Dev-M02b","Stores Arrival / GRN","Sasi (Sasikumar R)","Abinandan N",
   "Phase 1","Jul 2026","CEO Approved","Apr 2026",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,
   "Build not started — awaiting M02 PO IST clearance","Red"),

  ("M03","Dev-M03","Domestic Yarn Sales","Annamalai S","Abinandan N",
   "Phase 1","Aug 2026","CEO Approved","May 2026",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,
   "FSD CEO-approved; build starts after M01 + M02 PO deploy","Red"),

  ("M04","Dev-M04a","Attendance Download","Sathishkumar M","Abinandan N",
   "Phase 1","Sep 2026","CEO Approved","May 2026",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"FSD approved; build scheduled Jun–Sep 2026","Red"),

  ("M04","Dev-M04b","Attendance Entry","Sathishkumar M","Abinandan N",
   "Phase 1","Sep 2026","CEO Approved","May 2026",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"FSD approved; build scheduled Jun–Sep 2026","Red"),

  ("M02","-","Stores Purchase & Inventory","Mariyaiya M","Abinandan N",
   "Phase 1","Sep 2026","In Progress","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"FSD Stage 0 in progress; build after CEO approval","Red"),

  ("M04","-","HR & Payroll (Leave / Payroll)","Sathishkumar M","Abinandan N",
   "Phase 1","Sep 2026","In Progress","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Attendance FSD approved; Payroll/Leave FSD in progress","Red"),

  ("M05","-","Accounting & Finance","Sasi / TL-Dev","Abinandan N + New Dev",
   "Phase 1","Sep 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Scheduled Jul–Sep 2026; React Dev hire critical","Red"),

  ("M06","-","e-Invoicing (GST IRN)","Sr Web Dev","Sr Web Dev (Jun+)",
   "Phase 1","Sep 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Sr Web Dev returns Jun 2026; FSD not started","Red"),

  ("M07","-","Export Yarn Sales","Sr VB Dev2","Sr Web Dev (Jun+)",
   "Phase 2","Nov 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Phase 2 — out of current sprint scope","Red"),

  ("M08","-","Waste & Scrap Sales","Sr VB Dev2","Sr Web Dev (Jun+)",
   "Phase 2","Nov 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Phase 2 — out of current sprint scope","Red"),

  ("M09","-","Spinning Production Systems","TL-Dev + New Dev","Abinandan N + New Dev",
   "Phase 2","Dec 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Core differentiator; Phase 2; requires New Dev hire","Red"),

  ("M10","-","Quality Control","SME","New Dev + SME",
   "Phase 2","Dec 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Phase 2","Red"),

  ("M11","-","Power Accounting","Sr IST1","New Dev",
   "Phase 2","Dec 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Phase 2","Red"),

  ("M12","-","Machinery & Electrical Maintenance","TL-IST","New Dev",
   "Phase 2","Dec 2026","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Phase 2","Red"),

  ("M13","-","MIS & Dashboards","All IST + SME","Sr Web Dev + Jr WDs",
   "Continuous","Ongoing","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Continuous; depends on all modules being live","Red"),

  ("M14","-","SPINNOVA AI Framework","Jr WDs + SME","Jr WDs + SME",
   "Parallel","Ongoing","Not Started","-",0,0,
   "N","N","N","N","N","N","N","N","N","N","N","N",
   "Not Started","-","N",0,"Parallel track; live operational data → AI KPI dashboards","Red"),
};

for (int i = 0; i < mods.Length; i++)
{
    var m = mods[i];
    int row = i + 2;
    var bg = i % 2 == 1 ? cAlt : Color.White;
    s1.Cells[row, 1, row, h1.Length].Style.Fill.PatternType = ExcelFillStyle.Solid;
    s1.Cells[row, 1, row, h1.Length].Style.Fill.BackgroundColor.SetColor(bg);
    s1.Cells[row, 1, row, h1.Length].Style.Font.Name = "Calibri";
    s1.Cells[row, 1, row, h1.Length].Style.Font.Size = 11;

    int c = 1;
    s1.Cells[row, c++].Value = m.bp;
    s1.Cells[row, c++].Value = m.dev;
    s1.Cells[row, c++].Value = m.name;
    s1.Cells[row, c++].Value = m.fsdOwn;
    s1.Cells[row, c++].Value = m.devOwn;
    s1.Cells[row, c++].Value = m.phase;
    s1.Cells[row, c++].Value = m.tgt;

    // FSD Status — colour
    var fc = s1.Cells[row, c++];
    fc.Value = m.fsdSt;
    fc.Style.Fill.PatternType = ExcelFillStyle.Solid;
    fc.Style.Fill.BackgroundColor.SetColor(
        m.fsdSt == "CEO Approved" ? cYesBg :
        m.fsdSt == "In Progress"  ? cAmberBg : cNoBg);
    if (m.fsdSt == "CEO Approved") fc.Style.Font.Bold = true;

    s1.Cells[row, c++].Value = m.fsdDt;

    s1.Cells[row, c].Value = m.spR == 0 ? (object)"TBD" : m.spR; c++;
    s1.Cells[row, c++].Value = m.spB;
    if (m.spR > 0) {
        s1.Cells[row, c].Value = (double)m.spB / m.spR;
        s1.Cells[row, c].Style.Numberformat.Format = "0%";
    } else {
        s1.Cells[row, c].Value = "N/A";
    }
    c++;

    // Backend Y/N
    YN(s1,row,c++,m.dom); YN(s1,row,c++,m.dto); YN(s1,row,c++,m.ifc);
    YN(s1,row,c++,m.svc); YN(s1,row,c++,m.rep); YN(s1,row,c++,m.ctl);
    // Frontend Y/N
    YN(s1,row,c++,m.typ); YN(s1,row,c++,m.api); YN(s1,row,c++,m.sto);
    YN(s1,row,c++,m.lst); YN(s1,row,c++,m.nw);  YN(s1,row,c++,m.edt);

    // IST Status
    var ic = s1.Cells[row, c++];
    ic.Value = m.ist;
    ic.Style.Fill.PatternType = ExcelFillStyle.Solid;
    ic.Style.Fill.BackgroundColor.SetColor(
        m.ist == "Pass"        ? cYesBg  :
        m.ist == "In Progress" ? cAmberBg: cNABg);

    s1.Cells[row, c++].Value = m.istPct;
    YN(s1, row, c++, m.dep);
    s1.Cells[row, c++].Value = m.bugs == 0 ? (object)"-" : m.bugs;

    var bc = s1.Cells[row, c++];
    bc.Value = m.notes; bc.Style.WrapText = true;

    StatusCell(s1, row, c++, m.rag);
}

Finalize(s1, mods.Length + 1, h1.Length);
s1.Column(3).Width  = 36;
s1.Column(29).Width = 52;

// ═══════════════════════════════════════════════════════════════════════════════
// SHEET 2 — FEATURE GAP ANALYSIS
// ═══════════════════════════════════════════════════════════════════════════════
var s2 = pkg.Workbook.Worksheets.Add("2 - Feature Gap Analysis");

string[] h2 = { "Module","Sub-Module","Feature / Capability","Required?","Built?","IST Tested?","Gap Description","Priority","Owner","ETA" };
for (int c = 1; c <= h2.Length; c++) { s2.Cells[1,c].Value = h2[c-1]; HdrStyle(s2.Cells[1,c], cHdrBg, cHdrFg); }

// (module, sub, feature, req, built, tested, gap, priority, owner, eta)
var feats = new (string mod, string sub, string feat, string req, string blt, string tst, string gap, string pri, string own, string eta)[] {
  // M01 Create
  ("M01 — PR Form","Create","New PR Form — all header fields (date/dept/section/iType/requester/ref/PO group/scope/sale order)","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Create","Line items table — inline add / edit / delete rows","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Create","Item lookup — code + name autocomplete","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Create","UOM auto-fill on item selection","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","Create","Required Date per line item","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","Create","Machine No. field on line item","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","Create","MINLEVEL warning on qty entry (non-blocking, auto-dismiss 5s)","Y","Y","N","Built post-IST — not yet re-tested by IST team","High","Abinandan N","06 May demo"),
  ("M01 — PR Form","Create","Budget validation flag — balance display (config-driven)","Y","Y","Partial","Flag wired; balance display needs CEO demo verification","High","Abinandan N","06 May demo"),
  ("M01 — PR Form","Create","Pending PO details flag (config-driven)","Y","Y","N","Flag implemented; IST not re-tested post-fix","High","Abinandan N","06 May demo"),
  ("M01 — PR Form","Create","Ref No mandatory when config enabled","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","Create","Back-date allowed flag (config-driven)","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  // M01 Edit/View
  ("M01 — PR Form","Edit / View","PR Edit page — load and save existing PR lines","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Edit / View","PR View modal — read-only summary","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Edit / View","Lock editing for approved / converted PRs","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Edit / View","Approval info display (L1/L2/Final approver + date)","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","Edit / View","Sub-Cost Centre field on line item","Y","N","N","BLOCKED — awaiting Sasi design decision: header vs line level (Issue #26)","High","Sasi (design)","Blocked"),
  ("M01 — PR Form","Edit / View","Pending qty display flag on line item","Y","N","N","BLOCKED — awaiting Sasi FSD confirmation (Issue #40)","High","Sasi (design)","Blocked"),
  // M01 List
  ("M01 — PR Form","List","PR List — paginated table with full-width card","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","List","Filter bar: PR No / Date range / Dept / Status / Search / Reset","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","List","Status badges (colour per status code)","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","List","Row actions: Edit / View / Delete","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","List","Status summary bar (count per status)","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  ("M01 — PR Form","List","Checkbox multi-select (currently inactive)","Y","Partial","N","Checkboxes visible but do nothing — activate with toolbar OR remove (CEO priority)","High","Abinandan N","05 May"),
  ("M01 — PR Form","List","Bell icon badge — pending PR count","Y","Partial","N","Bell exists but shows no count badge — add this week","High","Abinandan N","05 May"),
  // M01 Cancel/Delete
  ("M01 — PR Form","Cancel / Delete","Cancel PR with reason (soft delete)","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Cancel / Delete","Line-level delete with reason","Y","Y","Y","Complete","High","Abinandan N","Done"),
  // M01 Workflow
  ("M01 — PR Form","Workflow","Status flow: OPEN→L1→L2→FINAL→RECEIVED→CONVERTED","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Workflow","Approve / Reject / Cancel transition endpoints","Y","Y","Y","Complete","High","Abinandan N","Done"),
  ("M01 — PR Form","Workflow","Workflow progress bar in UI","Y","Y","Y","Complete — Vignesh flagged but CEO confirmed it exists","High","Abinandan N","Done"),
  // M01 Print/Export
  ("M01 — PR Form","Print","QuestPDF PDF — PR requisition print","Y","Y","Partial","PDF generates; minor formatting issues from IST — review post-demo","High","Abinandan N","Post-demo"),
  ("M01 — PR Form","Print","Print customisation panel (section toggles / dept presets)","N","N","N","Phase 2 deferred — current QuestPDF meets FSD v2.3","Low","Abinandan N","Phase 2"),
  ("M01 — PR Form","Export","EPPlus Excel export — PR list","Y","Y","Y","Complete","Med","Abinandan N","Done"),
  // M01 Sprint 2 Backlog
  ("M01 — PR Form","Sprint 2","Copy PR — 3-option modal (CEO ACCEPTED)","Y","N","N","Sprint 2 confirmed — same items/diff dept; same dept/diff items; full copy","High","Abinandan N","Sprint 2"),
  ("M01 — PR Form","Sprint 2","Bulk action toolbar (Approve / Cancel / Download)","Y","N","N","Sprint 2 confirmed — Convert to PO = Phase 2 (needs M02)","Med","Abinandan N","Sprint 2"),
  ("M01 — PR Form","Sprint 2","Compact filter bar for PR list","N","N","N","Sprint 2 quick win — CEO confirmed","Low","Abinandan N","Sprint 2"),
  ("M01 — PR Form","Phase 1 Partial","Related PO link in PR view modal","N","N","N","Build when M02 PO deployed; full chain nav = Phase 2","Med","Abinandan N","After M02 deploy"),
  // M02 PO Form
  ("M02 — PO Form","Create","New PO — header: supplier / area / variety / payment mode / currency / GST","Y","Y","N","Built; not yet IST tested","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","PO line items — Pick from pending PR lines modal","Y","Y","N","Built — PRLinePickerModal implemented","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","PO delivery schedule (inline editable table)","Y","Y","N","Built","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","Discount rate table","Y","Y","N","Built","Med","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","GST auto-defaults (IGST 5% interstate / CGST+SGST 2.5% intrastate)","Y","Y","N","Built","Med","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","Candy rate auto-calc (candyRate→rateKg; ordQty→ordKgs)","Y","Y","N","Built","Med","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Create","Lookup dropdowns — code+name in single field (not two fields)","Y","Partial","N","PENDING — UX fix: combine code+name in single Select option label","High","Abinandan N","06 May"),
  ("M02 — PO Form","Create","CONTNO race condition prevention (CD-2 UPDLOCK+HOLDLOCK)","Y","Y","N","SP has UPDLOCK applied; concurrent load test needed before IST","High","Abinandan N","Pre-IST"),
  ("M02 — PO Form","Edit / Approve","PO Edit/View — read-only header + lines + delivery","Y","Y","N","Built","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Edit / Approve","L1 / L2 / Final Approve + Reject with remarks modal","Y","Y","N","Built","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","List","PO List — filter, pagination, status badges","Y","Y","N","Built","High","Abinandan N","Post-deploy"),
  ("M02 — PO Form","Deploy","Deploy merged_jat.sql to JAT DB (172.16.16.52 → JAT)","Y","N","N","User action: run merged_jat.sql in SSMS on JAT DB","High","Abinandan N","This week"),
  ("M02 — PO Form","Deploy","Verify VW_rm_SupplierVariety columns match SP expectations","Y","N","N","Risk: runtime SP failure if columns mismatch","High","Abinandan N","This week"),
  ("M02 — PO Form","Print","QuestPDF PDF — PO print (RPT_RMI_PO)","Y","N","N","Not built — Phase 7 in plan","High","Abinandan N","May 2026"),
  ("M02 — PO Form","Export","EPPlus Excel export — PO list","Y","N","N","Not built","Med","Abinandan N","May 2026"),
};

for (int i = 0; i < feats.Length; i++)
{
    var f = feats[i];
    int row = i + 2;
    var bg = i % 2 == 1 ? cAlt : Color.White;
    s2.Cells[row, 1, row, h2.Length].Style.Fill.PatternType = ExcelFillStyle.Solid;
    s2.Cells[row, 1, row, h2.Length].Style.Fill.BackgroundColor.SetColor(bg);
    s2.Cells[row, 1, row, h2.Length].Style.Font.Name = "Calibri";
    s2.Cells[row, 1, row, h2.Length].Style.Font.Size = 11;
    s2.Row(row).Height = 30;

    s2.Cells[row,1].Value = f.mod;
    s2.Cells[row,2].Value = f.sub;
    s2.Cells[row,3].Value = f.feat; s2.Cells[row,3].Style.WrapText = true;
    YN(s2,row,4,f.req); YN(s2,row,5,f.blt); YN(s2,row,6,f.tst);

    var gc = s2.Cells[row,7];
    gc.Value = f.gap; gc.Style.WrapText = true;
    if (f.gap.StartsWith("BLOCKED"))  { gc.Style.Fill.PatternType = ExcelFillStyle.Solid; gc.Style.Fill.BackgroundColor.SetColor(cRed);    gc.Style.Font.Color.SetColor(Color.White); }
    else if (f.gap.StartsWith("PENDING")) { gc.Style.Fill.PatternType = ExcelFillStyle.Solid; gc.Style.Fill.BackgroundColor.SetColor(cAmberBg); }

    var pc = s2.Cells[row,8];
    pc.Value = f.pri; pc.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    pc.Style.Fill.PatternType = ExcelFillStyle.Solid;
    pc.Style.Fill.BackgroundColor.SetColor(f.pri == "High" ? H("#FFC7CE") : f.pri == "Med" ? cAmberBg : cYesBg);

    s2.Cells[row,9].Value = f.own;
    var ec = s2.Cells[row,10];
    ec.Value = f.eta;
    ec.Style.Fill.PatternType = ExcelFillStyle.Solid;
    ec.Style.Fill.BackgroundColor.SetColor(
        f.eta == "Done"    ? cYesBg  :
        f.eta == "Blocked" ? cRed    :
        f.eta.Contains("May") || f.eta.Contains("week") || f.eta.Contains("demo") ? cAmberBg : cNABg);
    if (f.eta == "Blocked") ec.Style.Font.Color.SetColor(Color.White);
    if (f.eta == "Done")    ec.Style.Font.Bold = true;
}

Finalize(s2, feats.Length + 1, h2.Length);
s2.Column(3).Width = 46; s2.Column(7).Width = 50;
s2.Column(2).Width = 16; s2.Column(9).Width = 20; s2.Column(10).Width = 18;


// ═══════════════════════════════════════════════════════════════════════════════
// SHEET 3 — SPRINT PLAN (05 May – 16 May 2026)
// ═══════════════════════════════════════════════════════════════════════════════
var s3 = pkg.Workbook.Worksheets.Add("3 - Sprint Plan");

string[] h3 = { "Day", "Date", "Task", "Module", "Type", "Hrs", "Status", "Notes" };
for (int c = 1; c <= h3.Length; c++) { s3.Cells[1,c].Value = h3[c-1]; HdrStyle(s3.Cells[1,c], cHdrBg, cHdrFg); }

Color TypeColor(string t) => t switch {
    "Frontend" => H("#E3F2FD"), "Backend" => H("#E8F5E9"),
    "Bug"      => H("#FFE6E6"), "Deploy"  => H("#FFF3E0"),
    "Docs"     => H("#F3E5F5"), "Demo"    => H("#FFF9C4"),
    "Meeting"  => H("#E0F7FA"), _         => H("#F5F5F5"),
};
Color DayColor(int d) => d switch {
    1 => H("#FFFBF0"), 2 => H("#F0FFF4"), 3 => H("#F0F4FF"), 4 => H("#FFF0F8"),
    5 => H("#F0FFFE"), 6 => H("#FFFBF0"), 7 => H("#F0FFF4"), 8 => H("#F0F4FF"),
    9 => H("#FFF0F8"), _ => H("#F0FFFE"),
};

var tasks = new (int day, string date, string task, string mod, string type, double hrs, string status, string notes)[] {
  (1,"05 May Mon","Submit React Developer JD to CEO (jointly with Sasi)","Admin","Admin",1.0,"TODO","HARD DEADLINE EOD today"),
  (1,"05 May Mon","Submit Revised FSD Completion Schedule to CEO","Admin","Docs",1.0,"TODO","HARD DEADLINE EOD today"),
  (1,"05 May Mon","Fix inactive PR list checkboxes (activate with toolbar OR remove)","Dev-M01","Frontend",2.0,"TODO","CEO priority — inactive UX is unacceptable"),
  (1,"05 May Mon","Add pending-count badge to bell icon in header","Dev-M01","Frontend",1.5,"TODO","CEO priority from sprint backlog"),
  (1,"05 May Mon","PR Form full UX final polish + demo rehearsal walkthrough","Dev-M01","Frontend",2.5,"TODO","CEO demo 06 May — must be 100% clean"),

  (2,"06 May Tue","CEO Demo — PR Form full UX walkthrough (HARD GATE)","Dev-M01","Demo",2.0,"TODO","All IST-fixed features; MINLEVEL warning; budget flag; print"),
  (2,"06 May Tue","Post-demo: capture CEO feedback as action items","Dev-M01","Admin",0.5,"TODO","Document and save to memory immediately"),
  (2,"06 May Tue","M02 PO — Fix lookup dropdown UX (code+name in single field, all 5 lookups)","Dev-M02","Frontend",3.0,"TODO","Change options to: { value: code, label: code + ' - ' + name }"),
  (2,"06 May Tue","M02 PO — Verify VW_rm_SupplierVariety columns in SSMS vs SP expectations","Dev-M02","Backend",1.5,"TODO","Risk: runtime SP failure; check JAT DB view definition"),

  (3,"07 May Wed","M01 — IST bug fixes batch (CEO demo feedback first)","Dev-M01","Bug",4.0,"TODO","Update merged.sql for every SP change"),
  (3,"07 May Wed","M02 PO — Deploy merged_jat.sql to JAT DB via SSMS","Dev-M02","Deploy",1.0,"TODO","Stop pool, run merged_jat.sql on JAT DB, verify SPs exist"),
  (3,"07 May Wed","M02 PO — Smoke test all 19 SP endpoints via Swagger on JAT DB","Dev-M02","Backend",2.0,"TODO","Test create / list / approve / cancel paths"),
  (3,"07 May Wed","FSD-to-ASP.NET Core conversion steps document (draft)","Admin","Docs",1.5,"TODO","Submit to CEO this week"),

  (4,"08 May Thu","M01 — IST bug fixes continued + merged.sql update","Dev-M01","Bug",3.5,"TODO","Target: zero High-severity open bugs before deploy"),
  (4,"08 May Thu","M02 PO — QuestPDF print template start (RPT_RMI_PO)","Dev-M02","Backend",3.0,"TODO","Follow M01 QuestPDF architecture exactly"),
  (4,"08 May Thu","Submit FSD-to-ASP.NET Core conversion doc to CEO","Admin","Docs",0.5,"TODO","Due this week"),

  (5,"09 May Sat","Saturday Review Meeting (PM Saravanan conducting)","All","Meeting",2.5,"TODO","Prepare progress update; demo M02 PO if ready"),
  (5,"09 May Sat","Submit baseline code (version snapshot) for all modules to CEO","Admin","Admin",1.0,"TODO","Package Dev-M01 + Dev-M02 git snapshot"),
  (5,"09 May Sat","Post-meeting: update sprint backlog and gap analysis from CEO feedback","Admin","Admin",0.5,"TODO","Update this Excel file with actuals"),

  (6,"12 May Mon","M01 — Reconcile merged.sql with all post-IST SP changes","Dev-M01","Deploy",1.5,"TODO","SP merge rule: every change must be in merged.sql before deploy"),
  (6,"12 May Mon","M01 — Backend publish: stop pool, dotnet publish, copy to IIS 5001","Dev-M01","Deploy",1.5,"TODO","IIS path: 172.16.16.40:5001"),
  (6,"12 May Mon","M01 — Frontend build: npm run build, copy dist/ to IIS port 3000","Dev-M01","Deploy",1.0,"TODO","Uses .env.production; verify VITE_BACKEND_ORIGIN"),
  (6,"12 May Mon","M02 PO — Complete QuestPDF print template + test PDF output","Dev-M02","Backend",3.5,"TODO",""),

  (7,"13 May Tue","M01 — Run merged.sql in SSMS on SpinRiseSaranya DB","Dev-M01","Deploy",0.5,"TODO","DB first always before backend"),
  (7,"13 May Tue","M01 — Post-deploy smoke test on 172.16.16.40:3000","Dev-M01","Deploy",2.0,"TODO","Test: Login, PR List, Create PR, Edit PR, PDF print, Excel export"),
  (7,"13 May Tue","M02 PO — EPPlus Excel export for PO list","Dev-M02","Backend",2.0,"TODO","Follow M01 EPPlus pattern"),
  (7,"13 May Tue","M02 PO — End-to-end test: Create PO, Pick PR lines, Approve, Print","Dev-M02","Frontend",2.0,"TODO",""),

  (8,"14 May Wed","M01 — Fix any post-deploy issues (keep merged.sql updated)","Dev-M01","Bug",2.0,"TODO",""),
  (8,"14 May Wed","M02 PO — IIS deploy: merged_jat.sql to JAT DB, backend, frontend","Dev-M02","Deploy",2.5,"TODO","JAT DB specific — use merged_jat.sql NOT merged.sql"),
  (8,"14 May Wed","M02b Stores Arrival — read FSD, draft SP list","Dev-M02b","Backend",2.0,"TODO","Start planning next module after M02 PO is deployed"),

  (9,"15 May Thu","M02 PO — Post-deploy smoke test + concurrent load test (CD-2 race)","Dev-M02","Deploy",2.0,"TODO","2x simultaneous Create-PO to verify CONTNO uniqueness"),
  (9,"15 May Thu","M02b Stores Arrival — begin SP development (ksp_Arrival_GetPendingPOs)","Dev-M02b","Backend",4.0,"TODO",""),

  (10,"16 May Fri","M02b Stores Arrival — SP-02: ksp_Arrival_Create + ksp_Arrival_GetById","Dev-M02b","Backend",4.0,"TODO",""),
  (10,"16 May Fri","Weekly retro + update Gap Analysis Excel with actual completion","Admin","Admin",1.0,"TODO","Fill in actual hrs + status for each task"),
  (10,"16 May Fri","Git commit and push all changes to master","All","Admin",0.5,"TODO","Co-authored-by: Claude Sonnet 4.6"),
};

double totalHrs = 0;
for (int i = 0; i < tasks.Length; i++)
{
    var t = tasks[i];
    int row = i + 2;
    totalHrs += t.hrs;
    var bg = DayColor(t.day);
    s3.Cells[row,1,row,h3.Length].Style.Fill.PatternType = ExcelFillStyle.Solid;
    s3.Cells[row,1,row,h3.Length].Style.Fill.BackgroundColor.SetColor(bg);
    s3.Cells[row,1,row,h3.Length].Style.Font.Name = "Calibri";
    s3.Cells[row,1,row,h3.Length].Style.Font.Size = 11;
    s3.Row(row).Height = 28;

    s3.Cells[row,1].Value = $"Day {t.day}";
    s3.Cells[row,1].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    s3.Cells[row,1].Style.Font.Bold = true;
    s3.Cells[row,2].Value = t.date;
    s3.Cells[row,3].Value = t.task; s3.Cells[row,3].Style.WrapText = true;
    s3.Cells[row,4].Value = t.mod;
    var tc = s3.Cells[row,5];
    tc.Value = t.type; tc.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    tc.Style.Fill.PatternType = ExcelFillStyle.Solid;
    tc.Style.Fill.BackgroundColor.SetColor(TypeColor(t.type));
    s3.Cells[row,6].Value = t.hrs;
    s3.Cells[row,6].Style.Numberformat.Format = "0.0";
    s3.Cells[row,6].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    s3.Cells[row,7].Value = t.status;
    s3.Cells[row,7].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    s3.Cells[row,8].Value = t.notes; s3.Cells[row,8].Style.WrapText = true;
}
int totRow = tasks.Length + 2;
s3.Cells[totRow,1,totRow,h3.Length].Style.Fill.PatternType = ExcelFillStyle.Solid;
s3.Cells[totRow,1,totRow,h3.Length].Style.Fill.BackgroundColor.SetColor(cSubHdr);
s3.Cells[totRow,1,totRow,5].Merge = true;
s3.Cells[totRow,1].Value = $"TOTAL — {tasks.Length} tasks over 10 working days (05–16 May 2026)";
s3.Cells[totRow,1].Style.Font.Bold = true;
s3.Cells[totRow,1].Style.HorizontalAlignment = ExcelHorizontalAlignment.Right;
s3.Cells[totRow,6].Value = totalHrs;
s3.Cells[totRow,6].Style.Font.Bold = true;
s3.Cells[totRow,6].Style.Numberformat.Format = "0.0";

Finalize(s3, totRow, h3.Length);
s3.Column(3).Width = 50; s3.Column(8).Width = 38;
s3.Column(2).Width = 14; s3.Column(4).Width = 14;

// ═══════════════════════════════════════════════════════════════════════════════
// SHEET 4 — REQUIREMENTS SCORECARD
// ═══════════════════════════════════════════════════════════════════════════════
var s4 = pkg.Workbook.Worksheets.Add("4 - Scorecard");

s4.Cells[1,1,1,4].Merge = true;
s4.Cells[1,1].Value = "SPINRISE — Developer Requirements Scorecard  (04 May 2026)";
s4.Cells[1,1].Style.Font.Bold = true; s4.Cells[1,1].Style.Font.Size = 14;
s4.Cells[1,1].Style.Font.Color.SetColor(cHdrBg);
s4.Cells[1,1].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
s4.Row(1).Height = 30;

HdrStyle(s4.Cells[2,1], cHdrBg, cHdrFg); s4.Cells[2,1].Value = "Metric";
HdrStyle(s4.Cells[2,2], cHdrBg, cHdrFg); s4.Cells[2,2].Value = "Value";
HdrStyle(s4.Cells[2,3], cHdrBg, cHdrFg); s4.Cells[2,3].Value = "Notes";
s4.Cells[2,3].Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;

var metrics = new (string metric, object val, string note)[] {
    ("Total modules in scope — Phase 1",    10,    "M01-PR, M01-PO, M01-Arrival, M02-Stores, M03-Sales, M04-Attend x2, M04-Payroll, M05-Acctg, M06-eInv"),
    ("FSDs CEO-approved",                    6,    "PR Form, PO, Stores Arrival, Sale Order, Attendance Download, Attendance Entry"),
    ("FSDs in progress",                     2,    "Stores Purchase (Mariyaiya, Stage 0), HR Full Payroll (Sathish)"),
    ("FSDs not started",                     2,    "Accounting & Finance (M05), e-Invoicing (M06)"),
    ("Modules with build started",           2,    "Dev-M01 PR Form, Dev-M02 PO"),
    ("Modules build complete (all layers)",  2,    "Dev-M01 + Dev-M02; pending IST + IIS deploy"),
    ("Modules IST completed and passing",    0,    "Dev-M01 IST ~90% est post-fix; Dev-M02 IST not started"),
    ("Modules deployed to IIS",              0,    "M01 + M02 deploy pending — target this week"),
    ("",                                     "",   ""),
    ("Total features identified (M01+M02)", 50,    "Based on FSD feature checklist — see Sheet 2"),
    ("Features built",                      38,    "Backend + frontend implemented"),
    ("Features IST-tested (cleared)",       25,    "M01 first-pass; post-fix batch not re-tested yet"),
    ("Features with open bugs",              8,    "M01: 5 minor + 2 blocked; M02: 1 deploy-risk"),
    ("Features blocked (design pending)",    2,    "Issue #26 Sub-Cost Centre; Issue #40 Pending Qty"),
    ("",                                     "",   ""),
    ("M01 PR Form — build completion",    "100%", "All 17 SPs + all backend layers + all frontend pages"),
    ("M01 PR Form — IST pass rate",       "~90%", "First pass 44%; post-fix sprint est. 90%+"),
    ("M01 PR Form — deploy status",         "0%", "Pending — target 13 May 2026"),
    ("M02 PO Form — build completion",     "95%", "Dropdown UX fix pending; all other layers done"),
    ("M02 PO Form — IST pass rate",         "0%", "IST not started — starts after deploy"),
    ("Phase 1 overall completion %",        "18%","2 of 10 modules built; 0 deployed; 8 not started"),
    ("",                                     "",   ""),
    ("Phase 1 go-live target",        "30 Sep 2026","6 core modules live — covers 80%+ of daily mill ops"),
    ("New customer onboarding from",  "Oct 2026",   "Write to all 50+ customers; invite top-10 for live demo"),
    ("CEO demo (PR Form UX)",         "06 May 2026","HARD GATE — tomorrow"),
    ("Next weekly review",            "09 May 2026","PM Saravanan conducting"),
};

for (int i = 0; i < metrics.Length; i++)
{
    var m = metrics[i];
    int row = i + 3;
    if (string.IsNullOrEmpty(m.metric)) { s4.Row(row).Height = 6; continue; }
    var bg = i % 2 == 0 ? Color.White : cAlt;
    s4.Cells[row,1,row,3].Style.Fill.PatternType = ExcelFillStyle.Solid;
    s4.Cells[row,1,row,3].Style.Fill.BackgroundColor.SetColor(bg);
    s4.Cells[row,1,row,3].Style.Font.Name = "Calibri";
    s4.Cells[row,1,row,3].Style.Font.Size = 11;
    s4.Cells[row,1].Value = m.metric;
    s4.Cells[row,2].Value = m.val; s4.Cells[row,2].Style.Font.Bold = true;
    s4.Cells[row,2].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    s4.Cells[row,3].Value = m.note; s4.Cells[row,3].Style.WrapText = true;
    if (m.metric.Contains("completion") || m.metric.Contains("pass rate")) {
        s4.Cells[row,2].Style.Fill.PatternType = ExcelFillStyle.Solid;
        s4.Cells[row,2].Style.Fill.BackgroundColor.SetColor(cYesBg);
    }
}
int mLastRow = metrics.Length + 2;

// Chart helper data (cols 5+)
s4.Cells[2,5].Value = "FSD Status"; s4.Cells[2,6].Value = "Count";
s4.Cells[3,5].Value = "CEO Approved"; s4.Cells[3,6].Value = 6;
s4.Cells[4,5].Value = "In Progress";  s4.Cells[4,6].Value = 2;
s4.Cells[5,5].Value = "Not Started";  s4.Cells[5,6].Value = 2;
HdrStyle(s4.Cells[2,5,2,6], cSubHdr, cHdrBg, 10);

var donut = s4.Drawings.AddChart("FsdDonut", eChartType.Doughnut) as ExcelDoughnutChart;
if (donut != null) {
    donut.SetPosition(1, 0, 6, 0); donut.SetSize(380, 270);
    donut.Title.Text = "FSD Status — Phase 1 (10 Modules)";
    donut.Title.Font.Bold = true; donut.Title.Font.Size = 12;
    donut.Series.Add(s4.Cells[3,6,5,6], s4.Cells[3,5,5,5]).Header = "Count";
    donut.Legend.Position = eLegendPosition.Bottom;
}

string[] bNames = { "M01 PR Form","M02 PO Form","M02 Arrival","M03 Sales","M04 Attend.","Phase 1 Avg" };
double[] bVals  = { 1.0, 0.95, 0.05, 0.05, 0.05, 0.18 };
s4.Cells[2,8].Value = "Module"; s4.Cells[2,9].Value = "Completion %";
HdrStyle(s4.Cells[2,8,2,9], cSubHdr, cHdrBg, 10);
for (int i = 0; i < bNames.Length; i++) {
    s4.Cells[3+i,8].Value = bNames[i];
    s4.Cells[3+i,9].Value = bVals[i];
    s4.Cells[3+i,9].Style.Numberformat.Format = "0%";
}
var bar = s4.Drawings.AddChart("ModuleBar", eChartType.BarClustered) as ExcelBarChart;
if (bar != null) {
    bar.SetPosition(14, 0, 6, 0); bar.SetSize(380, 260);
    bar.Title.Text = "Module Build Completion % — May 2026";
    bar.Title.Font.Bold = true; bar.Title.Font.Size = 12;
    bar.Series.Add(s4.Cells[3,9,3+bNames.Length-1,9], s4.Cells[3,8,3+bNames.Length-1,8]).Header = "Completion %";
    bar.Legend.Remove();
}

s4.View.FreezePanes(3, 1);
s4.Column(1).Width = 42; s4.Column(2).Width = 14; s4.Column(3).Width = 55;
s4.PrinterSettings.Orientation = eOrientation.Landscape;
s4.PrinterSettings.FitToPage = true; s4.PrinterSettings.FitToWidth = 1;
s4.PrinterSettings.PrintArea = s4.Cells[1,1,mLastRow+2,4];

// ═══════════════════════════════════════════════════════════════════════════════
// SHEET 5 — BLOCKER LOG
// ═══════════════════════════════════════════════════════════════════════════════
var s5 = pkg.Workbook.Worksheets.Add("5 - Blocker Log");

string[] h5 = { "ID","Module","Feature","Blocker Description","Waiting On","Raised","Impact","Resolution Path","Status" };
for (int c = 1; c <= h5.Length; c++) { s5.Cells[1,c].Value = h5[c-1]; HdrStyle(s5.Cells[1,c], cHdrBg, cHdrFg); }

var blk = new (string id, string mod, string feat, string desc, string on, string raised, string imp, string res, string st)[] {
  ("BLK-01","Dev-M01","Issue #40 — Pending Qty Display",
   "Config flag exists in preCheckResult but UI column not wired. Pending design decision on whether to show pending qty as a separate column in the line items table.",
   "Sasi (TL-Dev) — design decision","29 Apr 2026","High",
   "Sasi to confirm: separate column Y/N. Once confirmed Abinandan wires in approx 1 hour.","Open"),

  ("BLK-02","Dev-M01","Issue #26 — Sub-Cost Centre level",
   "FSD unclear: Sub-Cost Centre at header level (one per PR) or line level (per item). Currently at line level. If header-level, significant refactor needed to move field to PRHeaderCards.",
   "Sasi (TL-Dev) — design decision","25 Apr 2026","High",
   "Sasi to confirm: header or line. If header: move to PRHeaderCards + remove from table. If line: no change.","Open"),

  ("BLK-03","Admin","React Developer Recruitment",
   "Abinandan is sole Fullstack Dev (ASP.NET Core + React). Phase 1 has 10 modules. Parallel React work is blocked without a second developer. Phase 1 timeline at risk.",
   "CEO — JD approval and posting","03 May 2026 (MOM)","High",
   "Abinandan + Sasi submit JD to CEO by Mon 05 May. CEO posts on recruitment channels.","Action Due 05 May"),

  ("BLK-04","Dev-M01","IIS Production Deploy",
   "Build complete; IST ~90%+ post-fix. But merged.sql + backend + frontend not pushed to IIS (172.16.16.40). IST re-test must happen on production URL.",
   "Abinandan N — execution","01 May 2026","High",
   "1. Stop IIS pool. 2. Run merged.sql on SpinRiseSaranya. 3. dotnet publish. 4. npm run build, copy dist/ to IIS:3000. 5. Start pool. 6. Smoke test.","Pending — 12-13 May"),

  ("BLK-05","Dev-M02","CD-2 Race Condition — CONTNO",
   "CONTNO generation SP uses UPDLOCK+HOLDLOCK but not tested under concurrent load. Two simultaneous Create-PO requests could generate duplicate CONTNO.",
   "Concurrent load test","25 Apr 2026","High",
   "Open 2 Swagger tabs simultaneously, execute Create-PO on both, verify CONTNO values are unique. Must pass before IST begins.","Pending — before IST"),

  ("BLK-06","Dev-M02","VW_rm_SupplierVariety Column Mismatch",
   "GetPendingPRLines and FilterPRLines SPs SELECT from VW_rm_SupplierVariety. Column names assumed but not verified against live JAT DB. Mismatch = SP runtime failure.",
   "Abinandan N — SSMS verification","29 Apr 2026","High",
   "SSMS: JAT DB, Views, VW_rm_SupplierVariety, Script View. Compare column list with SP SELECT list. Fix any that differ.","Pending — 07 May"),

  ("BLK-07","Dev-M02","Lookup Dropdown UX",
   "All 5 lookup fields show code in one Select + name in separate read-only field. FSD requires single combined field showing CODE - Name.",
   "Abinandan N — frontend fix","29 Apr 2026","Med",
   "Change Select options to { value: code, label: code + ' - ' + name }. Remove 5 separate name display fields.","Pending — 06 May"),

  ("BLK-08","Dev-M02b","Stores Arrival Build Not Started",
   "FSD CEO-approved but build has not started. Arrival depends on a PO existing in JAT DB, so M02 PO must be deployed first.",
   "M02 PO IST clearance and deploy","04 May 2026","Med",
   "Start Arrival SP planning from FSD after M02 PO is deployed. Target build start: 14 May 2026.","Planned — 14 May"),

  ("BLK-09","Dev-M03","Sale Order Build — Capacity",
   "FSD CEO-approved but Abinandan cannot start M03 build until M01 + M02 are IST-cleared and deployed. Single Fullstack Dev is the bottleneck for all modules.",
   "M01 + M02 deploy and IST clearance","04 May 2026","Med",
   "M03 build planned Jun 2026. New React Dev hire will allow parallel frontend work.","Planned — Jun 2026"),
};

for (int i = 0; i < blk.Length; i++)
{
    var b = blk[i];
    int row = i + 2;
    var bg = i % 2 == 1 ? cAlt : Color.White;
    s5.Cells[row,1,row,h5.Length].Style.Fill.PatternType = ExcelFillStyle.Solid;
    s5.Cells[row,1,row,h5.Length].Style.Fill.BackgroundColor.SetColor(bg);
    s5.Cells[row,1,row,h5.Length].Style.Font.Name = "Calibri";
    s5.Cells[row,1,row,h5.Length].Style.Font.Size = 11;
    s5.Row(row).Height = 60;

    s5.Cells[row,1].Value = b.id; s5.Cells[row,1].Style.Font.Bold = true;
    s5.Cells[row,1].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    s5.Cells[row,2].Value = b.mod;
    s5.Cells[row,3].Value = b.feat; s5.Cells[row,3].Style.WrapText = true;
    s5.Cells[row,4].Value = b.desc; s5.Cells[row,4].Style.WrapText = true;
    s5.Cells[row,5].Value = b.on;   s5.Cells[row,5].Style.WrapText = true;
    s5.Cells[row,6].Value = b.raised;

    var ic = s5.Cells[row,7];
    ic.Value = b.imp; ic.Style.Font.Bold = true;
    ic.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    ic.Style.Fill.PatternType = ExcelFillStyle.Solid;
    ic.Style.Fill.BackgroundColor.SetColor(b.imp == "High" ? H("#FFC7CE") : cAmberBg);

    s5.Cells[row,8].Value = b.res; s5.Cells[row,8].Style.WrapText = true;

    var sc = s5.Cells[row,9];
    sc.Value = b.st; sc.Style.Font.Bold = true;
    sc.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
    sc.Style.Fill.PatternType = ExcelFillStyle.Solid;
    sc.Style.Fill.BackgroundColor.SetColor(
        b.st == "Open"          ? cRed   :
        b.st.Contains("Action") ? cAmber : H("#E0F7FA"));
    if (b.st == "Open") sc.Style.Font.Color.SetColor(Color.White);
}

Finalize(s5, blk.Length + 1, h5.Length);
s5.Column(3).Width = 30; s5.Column(4).Width = 52;
s5.Column(8).Width = 48; s5.Column(2).Width = 22;
s5.Column(5).Width = 28; s5.Column(9).Width = 20;

// ═══════════════════════════════════════════════════════════════════════════════
// SAVE
// ═══════════════════════════════════════════════════════════════════════════════
pkg.SaveAs(new FileInfo(outPath));
Console.WriteLine($"");
Console.WriteLine($"  Saved  : {outPath}");
Console.WriteLine($"  Sheet 1: Module Tracker    — {mods.Length} modules");
Console.WriteLine($"  Sheet 2: Feature Gap       — {feats.Length} features");
Console.WriteLine($"  Sheet 3: Sprint Plan       — {tasks.Length} tasks | {totalHrs:0.0} hrs total");
Console.WriteLine($"  Sheet 4: Scorecard         — {metrics.Length} metrics + 2 charts");
Console.WriteLine($"  Sheet 5: Blocker Log       — {blk.Length} blockers");
Console.WriteLine($"");
