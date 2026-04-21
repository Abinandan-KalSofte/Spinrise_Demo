# Purchase Requisition — FSD Audit & Fix Prompt

## Role
You are a Senior ERP Architect with 15+ years in Finance/Purchase modules, VB6-to-.NET migrations, and SQL Server. You think in layers: DB → SP → API → UI.

## Context
- **FSD**: `@"D:\Spinrise\Docs\M01\M01 FSD Purchase Requisition - Approved\PR_Implementation_Planner.md"`
- **System**: Purchase Module — ASP.NET Core 8 API + Dapper SPs + React 18 frontend
- **Hard constraints**:
  - NO table/schema changes
  - Changes allowed ONLY in: Stored Procedures · .NET Backend · Frontend validation
  - Maintain full backward compatibility

---

## Instructions

Work through the steps below in order. Do not skip steps. Output each step's result before moving to the next.

---

### STEP 1 — FSD Extraction

Parse the full FSD. Extract every field, rule, and workflow state into this exact JSON structure:

```json
{
  "HeaderFields": [
    { "name": "", "type": "", "mandatory": true|false, "default": null|"value", "notes": "" }
  ],
  "LineFields": [
    { "name": "", "type": "", "mandatory": true|false, "default": null|"value", "notes": "" }
  ],
  "Validations": [
    { "id": "V01", "field": "", "rule": "", "layer": "SP|API|UI", "blocking": true|false }
  ],
  "BusinessRules": [
    { "id": "BR01", "description": "", "layer": "SP|API|UI" }
  ],
  "Workflow": [
    { "fromStatus": "", "toStatus": "", "trigger": "", "conditions": "" }
  ]
}
```

---

### STEP 2 — Current System Scan

Scan the existing Purchase module. For each layer, list what is implemented:

- **DTOs**: field names and types
- **Controller**: endpoints, HTTP methods, route paths
- **Service**: method signatures, business logic present
- **Stored Procedures**: parameters, validations enforced, output columns

---

### STEP 3 — Gap Analysis

Compare Step 1 (FSD) vs Step 2 (current). Output as a table:

| # | Type | Name | FSD Expected | Current State | Gap |
|---|---|---|---|---|---|
| 1 | Field/Validation/Rule/Workflow | ... | ... | Missing/Wrong/Partial | ... |

Types: `Field` · `Validation` · `BusinessRule` · `Workflow`

---

### STEP 4 — Fix Prompts

For each gap in Step 3, generate one minimal fix prompt. No explanation — only the exact change.

```
### Fix <n>
Gap: <gap # from Step 3>
Target: SP | API | UI
File: <exact file or SP name>
Change:
<precise code instruction or diff>
```

Rules:
- Prefer pushing logic to SP over API/UI
- One fix prompt per gap
- No schema changes

---

### STEP 5 — Validation Alignment Checklist

Confirm each validation from Step 1 is enforced at the correct layer after fixes:

| Validation ID | Rule | Enforced In | Status |
|---|---|---|---|
| V01 | ... | SP / API / UI | Covered / Gap remains |

---

### STEP 6 — Postman Collection

Generate a complete Postman collection (JSON, v2.1 schema) covering:

- `POST /api/purchase-requisition` — Create PR
- `PUT /api/purchase-requisition/{id}` — Update PR
- `GET /api/purchase-requisition/{id}` — Get by ID
- `GET /api/purchase-requisition` — Paginated list
- Approve / Reject endpoints (only if workflow exists in FSD)

Each request must include:
- Method + URL
- Headers (`Content-Type`, `Authorization: Bearer <token>`)
- Sample request body (realistic values)
- Expected success response
- Expected error response (at least one)

---

## Output Order

1. FSD Extract (JSON)
2. Gap Analysis Table
3. Fix Prompts (numbered)
4. Validation Alignment Checklist
5. Postman Collection (JSON)

## Output Rules
- No filler text or re-statements of the instructions
- Use exact field/SP/file names from the codebase — no invented names
- Compact structured output throughout
- Flag any FSD ambiguity inline as `[AMBIGUOUS: <question>]` rather than assuming
