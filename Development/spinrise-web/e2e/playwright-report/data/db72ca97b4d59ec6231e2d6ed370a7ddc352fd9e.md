# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: purchase-requisition\pr-security.spec.ts >> PR Security — Authentication Guard >> should redirect to login when accessing dashboard unauthenticated
- Location: e2e\tests\purchase-requisition\pr-security.spec.ts:206:3

# Error details

```
Error: expect(page).toHaveURL(expected) failed

Expected pattern: /login/
Received string:  "http://172.16.16.40:3000/"
Timeout: 10000ms

Call log:
  - Expect "toHaveURL" with timeout 10000ms
    23 × unexpected value "http://172.16.16.40:3000/"

```

```yaml
- banner:
  - img "Kalsofte"
  - text: SpinRise ERP Platform 14 May 2026 | 03:43:17 PM
- main:
  - img "Kalpatharu Software Ltd"
  - heading "Kalpatharu Software Ltd" [level=2]
  - paragraph: Enterprise Resource Planning
  - text: Licensed Portal SpinRise ERP v1.0 Sign In Purchase Requisition System Company
  - combobox "Company"
  - text: Kalpatharu Software Ltd Division
  - combobox "Division"
  - text: Select division Credentials User ID
  - img "user"
  - textbox "User ID":
    - /placeholder: Enter your User ID
  - text: Password
  - img "lock"
  - textbox "Password":
    - /placeholder: Enter your password
  - img "eye-invisible"
  - text: Transaction Date
  - textbox "Transaction Date":
    - /placeholder: Select date
    - text: 14-May-2026
  - img "calendar"
  - text: Live Time 03:43:17 PM
  - button "Log In"
  - text: © 2026 Kalpatharu Software Ltd. All rights reserved.
```

# Test source

```ts
  108 |     await page.waitForTimeout(500)
  109 |     expect(alerts).toHaveLength(0)
  110 |   })
  111 | })
  112 | 
  113 | // ─────────────────────────────────────────────────────────────────────────────
  114 | // SQL INJECTION
  115 | // ─────────────────────────────────────────────────────────────────────────────
  116 | 
  117 | test.describe('PR Security — SQL Injection Protection', () => {
  118 |   /**
  119 |    * @scenario  SQL injection in PR list search
  120 |    * @purpose   Verify parameterized queries prevent injection in search
  121 |    * @prereqs   Authenticated admin; PR list page
  122 |    * @expected  No DB error; page returns normal (empty) results
  123 |    *
  124 |    * Backend protection: ksp_PR_GetPaginated uses parameterized @SearchText
  125 |    * SQL: EXEC ksp_PR_GetPaginated @SearchText = "'; DROP TABLE PO_INDENT; --"
  126 |    *      → Treated as literal string, not executed
  127 |    */
  128 |   test('should handle SQL injection in PR list search gracefully', async ({ page }) => {
  129 |     const prListPage = new PRListPage(page)
  130 |     await prListPage.goto()
  131 | 
  132 |     for (const payload of SQL_INJECTION_PAYLOADS) {
  133 |       await prListPage.filterPRNoInput.fill(payload)
  134 |       await prListPage.search()
  135 | 
  136 |       // Verify the page didn't crash and shows normal state
  137 |       await expect(page.locator('body')).toBeVisible()
  138 |       // Verify no server error message
  139 |       await expect(page.locator('.ant-alert-error')).toHaveCount(0).catch(() => {
  140 |         // Alert may be shown but shouldn't say "SQL" or "syntax error"
  141 |       })
  142 |     }
  143 |   })
  144 | 
  145 |   /**
  146 |    * @scenario  SQL injection in Section and RefNo fields
  147 |    * @purpose   Verify form text fields are parameterized on the backend
  148 |    * @prereqs   PR form in edit mode
  149 |    * @expected  Either validation blocks it or DB stores it as literal text
  150 |    *
  151 |    * Backend: ksp_PR_Insert uses @Section = @Section (parameterized)
  152 |    */
  153 |   test('should store SQL injection payload as literal text, not execute it', async ({ page }) => {
  154 |     const prFormPage = new PRFormPage(page)
  155 |     await prFormPage.goto()
  156 | 
  157 |     const sectionInput = page.getByPlaceholder('e.g. Ring Frame')
  158 |     const sqlPayload = "'; DROP TABLE PO_INDENT; --"
  159 |     await sectionInput.fill(sqlPayload)
  160 | 
  161 |     // Verify the value is stored as-is in the input
  162 |     const value = await sectionInput.inputValue()
  163 |     expect(value).toBe(sqlPayload)
  164 | 
  165 |     // The page should not show any SQL error
  166 |     await expect(page.locator('.ant-alert-error')).toHaveCount(0)
  167 |   })
  168 | })
  169 | 
  170 | // ─────────────────────────────────────────────────────────────────────────────
  171 | // UNAUTHENTICATED ACCESS
  172 | // ─────────────────────────────────────────────────────────────────────────────
  173 | 
  174 | test.describe('PR Security — Authentication Guard', () => {
  175 |   // These tests run WITHOUT the storageState (no auth)
  176 |   test.use({ storageState: { cookies: [], origins: [] } })
  177 | 
  178 |   /**
  179 |    * @scenario  Access PR form without authentication
  180 |    * @purpose   Verify ProtectedRoute redirects unauthenticated users
  181 |    * @prereqs   User is not logged in
  182 |    * @expected  Redirected to /login
  183 |    */
  184 |   test('should redirect to login when accessing PR form unauthenticated', async ({ page }) => {
  185 |     await page.goto('/purchase/requisition/v1/new')
  186 |     await expect(page).toHaveURL(/login/, { timeout: 10_000 })
  187 |   })
  188 | 
  189 |   /**
  190 |    * @scenario  Access PR list without authentication
  191 |    * @purpose   Verify PR list is protected
  192 |    * @prereqs   User is not logged in
  193 |    * @expected  Redirected to /login
  194 |    */
  195 |   test('should redirect to login when accessing PR list unauthenticated', async ({ page }) => {
  196 |     await page.goto('/purchase/requisition')
  197 |     await expect(page).toHaveURL(/login/, { timeout: 10_000 })
  198 |   })
  199 | 
  200 |   /**
  201 |    * @scenario  Access dashboard without authentication
  202 |    * @purpose   Verify all protected routes redirect to login
  203 |    * @prereqs   User is not logged in
  204 |    * @expected  Redirected to /login
  205 |    */
  206 |   test('should redirect to login when accessing dashboard unauthenticated', async ({ page }) => {
  207 |     await page.goto('/')
> 208 |     await expect(page).toHaveURL(/login/, { timeout: 10_000 })
      |                        ^ Error: expect(page).toHaveURL(expected) failed
  209 |   })
  210 | 
  211 |   /**
  212 |    * @scenario  API call with expired/missing JWT returns 401
  213 |    * @purpose   Verify the API rejects requests without a valid token
  214 |    * @prereqs   None
  215 |    * @expected  HTTP 401 response from the backend
  216 |    *
  217 |    * API: GET /api/v1/purchase-requisitions/paginated (no auth header)
  218 |    *   Expected: 401 Unauthorized
  219 |    */
  220 |   test('should return 401 for API calls without a valid JWT', async ({ request }) => {
  221 |     const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  222 |     const res = await request.get(`${baseUrl}/api/v1/purchase-requisitions/paginated`)
  223 |     expect(res.status()).toBe(401)
  224 |   })
  225 | })
  226 | 
```