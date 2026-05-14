/**
 * LoginPage — Page Object Model
 *
 * Encapsulates all interactions with the Spinrise login screen.
 *
 * Fields on the login form:
 *  1. Company    → Ant Design Select (pre-selected: KAL)
 *  2. Division   → Ant Design Select (loaded from API)
 *  3. User ID    → Input
 *  4. Password   → Input.Password
 *  5. Transaction Date → DatePicker (defaults to today)
 *  6. Log In button
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from './BasePage'
import { selectByLabel, setDateByLabel } from '../utils/antdHelpers'

export class LoginPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  // ── Locators ──────────────────────────────────────────────────────────────

  /** The "Division" form item (contains a Select or Input depending on API) */
  get divisionField() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Division' }).first()
  }

  get userIdInput() {
    return this.page.getByLabel('User ID')
  }

  get passwordInput() {
    return this.page.getByLabel('Password')
  }

  get loginButton() {
    return this.page.getByRole('button', { name: 'Log In' })
  }

  get errorToast() {
    return this.page.locator('.ant-message-notice-content').last()
  }

  get brandTitle() {
    return this.page.locator('.login-header__brand-name')
  }

  // ── Actions ───────────────────────────────────────────────────────────────

  /**
   * Navigate to the login page.
   */
  async goto(): Promise<void> {
    await this.navigate('/login')
    // Wait for the login form to be visible
    await expect(this.loginButton).toBeVisible()
  }

  /**
   * Select a division from the Division dropdown.
   * The Division dropdown is loaded from the /divisions/active API.
   *
   * @param divCode - Division code (e.g. "SAR")
   */
  async selectDivision(divCode: string): Promise<void> {
    // Wait for the division dropdown to load options
    await this.page.waitForResponse(/divisions\/active/)

    // Click the Division select trigger
    await this.divisionField.locator('.ant-select-selector').click()

    const dropdown = this.page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
    await dropdown.waitFor({ state: 'visible' })

    // Options look like: "SAR – Saranya Spinning Mills"
    // Try exact divCode match first, then partial
    const option = dropdown.locator('.ant-select-item-option').filter({ hasText: divCode }).first()
    await option.click()
    await dropdown.waitFor({ state: 'hidden' })
  }

  /**
   * Fill the User ID field.
   */
  async fillUserId(userId: string): Promise<void> {
    await this.userIdInput.fill(userId)
  }

  /**
   * Fill the Password field.
   */
  async fillPassword(password: string): Promise<void> {
    await this.passwordInput.fill(password)
  }

  /**
   * Set the Transaction Date (Processing Date).
   * The date picker defaults to today — override here for backdated tests.
   *
   * @param date - formatted as "DD-MMM-YYYY" e.g. "14-May-2026"
   */
  async setTransactionDate(date: string): Promise<void> {
    await setDateByLabel(this.page, 'Transaction Date', date)
  }

  /**
   * Click the Log In button and wait for navigation.
   */
  async clickLogin(): Promise<void> {
    await this.waitForApiResponse(
      /auth\/login/,
      () => this.loginButton.click(),
    )
  }

  /**
   * Perform a complete login flow.
   *
   * @param divCode    - Division code
   * @param userId     - Username
   * @param password   - Password
   * @param date       - Processing date (optional, defaults to today)
   */
  async login(
    divCode: string,
    userId: string,
    password: string,
    date?: string,
  ): Promise<void> {
    await this.goto()
    await this.selectDivision(divCode)
    await this.fillUserId(userId)
    await this.fillPassword(password)
    if (date) {
      await this.setTransactionDate(date)
    }
    // Login triggers navigation to /purchase/requisition/v1/new
    await Promise.all([
      this.page.waitForURL(/purchase\/requisition/),
      this.loginButton.click(),
    ])
  }

  // ── Assertions ────────────────────────────────────────────────────────────

  /**
   * Assert the login page brand is visible (sanity check before filling form).
   */
  async expectLoginPageLoaded(): Promise<void> {
    await expect(this.brandTitle).toContainText('SpinRise')
    await expect(this.loginButton).toBeVisible()
  }

  /**
   * Assert an error message appeared after a failed login attempt.
   */
  async expectLoginError(message: string): Promise<void> {
    await expect(this.errorToast).toContainText(message, { timeout: 8000 })
  }

  /**
   * Assert we were redirected away from login after success.
   */
  async expectLoginSuccess(): Promise<void> {
    await expect(this.page).not.toHaveURL(/login/, { timeout: 10_000 })
  }
}
