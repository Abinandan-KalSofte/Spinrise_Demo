# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: auth\login.spec.ts >> Login — Security >> should redirect unauthenticated users to login
- Location: e2e\tests\auth\login.spec.ts:255:3

# Error details

```
Error: expect(page).toHaveURL(expected) failed

Expected pattern: /login/
Received string:  "http://172.16.16.40:3000/purchase/requisition"
Timeout: 10000ms

Call log:
  - Expect "toHaveURL" with timeout 10000ms
    23 × unexpected value "http://172.16.16.40:3000/purchase/requisition"

```

```yaml
- banner:
  - img "Kalsofte"
  - text: SpinRise ERP Platform 14 May 2026 | 03:41:50 PM
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
  - text: Live Time 03:41:50 PM
  - button "Log In"
  - text: © 2026 Kalpatharu Software Ltd. All rights reserved.
```

# Test source

```ts
  159 |     await loginPage.selectDivision(creds.divCode)
  160 |     // Skip user ID, fill password
  161 |     await loginPage.fillPassword(creds.password)
  162 |     await loginPage.loginButton.click()
  163 | 
  164 |     await expect(
  165 |       page.locator('.ant-form-item-explain-error').filter({ hasText: 'Please enter your User ID' }),
  166 |     ).toBeVisible()
  167 |   })
  168 | 
  169 |   /**
  170 |    * @scenario  Future date rejected in Transaction Date
  171 |    * @purpose   The date picker should disable future dates
  172 |    * @prereqs   None
  173 |    * @expected  Tomorrow's date cell is disabled in the calendar
  174 |    */
  175 |   test('should disable future dates in transaction date picker', async ({ page }) => {
  176 |     const loginPage = new LoginPage(page)
  177 |     await loginPage.goto()
  178 | 
  179 |     // Open the date picker
  180 |     await page.locator('.ant-picker').click()
  181 |     await page.locator('.ant-picker-dropdown').waitFor({ state: 'visible' })
  182 | 
  183 |     // Tomorrow's date should have the disabled class
  184 |     const tomorrow = new Date()
  185 |     tomorrow.setDate(tomorrow.getDate() + 1)
  186 |     const tomorrowDay = tomorrow.getDate()
  187 | 
  188 |     // Find tomorrow's cell and verify it's disabled
  189 |     const cells = page.locator('.ant-picker-cell')
  190 |     const tomorrowCell = cells.filter({ hasText: `${tomorrowDay}` }).last()
  191 |     await expect(tomorrowCell).toHaveClass(/ant-picker-cell-disabled/)
  192 |   })
  193 | })
  194 | 
  195 | // ─────────────────────────────────────────────────────────────────────────────
  196 | // SECURITY
  197 | // ─────────────────────────────────────────────────────────────────────────────
  198 | 
  199 | test.describe('Login — Security', () => {
  200 |   /**
  201 |    * @scenario  XSS injection in User ID field
  202 |    * @purpose   Ensure XSS payloads are not executed
  203 |    * @prereqs   None
  204 |    * @expected  Input is treated as plain text; no alert dialog appears
  205 |    */
  206 |   test('should not execute XSS payload in User ID field', async ({ page }) => {
  207 |     const loginPage = new LoginPage(page)
  208 |     await loginPage.goto()
  209 | 
  210 |     // Set up dialog listener — should NOT be triggered
  211 |     let alertFired = false
  212 |     page.on('dialog', (dialog) => {
  213 |       alertFired = true
  214 |       void dialog.dismiss()
  215 |     })
  216 | 
  217 |     await loginPage.fillUserId('<script>alert("XSS")</script>')
  218 |     await loginPage.fillPassword('anypass')
  219 | 
  220 |     // Verify no alert was triggered
  221 |     expect(alertFired).toBe(false)
  222 | 
  223 |     // Verify the input contains the raw string, not executed JS
  224 |     const value = await loginPage.userIdInput.inputValue()
  225 |     expect(value).toContain('script')
  226 |   })
  227 | 
  228 |   /**
  229 |    * @scenario  SQL injection in login fields
  230 |    * @purpose   Verify parameterized queries prevent SQL injection
  231 |    * @prereqs   Backend uses parameterized stored procedures
  232 |    * @expected  Login returns an error (invalid credentials), not a DB error
  233 |    */
  234 |   test('should handle SQL injection gracefully in credentials', async ({ page }) => {
  235 |     const loginPage = new LoginPage(page)
  236 |     const creds = buildLoginData('admin')
  237 | 
  238 |     await loginPage.goto()
  239 |     await loginPage.selectDivision(creds.divCode)
  240 |     await loginPage.fillUserId("admin' OR '1'='1")
  241 |     await loginPage.fillPassword("' OR 1=1 --")
  242 |     await loginPage.loginButton.click()
  243 | 
  244 |     // Should get an error, not a successful login
  245 |     await loginPage.expectLoginError('')
  246 |     await expect(page).toHaveURL(/login/)
  247 |   })
  248 | 
  249 |   /**
  250 |    * @scenario  Unauthenticated access to protected route
  251 |    * @purpose   Verify ProtectedRoute redirects to login
  252 |    * @prereqs   User is not logged in (cleared storageState)
  253 |    * @expected  Redirected to /login when accessing /purchase/requisition
  254 |    */
  255 |   test('should redirect unauthenticated users to login', async ({ page }) => {
  256 |     // Try accessing a protected route without auth
  257 |     await page.goto('/purchase/requisition')
  258 |     // Should be redirected to login
> 259 |     await expect(page).toHaveURL(/login/, { timeout: 10_000 })
      |                        ^ Error: expect(page).toHaveURL(expected) failed
  260 |   })
  261 | })
  262 | 
```