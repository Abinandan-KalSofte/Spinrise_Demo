/**
 * SPINRISE M01 Sprint Tracker — Google Apps Script
 * Company  : Kalpatharu Software Ltd
 * Sprint   : Mon 11 May – Sun 31 May 2026
 * Target   : PR Form pilot-ready at JAT Spinning Mill by 31 May 2026
 *
 * HOW TO USE:
 * 1. Go to https://script.google.com → New Project
 * 2. Delete default code and paste this entire script
 * 3. Click Run → createSprintTracker
 * 4. Grant permissions when prompted
 * 5. A new Google Spreadsheet will be created in your Drive
 */

// ============================================================
// CONSTANTS
// ============================================================
var TITLE       = 'Kalpatharu Software Ltd  |  SPINRISE M01 PR Form Sprint  |  Pilot Target: JAT Spinning Mill — 31 May 2026';
var HEADER_BG   = '#1F3864';
var HEADER_FG   = '#FFFFFF';
var GREEN_FILL  = '#B7E1CD';
var AMBER_FILL  = '#FCE8B2';
var RED_FILL    = '#F4CCCC';
var NAV_BG      = '#EAF0FB';
var NAV_FG      = '#1155CC';

// ============================================================
// SEED DATA — SPRINT TASKS
// Format: [TaskID, Phase, Description, Owner, StartDate, DueDate, Priority]
// ============================================================
var TASKS = [
  ['T0',  'Week 1', 'Blueprint CEO approval',                                                      'Sasi → CEO',           new Date('2026-05-11'), new Date('2026-05-11'), 'CRITICAL'],
  ['T1',  'Week 1', 'Fix 2 open M01 PR defects',                                                   'Abinandan',            new Date('2026-05-11'), new Date('2026-05-11'), 'CRITICAL'],
  ['T1a', 'Week 1', 'Defect re-test — confirm 16/16 closed',                                       'Mariyaiya + Muthuvel', new Date('2026-05-11'), new Date('2026-05-11'), 'CRITICAL'],
  ['T2',  'Week 1', 'AI (Claude) review process gate document — submit to CEO',                    'Abinandan',            new Date('2026-05-13'), new Date('2026-05-13'), 'HIGH'],
  ['T3',  'Week 1', 'Login screen redesign — all CEO demo corrections (Hari: CSS)',                'Abinandan + Hari',     new Date('2026-05-11'), new Date('2026-05-12'), 'CRITICAL'],
  ['T4',  'Week 1', 'Single-screen PR Form layout redesign — no vertical scroll (Hari: CSS)',      'Abinandan + Hari',     new Date('2026-05-13'), new Date('2026-05-15'), 'CRITICAL'],
  ['T5',  'Week 2', 'KPI Summary Strip — 5-card layout, Add mode suppression',                    'Abinandan',            new Date('2026-05-18'), new Date('2026-05-19'), 'CRITICAL'],
  ['T6',  'Week 2', 'Field-level corrections — decimal (Qty 3dp, Rate 4dp, Value 2dp), symbol, Sample default, PR Date editable', 'Abinandan', new Date('2026-05-20'), new Date('2026-05-20'), 'CRITICAL'],
  ['T7',  'Week 2', 'Tab sequence + focus-out validation — mandatory fields block tab if empty',   'Abinandan',            new Date('2026-05-20'), new Date('2026-05-20'), 'CRITICAL'],
  ['T8',  'Week 2', 'Item thumbnail — grid line + lookup modal, source IN_ITEM.IMAGE (Hari: component)', 'Abinandan + Hari', new Date('2026-05-21'), new Date('2026-05-21'), 'HIGH'],
  ['T9',  'Week 2', 'Rate selector — 3-option toggle (Last PO Rate / Average Rate / Manual + Justification)', 'Abinandan', new Date('2026-05-21'), new Date('2026-05-22'), 'CRITICAL'],
  ['T10', 'Week 2', 'Add Multiple — 2 modes (multi-select lookup + row-count insert)',             'Abinandan',            new Date('2026-05-22'), new Date('2026-05-22'), 'HIGH'],
  ['T11', 'Week 2', 'Budget Category conditional field + PR Type configurable default',            'Abinandan',            new Date('2026-05-22'), new Date('2026-05-22'), 'MEDIUM'],
  ['T12', 'Week 3', 'PR List Screen — full build, 4 filters, colour-coded badges (Hari: badges)', 'Abinandan + Hari',     new Date('2026-05-23'), new Date('2026-05-25'), 'CRITICAL'],
  ['T13', 'Week 3', 'Printout corrections — QuestPDF (footer, date-time stamp, PR Time, no red label)', 'Abinandan',       new Date('2026-05-26'), new Date('2026-05-26'), 'HIGH'],
  ['T14', 'Week 3', 'CEO full working session — complete PR Form review',                          'CEO + Abinandan',      new Date('2026-05-27'), new Date('2026-05-27'), 'CRITICAL'],
  ['T15', 'Week 3', 'Muthuvel IST review begins',                                                  'Muthuvel',             new Date('2026-05-28'), new Date('2026-05-28'), 'CRITICAL'],
  ['H1',  'Week 1', 'Login screen CSS — CSM/Subam Portal standard',                               'Hari',                 new Date('2026-05-11'), new Date('2026-05-12'), 'CRITICAL'],
  ['H2',  'Week 1', 'PR Form layout CSS — single-screen, no vertical scroll, Blueprint-aligned',  'Hari',                 new Date('2026-05-13'), new Date('2026-05-15'), 'HIGH'],
  ['H3',  'Week 2', 'Item thumbnail image component — grid (~32x32px), modal (~80x80px)',         'Hari',                 new Date('2026-05-21'), new Date('2026-05-21'), 'HIGH'],
  ['H4',  'Week 3', 'PR List Screen badge components — 6 colour-coded React badges',              'Hari',                 new Date('2026-05-23'), new Date('2026-05-23'), 'CRITICAL'],
];

// ============================================================
// SEED DATA — MILESTONES
// ============================================================
var MILESTONES = [
  ['Week 1 Complete — CEO Review Meeting 5 PM',     new Date('2026-05-15')],
  ['All Phase 2 Development Complete',               new Date('2026-05-22')],
  ['PR List Screen starts — Hari badges due',        new Date('2026-05-23')],
  ['PR List Screen complete',                        new Date('2026-05-25')],
  ['Printout corrections complete',                  new Date('2026-05-26')],
  ['CEO Full Review Session',                        new Date('2026-05-27')],
  ['IST Review begins',                              new Date('2026-05-28')],
  ['Defect fixes complete',                          new Date('2026-05-30')],
  ['CEO Final Sign-off + JAT Pilot Deployment',      new Date('2026-05-31')],
];

// ============================================================
// SEED DATA — CEO GATES
// ============================================================
var CEO_GATES = [
  ['G1', 'Blueprint Approval',       new Date('2026-05-11'), 'Blueprint v1.0 — gate for all form development'],
  ['G2', 'Login Screen Review',      new Date('2026-05-13'), 'Task 3 output — login screen on 172.16.16.40:3000'],
  ['G3', 'Daily Working Session',    'Daily (6 PM)',         'Latest build deployed before 6 PM every day'],
  ['G4', 'Week 1 Review Meeting',    new Date('2026-05-15'), 'Full Week 1 status — Friday 5 PM'],
  ['G5', 'CEO Full Form Review',     new Date('2026-05-27'), 'All Phase 2 tasks complete — live review on server'],
  ['G6', 'IST Findings Review',      new Date('2026-05-28'), 'Muthuvel IST output — all findings submitted'],
  ['G7', 'CEO Final Sign-off',       new Date('2026-05-29'), 'Zero critical defects — pilot deployment authorised'],
  ['G8', 'JAT Pilot Deployment',     new Date('2026-05-30'), 'Live at JAT Spinning Mill — user walkthrough'],
  ['G9', 'Pilot Go/No-Go Decision',  new Date('2026-05-31'), 'CEO decision by 6 PM — 31 May 2026'],
];

// ============================================================
// MAIN — RUN THIS FUNCTION
// ============================================================
function createSprintTracker() {
  var ss = SpreadsheetApp.create('SPINRISE M01 Sprint Tracker — May 2026');

  // Rename default sheet, create remaining 4
  var masterSheet = ss.getSheets()[0];
  masterSheet.setName('Sprint Master Tracker');
  var dailySheet  = ss.insertSheet('Daily Progress Log');
  var dashSheet   = ss.insertSheet('Weekly Sprint Dashboard');
  var ceoSheet    = ss.insertSheet('CEO Review Gate Tracker');
  var istSheet    = ss.insertSheet('IST Review Chain');

  // Tab colours
  masterSheet.setTabColor('#1F3864');
  dailySheet.setTabColor('#2E7D32');
  dashSheet.setTabColor('#E65100');
  ceoSheet.setTabColor('#B71C1C');
  istSheet.setTabColor('#4A148C');

  // Build navigation links (needs all sheets to exist first)
  var navLinks = buildNavLinks(ss);

  // Setup each sheet
  setupMasterTracker(ss, masterSheet, navLinks);
  setupDailyLog(ss, dailySheet, navLinks);
  setupDashboard(ss, dashSheet, navLinks);
  setupCEOGateTracker(ss, ceoSheet, navLinks);
  setupISTReviewChain(ss, istSheet, navLinks);

  // Install triggers
  installTriggers(ss);

  SpreadsheetApp.setActiveSpreadsheet(ss);
  SpreadsheetApp.getUi().alert(
    'SPINRISE M01 Sprint Tracker created successfully!\n\n' +
    '5 sheets created:\n' +
    '• Sprint Master Tracker\n' +
    '• Daily Progress Log\n' +
    '• Weekly Sprint Dashboard\n' +
    '• CEO Review Gate Tracker\n' +
    '• IST Review Chain\n\n' +
    'Use the SPINRISE Tools menu to manage your sprint.'
  );
}

// ============================================================
// NAVIGATION ROW BUILDER
// ============================================================
function buildNavLinks(ss) {
  var sheetNames = [
    'Sprint Master Tracker',
    'Daily Progress Log',
    'Weekly Sprint Dashboard',
    'CEO Review Gate Tracker',
    'IST Review Chain'
  ];
  return sheetNames.map(function(name) {
    var gid = ss.getSheetByName(name).getSheetId();
    return {
      name: name,
      url: 'https://docs.google.com/spreadsheets/d/' + ss.getId() + '/edit#gid=' + gid
    };
  });
}

function insertNavRow(sheet, navLinks, headerRow) {
  // navRow is always row 2 (title=1, nav=2, header=headerRow)
  var navRow = 2;
  sheet.setRowHeight(navRow, 24);
  for (var i = 0; i < navLinks.length; i++) {
    var cell = sheet.getRange(navRow, i + 1);
    cell.setFormula('=HYPERLINK("' + navLinks[i].url + '","' + navLinks[i].name + '")');
    cell.setFontColor(NAV_FG).setBackground(NAV_BG).setFontStyle('italic')
        .setFontSize(9).setHorizontalAlignment('center').setFontLine('underline');
  }
  // Fill remaining cells in nav row with same background
  var totalCols = sheet.getMaxColumns();
  if (totalCols > navLinks.length) {
    sheet.getRange(navRow, navLinks.length + 1, 1, totalCols - navLinks.length).setBackground(NAV_BG);
  }
}

// ============================================================
// SHARED HELPERS
// ============================================================
function addTitleRow(sheet, numCols) {
  sheet.getRange(1, 1, 1, numCols).merge()
    .setValue(TITLE)
    .setBackground(HEADER_BG).setFontColor(HEADER_FG)
    .setFontWeight('bold').setFontSize(12)
    .setHorizontalAlignment('center').setVerticalAlignment('middle');
  sheet.setRowHeight(1, 36);
}

function styleHeader(range) {
  range.setBackground(HEADER_BG).setFontColor(HEADER_FG)
    .setFontWeight('bold').setFontSize(10)
    .setHorizontalAlignment('center').setVerticalAlignment('middle');
  range.getSheet().setRowHeight(range.getRow(), 28);
}

// ============================================================
// SHEET 1 — SPRINT MASTER TRACKER
// ============================================================
function setupMasterTracker(ss, sheet, navLinks) {
  var NUM_COLS = 12;

  addTitleRow(sheet, NUM_COLS);
  insertNavRow(sheet, navLinks, 3);

  // Row 3: Headers
  var headers = [
    'Task ID', 'Phase', 'Task Description', 'Owner',
    'Start Date', 'Due Date', 'Priority', 'Status',
    '% Complete', 'Actual Completion', 'Delay (days)', 'Notes'
  ];
  sheet.getRange(3, 1, 1, NUM_COLS).setValues([headers]);
  styleHeader(sheet.getRange(3, 1, 1, NUM_COLS));
  sheet.setFrozenRows(3);

  // Column widths
  [70, 75, 340, 160, 110, 110, 90, 110, 90, 130, 90, 260]
    .forEach(function(w, i) { sheet.setColumnWidth(i + 1, w); });

  // Populate task data from row 4
  var startRow = 4;
  TASKS.forEach(function(t, idx) {
    var r = startRow + idx;
    sheet.getRange(r, 1).setValue(t[0]);
    sheet.getRange(r, 2).setValue(t[1]);
    sheet.getRange(r, 3).setValue(t[2]);
    sheet.getRange(r, 4).setValue(t[3]);
    sheet.getRange(r, 5).setValue(t[4]).setNumberFormat('DD-MMM-YYYY');
    sheet.getRange(r, 6).setValue(t[5]).setNumberFormat('DD-MMM-YYYY');
    sheet.getRange(r, 7).setValue(t[6]);
    sheet.getRange(r, 8).setValue('Not Started');
    sheet.getRange(r, 9).setValue(0);
    sheet.getRange(r, 10).setNumberFormat('DD-MMM-YYYY'); // Actual Completion — user fills
    // Delay formula: Actual Completion - Due Date if overdue
    sheet.getRange(r, 11).setFormula(
      '=IF(J' + r + '="","",IF(J' + r + '>F' + r + ',DAYS(J' + r + ',F' + r + '),0))'
    );
  });

  var totalRows = TASKS.length;
  var lastRow   = startRow + totalRows - 1;

  // Data validations
  var dv = SpreadsheetApp.newDataValidation;

  sheet.getRange(startRow, 7, totalRows, 1)
    .setDataValidation(dv().requireValueInList(['CRITICAL','HIGH','MEDIUM'], true).build());

  sheet.getRange(startRow, 8, totalRows, 1)
    .setDataValidation(dv().requireValueInList(['Not Started','In Progress','Done','Blocked'], true).build());

  sheet.getRange(startRow, 9, totalRows, 1)
    .setDataValidation(dv().requireNumberBetween(0, 100).setHelpText('0 to 100').build());

  // Conditional formatting — whole row
  var fullRange = sheet.getRange(startRow, 1, totalRows, NUM_COLS);

  fullRange.setConditionalFormatRules([
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$H' + startRow + '="Done"').setBackground(GREEN_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$H' + startRow + '="In Progress"').setBackground(AMBER_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$H' + startRow + '="Blocked"').setBackground(RED_FILL).build(),
  ]);

  // Overdue flag on Due Date column only
  sheet.getRange(startRow, 6, totalRows, 1).setConditionalFormatRules([
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=AND(F' + startRow + '<TODAY(),$H' + startRow + '<>"Done")')
      .setBackground('#FF0000').setFontColor('#FFFFFF').build(),
  ]);

  // Row banding for readability
  fullRange.applyRowBanding(SpreadsheetApp.BandingTheme.LIGHT_GREY, false, false);

  // Centre-align ID, Phase, dates, priority, status, %, delay
  [[1,2],[5,3],[9,3]].forEach(function(pair) {
    sheet.getRange(startRow, pair[0], totalRows, pair[1]).setHorizontalAlignment('center');
  });
}

// ============================================================
// SHEET 2 — DAILY PROGRESS LOG
// ============================================================
function setupDailyLog(ss, sheet, navLinks) {
  var NUM_COLS = 9;
  var DATA_ROWS = 500;

  addTitleRow(sheet, NUM_COLS);
  insertNavRow(sheet, navLinks, 3);

  var headers = ['Date','Developer','Task ID','Task Description','Status','% Complete','Blockers','Next Action','Daily Mail Sent'];
  sheet.getRange(3, 1, 1, NUM_COLS).setValues([headers]);
  styleHeader(sheet.getRange(3, 1, 1, NUM_COLS));
  sheet.setFrozenRows(3);

  [110, 120, 80, 270, 120, 90, 220, 220, 120]
    .forEach(function(w, i) { sheet.setColumnWidth(i + 1, w); });

  var dv = SpreadsheetApp.newDataValidation;

  // Date column
  sheet.getRange(4, 1, DATA_ROWS, 1)
    .setDataValidation(dv().requireDate().setHelpText('Select a date').build())
    .setNumberFormat('DD-MMM-YYYY');

  // Developer dropdown
  sheet.getRange(4, 2, DATA_ROWS, 1)
    .setDataValidation(dv().requireValueInList(
      ['Abinandan','Hari','Mariyaiya','Sasi','Palanivel','Muthuvel'], true).build());

  // Task ID dropdown
  var taskIds = TASKS.map(function(t) { return t[0]; });
  sheet.getRange(4, 3, DATA_ROWS, 1)
    .setDataValidation(dv().requireValueInList(taskIds, true).build());

  // Status dropdown
  sheet.getRange(4, 5, DATA_ROWS, 1)
    .setDataValidation(dv().requireValueInList(['Completed','In Progress','Blocked'], true).build());

  // % Complete
  sheet.getRange(4, 6, DATA_ROWS, 1)
    .setDataValidation(dv().requireNumberBetween(0, 100).build());

  // Daily Mail Sent — checkbox column
  sheet.getRange(4, 9, DATA_ROWS, 1).insertCheckboxes();

  // Conditional formatting
  var logRange = sheet.getRange(4, 1, DATA_ROWS, NUM_COLS);
  logRange.setConditionalFormatRules([
    // Blocked row = red
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$E4="Blocked"').setBackground(RED_FILL).build(),
    // Today's entry with mail not sent = orange warning
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=AND($I4=FALSE,$A4=TODAY(),$A4<>"")').setBackground('#FFE0B2').build(),
  ]);

  // Summary row at bottom of data area
  var summaryRow = 4 + DATA_ROWS + 1;
  sheet.getRange(summaryRow, 1).setValue("TODAY'S SUMMARY")
    .setFontWeight('bold').setBackground('#D9EAD3');
  sheet.getRange(summaryRow, 2).setFormula(
    '="✅ "&COUNTIFS(A4:A' + (3 + DATA_ROWS) + ',TODAY(),E4:E' + (3 + DATA_ROWS) + ',"Completed")&' +
    '" Completed  |  🔄 "&COUNTIFS(A4:A' + (3 + DATA_ROWS) + ',TODAY(),E4:E' + (3 + DATA_ROWS) + ',"In Progress")&' +
    '" In Progress  |  ⛔ "&COUNTIFS(A4:A' + (3 + DATA_ROWS) + ',TODAY(),E4:E' + (3 + DATA_ROWS) + ',"Blocked")&" Blocked"'
  ).setFontWeight('bold').setBackground('#D9EAD3');
  sheet.getRange(summaryRow, 1, 1, NUM_COLS).setBackground('#D9EAD3');
}

// ============================================================
// SHEET 3 — WEEKLY SPRINT DASHBOARD
// ============================================================
function setupDashboard(ss, sheet, navLinks) {
  var NUM_COLS = 8;
  var M = "'Sprint Master Tracker'"; // reference to master sheet

  addTitleRow(sheet, NUM_COLS);
  insertNavRow(sheet, navLinks, 3);

  // ── Section 1: Sprint Health KPIs ──────────────────────────
  sheet.getRange(3, 1, 1, NUM_COLS).merge()
    .setValue('SPRINT HEALTH KPIs')
    .setBackground('#CFE2F3').setFontWeight('bold').setFontSize(11)
    .setHorizontalAlignment('center');

  var kpiLabels = ['Total Tasks','Done','In Progress','Blocked','Not Started','% Sprint Complete','Days to 31 May','Overdue Tasks'];
  sheet.getRange(4, 1, 1, 8).setValues([kpiLabels]);
  styleHeader(sheet.getRange(4, 1, 1, 8));

  var kpiFormulas = [
    '=COUNTA(' + M + '!A4:A200)',
    '=COUNTIF(' + M + '!H4:H200,"Done")',
    '=COUNTIF(' + M + '!H4:H200,"In Progress")',
    '=COUNTIF(' + M + '!H4:H200,"Blocked")',
    '=COUNTIF(' + M + '!H4:H200,"Not Started")',
    '=IFERROR(TEXT(B5/A5,"0%"),"0%")',
    '=MAX(0,DATE(2026,5,31)-TODAY())&" days"',
    '=COUNTIFS(' + M + '!F4:F200,"<"&TODAY(),' + M + '!H4:H200,"<>Done")',
  ];
  sheet.getRange(5, 1, 1, 8).setFormulas([kpiFormulas]);
  sheet.getRange(5, 1, 1, 8).setHorizontalAlignment('center').setFontWeight('bold').setFontSize(14);
  sheet.setRowHeight(5, 45);

  // KPI cell colours
  var kpiColors = ['#CFE2F3', GREEN_FILL, AMBER_FILL, RED_FILL, '#F3F3F3', '#D0E4F7', '#D9EAD3', RED_FILL];
  kpiColors.forEach(function(c, i) { sheet.getRange(5, i + 1).setBackground(c); });

  // ── Section 2: Week-by-Week Progress ───────────────────────
  sheet.getRange(7, 1, 1, NUM_COLS).merge()
    .setValue('WEEK-BY-WEEK PROGRESS')
    .setBackground('#CFE2F3').setFontWeight('bold').setFontSize(11).setHorizontalAlignment('center');

  sheet.getRange(8, 1, 1, 5).setValues([['Week','Tasks Planned','Tasks Done','Remaining','On Track']]);
  styleHeader(sheet.getRange(8, 1, 1, 5));

  ['Week 1','Week 2','Week 3'].forEach(function(week, i) {
    var r = 9 + i;
    sheet.getRange(r, 1).setValue(week);
    sheet.getRange(r, 2).setFormula('=COUNTIF(' + M + '!B4:B200,"' + week + '")');
    sheet.getRange(r, 3).setFormula('=COUNTIFS(' + M + '!B4:B200,"' + week + '",' + M + '!H4:H200,"Done")');
    sheet.getRange(r, 4).setFormula('=B' + r + '-C' + r);
    sheet.getRange(r, 5).setFormula(
      '=IF(D' + r + '=0,"✅ Complete",' +
      'IF(COUNTIFS(' + M + '!B4:B200,"' + week + '",' + M + '!H4:H200,"Blocked")>0,' +
      '"⛔ Has Blockers","🔄 In Progress"))'
    );
    sheet.getRange(r, 1, 1, 5).setHorizontalAlignment('center');
  });

  // ── Section 3: Owner Workload ────────────────────────────────
  sheet.getRange(13, 1, 1, NUM_COLS).merge()
    .setValue('OWNER WORKLOAD')
    .setBackground('#CFE2F3').setFontWeight('bold').setFontSize(11).setHorizontalAlignment('center');

  sheet.getRange(14, 1, 1, 6).setValues([['Owner','Assigned','Done','In Progress','Blocked','% Complete']]);
  styleHeader(sheet.getRange(14, 1, 1, 6));

  var owners = ['Abinandan','Hari','Abinandan + Hari','Mariyaiya + Muthuvel','Sasi → CEO','Muthuvel','CEO + Abinandan'];
  owners.forEach(function(owner, i) {
    var r = 15 + i;
    sheet.getRange(r, 1).setValue(owner);
    sheet.getRange(r, 2).setFormula('=COUNTIF(' + M + '!D4:D200,"' + owner + '")');
    sheet.getRange(r, 3).setFormula('=COUNTIFS(' + M + '!D4:D200,"' + owner + '",' + M + '!H4:H200,"Done")');
    sheet.getRange(r, 4).setFormula('=COUNTIFS(' + M + '!D4:D200,"' + owner + '",' + M + '!H4:H200,"In Progress")');
    sheet.getRange(r, 5).setFormula('=COUNTIFS(' + M + '!D4:D200,"' + owner + '",' + M + '!H4:H200,"Blocked")');
    sheet.getRange(r, 6).setFormula('=IFERROR(TEXT(C' + r + '/B' + r + ',"0%"),"0%")');
    sheet.getRange(r, 1, 1, 6).setHorizontalAlignment('center');
  });

  // ── Section 4: Milestone Status ─────────────────────────────
  var mStart = 15 + owners.length + 2;
  sheet.getRange(mStart, 1, 1, NUM_COLS).merge()
    .setValue('MILESTONE GATES')
    .setBackground('#CFE2F3').setFontWeight('bold').setFontSize(11).setHorizontalAlignment('center');

  sheet.getRange(mStart + 1, 1, 1, 4).setValues([['Milestone','Target Date','Status','Days to Gate']]);
  styleHeader(sheet.getRange(mStart + 1, 1, 1, 4));

  MILESTONES.forEach(function(m, i) {
    var r = mStart + 2 + i;
    sheet.getRange(r, 1).setValue(m[0]);
    sheet.getRange(r, 2).setValue(m[1]).setNumberFormat('DD-MMM-YYYY');
    sheet.getRange(r, 3).setFormula('=IF(B' + r + '<TODAY(),"✅ Past","⏳ Upcoming")');
    sheet.getRange(r, 4).setFormula('=MAX(0,DAYS(B' + r + ',TODAY()))');
    sheet.getRange(r, 2, 1, 3).setHorizontalAlignment('center');
  });

  // ── Section 5: Risk Flags ────────────────────────────────────
  var rStart = mStart + 2 + MILESTONES.length + 2;
  sheet.getRange(rStart, 1, 1, NUM_COLS).merge()
    .setValue('⚠️ RISK FLAGS — Blocked or Overdue Tasks')
    .setBackground(RED_FILL).setFontWeight('bold').setFontSize(11).setHorizontalAlignment('center');

  sheet.getRange(rStart + 1, 1, 1, 6).setValues([['Task ID','Owner','Due Date','Days Overdue','Status','Notes']]);
  styleHeader(sheet.getRange(rStart + 1, 1, 1, 6));

  // QUERY to pull blocked or overdue tasks automatically
  sheet.getRange(rStart + 2, 1).setFormula(
    '=IFERROR(QUERY(' + M + '!A4:L200,' +
    '"SELECT A,D,F,K,H,L WHERE H=\'Blocked\' OR (K>0 AND K IS NOT NULL) LABEL A \'Task ID\',D \'Owner\',F \'Due Date\',K \'Delay (days)\',H \'Status\',L \'Notes\'",0),' +
    '"✅ No risks — all tasks on track")'
  );

  // Column widths for dashboard
  [280, 130, 130, 130, 180, 130, 130, 130]
    .forEach(function(w, i) { sheet.setColumnWidth(i + 1, w); });

  // Protect dashboard from manual edits
  sheet.protect()
    .setDescription('Auto-calculated dashboard — do not edit manually')
    .setWarningOnly(true);
}

// ============================================================
// SHEET 4 — CEO REVIEW GATE TRACKER
// ============================================================
function setupCEOGateTracker(ss, sheet, navLinks) {
  var NUM_COLS = 7;

  addTitleRow(sheet, NUM_COLS);
  insertNavRow(sheet, navLinks, 3);

  var headers = ['Gate #','Review Type','Date','Scope','Decision / Outcome','Next Action','Status'];
  sheet.getRange(3, 1, 1, NUM_COLS).setValues([headers]);
  styleHeader(sheet.getRange(3, 1, 1, NUM_COLS));
  sheet.setFrozenRows(3);

  [70, 190, 120, 270, 270, 220, 160]
    .forEach(function(w, i) { sheet.setColumnWidth(i + 1, w); });

  CEO_GATES.forEach(function(g, i) {
    var r = 4 + i;
    sheet.getRange(r, 1).setValue(g[0]).setHorizontalAlignment('center');
    sheet.getRange(r, 2).setValue(g[1]);
    if (g[2] instanceof Date) {
      sheet.getRange(r, 3).setValue(g[2]).setNumberFormat('DD-MMM-YYYY').setHorizontalAlignment('center');
    } else {
      sheet.getRange(r, 3).setValue(g[2]).setHorizontalAlignment('center');
    }
    sheet.getRange(r, 4).setValue(g[3]);
    // Cols 5, 6 — user fills Decision/Outcome and Next Action
    sheet.getRange(r, 7).setValue('Pending').setHorizontalAlignment('center');
  });

  // Status dropdown
  sheet.getRange(4, 7, CEO_GATES.length, 1)
    .setDataValidation(SpreadsheetApp.newDataValidation()
      .requireValueInList(['Pending','Done','Corrections Required'], true).build());

  // Conditional formatting
  var dataRange = sheet.getRange(4, 1, CEO_GATES.length, NUM_COLS);
  dataRange.setConditionalFormatRules([
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$G4="Done"').setBackground(GREEN_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$G4="Corrections Required"').setBackground(AMBER_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$G4="Pending"').setBackground('#F3F3F3').build(),
  ]);

  dataRange.applyRowBanding(SpreadsheetApp.BandingTheme.LIGHT_GREY, false, false);
}

// ============================================================
// SHEET 5 — IST REVIEW CHAIN
// ============================================================
function setupISTReviewChain(ss, sheet, navLinks) {
  var NUM_COLS = 13;

  addTitleRow(sheet, NUM_COLS);
  insertNavRow(sheet, navLinks, 4);

  // Row 3: IST chain label
  sheet.getRange(3, 1, 1, NUM_COLS).merge()
    .setValue('M01 IST Review Chain:  Muthuvel (IST)  →  Palanivel (TL-IST)  →  Saravanan (PM)  →  CEO')
    .setBackground('#D9D2E9').setFontWeight('bold').setHorizontalAlignment('center').setFontSize(11);
  sheet.setRowHeight(3, 28);

  // Row 4: Headers
  var headers = [
    'Task', 'Form / Module', 'IST Reviewer', 'IST Start', 'IST Complete',
    'TL-IST (Palanivel)', 'TL-IST Complete', 'PM Sign-off', 'CEO Approval',
    'Status', 'Findings Count', 'Critical Findings', 'All Closed'
  ];
  sheet.getRange(4, 1, 1, NUM_COLS).setValues([headers]);
  styleHeader(sheet.getRange(4, 1, 1, NUM_COLS));
  sheet.setFrozenRows(4);

  [80, 200, 120, 110, 110, 150, 120, 110, 110, 160, 110, 130, 100]
    .forEach(function(w, i) { sheet.setColumnWidth(i + 1, w); });

  // Pre-populate M01 IST entry
  sheet.getRange(5, 1).setValue('T14');
  sheet.getRange(5, 2).setValue('M01 PR Form — Full Build (All Tasks T0–T13)');
  sheet.getRange(5, 3).setValue('Muthuvel');
  // Cols 4–9: date columns — user fills
  [4, 5, 7, 8, 9].forEach(function(col) {
    sheet.getRange(5, col, 50, 1).setNumberFormat('DD-MMM-YYYY');
  });
  sheet.getRange(5, 10).setValue('Pending').setHorizontalAlignment('center');
  sheet.getRange(5, 11).setValue(0).setHorizontalAlignment('center');
  sheet.getRange(5, 12).setValue(0).setHorizontalAlignment('center');
  sheet.getRange(5, 13).setValue('No').setHorizontalAlignment('center');

  // Status dropdown
  sheet.getRange(5, 10, 50, 1)
    .setDataValidation(SpreadsheetApp.newDataValidation()
      .requireValueInList([
        'Pending','IST In Progress','IST Complete',
        'TL-IST In Progress','TL-IST Complete',
        'PM Signed Off','CEO Approved'
      ], true).build());

  // All Closed dropdown
  sheet.getRange(5, 13, 50, 1)
    .setDataValidation(SpreadsheetApp.newDataValidation()
      .requireValueInList(['Yes','No'], true).build());

  // Conditional formatting
  sheet.getRange(5, 1, 50, NUM_COLS).setConditionalFormatRules([
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$J5="CEO Approved"').setBackground(GREEN_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$J5="IST In Progress"').setBackground(AMBER_FILL).build(),
    SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=$M5="No"').setBackground('#FFF3E0').build(),
  ]);
}

// ============================================================
// TRIGGERS
// ============================================================
function installTriggers(ss) {
  // Remove any existing project triggers to avoid duplicates
  ScriptApp.getProjectTriggers().forEach(function(t) { ScriptApp.deleteTrigger(t); });

  // onOpen — installs the SPINRISE Tools menu
  ScriptApp.newTrigger('onOpen').forSpreadsheet(ss).onOpen().create();

  // onEdit — auto-sorts Daily Progress Log by date descending
  ScriptApp.newTrigger('onEditHandler').forSpreadsheet(ss).onEdit().create();
}

// ============================================================
// AUTO TRIGGERS
// ============================================================
function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu('SPINRISE Tools')
    .addItem('Mark Today\'s Tasks Done',       'markTodayTasksDone')
    .addSeparator()
    .addItem('Generate Daily Status Summary',  'generateDailySummary')
    .addSeparator()
    .addItem('Check Overdue Tasks',            'checkOverdueTasks')
    .addSeparator()
    .addItem('Reset Daily Mail Flags',         'resetDailyMailFlags')
    .addToUi();
}

function onEditHandler(e) {
  // Auto-sort Daily Progress Log by Date descending when edited
  try {
    var sheet = e.source.getActiveSheet();
    if (sheet.getName() !== 'Daily Progress Log') return;
    if (e.range.getRow() < 4) return;
    var lastRow = sheet.getLastRow();
    if (lastRow < 5) return;
    sheet.getRange(4, 1, lastRow - 3, 9)
      .sort({ column: 1, ascending: false });
  } catch (err) {
    // Silent fail — do not interrupt user
  }
}

// ============================================================
// SPINRISE TOOLS — MENU FUNCTIONS
// ============================================================

/**
 * Prompts user for task IDs completed today,
 * marks them Done in Sprint Master Tracker and sets Actual Completion to today.
 */
function markTodayTasksDone() {
  var ss   = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheetByName('Sprint Master Tracker');
  var ui   = SpreadsheetApp.getUi();

  var response = ui.prompt(
    '✅ Mark Today\'s Tasks Done',
    'Enter Task IDs completed today (comma-separated):\nExample: T3, H1, T4',
    ui.ButtonSet.OK_CANCEL
  );
  if (response.getSelectedButton() !== ui.Button.OK) return;

  var input   = response.getResponseText().split(',').map(function(s) { return s.trim().toUpperCase(); });
  var data    = sheet.getRange(4, 1, 100, 12).getValues();
  var today   = new Date();
  var updated = [];

  data.forEach(function(row, idx) {
    if (!row[0]) return;
    if (input.indexOf(row[0].toString().toUpperCase()) !== -1) {
      var r = 4 + idx;
      sheet.getRange(r, 8).setValue('Done');
      sheet.getRange(r, 9).setValue(100);
      sheet.getRange(r, 10).setValue(today).setNumberFormat('DD-MMM-YYYY');
      updated.push(row[0]);
    }
  });

  ui.alert(updated.length > 0
    ? '✅ Marked as Done:\n' + updated.join(', ')
    : '⚠️ No matching Task IDs found. Check spelling and try again.'
  );
}

/**
 * Reads today's entries from Daily Progress Log
 * and formats them as a CEO daily email summary.
 */
function generateDailySummary() {
  var ss    = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheetByName('Daily Progress Log');
  var data  = sheet.getRange(4, 1, 500, 9).getValues();
  var today = new Date(); today.setHours(0,0,0,0);

  var todayRows = data.filter(function(row) {
    if (!row[0]) return false;
    var d = new Date(row[0]); d.setHours(0,0,0,0);
    return d.getTime() === today.getTime();
  });

  if (todayRows.length === 0) {
    SpreadsheetApp.getUi().alert('No entries found for today.\nAdd entries in the Daily Progress Log first.');
    return;
  }

  var dateStr = Utilities.formatDate(today, Session.getScriptTimeZone(), 'dd MMM yyyy');
  var lines   = ['Daily Work Status — Abinandan — ' + dateStr, '', '# | Task | Status | Next Action', '─'.repeat(60)];

  todayRows.forEach(function(row, i) {
    lines.push((i + 1) + ' | ' + (row[2] || '') + ' — ' + (row[3] || '') + ' | ' + (row[4] || '') + ' | ' + (row[7] || ''));
  });

  SpreadsheetApp.getUi().alert('📋 CEO Daily Email — Copy Below:\n\n' + lines.join('\n'));
}

/**
 * Scans Sprint Master Tracker for tasks that are
 * overdue (due date past + not Done) or Blocked.
 */
function checkOverdueTasks() {
  var ss    = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheetByName('Sprint Master Tracker');
  var data  = sheet.getRange(4, 1, 100, 12).getValues();
  var today = new Date(); today.setHours(0,0,0,0);
  var flags = [];

  data.forEach(function(row) {
    if (!row[0] || !row[5]) return;
    var due    = new Date(row[5]); due.setHours(0,0,0,0);
    var status = row[7];
    var isOverdue = due < today && status !== 'Done';
    var isBlocked = status === 'Blocked';
    if (isOverdue || isBlocked) {
      var delay = Math.max(0, Math.round((today - due) / 86400000));
      flags.push(row[0] + ' | ' + row[3] + ' | Due: ' +
        Utilities.formatDate(due, Session.getScriptTimeZone(), 'dd-MMM') +
        ' | ' + delay + ' days overdue | Status: ' + status);
    }
  });

  SpreadsheetApp.getUi().alert(flags.length === 0
    ? '✅ No overdue or blocked tasks. Sprint is on track!'
    : '⚠️ OVERDUE / BLOCKED TASKS (' + flags.length + '):\n\n' + flags.join('\n')
  );
}

/**
 * Resets all Daily Mail Sent checkboxes to unchecked
 * for a fresh new day.
 */
function resetDailyMailFlags() {
  var ui = SpreadsheetApp.getUi();
  var confirm = ui.alert(
    'Reset Daily Mail Flags',
    'This will uncheck all Daily Mail Sent boxes. Continue?',
    ui.ButtonSet.YES_NO
  );
  if (confirm !== ui.Button.YES) return;
  SpreadsheetApp.getActiveSpreadsheet()
    .getSheetByName('Daily Progress Log')
    .getRange(4, 9, 500, 1).uncheck();
  ui.alert('✅ All Daily Mail Sent flags have been reset for today.');
}
