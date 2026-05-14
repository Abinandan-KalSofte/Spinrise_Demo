# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: auth\login.spec.ts >> Login — Happy Path >> should load active divisions in the dropdown
- Location: e2e\tests\auth\login.spec.ts:66:3

# Error details

```
TimeoutError: page.waitForResponse: Timeout 15000ms exceeded while waiting for event "response"
=========================== logs ===========================
waiting for response /divisions\/active/
============================================================
```

# Page snapshot

```yaml
- generic [ref=e4]:
  - banner [ref=e5]:
    - generic [ref=e6]:
      - img "Kalsofte" [ref=e7]
      - generic [ref=e8]:
        - generic [ref=e9]: SpinRise
        - generic [ref=e10]: ERP Platform
    - generic [ref=e11]: 14 May 2026 | 03:40:33 PM
  - main [ref=e12]:
    - generic [ref=e13]:
      - generic [ref=e14]:
        - generic [ref=e15]:
          - img "Kalpatharu Software Ltd" [ref=e16]
          - heading "Kalpatharu Software Ltd" [level=2] [ref=e18]
          - paragraph [ref=e19]: Enterprise Resource Planning
          - generic [ref=e22]: Licensed Portal
        - generic [ref=e24]: SpinRise ERP v1.0
      - generic [ref=e25]:
        - generic [ref=e26]:
          - generic [ref=e27]:
            - generic [ref=e28]: Sign In
            - generic [ref=e29]: Purchase Requisition System
          - generic [ref=e30]:
            - generic [ref=e32]:
              - generic "Company" [ref=e34]
              - generic [ref=e38] [cursor=pointer]:
                - generic [ref=e40]:
                  - combobox "Company" [ref=e42]
                  - generic "Kalpatharu Software Ltd" [ref=e43]
                - img [ref=e44]:
                  - img [ref=e45]
            - generic [ref=e48]:
              - generic "Division" [ref=e50]
              - generic [ref=e54] [cursor=pointer]:
                - generic [ref=e56]:
                  - combobox "Division" [ref=e58]
                  - generic: Select division
                - img [ref=e59]:
                  - img [ref=e60]
            - generic [ref=e63]: Credentials
            - generic [ref=e65]:
              - generic "User ID" [ref=e67]
              - generic [ref=e71]:
                - img "user" [ref=e73]:
                  - img [ref=e74]
                - textbox "User ID" [ref=e76]:
                  - /placeholder: Enter your User ID
            - generic [ref=e78]:
              - generic "Password" [ref=e80]
              - generic [ref=e84]:
                - img "lock" [ref=e86]:
                  - img [ref=e87]
                - textbox "Password" [ref=e89]:
                  - /placeholder: Enter your password
                - img "eye-invisible" [ref=e91] [cursor=pointer]:
                  - img [ref=e92]
            - generic [ref=e95]:
              - generic [ref=e97]:
                - generic "Transaction Date" [ref=e99]
                - generic [ref=e104]:
                  - textbox "Transaction Date" [ref=e105]:
                    - /placeholder: Select date
                    - text: 14-May-2026
                  - generic:
                    - img "calendar":
                      - img
              - generic "Current time 03:40:33 PM" [ref=e106]:
                - generic [ref=e108]:
                  - generic [ref=e109]: Live Time
                  - generic [ref=e110]: 03:40:33 PM
            - button "Log In" [ref=e116] [cursor=pointer]:
              - generic [ref=e117]: Log In
        - generic [ref=e118]: © 2026 Kalpatharu Software Ltd. All rights reserved.
```

# Test source

```ts
  1   | /**
  2   |  * Auth Test Suite — Login / Logout
  3   |  *
  4   |  * These tests exercise the login page directly (no storageState shortcut)
  5   |  * because the login page itself IS what we're testing here.
  6   |  *
  7   |  * Prerequisites:
  8   |  *  - Spinrise backend running and accessible
  9   |  *  - At least one active division exists in the DB
  10  |  *  - Test users exist (see .env.test)
  11  |  */
  12  | 
  13  | import { test, expect } from '@playwright/test'
  14  | import { LoginPage } from '../../pages/LoginPage'
  15  | import { buildLoginData } from '../../utils/testDataFactory'
  16  | 
  17  | // ── Override storageState — login tests must start unauthenticated ────────────
  18  | // We use test.use() to clear the storageState for this file only.
  19  | test.use({ storageState: { cookies: [], origins: [] } })
  20  | 
  21  | // ─────────────────────────────────────────────────────────────────────────────
  22  | // HAPPY PATH
  23  | // ─────────────────────────────────────────────────────────────────────────────
  24  | 
  25  | test.describe('Login — Happy Path', () => {
  26  |   /**
  27  |    * @scenario  Successful login with valid admin credentials
  28  |    * @purpose   Verify that a valid user can log in and is redirected to the PR form
  29  |    * @prereqs   Admin user exists in DB with the credentials in .env.test
  30  |    * @expected  Redirected to /purchase/requisition/v1/new; no error shown
  31  |    */
  32  |   test('should login successfully with valid admin credentials', async ({ page }) => {
  33  |     const loginPage = new LoginPage(page)
  34  |     const creds = buildLoginData('admin')
  35  | 
  36  |     await loginPage.goto()
  37  |     await loginPage.expectLoginPageLoaded()
  38  | 
  39  |     await loginPage.login(creds.divCode, creds.userName, creds.password)
  40  | 
  41  |     // After login, redirected to PR form
  42  |     await expect(page).toHaveURL(/purchase\/requisition\/v1\/new/)
  43  |   })
  44  | 
  45  |   /**
  46  |    * @scenario  Login page displays the SpinRise branding
  47  |    * @purpose   Verify branding elements are rendered correctly
  48  |    * @prereqs   None — unauthenticated access
  49  |    * @expected  "SpinRise" title and "Sign In" heading visible
  50  |    */
  51  |   test('should display SpinRise branding on login page', async ({ page }) => {
  52  |     const loginPage = new LoginPage(page)
  53  |     await loginPage.goto()
  54  | 
  55  |     await expect(page.locator('.login-header__brand-name')).toContainText('SpinRise')
  56  |     await expect(page.locator('.login-card__form-title')).toContainText('Sign In')
  57  |     await expect(page.locator('.login-card__left-company')).toContainText('Kalpatharu Software Ltd')
  58  |   })
  59  | 
  60  |   /**
  61  |    * @scenario  Division dropdown loads from API
  62  |    * @purpose   Verify the division list is fetched and rendered
  63  |    * @prereqs   At least one active division exists
  64  |    * @expected  Division dropdown has at least one option
  65  |    */
  66  |   test('should load active divisions in the dropdown', async ({ page }) => {
  67  |     const loginPage = new LoginPage(page)
  68  |     await loginPage.goto()
  69  | 
  70  |     // Wait for the API response
> 71  |     await page.waitForResponse(/divisions\/active/)
      |                ^ TimeoutError: page.waitForResponse: Timeout 15000ms exceeded while waiting for event "response"
  72  | 
  73  |     // Click division select and verify options exist
  74  |     await loginPage.divisionField.locator('.ant-select-selector').click()
  75  |     const dropdown = page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
  76  |     await dropdown.waitFor({ state: 'visible' })
  77  | 
  78  |     const options = dropdown.locator('.ant-select-item-option')
  79  |     await expect(options).toHaveCount(1, { timeout: 5000 })
  80  |     // At minimum 1 division
  81  |     const count = await options.count()
  82  |     expect(count).toBeGreaterThanOrEqual(1)
  83  |   })
  84  | 
  85  |   /**
  86  |    * @scenario  Transaction Date defaults to today
  87  |    * @purpose   Verify the date picker is pre-populated with today's date
  88  |    * @prereqs   None
  89  |    * @expected  Date picker shows today's date in DD-MMM-YYYY format
  90  |    */
  91  |   test('should default transaction date to today', async ({ page }) => {
  92  |     const loginPage = new LoginPage(page)
  93  |     await loginPage.goto()
  94  | 
  95  |     const today = new Date()
  96  |     const months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
  97  |     const expectedDate = `${String(today.getDate()).padStart(2,'0')}-${months[today.getMonth()]}-${today.getFullYear()}`
  98  | 
  99  |     const dateInput = page.locator('.ant-picker input').first()
  100 |     await expect(dateInput).toHaveValue(expectedDate)
  101 |   })
  102 | })
  103 | 
  104 | // ─────────────────────────────────────────────────────────────────────────────
  105 | // NEGATIVE PATH
  106 | // ─────────────────────────────────────────────────────────────────────────────
  107 | 
  108 | test.describe('Login — Negative Path', () => {
  109 |   /**
  110 |    * @scenario  Login fails with wrong password
  111 |    * @purpose   Verify incorrect credentials show an error, not crash
  112 |    * @prereqs   Admin user exists
  113 |    * @expected  Error toast shown; still on login page
  114 |    */
  115 |   test('should show error for invalid credentials', async ({ page }) => {
  116 |     const loginPage = new LoginPage(page)
  117 |     const creds = buildLoginData('admin')
  118 | 
  119 |     await loginPage.goto()
  120 |     await loginPage.selectDivision(creds.divCode)
  121 |     await loginPage.fillUserId(creds.userName)
  122 |     await loginPage.fillPassword('WRONG_PASSWORD_123!')
  123 |     await loginPage.loginButton.click()
  124 | 
  125 |     // Should show error toast
  126 |     await loginPage.expectLoginError('Invalid')
  127 |     // Should remain on login page
  128 |     await expect(page).toHaveURL(/login/)
  129 |   })
  130 | 
  131 |   /**
  132 |    * @scenario  Form validation on empty submit
  133 |    * @purpose   Verify all required fields trigger inline validation errors
  134 |    * @prereqs   None
  135 |    * @expected  Each required field shows a "Required" error message
  136 |    */
  137 |   test('should show validation errors when submitting empty form', async ({ page }) => {
  138 |     const loginPage = new LoginPage(page)
  139 |     await loginPage.goto()
  140 | 
  141 |     // Wait for form to be ready, then submit without filling
  142 |     await loginPage.loginButton.click()
  143 | 
  144 |     // All required fields should show errors
  145 |     await expect(page.locator('.ant-form-item-explain-error').first()).toBeVisible()
  146 |   })
  147 | 
  148 |   /**
  149 |    * @scenario  Login with empty User ID
  150 |    * @purpose   Verify User ID field validation
  151 |    * @prereqs   None
  152 |    * @expected  "Please enter your User ID" validation shown
  153 |    */
  154 |   test('should show validation error for empty User ID', async ({ page }) => {
  155 |     const loginPage = new LoginPage(page)
  156 |     const creds = buildLoginData('admin')
  157 | 
  158 |     await loginPage.goto()
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
```