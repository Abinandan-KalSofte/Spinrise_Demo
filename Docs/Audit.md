SPINRISE ERP — Purchase Requisition Form: Full Visual & UX Audit

  Screen: PR-00001 View Mode | Date Captured: 12-May-2026

  ---
  1. TEXT ANALYSIS

  ---
  F-01 — Grid column headers are ALL CAPS

  Severity: Critical
  Area: Item Lines grid header row
  Root cause: Grid column labels not updated to Blueprint §5.2 standard
  UX impact: CEO-closed decision (06 May 2026): "All-caps reduces readability on web forms." This is a direct regression against a confirmed CEO directive.
  Business impact: Fails demo readiness. CEO will reject on sight.
  Fix: Change all grid headers to Title Case: QTY REQ. → Required Quantity, UOM → Unit of Measure, REQ. DATE → Required Date, APPROX COST → Approximate
  Cost, ITEM CODE → Item Code, etc.
  Priority: P0 — Before any CEO review

  ---
  F-02 — Column headers use abbreviations banned by Blueprint §5.2

  Severity: Critical
  Area: Grid headers
  Root cause: Legacy field names from VB6 carried over verbatim

  ┌─────────────┬──────────────────────────────────────────────────────┐
  │   Current   │                       Correct                        │
  ├─────────────┼──────────────────────────────────────────────────────┤
  │ Qty Req.    │ Required Quantity                                    │
  ├─────────────┼──────────────────────────────────────────────────────┤
  │ Req. Date   │ Required Date                                        │
  ├─────────────┼──────────────────────────────────────────────────────┤
  │ Approx Cost │ Approximate Cost                                     │
  ├─────────────┼──────────────────────────────────────────────────────┤
  │ UOM         │ Unit of Measure                                      │
  ├─────────────┼──────────────────────────────────────────────────────┤
  │ Sub-Cost    │ Sub Total Cost (or rename after domain confirmation) │
  └─────────────┴──────────────────────────────────────────────────────┘

  Fix: All labels must be full descriptive Title Case — no abbreviations, no dots, no hyphens.
  Priority: P0

  ---
  F-03 — "Requested By" shows code only, name missing

  Severity: High
  Area: Form header fields — Requested By
  Root cause: Field value binding returns employee code 445 but fails to resolve the display name. The value shows 445 – with nothing after the dash.
  UX impact: Procurement executive sees a raw code with no name — cannot identify who raised the PR without external lookup.
  Business impact: Audit failure. Approval chain unverifiable from the form.
  Fix: API must return both code and name. Display as 445 – R. Murugan or equivalent. Fallback: show 445 (Name not found) in amber rather than silent blank.
  Priority: P1

  ---
  F-04 — Status label "Open" does not match Blueprint §10 status vocabulary

  Severity: High
  Area: Header band status badge + KPI Approval Status card
  Root cause: Legacy Kalsofte ERP status name "Open" used instead of Blueprint-defined "Requested"
  Blueprint §10 defines: Requested = PR raised, awaiting first approval. Background #E6F1FB, text #185FA5.
  UX impact: IST testers will log a defect. CEO review will flag the vocabulary mismatch.
  Fix: Change Open → Requested in all status displays.
  Priority: P1

  ---
  F-05 — Date format inconsistency across the screen

  Severity: Critical
  Area: Grid "Req. Date" cell vs header "PR Date" field

  ┌──────────────────┬──────────────┬─────────────────────────────────────────────────────┐
  │     Location     │ Format shown │                 Blueprint standard                  │
  ├──────────────────┼──────────────┼─────────────────────────────────────────────────────┤
  │ PR Date field    │ 05-May-2026  │ ✓ DD-MMM-YYYY                                       │
  ├──────────────────┼──────────────┼─────────────────────────────────────────────────────┤
  │ Grid Req. Date   │ 07/05/26     │ ✗ Ambiguous — is this 7 May or 5 July? 2-digit year │
  ├──────────────────┼──────────────┼─────────────────────────────────────────────────────┤
  │ Topbar date chip │ 12-05-2026   │ ✗ Ambiguous — DD-MM or MM-DD?                       │
  └──────────────────┴──────────────┴─────────────────────────────────────────────────────┘

  Fix: Apply DD-MMM-YYYY universally across ALL date displays. "07/05/26" → "07-May-2026". Topbar → "12-May-2026". One format. No exceptions.
  Priority: P0

  ---
  2. NUMERIC + DIGIT ANALYSIS

  ---
  N-01 — Approx Cost column shows 4dp — should be 2dp

  Severity: Critical
  Area: Grid, Approx Cost column — value ₹ 0.0000
  Root cause: Rate precision (4dp) applied to a Value column
  Blueprint §5.4: Value = 2dp (Qty × Rate). Approx Cost is a VALUE, not a Rate.
  Fix: Render Approx Cost as ₹ 0.00. Apply 4dp only to Rate/Unit Price column.
  Priority: P0

  ---
  N-02 — Currency symbol spacing

  Severity: Low
  Area: Grid Approx Cost cell
  Current: ₹ 0.0000 (space between ₹ and number)
  Standard financial display: ₹0.00 (no space) or consistent ₹ 0.00 — pick one and enforce uniformly. Currently inconsistent between grid and KPI card.
  Priority: P3

  ---
  N-03 — KPI "Total Quantity" monospace formatting

  Severity: Low
  Area: KPI strip — Total Quantity card shows NOS: 5.000
  Issue: Colon-separated UOM label and value is unclear at a glance. For multi-UOM display, Blueprint §4.1 specifies: Nos: 241 | Mtr: 42 | Kg: 18. The colon
   format is acceptable but the label NOS should be Nos (Title Case).
  Priority: P3

  ---
  3. TABLE/GRID ANALYSIS

  ---
  G-01 — Massive empty grid whitespace — no empty-state UX

  Severity: High
  Area: Item Lines grid, ~300px of empty space below row 1
  Root cause: Grid has a fixed height; with 1 row, 90% of the container is blank white
  UX impact: Looks broken. New users cannot tell whether data is missing or the form is loading.
  Business impact: CEO demo impression failure.
  Fix: Either: (a) auto-size grid to content with a minimum of 5 visible rows, or (b) show a subtle empty-row hint + Add line (Tab) below the last row, or
  (c) show the "Add Multiple" button as a visible empty-state CTA inside the grid area.
  Priority: P1

  ---
  G-02 — No alternating row shading (zebra striping)

  Severity: Medium
  Area: Item Lines grid
  Blueprint §7.3: Alternate row shading: Background #F0F5FF on even rows
  Impact: With multi-line PRs (40-60 rows per Blueprint use case), lack of zebra striping makes row scanning error-prone — a critical failure for the
  spinning mill store department power users.
  Priority: P1

  ---
  G-03 — "Sub-Cost" column — ambiguous, hyphenated, showing blank

  Severity: High
  Area: Grid column — Sub-Cost
  Root cause: Column label violates Blueprint §5.2 (no hyphens in labels). More critically: the semantic meaning of "Sub-Cost" is undefined.
  Questions before fix: Is this sub-total cost per line? A sub-ledger allocation? A derived field?
  Fix: Get Mariyaiya/Muthuvel domain confirmation. Rename to proper descriptive label. If it's a sub-total: "Line Total". If budget allocation: "Budget
  Allocation".
  Priority: P1 — Domain confirmation first

  ---
  G-04 — "Sample" column uses eye icon incorrectly

  Severity: Medium
  Area: Grid — Sample column, last visible column with 👁 icon
  Root cause: Eye icon (meaning: view/preview) used for what appears to be a boolean Sample field
  UX impact: An eye icon in a grid row conventionally means "view record detail". Using it as a Sample indicator creates interaction confusion.
  Fix: Use a boolean pill/badge (e.g., Sample green badge when true, nothing/grey when false). Remove the eye icon unless it opens a preview.
  Priority: P2

  ---
  G-05 — Grid header alignment inconsistent with data alignment

  Severity: Medium
  Area: Grid headers vs data cells
  Blueprint §5.3: Numeric = right-aligned, Text = left-aligned
  Observed: Qty Req. header appears center-aligned, data value 5.000 appears right-aligned. Approx Cost header center, value right. Headers and data should
  have matching alignment.
  Priority: P2

  ---
  4. ALIGNMENT ANALYSIS

  ---
  A-01 — KPI strip position violates Blueprint §4.1

  Severity: High
  Area: KPI cards — currently at the VERY BOTTOM of the screen
  Blueprint §4.1: KPI strip = compact single-line horizontal strip immediately below the form header or inline with the form. It should be visible without
  scrolling, not below the grid.
  Current position: Below the approval pipeline, at screen bottom — likely requires scrolling on smaller screens.
  Fix: Move the KPI strip to immediately below the form fields row (before the Item Lines grid) or embed it above the grid in a compact horizontal band.
  Priority: P1

  ---
  A-02 — Approval pipeline is below the grid, not integrated

  Severity: Medium
  Area: Approval pipeline steps (Open → L1 Approved → L2 Approved → Final Approved)
  Issue: The pipeline is sandwiched between the grid and the KPI strip. Blueprint §5.1 defines the approval status as a "compact read-only band below header
   — not a full-width multi-node block."
  Current implementation violates both the positioning and the size specification.
  Fix: Collapse the pipeline into a compact horizontal chip row, immediately below the form header band or as part of the header band itself.
  Priority: P2

  ---
  A-03 — "Created by kalsofte PR-00001" badge is floating/unclear

  Severity: Low
  Area: Top right of Requisition Details section
  Issue: "Created by kalsofte PR-00001" uses an inline bold/link style for username and a badge for PR number. The placement is right-justified in the
  section header but feels disconnected.
  Fix: Place audit metadata (Created By, PR Number) in a consistent sub-header row with proper label/value formatting. PR Number badge should use monospace
  font per Blueprint.
  Priority: P3

  ---
  5. LINE/BORDER ANALYSIS

  ---
  B-01 — Approval pipeline connector lines too thin and low-contrast

  Severity: Medium
  Area: Approval pipeline horizontal connectors
  Current: Thin gray lines between step circles — almost invisible on white background
  Fix: Use 2px lines, color the completed segment in #185FA5. Current segment stays gray. Matches SaaS standards for step indicators.
  Priority: P2

  ---
  B-02 — No visual separator between form fields and Item Lines grid

  Severity: Low
  Area: Between "Requisition Details" section and "Item Lines" section
  Issue: The transition from form header to grid is only marked by the "Item Lines – 1 item" label. A subtle divider (border-top: 1px solid #E2E2E2) would
  improve section hierarchy.
  Priority: P3

  ---
  6. COLOR ANALYSIS

  ---
  C-01 — "Days Open: 7" in red is semantically incorrect

  Severity: Medium
  Area: KPI card — Days Open
  Issue: 7 days is displayed in red (#A32D2D — Error color). In a procurement cycle, 7 days may be completely within SLA. Using the error color with no
  configurable threshold creates alarm fatigue.
  Business impact: Procurement executives will misread red as a system error vs. a business metric.
  Fix: Days Open should have a configurable threshold. Default: Green < 5 days, Amber 5–14 days, Red > 14 days. Or use neutral black until threshold is
  confirmed by domain.
  Priority: P2

  ---
  C-02 — "Save" button is green — not in Blueprint color palette

  Severity: Medium
  Area: Toolbar — Save button (green fill)
  Blueprint primary button color is #185FA5 (blue). Using green for Save and blue for New creates an arbitrary color-action mapping. Green is semantically
  "Success" in the Blueprint, not "Save".
  Fix: Save = primary blue (#185FA5). New = primary blue. Differentiate by position/order, not color.
  Priority: P2

  ---
  C-03 — Topbar duplicate company branding

  Severity: Low
  Area: Sidebar header ("Kalpatharu Software Ltd / SpinRise ERP") + Topbar center ("S Kalpatharu Software Ltd")
  Blueprint §3.1: Company name on LEFT of topbar, not centered. Currently: sidebar has full branding, topbar has centered company name with avatar icon.
  This is redundant and deviates from Blueprint position spec.
  Fix: Topbar left: Company logo + "Kalpatharu Software Ltd" (per Blueprint §3.1). Remove center company name. Use the center area for module breadcrumb or
  financial year display.
  Priority: P2

  ---
  7. BUTTON + ACTION ANALYSIS

  ---
  BTN-01 — Delete button directly adjacent to Cancel — critical safety failure

  Severity: Critical
  Area: Toolbar — Cancel [Alt+X] immediately left of Delete [Ctrl+D]
  Root cause: Linear toolbar layout, no safe-action grouping
  UX impact: A procurement clerk can accidentally delete PR-00001 while trying to cancel a modification. Ctrl+D is easily fat-fingered from Ctrl+S (Save).
  Business impact: Irreversible document deletion in a live procurement system.
  Fix: Move Delete to a separated secondary action zone (right side of toolbar, behind an overflow menu, or in a kebab/⋮ menu). Show a confirmation modal
  before deletion. Minimum: add a visible separator gap of 16px between Cancel and Delete.
  Priority: P0 — Safety-critical

  ---
  BTN-02 — Toolbar is visually cluttered with 8 buttons + navigation

  Severity: High
  Area: Full toolbar row
  Count: New, Save, Modify, Cancel, Delete, Print, Find, List = 8 primary buttons + 4 nav arrows + Go-to-PR input = 13 interactive elements in one row
  UX impact: Violates "3±2 primary actions" usability principle. Power users need keyboard shortcuts anyway — the button clutter is for mouse users who
  rarely use all 8.
  Fix (suggested grouping):
  - Primary actions (always visible): New, Save, Print, List
  - Document actions (contextual): Modify, Cancel, Delete (moved to overflow)
  - Navigation: Collapse << < > >> into the List screen — remove from form toolbar
  Priority: P1

  ---
  BTN-03 — "Modify" button is a legacy VB6 pattern

  Severity: High
  Area: Toolbar
  Issue: Explicit Modify → Save → Cancel cycle is a document-locking pattern from 1990s VB6 ERPs. Modern web forms are always editable with a single
  Save/Discard action.
  Business impact: Extra click for every edit operation. Multiplied over 50+ PRs per day across 20 users = measurable productivity loss.
  Fix: Remove "Modify" button. Form opens in view mode with inline editable fields; Save becomes active when any field is changed (dirty state);
  Discard/Cancel reverts. Follow standard React Hook Form pattern.
  Priority: P1 (design decision to confirm with CEO/Sasi)

  ---
  BTN-04 — Navigation arrows << < > >> are legacy ERP anti-pattern

  Severity: Medium
  Area: Toolbar right section
  Issue: Record-by-record navigation is a legacy ERP pattern. Modern approach: use the List screen to find and open records. The << < > >> take up 5
  interactive elements in an already crowded toolbar.
  Fix: Remove navigation arrows. "List [Ctrl+L]" provides the navigation. Keep "Go to PR #" if quick jump is a genuine power-user need, but move it to the
  Find button's modal.
  Priority: P2

  ---
  8. ERP WORKFLOW UX ANALYSIS

  ---
  W-01 — Approval status shown THREE times on one screen

  Severity: Medium
  Area: (1) Header band badge "Open" + (2) Approval pipeline + (3) KPI "Approval Status" card
  Root cause: Three separate components each displaying the same data point
  Fix: Single source of truth: header band badge for current status, approval pipeline for progression, KPI strip for summary — but the badge and pipeline
  should be positioned adjacent, not separated by the entire grid.
  Priority: P2

  ---
  W-02 — Rate blank shows "—" with no pricing action available

  Severity: High
  Area: Grid Rate column — shows "—" (no rate), Approx Cost = ₹ 0.00
  Business impact: PR with zero approximate cost is a procurement red flag. No visual prompt to enter or fetch rate.
  Fix: If rate is unpopulated, show a "Price pending" indicator in amber in the Approx Cost cell. Implement the Blueprint-specified rate selector (Last PO
  Rate / Average Rate / Manual) — currently absent.
  Priority: P1

  ---
  W-03 — "Section (optional)" label has inline qualifier

  Severity: Low
  Area: Requisition Details — Section field label
  Blueprint §5.2: Labels must be clean Title Case with no qualifiers in parentheses.
  Fix: Remove "(optional)" from the label. Optional fields are indicated by absence of  * mandatory marker. "Section" with no asterisk is already clear as
  optional.
  Priority: P3

  ---
  9. COMPONENT ARCHITECTURE REVIEW

  ---
  ARCH-01 — Grid is Ant Design Table, not AG Grid

  Severity: Medium
  Issue: Based on visual structure, the grid is Ant Design Table. Blueprint §7.2 identifies AG Grid as the required component for ERP data-entry grids. Ant
  Design Table lacks: bulk/range editing, Excel-style copy-paste, true keyboard navigation.
  Risk: PR data entry with 40-60 line items (spinning mill standard use case) will be unusable with Ant Design Table.
  Note: CEO decision on AG Grid Community vs Enterprise is still pending — this is a confirmed blocker.

  ---
  ARCH-02 — Keyboard shortcut badges are implementation-hardcoded

  Severity: Low**
  Issue: Shortcut badges (F3, Ctrl+S, Ctrl+D, etc.) appear hardcoded per button. No centralized shortcut registry.
  Risk: If shortcuts change, each button must be updated individually. High maintenance cost at scale (14 modules).
  Fix: Create a centralized SHORTCUTS config object. Shortcut badges read from config, keyboard listeners read from the same config.

  ---
  10. ROLE-BASED REVIEW SUMMARY

  Role: UX Designer
  Top Concern: ALL CAPS headers, delete button safety, KPI strip at bottom, legacy Modify pattern
  ────────────────────────────────────────
  Role: Senior Frontend Engineer
  Top Concern: Ant Design Table vs AG Grid decision needed now; shortcut registry; date format centralization
  ────────────────────────────────────────
  Role: ERP Solution Architect
  Top Concern: Status vocabulary mismatch (Open vs Requested); rate selector not implemented; Section/Department cascading filter absent
  ────────────────────────────────────────
  Role: Technical Lead
  Top Concern: Requested By name resolution broken; Approx Cost decimal precision bug (4dp→2dp); date format inconsistency in data layer
  ────────────────────────────────────────
  Role: Delivery Manager
  Top Concern: 5 P0/P1 issues must close before CEO review — not pilot-ready at current state
  ────────────────────────────────────────
  Role: CEO/Product Owner
  Top Concern: ALL CAPS violates explicit 06 May directive; Delete next to Cancel is a data safety risk; KPI strip buried at bottom
  ────────────────────────────────────────
  Role: Procurement Executive
  Top Concern: Cannot identify who requested (name missing); dates are ambiguous; Rate blank with no action prompt; 7 days red alarm is misleading

  ---
  11. COMPLETE ISSUE REGISTER

  ┌─────────┬─────────────────────────────────────────────────┬──────────┬──────────┐
  │    #    │                      Title                      │ Severity │ Priority │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-01    │ Grid headers ALL CAPS                           │ Critical │ P0       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-02    │ Abbreviations in column headers                 │ Critical │ P0       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-05    │ Date format inconsistency (3 different formats) │ Critical │ P0       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ BTN-01  │ Delete adjacent to Cancel — safety risk         │ Critical │ P0       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ N-01    │ Approx Cost 4dp instead of 2dp                  │ Critical │ P0       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-03    │ Requested By name not resolved                  │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-04    │ Status "Open" not in Blueprint vocabulary       │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ G-01    │ Empty grid whitespace — no empty state          │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ G-03    │ Sub-Cost column undefined/hyphenated            │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ A-01    │ KPI strip buried at bottom                      │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ BTN-02  │ Toolbar has 13 interactive elements             │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ BTN-03  │ Modify button is legacy VB6 pattern             │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ W-02    │ Rate blank — no pricing action                  │ High     │ P1       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ C-02    │ Save button is green (not Blueprint)            │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ C-01    │ Days Open 7 in red — wrong threshold            │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ G-02    │ No zebra striping                               │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ G-04    │ Eye icon misused in Sample column               │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ G-05    │ Header/data alignment mismatch                  │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ A-02    │ Approval pipeline below grid                    │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ B-01    │ Pipeline connector lines too thin               │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ C-03    │ Topbar company name centered not left           │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ BTN-04  │ Navigation arrows legacy pattern                │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ W-01    │ Approval status shown 3 times                   │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ ARCH-01 │ Ant Design Table not AG Grid                    │ Medium   │ P2       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ F-05    │ Section (optional) label qualifier              │ Low      │ P3       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ A-03    │ Created by badge floating                       │ Low      │ P3       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ N-02    │ Currency symbol spacing                         │ Low      │ P3       │
  ├─────────┼─────────────────────────────────────────────────┼──────────┼──────────┤
  │ B-02    │ No divider between sections                     │ Low      │ P3       │
  └─────────┴─────────────────────────────────────────────────┴──────────┴──────────┘

  ---
  12. FINAL SCORES

  ┌───────────────────────┬──────────┬──────────────────────────────────────────────────────────────────────────────────┐
  │       Dimension       │  Score   │                                     Verdict                                      │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ Overall UI Maturity   │ 5.0 / 10 │ Structural foundation is correct; execution has critical gaps                    │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ Enterprise Readiness  │ 4.5 / 10 │ Status vocabulary, label standards, safety patterns not met                      │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ SaaS Competitiveness  │ 4.0 / 10 │ Legacy toolbar pattern, Modify button, nav arrows = VB6-on-web                   │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ UX Score              │ 5.0 / 10 │ Single-screen architecture achieved; interaction quality unfinished              │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ Data-entry Efficiency │ 3.5 / 10 │ Keyboard shortcuts exist but Ant Design Table kills 40-60 line workflows         │
  ├───────────────────────┼──────────┼──────────────────────────────────────────────────────────────────────────────────┤
  │ Procurement Usability │ 4.5 / 10 │ Core flow visible; broken data (Requested By, Rate, dates) block operational use │
  └───────────────────────┴──────────┴──────────────────────────────────────────────────────────────────────────────────┘

  ---
  13. ACTION PLAN

  Quick Wins — This Week (before Friday 16 May)

  1. Fix ALL CAPS → Title Case on ALL grid headers
  2. Fix 07/05/26 → 07-May-2026 in grid Req. Date; 12-05-2026 → 12-May-2026 in topbar
  3. Fix Approx Cost 4dp → 2dp
  4. Move Delete button away from Cancel — add separator or overflow
  5. Fix "Open" → "Requested" status label
  6. Fix Requested By name resolution (check API response)
  7. Change Save button from green to Blueprint #185FA5

  Mid-Term — By 22 May (Phase 2 sprint)

  1. KPI strip — move to below form header, above grid
  2. Remove Modify button — implement dirty-state save pattern
  3. Remove << < > >> navigation arrows
  4. Collapse approval pipeline to compact band in header
  5. Implement Days Open configurable threshold (not hardcoded red at 7)
  6. Add empty-state + "Add line" CTA inside grid
  7. Add zebra striping to grid rows
  8. Rename Sub-Cost (after domain confirmation)
  9. Fix Sample column — remove eye icon, use badge

  Strategic — For Pilot Readiness (by 31 May)

  1. Confirm and implement AG Grid (even Community edition) — the Ant Design Table is a hard ceiling for power users
  2. Implement rate selector (Last PO Rate / Average Rate / Manual + Justification)
  3. Implement Blueprint §7.3 grid standards fully: frozen columns, row-level validation, keyboard Tab navigation
  4. Centralize shortcut registry across all modules
  5. Align topbar layout fully to Blueprint §3.1 (company name left, financial year center)
