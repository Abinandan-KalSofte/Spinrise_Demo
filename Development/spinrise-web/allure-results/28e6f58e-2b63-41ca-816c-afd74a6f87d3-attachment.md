# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: auth\auth.setup.ts >> authenticate as manager
- Location: e2e\fixtures\auth.fixture.ts:76:1

# Error details

```
Error: Login failed (401): {"success":false,"message":"Invalid User Name or Password.","errors":null,"warnings":null}
```

# Test source

```ts
  1   | /**
  2   |  * API Helpers — Playwright APIRequestContext wrappers
  3   |  *
  4   |  * These functions call the Spinrise backend directly using Playwright's
  5   |  * built-in HTTP client (no browser involved). Useful for:
  6   |  *  - Setting up test prerequisites (create a PR before testing edit)
  7   |  *  - Cleaning up after tests (delete records created during the test)
  8   |  *  - Asserting API response payloads independently from the UI
  9   |  *
  10  |  * For beginners: This is separate from the browser tests.
  11  |  *   apiRequest = Playwright's direct HTTP client (like curl or Postman)
  12  |  *   page       = the actual browser automation
  13  |  */
  14  | 
  15  | import type { APIRequestContext } from '@playwright/test'
  16  | 
  17  | // ── Types mirrored from the frontend ─────────────────────────────────────────
  18  | 
  19  | interface LoginPayload {
  20  |   divCode: string
  21  |   userName: string
  22  |   password: string
  23  | }
  24  | 
  25  | interface AuthTokens {
  26  |   accessToken: string
  27  |   refreshToken: string
  28  | }
  29  | 
  30  | interface AuthUser {
  31  |   id: number
  32  |   userId: string
  33  |   userName: string
  34  |   email: string
  35  |   role: string
  36  |   divCode: string
  37  | }
  38  | 
  39  | interface LoginResult {
  40  |   user: AuthUser
  41  |   tokens: AuthTokens
  42  | }
  43  | 
  44  | interface CreatePRPayload {
  45  |   prDate: string          // "YYYY-MM-DD"
  46  |   depCode: string
  47  |   section?: string
  48  |   iType?: string
  49  |   reqName?: string
  50  |   refNo?: string
  51  |   lines: Array<{
  52  |     itemCode: string
  53  |     qtyRequired: number
  54  |     isSample: boolean
  55  |     uom?: string
  56  |   }>
  57  | }
  58  | 
  59  | interface ApiResponse<T> {
  60  |   success: boolean
  61  |   message: string
  62  |   data?: T
  63  | }
  64  | 
  65  | // ── Auth ──────────────────────────────────────────────────────────────────────
  66  | 
  67  | /**
  68  |  * Login via the backend API and return the auth tokens.
  69  |  * Used in setup.ts to create storageState for tests.
  70  |  *
  71  |  * @param request - Playwright's APIRequestContext
  72  |  * @param payload - login credentials
  73  |  */
  74  | export async function loginViaApi(
  75  |   request: APIRequestContext,
  76  |   payload: LoginPayload,
  77  | ): Promise<LoginResult> {
  78  |   const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  79  |   const res = await request.post(`${baseUrl}/api/v1/auth/login`, {
  80  |     data: payload,
  81  |     headers: { 'Content-Type': 'application/json' },
  82  |   })
  83  | 
  84  |   if (!res.ok()) {
  85  |     const body = await res.text()
> 86  |     throw new Error(`Login failed (${res.status()}): ${body}`)
      |           ^ Error: Login failed (401): {"success":false,"message":"Invalid User Name or Password.","errors":null,"warnings":null}
  87  |   }
  88  | 
  89  |   const body = (await res.json()) as ApiResponse<LoginResult>
  90  |   if (!body.success || !body.data) {
  91  |     throw new Error(`Login API returned success=false: ${body.message}`)
  92  |   }
  93  |   return body.data
  94  | }
  95  | 
  96  | // ── Purchase Requisition ──────────────────────────────────────────────────────
  97  | 
  98  | /**
  99  |  * Create a Purchase Requisition via the API.
  100 |  * Returns the generated prNo.
  101 |  *
  102 |  * Use in beforeEach to set up a PR that a test will edit or delete.
  103 |  *
  104 |  * SQL verification:
  105 |  *   SELECT INDNO, STATUS FROM PO_INDENT WHERE INDNO = <prNo>
  106 |  *   Expected: STATUS = 'OPEN'
  107 |  *
  108 |  * API: POST /api/v1/purchase-requisitions
  109 |  *   Request:  { prDate, depCode, iType, lines[] }
  110 |  *   Response: { success: true, data: { prNo: number } }
  111 |  */
  112 | export async function createPRViaApi(
  113 |   request: APIRequestContext,
  114 |   token: string,
  115 |   processingDate: string,
  116 |   payload: CreatePRPayload,
  117 | ): Promise<number> {
  118 |   const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  119 |   const res = await request.post(`${baseUrl}/api/v1/purchase-requisitions`, {
  120 |     data: payload,
  121 |     headers: {
  122 |       'Content-Type': 'application/json',
  123 |       Authorization: `Bearer ${token}`,
  124 |       'X-Processing-Date': processingDate,
  125 |     },
  126 |   })
  127 | 
  128 |   if (!res.ok()) {
  129 |     const body = await res.text()
  130 |     throw new Error(`createPRViaApi failed (${res.status()}): ${body}`)
  131 |   }
  132 | 
  133 |   const body = (await res.json()) as ApiResponse<{ prNo: number }>
  134 |   if (!body.success || !body.data) {
  135 |     throw new Error(`createPRViaApi: API returned success=false: ${body.message}`)
  136 |   }
  137 |   return body.data.prNo
  138 | }
  139 | 
  140 | /**
  141 |  * Delete a Purchase Requisition via the API.
  142 |  * Used in afterEach to clean up test-created records.
  143 |  *
  144 |  * API: DELETE /api/v1/purchase-requisitions/{prNo}?deleteReasonCode=TEST
  145 |  */
  146 | export async function deletePRViaApi(
  147 |   request: APIRequestContext,
  148 |   token: string,
  149 |   processingDate: string,
  150 |   prNo: number,
  151 |   deleteReasonCode = 'TEST',
  152 | ): Promise<void> {
  153 |   const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  154 |   const res = await request.delete(
  155 |     `${baseUrl}/api/v1/purchase-requisitions/${prNo}?deleteReasonCode=${deleteReasonCode}`,
  156 |     {
  157 |       headers: {
  158 |         Authorization: `Bearer ${token}`,
  159 |         'X-Processing-Date': processingDate,
  160 |       },
  161 |     },
  162 |   )
  163 | 
  164 |   // 404 = already deleted — acceptable
  165 |   if (!res.ok() && res.status() !== 404) {
  166 |     const body = await res.text()
  167 |     throw new Error(`deletePRViaApi failed (${res.status()}): ${body}`)
  168 |   }
  169 | }
  170 | 
  171 | /**
  172 |  * Fetch a PR's current status via the API.
  173 |  *
  174 |  * API: GET /api/v1/purchase-requisitions/{prNo}
  175 |  *   Response: { data: { prStatus: string, ... } }
  176 |  */
  177 | export async function getPRStatusViaApi(
  178 |   request: APIRequestContext,
  179 |   token: string,
  180 |   processingDate: string,
  181 |   prNo: number,
  182 | ): Promise<string> {
  183 |   const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  184 |   const res = await request.get(
  185 |     `${baseUrl}/api/v1/purchase-requisitions/${prNo}`,
  186 |     {
```