M02 PO — FIX EXECUTION PLANNER

  Master Execution Plan

  TIMELINE (parallel tracks, urgent same-day delivery)
  ═══════════════════════════════════════════════════════════════════════
   09:00 ─ START
            ├── Track A (Backend): Run A1 → A2 sequentially
            └── Track B (Frontend): Run B1 → B2 → B3 sequentially

   A1 (1.5h): Transaction scope + delete guard + DTO expansion
   A2 (1h):   Service validations + UpdateAsync skeleton

   B1 (2h):   Tab restructure + Payment Details tab + missing header fields
   B2 (2h):   Line items grid: ArrivalType, Rate Unit, BBFlag, With-Sample
   B3 (1h):   Delivery schedule + PR picker + frontend validation pass

   C1 (1h):   New lookup endpoints (Rate Unit, Weighment, Broker, Employee)
               → Start after A1 DTOs complete; run parallel to B1

   MERGE: After A+B+C complete → integration test → done
  ═══════════════════════════════════════════════════════════════════════

  UX Design Decisions (apply in ALL prompts)

  - Code + Name = one field. Single AutoComplete showing CODE – NAME; selected value stored as code only. Pattern already exists for Supplier and Area.
  Extend to Agent/Broker, Auth Signatory.
  - Tabs use Ant Design <Tabs> with items prop. Three tabs: Order Details / Payment & Terms / Financial & Tax.
  - Conditional fields render via {flag && <Col>…</Col>} — no hidden inputs.
  - GST badge shown inline after supplier resolves: green = CGST+SGST, blue = IGST, grey = No GST.
  - Mandatory marker on every required field label: <span style={{color:'#ff4d4f'}}>*</span>.

  ---
  PROMPT A1 — Backend: Transaction Scope + Delete Guard + DTO Expansion

  File targets:
  - Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs
  - Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs
  - Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/PurchaseOrderRepository.cs

  ---
  You are a senior .NET 8 backend developer on the SPINRISE ERP project.

  CONTEXT:
  - Stack: ASP.NET Core 8, Dapper, SQL Server, stored procedures only (no EF).
  - UnitOfWork pattern via IJATUnitOfWork (BeginAsync, CommitAsync, RollbackAsync, Connection, Transaction).
  - All DB writes go through parameterised stored procedures — never raw SQL strings.
  - File: Spinrise.Application/Areas/Purchase/PurchaseOrder/DTOs/PODtos.cs
  - File: Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs
  - File: Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/PurchaseOrderRepository.cs

  TASK 1 — Expand DTOs (add missing fields from FSD v8):

  In CreatePODto, add these properties after LineNo:
    public string?   AgentCode       { get; set; }          // txtfields(2) — agent/broker
    public string?   CountryCode     { get; set; }          // txtfields(5)
    public string?   ImInd           { get; set; }          // I/L/U — import/local/other
    public string?   MillRefNo       { get; set; }          // txtfields(27)
    public string?   RateUnit        { get; set; }          // Combo5 — rm_rateunit
    public string?   ArrivalType     { get; set; }          // P=PackWise / K=KGSWise
    public string?   FinalWeighment  { get; set; }          // M=Mill / S=Scale
    public string?   BillingAddress  { get; set; }          // rm_billadd lookup
    public string?   DeliveryAddrCode{ get; set; }          // delivery lookup
    public string?   ContactPerson   { get; set; }          // contperson
    public string?   Terms1          { get; set; }          // max 30 chars
    public int?      Terms1Days      { get; set; }
    public string?   Terms2          { get; set; }
    public int?      Terms2Days      { get; set; }
    public int?      CreditDays      { get; set; }
    public decimal?  InterestPer     { get; set; }
    public string?   DeliveryTerms   { get; set; }          // max 250 chars
    public string?   Remarks         { get; set; }          // nvarchar(255)
    public string?   CommonTaxCode   { get; set; }          // when taxChoice=COMMON
    public string?   PerBaleTruck    { get; set; }          // Combo12: T/B/blank
    // Cotton quality params (all optional)
    public string?   Grade           { get; set; }
    public string?   Staple          { get; set; }
    public decimal?  Mic             { get; set; }
    public decimal?  Strength        { get; set; }
    public decimal?  Moisture        { get; set; }
    public decimal?  Trash           { get; set; }

  Change these existing fields from optional to REQUIRED with [Required]:
    DlyType, Acceptance, Transport, AreaCode, CurrCode, PayMode

  In PRLineDto, add:
    public decimal BalanceKgs { get; set; }   // ISNULL(qtyindKG,0) - ISNULL(qtyordKG,0)

  In POLineResponseDto, add:
    public string? AgentCode    { get; set; }
    public string? ArrivalType  { get; set; }
    public decimal? Mic         { get; set; }
    public decimal? Strength    { get; set; }
    public decimal? Moisture    { get; set; }
    public decimal? Trash       { get; set; }
    public string?  Grade       { get; set; }
    public string?  Staple      { get; set; }

  TASK 2 — Fix transaction scope in PurchaseOrderService.CreateAsync:

  The current code calls InsertLineAsync (which opens its own transaction and commits per line),
  then InsertDiscountRateAsync, InsertDeliveryScheduleAsync, InsertAuditLogAsync, InsertSlotNoAsync
  all as separate awaits. This is WRONG — any failure leaves partial data.

  REWRITE CreateAsync to:
  1. Call _repo.GenerateNumberAsync() FIRST (before transaction opens).
  2. Open ONE repository-level transaction via _repo.BeginTransactionAsync().
  3. Inside the transaction call:
     a. _repo.InsertAllLinesAsync(contNo, dto, userId)   — inserts ALL lines in one SP call
     b. _repo.InsertDiscountRatesAsync(contNo, dto)
     c. _repo.InsertDeliverySchedulesAsync(contNo, dto)
     d. _repo.InsertAuditLogAsync(contNo, dto.ContDt, dto.DivCode, "ADD", userId)
     e. _repo.UpdatePRBalancesAsync(contNo, dto)          — UPDLOCK on Rm_PRL per FSD CD-3
  4. _repo.CommitAsync()
  5. AFTER commit: _repo.InsertSlotNoAsync() — lot numbers are post-commit per FSD §8.1 Step 8
  6. On ANY exception: _repo.RollbackAsync(); rethrow.

  Add to IPurchaseOrderRepository interface:
    Task BeginTransactionAsync();
    Task CommitAsync();
    Task RollbackAsync();
    Task InsertAllLinesAsync(decimal contNo, CreatePODto dto, string userId);
    Task InsertDiscountRatesAsync(decimal contNo, CreatePODto dto);
    Task InsertDeliverySchedulesAsync(decimal contNo, CreatePODto dto);
    Task UpdatePRBalancesAsync(decimal contNo, CreatePODto dto);

  Implement each in PurchaseOrderRepository using _uow.BeginAsync(startTransaction:true)
  on the first method and reuse _uow.Transaction for subsequent calls.

  TASK 3 — Fix DeleteAsync in PurchaseOrderService:

  Add FIRST_APPFLG=Y check as Step 0 (FSD §5.10):
    var approval = await _repo.GetApprovalStatusAsync(dto.ContNo, dto.ContDt, dto.DivCode);
    if (approval?.FirstAppFlg == "Y")
        return (false, "PO cannot be deleted after approval has commenced.");
    // existing arrival check follows in the SP

  Also: pass deleteReasonCode to InsertAuditLogAsync explicitly so it is written to
  RM_Trans_Log.DelReason (FSD IST-8 CONFIRMED).

  TASK 4 — Add service validations in CreateAsync (after pre-checks, before DB):

  Add these checks in order:
    // HV-5: Area mandatory
    if (string.IsNullOrWhiteSpace(dto.AreaCode))
        return (false, "Please enter the Area Name.", null, warnings);
    // HV-6: Currency mandatory
    if (string.IsNullOrWhiteSpace(dto.CurrCode))
        return (false, "Please enter the Billing Currency.", null, warnings);
    // HV-7: Delivery Type mandatory
    if (string.IsNullOrWhiteSpace(dto.DlyType))
        return (false, "Please enter the Delivery Type.", null, warnings);
    // HV-8: Auth Signatory mandatory
    if (string.IsNullOrWhiteSpace(dto.Acceptance))
        return (false, "Please enter the Accepted Person.", null, warnings);
    // HV-9: Transport mandatory
    if (string.IsNullOrWhiteSpace(dto.Transport))
        return (false, "Please enter the Mode of Transport.", null, warnings);
    // HV-12/13: Lot No when required (check param)
    if (param?.RequireSupplierLotNo == true)
    {
        if (dto.LotFrom == 0)
            return (false, "Please enter Supplier From Lot No.", null, warnings);
        if (dto.LotTo == 0)
            return (false, "Please enter the Supplier To Lot No.", null, warnings);
        if (dto.LotFrom > dto.LotTo)
            return (false, "Supplier From Lot No. should not be greater than To Lot No.", null, warnings);
    }
    // LV-3: Rate > 0 per line
    foreach (var line in dto.Lines)
        if (line.CandyRate <= 0)
            return (false, $"Please Enter the Rate for variety {line.VarCode}.", null, warnings);
    // LV-4/5: Qty based on ArrivalType
    foreach (var line in dto.Lines)
    {
        if (dto.ArrivalType == "P" && line.OrdQty <= 0 && !string.IsNullOrEmpty(line.VarCode))
            return (false, $"Please enter the Order Quantity for variety {line.VarCode}.", null, warnings);
        if (dto.ArrivalType == "K" && line.OrdKgs <= 0 && !string.IsNullOrEmpty(line.VarCode))
            return (false, $"Please enter the order Kgs for variety {line.VarCode}.", null, warnings);
    }
    // E55: ArrivalType vs RateUnit consistency
    if (!string.IsNullOrEmpty(dto.RateUnit) && !string.IsNullOrEmpty(dto.ArrivalType))
    {
        bool isCandyUnit = dto.RateUnit.Contains("CANDY", StringComparison.OrdinalIgnoreCase);
        bool isKgsUnit   = dto.RateUnit.Contains("KGS",   StringComparison.OrdinalIgnoreCase);
        if (isCandyUnit && dto.ArrivalType == "K")
            return (false, "Rate Unit (Candy) requires Arrival Type Pack-wise. Please correct.", null, warnings);
        if (isKgsUnit && dto.ArrivalType == "P")
            return (false, "Rate Unit (KGS) requires Arrival Type KGS-wise. Please correct.", null, warnings);
    }

  TASK 5 — UpdateAsync skeleton:

  Implement UpdateAsync with the same validation path as CreateAsync plus:
    1. Re-check FIRST_APPFLG — if Y, block entirely.
    2. Delete existing RM_CONT lines, RM_DELSCHED, RM_ContDiscntRate for this contNo/contDt/divCode.
    3. Re-insert with same flow as Create (no new contNo — reuse existing).
    4. Write audit log mode = "MOD".
    5. For the season field: in Modify mode use dto.Season as-is (comes from txtfields(25) path).
  Do NOT call _repo.GenerateNumberAsync() in UpdateAsync — the contNo is passed in.
  Return (true, "Record(s) Modified.", warnings) on success.

  Add to IPurchaseOrderRepository:
    Task DeleteLinesForUpdateAsync(decimal contNo, DateTime contDt, string divCode);

  RULES:
  - No raw SQL strings. All queries via stored procedure names from StoredProcedures static class.
  - Use async/await throughout. No .Result or .Wait().
  - No new public methods unless interface is updated first.
  - Do not modify unrelated files.

  ---
  PROMPT A2 — Backend: New Lookup Endpoints

  File targets:
  - Development/Backend/Spinrise.Application/Areas/Common/Lookup/Interfaces/ILookupRepository.cs
  - Development/Backend/Spinrise.Infrastructure/Areas/Common/Lookup/LookupRepository.cs
  - Any existing Lookup controller

  ---
  You are a senior .NET 8 backend developer on the SPINRISE ERP project.

  CONTEXT:
  - Stack: ASP.NET Core 8, Dapper, SQL Server stored procedures.
  - Pattern: follow existing LookupRepository + ILookupRepository pattern exactly.
  - Read ILookupRepository.cs and LookupRepository.cs first to understand the pattern.

  TASK — Add 5 missing lookup endpoints needed by the PO form:

  1. Rate Unit lookup (rm_rateunit)
     Interface method:  Task<IEnumerable<RateUnitLookupDto>> GetRateUnitsAsync();
     DTO:  public class RateUnitLookupDto { public string UnitName {get;set;} public decimal Value {get;set;} }
     Note: Value is the divisor for rateKg = ROUND(candyRate / Value, 5)

  2. Weighment lookup (rm_WEIGHNMENT)
     Interface method:  Task<IEnumerable<WeighmentLookupDto>> GetWeighmentsAsync();
     DTO:  public class WeighmentLookupDto { public string WCode {get;set;} public string WName {get;set;} }

  3. Agent/Broker lookup (fa_slmas filtered by ptypebroker)
     Interface method:  Task<IEnumerable<AgentLookupDto>> SearchAgentsAsync(string term);
     DTO:  public class AgentLookupDto { public string AgentCode {get;set;} public string AgentName {get;set;} }
     Note: same pattern as existing searchSuppliers but with different party type filter

  4. Employee/Signatory lookup (for Authorised Signatory field)
     Interface method:  Task<IEnumerable<EmployeeLookupDto>> SearchEmployeesAsync(string term);
     DTO:  public class EmployeeLookupDto { public string EmpCode {get;set;} public string EmpName {get;set;} }

  5. Active GST Tax Codes (ig_tax where active = true)
     Interface method:  Task<IEnumerable<TaxCodeLookupDto>> GetActiveTaxCodesAsync();
     DTO:  public class TaxCodeLookupDto { public string TaxCode {get;set;} public string TaxName {get;set;} public decimal TaxPer {get;set;} }

  For each:
  - Add interface method to ILookupRepository
  - Implement in LookupRepository using _uow pattern + stored procedure name constant
  - Add GET endpoint to the existing Lookup controller
  - Route pattern: /api/v1/lookups/rate-units, /api/v1/lookups/weighments,
    /api/v1/lookups/agents?term=, /api/v1/lookups/employees?term=,
    /api/v1/lookups/tax-codes

  Add SP name constants to the StoredProcedures static class following the existing pattern.

  RULES:
  - No raw SQL. Stored procedure calls only.
  - Follow existing pattern exactly — no new base classes, no new abstractions.
  - Each DTO in Application/Areas/Common/Lookup/DTOs/ folder.
  - Authorize all endpoints with [Authorize] matching existing controller.

  ---
  PROMPT B1 — Frontend: Tab Restructure + Payment Details + Missing Header Fields

  File targets:
  - Development/spinrise-web/src/features/purchase-order/components/po-form/POHeaderForm.tsx
  - Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts
  - Development/spinrise-web/src/features/purchase-order/types.ts

  ---
  You are a senior React/TypeScript frontend developer on the SPINRISE ERP project.

  CONTEXT:
  - Stack: React 18, TypeScript strict, Ant Design 5, Zustand, React Router v7.
  - No `any` types. No direct AntD imports bypassing the existing pattern.
  - Pattern: AutoComplete for code+name fields (single field showing "CODE – NAME").
    This pattern is already implemented for Supplier and Area — replicate exactly for new code+name fields.
  - File to rewrite: src/features/purchase-order/components/po-form/POHeaderForm.tsx
  - File to update: src/features/purchase-order/hooks/usePurchaseOrderForm.ts
  - File to update: src/features/purchase-order/types.ts

  TASK 1 — Expand POHeaderFormValues interface in usePurchaseOrderForm.ts:

  Add these fields to POHeaderFormValues:
    // Header additions
    agentCode:       string
    countryCode:     string
    imInd:           string          // 'I' | 'L' | 'U'
    millRefNo:       string
    rateUnit:        string          // from rm_rateunit
    arrivalType:     string          // 'P' | 'K'
    finalWeighment:  string          // 'M' | 'S'
    // Payment Details (Tab 1)
    billingAddress:  string
    deliveryAddrCode:string
    contactPerson:   string
    terms1:          string
    terms1Days:      number | null
    terms2:          string
    terms2Days:      number | null
    creditDays:      number | null
    interestPer:     number | null
    deliveryTerms:   string
    remarks:         string
    // Tax Details additions (Tab 2)
    commonTaxCode:   string          // when taxChoice === 'COMMON'
    perBaleTruck:    string          // 'T' | 'B' | ''
    // Quality parameters
    grade:           string
    staple:          string
    mic:             number | null
    strength:        number | null
    moisture:        number | null
    trash:           number | null

  Also add to POLineFormItem:
    millSampleNo: string             // Col 0 — With-Sample mode
    suppSampleNo: string             // Col 7 — PTY_CONTNO, read-only

  TASK 2 — Rewrite POHeaderForm.tsx completely:

  Structure:
    <Tabs> with three items:
      Tab 0: key="order"    label="Order Details"
      Tab 1: key="payment"  label="Payment & Terms"    <-- red dot badge if any mandatory empty
      Tab 2: key="financial" label="Financial & Tax"

  --- TAB 0: Order Details ---

  Section "Basic Information" (Row, gutter=[16,0]):
    Col sm=5:  PO Date (DatePicker, required, format DD-MMM-YYYY)
    Col sm=7:  Supplier (AutoComplete, required, same pattern as existing)
               After supplier resolves: show GST badge inline
               Badge: CGST+SGST = green tag "Intra-State GST"
                      IGST only  = blue tag "Inter-State GST"
                      Foreign    = grey tag "No GST"
    Col sm=4:  Area (AutoComplete, same pattern as existing)
               After area resolves: show "Station: X | State: Y" grey text below
    Col sm=3:  Currency (Select from currOpts, required)
    Col sm={3}: Payment Mode (Select from pmOpts, required)
    Col sm={2}: Import/Local/Other (Radio.Group)
                <Radio value="L">Local</Radio>
                <Radio value="I">Import</Radio>
                <Radio value="U">Other</Radio>

  Section "Order Configuration" (Row):
    Col sm=4:  Rate Unit (Select, required, options from rateUnits prop)
               onChange: update arrivalType auto-default (Candy→P, KGS→K)
    Col sm=4:  Arrival Type (Select, required)
               Options: [{ value:'P', label:'P – Pack-wise (Bales)' }, { value:'K', label:'K – KGS-wise' }]
               onChange: warn if inconsistent with current Rate Unit
    Col sm=3:  Final Weighment (Select)
               Options: [{ value:'M', label:'M – Mill' }, { value:'S', label:'S – Scale' }]
    Col sm=3:  Agent/Broker (AutoComplete, same pattern as Supplier)
               Fetch from /api/v1/lookups/agents?term=
               Single field shows "CODE – NAME"; stores agentCode
    Col sm=4:  Mill Reference No. (Input, optional)
    Col sm=3:  Crop Year (Input, placeholder: "e.g. 2025-26")
               onBlur: warn if entered value > current year

  Section "Season" (Row — show based on param.autoCalculateSeason):
    When autoCalculateSeason=false (SeasoncalcReq=N — default):
      Col sm=5: Season (Input, free text, max 25 chars)
    When autoCalculateSeason=true:
      Col sm=5: Season (Input, read-only, value computed auto)

  Section "Lot Numbers" (Row — show only when param.requireSupplierLotNo=true):
    Col sm=4:  Supplier Lot From (InputNumber, integer, min=0, required when visible)
    Col sm=4:  Supplier Lot To   (InputNumber, integer, min=0, required when visible)
               onBlur: validate From <= To, show error inline if not

  Section "Foreign Trade" (Row):
    Col sm=4:  Foreign Trade Flag (Switch, checkedChildren="YES" unCheckedChildren="NO")
               onChange: setShowFtAmt
    {showFtAmt && Col sm=4: Foreign Trade Amount (InputNumber, precision=2, min=0)}

  Section "With-Sample Mode" (Row):
    Col sm={6}: <Switch> label="Enter PO With Sample?"
                checkedChildren="With Sample" unCheckedChildren="Rate-Master"
                Default: 'Y' (from defaults.wosample or param — SPINRISE default=Y per CEO)
                This drives POLineItemsTable behaviour

  --- TAB 1: Payment & Terms ---

  Section "Delivery & Signatory" (Row):
    Col sm=5: Delivery Type (Input, required)
              Rules: [{ required: true, message: 'Please enter the Delivery Type' }]
    Col sm=6: Authorised Signatory (AutoComplete, required)
              Fetch from /api/v1/lookups/employees?term=
              Single field shows "CODE – NAME"; stores acceptance (employee code)
              Rules: [{ required: true, message: 'Please enter the Accepted Person' }]
    Col sm=5: Mode of Transport (Input, required)
              Rules: [{ required: true, message: 'Please enter the Mode of Transport' }]
    Col sm=4: Supplier PO File Reference (Input, required)
              Rules: [{ required: true, message: 'Please Upload Supplier Price List' }]

  Section "Address" (Row):
    Col sm=5: Billing Address (Input or AutoComplete from /api/v1/lookups/billing-addresses)
    Col sm=5: Delivery Address Code (Input)
    Col sm=6: Contact Person (Input)

  Section "Payment Terms" (Row):
    Col sm=5: Payment Term 1 (Input, maxLength=30)
    Col sm=2: Days 1 (InputNumber, integer, min=0, max=999)
    Col sm=5: Payment Term 2 (Input)
    Col sm=2: Days 2 (InputNumber, integer, min=0, max=999)
    Col sm=2: Credit Days (InputNumber, integer, min=0)
    Col sm=3: Interest % (InputNumber, precision=2, min=0)

  Section "Additional" (Row):
    Col sm=24: Delivery Terms (Input, maxLength=250)
    Col sm=24: Remarks (Input.TextArea, maxLength=255, autoSize={{ minRows:2, maxRows:4 }})

  --- TAB 2: Financial & Tax ---

  Section "Tax Configuration" (Row):
    Col sm=6: Tax Choice (Radio.Group, required)
              <Radio.Button value="SINGLE">Single per Line</Radio.Button>
              <Radio.Button value="COMMON">Common for All Lines</Radio.Button>
    {taxChoice === 'COMMON' && Col sm=6:
      Common Tax Code (Select, options from activeTaxCodes prop, required when COMMON)
      placeholder="Select GST Code"
    }

  Section "Commission" (Row):
    Col sm=4: Commission % (InputNumber, precision=2, min=0)
    Col sm=4: Commission Per Bale (InputNumber, precision=2, min=0)
    Col sm=4: Per Bale/Truck (Select)
              Options: [{ value:'', label:'—' }, { value:'T', label:'T – Per Truck' }, { value:'B', label:'B – Per Bale' }]
    Col sm=4: TCS % (InputNumber, precision=2, min=0)
    Col sm=4: Spot Expense ₹ (InputNumber, precision=2, min=0)
    Col sm=4: Incidental Charges % (InputNumber, precision=2, min=0)

  Section "Classification" (Row):
    Col sm=4: Sustainability Category (Input, maxLength=3)
    Col sm=4: Plant Code (Input)
    Col sm=4: Line Number (InputNumber, integer, min=1)

  Section "Cotton Quality Parameters" (expandable Collapse panel, collapsed by default):
    Row gutter=[16,0]:
    Col sm=4: Grade (Input)
    Col sm=4: Staple Length (Input)
    Col sm=4: Micronaire (InputNumber, precision=2)
    Col sm=4: Strength g/tex (InputNumber, precision=2)
    Col sm=4: Moisture % (InputNumber, precision=2)
    Col sm=4: Trash % (InputNumber, precision=2)

  PROPS the component receives:
    form, disabled, onSupplierBlur, paymentModes, currencies,
    initialSupplierName, initialAreaName,
    param: POParamDto,           // NEW — drives conditional field visibility
    gstConfig: GSTConfigDto | null,  // NEW — drives GST badge
    rateUnits: RateUnitLookupDto[],  // NEW
    activeTaxCodes: TaxCodeLookupDto[], // NEW
    onRateUnitChange: (unit: string, value: number) => void  // NEW — for rateKg calc

  STYLE RULES:
  - ITEM marginBottom: 10 (keep existing)
  - All section headers use existing SectionHeader component
  - Tab with red warning dot: use Tabs `items` prop; for Payment tab, show
    <Badge dot color="red"> on the label when dlyType/acceptance/transport are empty and form touched
  - Mandatory fields: add asterisk in label: <FL text="Delivery Type *" />

  IMPORTANT: Do not remove ANY existing Supplier, Area AutoComplete logic. Extend the pattern.
  IMPORTANT: Keep the same CONTAINER, ITEM, LABEL_STYLE constants.
  IMPORTANT: Export POHeaderFormValues and both new types from the hook file.

  ---
  PROMPT B2 — Frontend: Line Items Grid (ArrivalType, Rate Unit, BBFlag, With-Sample, rateKg)

  File targets:
  - Development/spinrise-web/src/features/purchase-order/components/po-form/POLineItemsTable.tsx
  - Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts

  ---
  You are a senior React/TypeScript frontend developer on the SPINRISE ERP project.

  CONTEXT:
  - File to rewrite: src/features/purchase-order/components/po-form/POLineItemsTable.tsx
  - File to update: src/features/purchase-order/hooks/usePurchaseOrderForm.ts
  - Pattern: Ant Design 5, TypeScript strict, no any.
  - Current rateKg formula is WRONG: it hardcodes division by 180.
    Correct formula from FSD: rateKg = ROUND(candyRate / rateUnitValue, 5)
    where rateUnitValue comes from rm_rateunit.value for the selected Rate Unit.

  TASK 1 — Update POLineFormItem in usePurchaseOrderForm.ts:

  Add these fields to POLineFormItem:
    millSampleNo: string    // Col 0 — with-sample leading entry
    suppSampleNo: string    // Col 7 — PTY_CONTNO, read-only

  In blankLine(), initialise both to ''.

  In addPRLines(), set millSampleNo: '', suppSampleNo: '' for new lines.

  TASK 2 — Update usePurchaseOrderForm.ts hook:

  Add rateUnitValue state:
    const [rateUnitValue, setRateUnitValue] = useState<number>(168) // 168 = standard candy kg

  Add handleRateUnitChange callback:
    const handleRateUnitChange = useCallback((unit: string, value: number) => {
      setRateUnitValue(value)
      // auto-correct ArrivalType suggestion based on unit name
      const suggestP = unit.toUpperCase().includes('CANDY')
      const suggestK = unit.toUpperCase().includes('KGS')
      // pass suggestion up via returned state — form will handle the select
      setRateUnitSuggestion(suggestP ? 'P' : suggestK ? 'K' : null)
    }, [])

  Add rateUnitSuggestion state: useState<'P' | 'K' | null>(null)

  Export rateUnitValue, handleRateUnitChange, rateUnitSuggestion from hook.

  TASK 3 — Rewrite POLineItemsTable.tsx:

  Props interface:
    interface Props {
      lines:          POLineFormItem[]
      prBased:        boolean
      sampleMode:     boolean          // wosample='Y' drives Col 0 leading entry
      arrivalType:    string           // 'P' | 'K' — controls qty vs kgs column
      rateUnitValue:  number           // for rateKg = candyRate / rateUnitValue
      igstFlg:        string           // 'Y'=intra(CGST+SGST), 'N'=inter(IGST)
      disabled?:      boolean
      onAdd:          () => void
      onPickPR:       () => void
      onUpdate:       (key: string, patch: Partial<POLineFormItem>) => void
      onRemove:       (key: string) => void
    }

  COLUMN DEFINITIONS (in this order):

  Col 1 — Mill Sample No (show only when sampleMode=true):
    title: '#Sample', dataIndex: 'millSampleNo', width: 90, fixed:'left'
    Editable Input; when sampleMode=true this column is the PRIMARY entry point
    Tooltip: "Enter Mill Sample No. to auto-fill variety and rate"

  Col 2 — Variety (always visible):
    Keep existing VarietyCell AutoComplete pattern
    When sampleMode=true AND millSampleNo is blank: show placeholder "Enter sample no. first" and disable
    When sampleMode=false: normal entry

    When variety is selected via VarietyCell, the handleSelect MUST populate:
      varCode, varName, hsn, cgstPer, sgstPer, igstPer, taxCode
    AND ALSO trigger re-apply of IGST flag:
      if igstFlg === 'N' (inter-state): cgstPer=0, sgstPer=0 (keep igstPer)
      if igstFlg === 'Y' (intra-state): igstPer=0 (keep cgstPer, sgstPer)

  Col 3 — Pack Type (always visible): width=80, free text Input uppercase
    onBlur: auto-derive bbFlag from first char:
      'B' → bbFlag='B', 'R' → bbFlag='R', 'H' → bbFlag='H', else bbFlag='B'
    Remove the separate bbFlag column entirely — it's derived, not user-entered.

  Col 4 — Qty Bales (show only when arrivalType='P' or arrivalType is blank):
    title: 'Qty (Bales)', dataIndex: 'ordQty', width: 105, align:'right'
    InputNumber, min=0, precision=0
    onBlur: if value > (line.prBalanceQty ?? Infinity): show warning message
      "Entered Quantity Cannot be Greater than Pending Quantity"
      and reset to line.prBalanceQty

  Col 5 — Qty Kgs (show only when arrivalType='K'):
    title: 'Qty (Kgs)', dataIndex: 'ordKgs', width: 95, align:'right'
    InputNumber, min=0, precision=3

  Col 6 — Rate/Unit (always visible):
    title: 'Rate/Unit', dataIndex: 'candyRate', width: 115, align:'right'
    InputNumber, min=0, step=0.01, precision=7
    onChange: compute rateKg = parseFloat((val / rateUnitValue).toFixed(5))
              call onUpdate with both candyRate and rateKg

  Col 7 — Rate/Kg (read-only display):
    title: 'Rate/Kg', dataIndex: 'rateKg', width: 95, align:'right'
    Always read-only: <span style={{fontVariantNumeric:'tabular-nums'}}>{r.rateKg.toFixed(5)}</span>
    Do NOT render InputNumber here — it's derived.

  Col 8 — Supplier Sample No. (show only when sampleMode=true):
    title: 'Sup.Sample', dataIndex: 'suppSampleNo', width: 90
    Read-only span always. Never editable.

  Col 9 — Loads (always):   noOfLoad, width=70

  Col 10 — Cash Dis%:       cashDisPer, precision=2, width=90
  Col 11 — Trade Dis%:      tradeDisPer, precision=2, width=90
  Col 12 — Cess%:           cessPer, precision=2, width=72
  Col 13 — Ins%:            insPer, precision=5, width=72

  Col 14 — CGST% (show only when igstFlg='Y' or igstFlg is unknown):
    Read-only InputNumber — auto-filled from variety; user can override
    Highlight in light green (#f6ffed border) to show it is auto-filled

  Col 15 — SGST% (same conditions as CGST):
    Same style as CGST

  Col 16 — IGST% (show only when igstFlg='N'):
    Read-only InputNumber — auto-filled from variety
    Highlight in light blue (#e6f7ff border)

  Col 17 — HSN (always, but read-only when PRBased=true):
    width=90; Input
    When prBased=true: read-only, style with grey background

  Col 18 — Tax Code (always, read-only):
    width=80; read-only span
    Show as <Tag>{r.taxCode}</Tag> when not empty

  Col 19 — PR No. (keep existing):
    Show <Tag color="purple"> when iPrNo is set

  Col 20 — Delete button (when not disabled): keep existing

  GST CONFLICT INDICATOR:
  After the GST% columns, add a small warning icon in the row if:
    cgstPer > 0 AND igstPer > 0 simultaneously (impossible — mutually exclusive)
    Tooltip: "Invalid: CGST+SGST and IGST cannot both be non-zero"

  BOTTOM TOOLBAR (visible when not disabled):
    <Space>
      {prBased && <Button icon={<UnorderedListOutlined/>} onClick={onPickPR} type="dashed">Pick from PR Lines</Button>}
      <Button icon={<PlusOutlined/>} onClick={onAdd}>Add Line</Button>
      {lines.length > 0 && (
        <Tag color="blue">
          Lines: {lines.length} |
          Total Bales: {lines.reduce((s,l)=>s+l.ordQty,0)} |
          Total Kgs: {lines.reduce((s,l)=>s+l.ordKgs,0).toFixed(3)}
        </Tag>
      )}
    </Space>

  RULES:
  - Remove the bbFlag column from grid — it is derived from PackType first char, not user-entered.
  - rateKg column is always read-only — computed from candyRate / rateUnitValue.
  - Never hardcode 180 anywhere — always use rateUnitValue prop.
  - When arrivalType='P': ordKgs column is hidden. When 'K': ordQty column is hidden.
  - When sampleMode=true: millSampleNo column shows at far left; suppSampleNo column shows.
  - Column header style: compact, uppercase 10px matching existing.

  ---
  PROMPT B3 — Frontend: Delivery Schedule + PR Picker + Validation Pass

  File targets:
  - Development/spinrise-web/src/features/purchase-order/components/po-form/PODeliveryTable.tsx
  - Development/spinrise-web/src/features/purchase-order/components/po-form/PRLinePickerModal.tsx
  - Development/spinrise-web/src/features/purchase-order/hooks/usePurchaseOrderForm.ts

  ---
  You are a senior React/TypeScript frontend developer on the SPINRISE ERP project.

  CONTEXT:
  - Stack: React 18, TypeScript strict, Ant Design 5.
  - Files: PODeliveryTable.tsx, PRLinePickerModal.tsx, usePurchaseOrderForm.ts

  TASK 1 — Rewrite PODeliveryTable.tsx:

  Props interface:
    interface Props {
      rows:          PODeliveryItem[]
      orderedQty:    number              // total from lines — for cumulative check
      orderDate:     string              // YYYY-MM-DD — for date validation
      varCodeOptions:string[]            // from PO line items — for Variety Select
      weighments:    WeighmentLookupDto[] // NEW from /api/v1/lookups/weighments
      disabled?:     boolean
      onAdd:         () => void
      onUpdate:      (key: string, patch: Partial<PODeliveryItem>) => void
      onRemove:      (key: string) => void
    }

  Add to PODeliveryItem interface (in usePurchaseOrderForm.ts):
    weighment: string   // from rm_WEIGHNMENT

  COLUMN DEFINITIONS:

  Col 1 — Delivery Date:
    DatePicker, disabledDate={(d) => d.isBefore(dayjs(orderDate), 'day')}
    Tooltip if date < orderDate: "Delivery Date must be after or equal to Contract date"

  Col 2 — Qty (Candy):
    InputNumber, min=0.01
    Show running cumulative below table:
    <Typography.Text type={cumTotal > orderedQty ? 'danger' : 'secondary'}>
      Scheduled: {cumTotal} / {orderedQty} bales
    </Typography.Text>
    When cumTotal > orderedQty: row background = #fff1f0 (light red)

  Col 3 — Variety:
    Select (not free text) with options from varCodeOptions prop
    allowClear, showSearch
    placeholder="Select variety from PO lines"

  Col 4 — Weighment:
    Select with options from weighments prop
    showCode: "{w.WCode} – {w.WName}"
    width: 120

  Col 5 — Delivery Address: Input (keep existing)

  Col 6 — Instruction: Input (keep existing)

  Duplicate detection: when user adds a row, check if same (delDate + varCode) combination
  already exists. If yes: show message.error("Schedule already exists for this Date and Variety")
  and do NOT add the row.

  TASK 2 — Update PRLinePickerModal.tsx:

  The modal table should show these columns:
    PR No | PR Date | Variety Code | Variety Name | Pack Type |
    Balance Qty | Balance Kgs (NEW) | Requisitioner

  Balance Kgs column:
    dataIndex: 'balanceKgs', title: 'Bal.Kgs', align:'right', width:90
    render: (v: number) => v?.toFixed(3) ?? '-'

  Add filter row above table:
    <Input.Search> for indent/variety code/variety name (single search box)
    placeholder="Search by PR No, variety code or name…"
    onSearch triggers purchaseOrderApi.filterPRLines(...)

  Update addPRLines in hook:
    When adding from PR picker, if ArrivalType='K':
      ordKgs = pr.balanceKgs  (use balanceKgs, not balanceQty * 180)
    When ArrivalType='P':
      ordQty = pr.balanceQty
    Remove the hardcoded * 180 from addPRLines.

  TASK 3 — Frontend validation in usePurchaseOrderForm.ts doCreate:

  Add these checks before API call, in order:

    // Tab 1 mandatory fields
    if (!hv.dlyType?.trim())
      return void message.error('Please enter the Delivery Type')
    if (!hv.acceptance?.trim())
      return void message.error('Please enter the Accepted Person')
    if (!hv.transport?.trim())
      return void message.error('Please enter the Mode of Transport')
    if (!hv.supFileName?.trim())
      return void message.error('Please Upload Supplier Price List')

    // Lot From/To when required
    if (defaults?.param?.requireSupplierLotNo) {
      if (!hv.lotFrom || hv.lotFrom === 0)
        return void message.error('Please enter Supplier From Lot No.')
      if (!hv.lotTo || hv.lotTo === 0)
        return void message.error('Please enter the Supplier To Lot No.')
      if (hv.lotFrom > hv.lotTo)
        return void message.error('Supplier From Lot No. should not be greater than To Lot No.')
    }

    // GST = 0 warning — use AntD modal.confirm instead of proceeding silently
    const zeroGstLines = lines.filter(l => l.cgstPer===0 && l.sgstPer===0 && l.igstPer===0)
    if (zeroGstLines.length > 0) {
      const confirmed = await new Promise<boolean>((resolve) => {
        Modal.confirm({
          title: 'GST% is 0 – Confirm?',
          content: `GST% is 0 for: ${zeroGstLines.map(l=>l.varCode).join(', ')}. Do you want to Continue?`,
          onOk: () => resolve(true),
          onCancel: () => resolve(false),
        })
      })
      if (!confirmed) return
    }

    // Rate > 0 check per line
    const zeroRate = lines.find(l => l.varCode && l.candyRate <= 0)
    if (zeroRate)
      return void message.error(`Please Enter the Rate for variety ${zeroRate.varCode}`)

    // Qty check per line
    lines.forEach(l => {
      if (arrivalType === 'P' && l.varCode && l.ordQty <= 0)
        return void message.error(`Please enter the Order Quantity for variety ${l.varCode}`)
      if (arrivalType === 'K' && l.varCode && l.ordKgs <= 0)
        return void message.error(`Please enter the order Kgs for variety ${l.varCode}`)
    })

    // Delivery schedule cumulative check
    const totalSched = delivery.reduce((s,d)=>s+d.delQty, 0)
    const totalOrdered = lines.reduce((s,l)=>s+l.ordQty, 0)
    if (delivery.length > 0 && totalSched > totalOrdered)
      return void message.error('Schedule Quantity total must be equal to Order Quantity')

  Also update the payload mapping in doCreate to include ALL new header fields:
    agentCode, countryCode, imInd, millRefNo, rateUnit, arrivalType, finalWeighment,
    billingAddress, deliveryAddrCode, contactPerson, terms1, terms1Days,
    terms2, terms2Days, creditDays, interestPer, deliveryTerms, remarks,
    commonTaxCode, perBaleTruck, grade, staple, mic, strength, moisture, trash

  And for each delivery row: include weighment field.

  Also update types.ts:
    In PRLineDto: add balanceKgs: number
    In CreateDeliveryScheduleRequest: add weighment?: string
    In CreatePORequest: add all the new header fields listed above
    In PODefaultsDto: add param: POParamDto  (not just 3 flags — full param)

  ---
  PROMPT B4 — Frontend: Page Wiring + Edit Page + New/Edit Form Integration

  File targets:
  - Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderNewPage.tsx
  - Development/spinrise-web/src/features/purchase-order/pages/PurchaseOrderEditPage.tsx

  ---
  You are a senior React/TypeScript frontend developer on the SPINRISE ERP project.

  CONTEXT:
  - Read PurchaseOrderNewPage.tsx and PurchaseOrderEditPage.tsx.
  - The usePurchaseOrderForm hook is already used in both pages.
  - After B1/B2/B3 prompts complete, POHeaderForm now accepts additional props:
    param, gstConfig, rateUnits, activeTaxCodes, onRateUnitChange
    And POLineItemsTable now accepts: sampleMode, arrivalType, rateUnitValue, igstFlg
    And PODeliveryTable now accepts: orderedQty, orderDate, varCodeOptions, weighments

  TASK 1 — Update PurchaseOrderNewPage.tsx:

  1. In hook destructuring, add:
     rateUnitValue, handleRateUnitChange, rateUnitSuggestion, rateUnits,
     activeTaxCodes, weighments

  2. Load rateUnits from API in usePurchaseOrderForm useEffect:
     Add lookupApi.getRateUnits() to the Promise.all in useEffect.

  3. Load activeTaxCodes from lookupApi.getActiveTaxCodes() in same Promise.all.

  4. Load weighments from lookupApi.getWeighments() in same Promise.all.

  5. Pass new props to POHeaderForm:
     param={defaults?.param ?? defaultParam}
     gstConfig={gstConfig}
     rateUnits={rateUnits}
     activeTaxCodes={activeTaxCodes}
     onRateUnitChange={handleRateUnitChange}

  6. Add form.watch or read form value for arrivalType:
     const [arrivalType, setArrivalType] = useState<string>('P')
     When rateUnitSuggestion changes: form.setFieldValue('arrivalType', rateUnitSuggestion)
     When form arrivalType field changes (use Form.useWatch): setArrivalType(val)

  7. Pass new props to POLineItemsTable:
     sampleMode={form.getFieldValue('sampleFlg') === 'Y'}
     arrivalType={arrivalType}
     rateUnitValue={rateUnitValue}
     igstFlg={gstConfig ? (gstConfig.gstStateCode === gstConfig.stateCode ? 'Y' : 'N') : 'Y'}

  8. Pass new props to PODeliveryTable:
     orderedQty={lines.reduce((s,l)=>s+l.ordQty, 0)}
     orderDate={form.getFieldValue('contDt')?.format('YYYY-MM-DD') ?? dayjs().format('YYYY-MM-DD')}
     varCodeOptions={lines.map(l=>l.varCode).filter(Boolean)}
     weighments={weighments}

  9. Show PageTitleBar with:
     title="New Purchase Order"
     subtitle="Raw Material Inventory — RMI"
     Breadcrumb: Purchase → Purchase Orders → New

  TASK 2 — Update PurchaseOrderEditPage.tsx:

  Same as NewPage but additionally:
  - Load existing PO via purchaseOrderApi.getDetail(contNo, contDt, divCode)
  - Pre-fill all new fields from POLineResponseDto (agentCode, arrivalType, etc.)
  - If header.firstAppFlg === 'Y': set disabled=true on ALL forms with a banner:
    <Alert type="warning" message="This PO has been approved and cannot be modified." showIcon />
  - Title: "Edit Purchase Order #{contNo}"

  TASK 3 — Add defaultParam constant for when defaults haven't loaded:

    const defaultParam: POParamDto = {
      requireSupplierLotNo: true,
      centralizedOrder: false,
      autoCalculateSeason: false,
      masterEntryRequired: false,
      prBased: true,
      approvalEnabled: true,
      additionalTaxRequired: false,
      ftAmt: 0,
    }

  RULES:
  - Do not duplicate API calls that are already in usePurchaseOrderForm.
  - Add new API calls only to the hook's useEffect Promise.all, not to the page.
  - Lazy-load pages are unchanged — routing file is not touched.

  ---
  PROMPT C1 — Stored Procedures for Missing Fields

  File targets:
  - Development/Backend/Spinrise.DBScripts/02 Stored Procedures/ — relevant PO SPs
  - Development/Backend/Spinrise.DBScripts/merged.sql

  ---
  You are a SQL Server database developer on the SPINRISE ERP project.

  CONTEXT:
  - Database: SQL Server (SpinRiseSaranya)
  - All SPs use CREATE OR ALTER PROCEDURE — never DROP + CREATE.
  - All parameters are typed and parameterised — never string concatenation.
  - Rule: ONLY modify stored procedures. Do NOT create tables, add columns, or create indexes.
    The schema already has all required columns in RM_CONT, RM_DELSCHED, etc.

  TASK 1 — Update SP_InsertPOLine (or equivalent INSERT SP for RM_CONT):

  Add these new parameters if the columns already exist in RM_CONT:
    @AgentCode     VARCHAR(10) = NULL,
    @CountryCode   VARCHAR(10) = NULL,
    @ImInd         CHAR(1)     = 'L',
    @MillRefNo     VARCHAR(50) = NULL,
    @RateUnit      VARCHAR(20) = NULL,
    @ArrivalType   CHAR(1)     = 'P',
    @FinalWeighment CHAR(1)    = 'S',
    @BillingAddr   VARCHAR(30) = NULL,
    @DeliveryAddr  VARCHAR(30) = NULL,
    @ContactPerson VARCHAR(100)= NULL,
    @Terms1        VARCHAR(30) = NULL,
    @Terms1Days    INT         = NULL,
    @Terms2        VARCHAR(30) = NULL,
    @Terms2Days    INT         = NULL,
    @CreditDays    INT         = NULL,
    @InterestPer   DECIMAL(5,2)= NULL,
    @DeliveryTerms VARCHAR(250)= NULL,
    @Remarks       NVARCHAR(255) = NULL,
    @CommonTaxCode VARCHAR(3)  = NULL,
    @PerBaleTruck  VARCHAR(5)  = NULL,
    @Grade         VARCHAR(20) = NULL,
    @Staple        VARCHAR(20) = NULL,
    @Mic           DECIMAL(6,2)= NULL,
    @Strength      DECIMAL(6,2)= NULL,
    @Moisture      DECIMAL(6,2)= NULL,
    @Trash         DECIMAL(6,2)= NULL

  Include them in the INSERT INTO RM_CONT (...) VALUES (...) if the columns exist.
  Use ISNULL(@Param, existingDefault) pattern where appropriate.

  TASK 2 — Update SP_GetPendingPRLines (replaces SP_PRToPO_RMI):

  Add BALQTYKG to the SELECT list:
    ISNULL(prl.qtyindKG, 0) - ISNULL(prl.qtyordKG, 0) AS BALQTYKG

  Ensure BALQTYKG is aliased as BalanceKgs in the result set so Dapper maps it
  to PRLineDto.BalanceKgs.

  TASK 3 — Create SP_UpdatePRBalance:

  CREATE OR ALTER PROCEDURE SP_UpdatePRBalance
      @DivCode  VARCHAR(2),
      @PrNo     DECIMAL(18,0),
      @PrDate   DATETIME,
      @PrSno    INT,
      @QtyOrd   DECIMAL(10,2),
      @QtyOrdKG NUMERIC(18,3)
  AS
  BEGIN
      SET NOCOUNT ON;
      UPDATE Rm_PRL WITH (UPDLOCK)
      SET    qtyord   = ISNULL(qtyord,   0) + @QtyOrd,
             qtyordKG = ISNULL(qtyordKG, 0) + @QtyOrdKG
      WHERE  divcode  = @DivCode
        AND  PRNO     = @PrNo
        AND  PRDATE   = @PrDate
        AND  PrSno    = @PrSno;
  END

  TASK 4 — Create SP_DeletePOLinesForUpdate:

  CREATE OR ALTER PROCEDURE SP_DeletePOLinesForUpdate
      @ContNo   DECIMAL(10,0),
      @ContDt   DATETIME,
      @DivCode  VARCHAR(2)
  AS
  BEGIN
      SET NOCOUNT ON;
      DELETE FROM RM_ContDiscntRate WHERE contno=@ContNo AND contdt=@ContDt AND divcode=@DivCode;
      DELETE FROM RM_DELSCHED       WHERE contno=@ContNo AND contdate=@ContDt AND divcode=@DivCode;
      DELETE FROM RM_CONT           WHERE contno=@ContNo AND contdt=@ContDt AND divcode=@DivCode;
  END

  AFTER all changes: update merged.sql with all modified/new SP definitions.
  Rule: every SP changed in this session must be in merged.sql. Use CREATE OR ALTER everywhere.

  ---
  PROMPT C2 — Backend: lookupApi Frontend Additions

  File targets:
  - Development/spinrise-web/src/shared/lookup/api/lookupApi.ts
  - Development/spinrise-web/src/features/purchase-requisition/types.ts (or wherever lookup types live)

  ---
  You are a senior React/TypeScript frontend developer on the SPINRISE ERP project.

  CONTEXT:
  - Read src/shared/lookup/api/lookupApi.ts to understand the existing pattern.
  - All API calls use the shared Axios client (axiosClient or similar).
  - Base URL pattern from existing calls — follow exactly.

  TASK — Add these methods to lookupApi:

  // Rate units from /api/v1/lookups/rate-units
  getRateUnits: async (): Promise<RateUnitLookupDto[]>

  // Weighments from /api/v1/lookups/weighments
  getWeighments: async (): Promise<WeighmentLookupDto[]>

  // Agent/broker search from /api/v1/lookups/agents?term=
  searchAgents: async (term: string): Promise<AgentLookupDto[]>

  // Employee search from /api/v1/lookups/employees?term=
  searchEmployees: async (term: string): Promise<EmployeeLookupDto[]>

  // Active tax codes from /api/v1/lookups/tax-codes
  getActiveTaxCodes: async (): Promise<TaxCodeLookupDto[]>

  Add these DTO types (add to the shared lookup types file or purchase-order/types.ts):

    export interface RateUnitLookupDto {
      unitName: string
      value:    number    // divisor for rateKg = candyRate / value
    }

    export interface WeighmentLookupDto {
      wCode: string
      wName: string
    }

    export interface AgentLookupDto {
      agentCode: string
      agentName: string
    }

    export interface EmployeeLookupDto {
      empCode: string
      empName: string
    }

    export interface TaxCodeLookupDto {
      taxCode: string
      taxName: string
      taxPer:  number
    }

  RULES:
  - Follow the exact existing pattern in lookupApi.ts for error handling.
  - Export all types from the types file, not inline in the api file.
  - No any types.

  ---
  PROMPT D1 — Backend: Full UpdateAsync Implementation

  File targets:
  - Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Services/PurchaseOrderService.cs
  - Development/Backend/Spinrise.Application/Areas/Purchase/PurchaseOrder/Interfaces/IPurchaseOrderRepository.cs
  - Development/Backend/Spinrise.Infrastructure/Areas/Purchase/PurchaseOrder/PurchaseOrderRepository.cs

  ---
  You are a senior .NET 8 backend developer on the SPINRISE ERP project.

  CONTEXT:
  - After Prompt A1, these methods exist in IPurchaseOrderRepository:
    BeginTransactionAsync, CommitAsync, RollbackAsync,
    InsertAllLinesAsync, InsertDiscountRatesAsync, InsertDeliverySchedulesAsync,
    UpdatePRBalancesAsync, DeleteLinesForUpdateAsync
  - UpdateAsync currently returns (false, "Update not yet implemented.", warnings).

  TASK — Implement UpdateAsync fully in PurchaseOrderService:

  public async Task<(bool Success, string Message, IReadOnlyList<string> Warnings)>
      UpdateAsync(decimal contNo, UpdatePODto dto, string userId)
  {
      var warnings = new List<string>();

      // Step 1: FIRST_APPFLG=Y blocks all modification
      var approval = await _repo.GetApprovalStatusAsync(contNo, dto.ContDt, dto.DivCode);
      if (approval?.FirstAppFlg == "Y")
          return (false, "Cannot modify: approval has commenced for this Purchase Order.", warnings);

      // Step 2: Same field validations as CreateAsync (area, currency, dlyType, acceptance, transport)
      if (string.IsNullOrWhiteSpace(dto.AreaCode))
          return (false, "Please enter the Area Name.", warnings);
      if (string.IsNullOrWhiteSpace(dto.CurrCode))
          return (false, "Please enter the Billing Currency.", warnings);
      if (string.IsNullOrWhiteSpace(dto.DlyType))
          return (false, "Please enter the Delivery Type.", warnings);
      if (string.IsNullOrWhiteSpace(dto.Acceptance))
          return (false, "Please enter the Accepted Person.", warnings);
      if (string.IsNullOrWhiteSpace(dto.Transport))
          return (false, "Please enter the Mode of Transport.", warnings);

      if (dto.Lines.Count == 0)
          return (false, "At least one variety line is required.", warnings);

      var param = await _repo.GetParamAsync(dto.DivCode);
      if (param?.PRBased == true)
      {
          foreach (var line in dto.Lines)
          {
              if (string.IsNullOrWhiteSpace(line.Hsn))
                  return (false, $"HSN is mandatory for variety {line.VarCode} (FSD LV-16).", warnings);
              if (string.IsNullOrWhiteSpace(line.TaxCode))
                  return (false, $"Tax Code is mandatory for variety {line.VarCode} (FSD LV-17).", warnings);
          }
      }

      foreach (var line in dto.Lines.Where(l => l.CgstPer == 0 && l.SgstPer == 0 && l.IgstPer == 0))
          warnings.Add($"GST% is zero for variety {line.VarCode} — confirm if intentional.");

      // Step 3: Single transaction — delete then re-insert
      try
      {
          await _repo.BeginTransactionAsync();
          await _repo.DeleteLinesForUpdateAsync(contNo, dto.ContDt, dto.DivCode);
          await _repo.InsertAllLinesAsync(contNo, dto, userId);
          await _repo.InsertDiscountRatesAsync(contNo, dto);
          await _repo.InsertDeliverySchedulesAsync(contNo, dto);
          await _repo.InsertAuditLogAsync(contNo, dto.ContDt, dto.DivCode, "MOD", userId);
          // PR balance: for Modify, we re-apply PR balance for lines that have iPrNo
          await _repo.UpdatePRBalancesAsync(contNo, dto);
          await _repo.CommitAsync();
      }
      catch
      {
          await _repo.RollbackAsync();
          throw;
      }

      // Lot numbers are post-commit (FSD §8.1 Step 8)
      if (dto.LotFrom > 0 && dto.LotTo >= dto.LotFrom)
          await _repo.InsertSlotNoAsync(contNo, dto.ContDt, dto.DivCode, dto.LotFrom, dto.LotTo);

      return (true, "Record(s) Modified.", warnings);
  }

  Also implement UpdatePRBalancesAsync in PurchaseOrderRepository:
    For each line in dto.Lines where IPrNo != null:
      Call SP_UpdatePRBalance with (DivCode, IPrNo, PrDate, PrSno, OrdQty, OrdKgs)
      This SP uses WITH(UPDLOCK) — implemented in Prompt C1.

  Implement DeleteLinesForUpdateAsync in PurchaseOrderRepository:
    Call SP_DeletePOLinesForUpdate(ContNo, ContDt, DivCode)
    Must be called within the active transaction (pass _uow.Transaction).

  RULES:
  - No raw SQL.
  - All DB calls reuse the same _uow.Transaction opened in BeginTransactionAsync.
  - Do not change CreateAsync — only UpdateAsync.

  ---
  EXECUTION CHECKLIST

  PHASE 1 — Run A1 and A2 in parallel (no frontend dependency yet)
   [ ] A1: DTO expansion + transaction fix + delete guard
   [ ] A2: New lookup endpoints (backend)

  PHASE 2 — Run B1, B2, C1 in parallel (after A1 DTOs are merged)
   [ ] B1: Tab restructure + Payment Details + missing header fields
   [ ] B2: Line items grid (ArrivalType, Rate Unit, BBFlag, With-Sample)
   [ ] C1: SQL stored procedures update + merged.sql

  PHASE 3 — Run B3 and C2 after B1/B2 (has dependencies)
   [ ] B3: Delivery schedule + PR picker + frontend validation pass
   [ ] C2: lookupApi frontend additions

  PHASE 4 — Wire everything + edit page
   [ ] B4: Page wiring + edit page
   [ ] D1: Full UpdateAsync implementation

  PHASE 5 — Integration test
   [ ] Create PO with PR lines (with-sample mode)
   [ ] Create PO direct/spot (rate-master mode)
   [ ] Verify rateKg = candyRate / rateUnitValue (not /180)
   [ ] Verify mandatory fields block save (Delivery Type, Signatory, Transport)
   [ ] Verify approved PO (firstAppFlg=Y) cannot be deleted or modified
   [ ] Verify delivery schedule rejects date < order date
   [ ] Verify GST columns toggle correctly (IGST vs CGST+SGST)

  ---
  Key UX rules embedded in all prompts:
  - Single autocomplete for every code+name pair (Supplier, Area, Agent, Signatory) — no dual fields
  - GST badge appears immediately after supplier resolves — no separate step
  - Arrival Type auto-defaults when Rate Unit changes — no manual correction needed
  - Conditional fields (Lot No, FT Amount) only render when the parameter says so — no always-visible optional fields
  - rateKg is always read-only and computed — user never types it
  - Tab 1 badge turns red when any mandatory field in that tab is empty and touched — buyer sees immediately which tab has problems

✻ Crunched for 5m 22s

※ recap: GAP analysis of the M02 Purchase Order module (FSD v8) is complete and a full fix planner with 9 production-ready prompts is written. Next: execute
   Prompt A1 to fix the backend transaction scope and expand DTOs. (disable recaps in /config)