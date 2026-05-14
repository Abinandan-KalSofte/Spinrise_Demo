# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: auth\login.spec.ts >> Login — Happy Path >> should login successfully with valid admin credentials
- Location: e2e\tests\auth\login.spec.ts:32:3

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
    - generic [ref=e11]: 14 May 2026 | 03:40:12 PM
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
              - generic "Current time 03:40:12 PM" [ref=e106]:
                - generic [ref=e108]:
                  - generic [ref=e109]: Live Time
                  - generic [ref=e110]: 03:40:12 PM
            - button "Log In" [ref=e116] [cursor=pointer]:
              - generic [ref=e117]: Log In
        - generic [ref=e118]: © 2026 Kalpatharu Software Ltd. All rights reserved.
```

# Test source

```ts
  1   | /**
  2   |  * LoginPage — Page Object Model
  3   |  *
  4   |  * Encapsulates all interactions with the Spinrise login screen.
  5   |  *
  6   |  * Fields on the login form:
  7   |  *  1. Company    → Ant Design Select (pre-selected: KAL)
  8   |  *  2. Division   → Ant Design Select (loaded from API)
  9   |  *  3. User ID    → Input
  10  |  *  4. Password   → Input.Password
  11  |  *  5. Transaction Date → DatePicker (defaults to today)
  12  |  *  6. Log In button
  13  |  */
  14  | 
  15  | import type { Page } from '@playwright/test'
  16  | import { expect } from '@playwright/test'
  17  | import { BasePage } from './BasePage'
  18  | import { selectByLabel, setDateByLabel } from '../utils/antdHelpers'
  19  | 
  20  | export class LoginPage extends BasePage {
  21  |   constructor(page: Page) {
  22  |     super(page)
  23  |   }
  24  | 
  25  |   // ── Locators ──────────────────────────────────────────────────────────────
  26  | 
  27  |   /** The "Division" form item (contains a Select or Input depending on API) */
  28  |   get divisionField() {
  29  |     return this.page.locator('.ant-form-item').filter({ hasText: 'Division' }).first()
  30  |   }
  31  | 
  32  |   get userIdInput() {
  33  |     return this.page.getByLabel('User ID')
  34  |   }
  35  | 
  36  |   get passwordInput() {
  37  |     return this.page.getByLabel('Password')
  38  |   }
  39  | 
  40  |   get loginButton() {
  41  |     return this.page.getByRole('button', { name: 'Log In' })
  42  |   }
  43  | 
  44  |   get errorToast() {
  45  |     return this.page.locator('.ant-message-notice-content').last()
  46  |   }
  47  | 
  48  |   get brandTitle() {
  49  |     return this.page.locator('.login-header__brand-name')
  50  |   }
  51  | 
  52  |   // ── Actions ───────────────────────────────────────────────────────────────
  53  | 
  54  |   /**
  55  |    * Navigate to the login page.
  56  |    */
  57  |   async goto(): Promise<void> {
  58  |     await this.navigate('/login')
  59  |     // Wait for the login form to be visible
  60  |     await expect(this.loginButton).toBeVisible()
  61  |   }
  62  | 
  63  |   /**
  64  |    * Select a division from the Division dropdown.
  65  |    * The Division dropdown is loaded from the /divisions/active API.
  66  |    *
  67  |    * @param divCode - Division code (e.g. "SAR")
  68  |    */
  69  |   async selectDivision(divCode: string): Promise<void> {
  70  |     // Wait for the division dropdown to load options
> 71  |     await this.page.waitForResponse(/divisions\/active/)
      |                     ^ TimeoutError: page.waitForResponse: Timeout 15000ms exceeded while waiting for event "response"
  72  | 
  73  |     // Click the Division select trigger
  74  |     await this.divisionField.locator('.ant-select-selector').click()
  75  | 
  76  |     const dropdown = this.page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
  77  |     await dropdown.waitFor({ state: 'visible' })
  78  | 
  79  |     // Options look like: "SAR – Saranya Spinning Mills"
  80  |     // Try exact divCode match first, then partial
  81  |     const option = dropdown.locator('.ant-select-item-option').filter({ hasText: divCode }).first()
  82  |     await option.click()
  83  |     await dropdown.waitFor({ state: 'hidden' })
  84  |   }
  85  | 
  86  |   /**
  87  |    * Fill the User ID field.
  88  |    */
  89  |   async fillUserId(userId: string): Promise<void> {
  90  |     await this.userIdInput.fill(userId)
  91  |   }
  92  | 
  93  |   /**
  94  |    * Fill the Password field.
  95  |    */
  96  |   async fillPassword(password: string): Promise<void> {
  97  |     await this.passwordInput.fill(password)
  98  |   }
  99  | 
  100 |   /**
  101 |    * Set the Transaction Date (Processing Date).
  102 |    * The date picker defaults to today — override here for backdated tests.
  103 |    *
  104 |    * @param date - formatted as "DD-MMM-YYYY" e.g. "14-May-2026"
  105 |    */
  106 |   async setTransactionDate(date: string): Promise<void> {
  107 |     await setDateByLabel(this.page, 'Transaction Date', date)
  108 |   }
  109 | 
  110 |   /**
  111 |    * Click the Log In button and wait for navigation.
  112 |    */
  113 |   async clickLogin(): Promise<void> {
  114 |     await this.waitForApiResponse(
  115 |       /auth\/login/,
  116 |       () => this.loginButton.click(),
  117 |     )
  118 |   }
  119 | 
  120 |   /**
  121 |    * Perform a complete login flow.
  122 |    *
  123 |    * @param divCode    - Division code
  124 |    * @param userId     - Username
  125 |    * @param password   - Password
  126 |    * @param date       - Processing date (optional, defaults to today)
  127 |    */
  128 |   async login(
  129 |     divCode: string,
  130 |     userId: string,
  131 |     password: string,
  132 |     date?: string,
  133 |   ): Promise<void> {
  134 |     await this.goto()
  135 |     await this.selectDivision(divCode)
  136 |     await this.fillUserId(userId)
  137 |     await this.fillPassword(password)
  138 |     if (date) {
  139 |       await this.setTransactionDate(date)
  140 |     }
  141 |     // Login triggers navigation to /purchase/requisition/v1/new
  142 |     await Promise.all([
  143 |       this.page.waitForURL(/purchase\/requisition/),
  144 |       this.loginButton.click(),
  145 |     ])
  146 |   }
  147 | 
  148 |   // ── Assertions ────────────────────────────────────────────────────────────
  149 | 
  150 |   /**
  151 |    * Assert the login page brand is visible (sanity check before filling form).
  152 |    */
  153 |   async expectLoginPageLoaded(): Promise<void> {
  154 |     await expect(this.brandTitle).toContainText('SpinRise')
  155 |     await expect(this.loginButton).toBeVisible()
  156 |   }
  157 | 
  158 |   /**
  159 |    * Assert an error message appeared after a failed login attempt.
  160 |    */
  161 |   async expectLoginError(message: string): Promise<void> {
  162 |     await expect(this.errorToast).toContainText(message, { timeout: 8000 })
  163 |   }
  164 | 
  165 |   /**
  166 |    * Assert we were redirected away from login after success.
  167 |    */
  168 |   async expectLoginSuccess(): Promise<void> {
  169 |     await expect(this.page).not.toHaveURL(/login/, { timeout: 10_000 })
  170 |   }
  171 | }
```