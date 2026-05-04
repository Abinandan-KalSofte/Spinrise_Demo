# `RMIContractwithoutsample_withPR1` Web Migration Steps

## Goal

Migrate the VB6 purchase order form `RMIContractwithoutsample_withPR1.frm` into a modern web application without losing business rules around:

- purchase order creation and edit
- supplier / agent / area validation
- PR-to-PO flow
- sample-based PO flow
- delivery schedule management
- GST / tax handling
- file attachment handling
- PDF / print output
- transaction logging and delete reason tracking

## 1. Start with migration boundaries

Before writing code, freeze exactly what belongs to this module.

### In scope

- PO header entry
- PO line-item entry
- delivery schedule
- supplier attachment upload
- print / export
- add / modify / delete / find / list behavior
- validations from the VB6 form
- integrations with supplier, sample, PR, tax, and master tables

### Out of scope for phase 1

- unrelated RMI forms
- redesign of accounting rules
- changing tax formulas
- changing PO numbering rules
- replacing Crystal reports immediately, unless required

## 2. Capture current behavior as a migration baseline

Create a functional baseline from the VB6 form before building the new app.

### Deliverables

- field inventory
- lookup inventory
- validation inventory
- SQL table dependency list
- screen-by-screen workflow notes
- sample test data
- 10 to 20 real PO scenarios

### Scenarios to capture

- PO with sample
- PO without sample
- PR-based PO
- common tax mode
- item-wise tax mode
- pack-wise arrival type
- kg-wise arrival type
- PO with delivery schedule
- PO with supplier lot range
- PO modify after partial arrival
- PO delete before arrival

This step matters because VB6 code mixes UI, validation, and persistence in the same procedures. If you skip baseline capture, the web app will look correct but behave differently.

## 3. Break the monolithic form into domain modules

Do not migrate this form as one giant page with one giant API. Split it into clear modules.

### Recommended business modules

- `PurchaseOrderHeader`
- `PurchaseOrderLine`
- `PurchaseOrderDeliverySchedule`
- `PurchaseOrderTax`
- `PurchaseOrderAttachment`
- `PurchaseOrderAuditLog`
- `SampleToPO`
- `PRToPO`
- `SupplierLotAllocation`

### Recommended supporting master modules

- `Supplier`
- `Agent`
- `Area`
- `Variety`
- `TaxCode`
- `RateUnit`
- `Plant`
- `PurchaseType`
- `PaymentMode`
- `PaymentTerm`
- `DeliveryType`
- `DeliveryAddress`
- `AcceptanceSignatory`
- `Currency`
- `Season`
- `SustainabilityType`

## 4. Define the target architecture

Use a standard 3-layer web design instead of embedding business logic in UI event handlers.

### Recommended layers

- frontend UI
- backend API
- database / reporting / file storage

### Suggested web stack

- frontend: React, Next.js, Angular, or Vue
- backend: .NET Web API, Java Spring Boot, or Node.js with TypeScript
- database: existing SQL Server can remain in phase 1
- file storage: local shared drive first, object storage later
- auth: company SSO or JWT-based app auth

### Architectural rule

Every business rule currently spread across:

- `BUTTON_Click`
- `TXTFIELDS_Validate`
- `txtfields_LostFocus`
- `DataGrid1_RowColChange`
- `DataGrid1_AfterColEdit`

should move into backend services or shared validation services, not stay in the browser.

## 5. Design the new data contract first

Create an explicit request/response model for the PO instead of directly binding to `RM_CONT`.

### Example aggregate

- `PurchaseOrder`
  - header
  - lines
  - deliverySchedules
  - attachments
  - audit metadata

### Header fields

- order no
- order date
- supplier
- agent
- area
- crop year
- payment mode
- pay term code
- delivery type
- billing address
- delivery address
- contact person
- purchase type
- plant
- sustainability type
- arrival type
- rate unit
- currency
- credit days
- interest
- remarks
- supplier lot from
- supplier lot to
- prepared date/time

### Line fields

- variety code
- quantity
- order kgs
- pack type
- rate per unit
- HSN
- CGST / SGST / IGST
- tax code
- tax %
- discount %
- insurance %
- sample reference
- PR reference
- load count
- quality parameters

### Schedule fields

- delivery date
- quantity
- address code
- variety code
- instruction

## 6. Normalize business rules into backend services

This is the most important migration step.

### Create separate backend services for

- `PurchaseOrderValidationService`
- `PurchaseOrderNumberService`
- `PurchaseOrderTaxService`
- `PurchaseOrderScheduleService`
- `SupplierLotService`
- `SampleSelectionService`
- `PRAllocationService`
- `PurchaseOrderPrintService`
- `PurchaseOrderAuditService`

### Rules that must move to services

- next PO number generation
- centralized vs division-wise numbering
- supplier GST validation
- state-based IGST/CGST/SGST decision
- PR balance validation
- arrival quantity protection
- sample duplicate prevention
- variety duplicate prevention
- tax code active/inactive check
- supplier lot range expansion into slot rows
- delete allowed only before arrival

## 7. Create a migration mapping from old tables to new behavior

Keep existing tables in phase 1 if needed, but wrap them behind repositories.

### Core tables to preserve initially

- `RM_CONT`
- `RM_DELSCHED`
- `RM_CONT_SLOTNO`
- `RM_ContDiscntRate`
- `RM_Trans_Log`

### Master/reference tables to keep

- `FA_SLMAS`
- `RM_AREA`
- `RM_VAR`
- `IG_TAX`
- `RM_PARAM`
- `RM_RATEUNIT`
- `RM_PMODE`
- `IG_PAYTERM`
- `RM_DELIVERY`
- `RM_DELADD`
- `RM_BILLADD`
- `RM_PURTYPE`
- `RM_PLANT`
- `RM_SEASON`
- `RM_SustainRMType`
- `RM_ACCEPTANCE`
- `FA_CURRENCY`

### Integration tables / procedures to preserve

- `RM_SAMPLE`
- `Rm_PRL`
- `RM_Arrival`
- `SP_PRToPO_RMI`
- `SP_PRToPO_RMIFilter`

## 8. Build the APIs before the UI

Design the web APIs around use cases, not around buttons.

### Core APIs

- `GET /purchase-orders`
- `GET /purchase-orders/{id}`
- `POST /purchase-orders`
- `PUT /purchase-orders/{id}`
- `DELETE /purchase-orders/{id}`
- `POST /purchase-orders/{id}/validate`
- `POST /purchase-orders/{id}/print`
- `POST /purchase-orders/{id}/attachments`

### Lookup APIs

- `GET /suppliers`
- `GET /agents`
- `GET /areas`
- `GET /varieties`
- `GET /tax-codes`
- `GET /payment-modes`
- `GET /payment-terms`
- `GET /delivery-types`
- `GET /delivery-addresses`
- `GET /billing-addresses`
- `GET /plants`
- `GET /purchase-types`
- `GET /currencies`

### Workflow APIs

- `POST /purchase-orders/from-sample`
- `POST /purchase-orders/from-pr`
- `GET /purchase-orders/next-number`
- `POST /purchase-orders/check-delete-allowed`
- `POST /purchase-orders/check-arrival-balance`
- `POST /purchase-orders/check-pr-balance`

## 9. Design the frontend as a multi-section workflow

Do not reproduce the VB6 control layout literally. Keep the business flow, but modernize the UX.

### Recommended web screen structure

#### Section 1: Header

- order number
- order date
- supplier / agent / area
- crop year
- state / station
- arrival type
- payment mode / pay terms
- transport
- billing currency
- purchase type

#### Section 2: Line items

- grid/table for varieties
- add line / remove line
- inline validation
- sample and PR reference fields
- tax / HSN columns

#### Section 3: Delivery schedule

- schedule rows in editable table
- date picker
- delivery address lookup
- variety dropdown
- instruction dropdown or free text

#### Section 4: Commercials and tax

- tax mode selector
- header-level tax if common
- line-level tax if item-wise
- TCS
- commission
- incidental charges
- spot expense

#### Section 5: Quality parameters

- trash
- moisture
- strength
- MIC
- staple
- grade

#### Section 6: Attachments and output

- supplier PO upload
- view uploaded file
- generate PO PDF
- print preview

## 10. Replace event-driven validation with deterministic validation flow

In VB6, validation happens on:

- `LostFocus`
- `Validate`
- `RowColChange`
- `AfterColEdit`

In the web app, use three levels instead.

### Level 1: client-side validation

- required fields
- date format
- numeric format
- quick pack type restriction

### Level 2: API validation

- supplier exists and active
- HSN present
- tax code active
- PR balance sufficient
- arrival quantity not exceeded
- duplicate variety or sample row

### Level 3: transaction validation inside save

- re-check all balances
- re-check delete eligibility
- re-check numbering conflicts
- re-check lot allocation

Never rely only on frontend validation.

## 11. Migrate reporting separately from transaction entry

The VB6 form prints through Crystal. Keep that concern separate.

### Phase 1 option

- continue using the current report dataset and Crystal report if the business needs identical output
- call report generation from the backend

### Phase 2 option

- replace Crystal with server-rendered PDF
- use HTML template to PDF or SSRS / FastReport / QuestPDF

### Rule

Do not block form migration just because report migration is not complete.

## 12. Migrate file handling cleanly

The current form:

- selects a local file
- copies it to a server folder
- stores only file name

For the web app, improve this.

### Recommended file model

- file id
- original file name
- stored file path or object key
- purchase order id
- uploaded by
- uploaded at
- file type / extension

### Minimum migration step

- keep existing storage path convention for compatibility
- add a database table for attachment metadata
- stop depending only on file name in the PO row

## 13. Preserve transaction safety

The VB6 form uses `DB.BeginTrans`, `CommitTrans`, and `RollbackTrans`.

The web app must keep the same safety.

### Save transaction should include

- PO header and lines
- delivery schedule
- slot number generation
- discount detail save
- audit log save
- attachment metadata save if done in same flow

### Delete transaction should include

- delete reason log
- delete PO lines
- delete schedule
- delete slot rows
- delete discount detail rows
- write audit log

## 14. Add proper auditability

The VB6 form logs to `RM_Trans_Log`. Keep and improve this.

### Minimum audit fields

- action type
- user id
- timestamp
- client IP
- order id
- before snapshot
- after snapshot
- delete reason

### Better approach

- store JSON snapshots for header and lines
- keep important searchable columns separately

## 15. Create a phased delivery plan

Do not ship the full form in one big rewrite.

### Phase 1: Read-only web inquiry

- PO list
- PO details
- PDF print
- attachment viewing

### Phase 2: New PO creation

- header
- line items
- common tax mode
- file upload
- basic save

### Phase 3: Advanced business flows

- sample-based PO
- PR-based PO
- delivery schedule
- lot allocation
- discount detail popup replacement

### Phase 4: Modify and delete

- partial-arrival restriction
- delete reason workflow
- audit log verification

### Phase 5: reporting and hardening

- PDF parity
- performance tuning
- role-based access
- monitoring

## 16. Build a regression test matrix

Every migrated feature should be tested against VB6 outcomes.

### Test categories

- field required validation
- supplier GST logic
- IGST vs CGST/SGST logic
- PR pending quantity logic
- arrival-protection logic
- sample duplicate logic
- variety duplicate logic
- supplier lot range save
- delivery schedule save
- file upload behavior
- PDF generation
- delete restrictions

### Test types

- unit tests for service logic
- integration tests for save transactions
- UI tests for happy path
- side-by-side output comparison with VB6 for critical cases

## 17. Recommended implementation sequence for this form

This is the most practical order for engineering work.

1. Finalize functional baseline from the current `.frm`
2. Document all field mappings from UI to `RM_CONT` and child tables
3. Create API DTOs for header, lines, schedule, attachment
4. Build repository layer around existing SQL tables
5. Implement `GET` list and detail APIs
6. Build read-only PO details page
7. Implement save transaction service
8. Implement header validation service
9. Implement line validation service
10. Implement supplier / area / variety / tax lookup APIs
11. Build editable header form
12. Build editable line grid
13. Build delivery schedule component
14. Build attachment upload component
15. Implement sample-based PO flow
16. Implement PR-based PO flow
17. Implement modify restrictions based on arrival data
18. Implement delete with reason
19. Implement audit log persistence
20. Implement print/PDF service
21. Run side-by-side UAT with business users
22. Release by feature flag or pilot division

## 18. Risks to manage during migration

### Business-rule risk

- logic is scattered across many event handlers
- same field behaves differently in add vs modify vs sample mode

### Data risk

- one table `RM_CONT` stores both header and line data
- child-table rebuild behavior may hide dependencies

### UX risk

- users may expect keyboard-heavy flow like VB6
- line entry speed matters

### Report risk

- print format may be treated as a legal/business document

### Integration risk

- stored procedures and report dependencies may contain hidden assumptions

## 19. Recommended target end state

After phase 1 compatibility, the long-term target should be:

- clean header-detail PO model
- business rules in backend services
- reusable lookup APIs
- reusable tax engine
- separate reporting service
- separate attachment service
- proper audit/event log
- role-based access and approvals

## 20. Practical advice for this specific form

For `RMIContractwithoutsample_withPR1`, do not start by copying controls one by one into React or Angular.

Start by rebuilding these six things first:

1. purchase order aggregate model
2. save transaction service
3. line-item validation service
4. delivery schedule service
5. supplier/sample/PR lookup APIs
6. audit + print + attachment support

Once those are stable, the web UI becomes much easier and much safer to build.
