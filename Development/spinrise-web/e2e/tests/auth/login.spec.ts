/**
 * Auth Test Suite — Login / Logout
 *
 * These tests exercise the login page directly (no storageState shortcut)
 * because the login page itself IS what we're testing here.
 *
 * Prerequisites:
 *  - Spinrise backend running and accessible
 *  - At least one active division exists in the DB
 *  - Test users exist (see .env.test)
 */

import { test, expect } from '@playwright/test'
import { LoginPage } from '../../pages/LoginPage'
import { buildLoginData } from '../../utils/testDataFactory'

// ── Override storageState — login tests must start unauthenticated ────────────
// We use test.use() to clear the storageState for this file only.
test.use({ storageState: { cookies: [], origins: [] } })

// ─────────────────────────────────────────────────────────────────────────────
// HAPPY PATH
// ─────────────────────────────────────────────────────────────────────────────

test.describe('Login — Happy Path', () => {
  /**
   * @scenario  Successful login with valid admin credentials
   * @purpose   Verify that a valid user can log in and is redirected to the PR form
   * @prereqs   Admin user exists in DB with the credentials in .env.test
   * @expected  Redirected to /purchase/requisition/v1/new; no error shown
   */
  test('should login successfully with valid admin credentials', async ({ page }) => {
    const loginPage = new LoginPage(page)
    const creds = buildLoginData('admin')

    await loginPage.goto()
    await loginPage.expectLoginPageLoaded()

    await loginPage.login(creds.divCode, creds.userName, creds.password)

    // After login, redirected to PR form
    await expect(page).toHaveURL(/purchase\/requisition\/v1\/new/)
  })

  /**
   * @scenario  Login page displays the SpinRise branding
   * @purpose   Verify branding elements are rendered correctly
   * @prereqs   None — unauthenticated access
   * @expected  "SpinRise" title and "Sign In" heading visible
   */
  test('should display SpinRise branding on login page', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    await expect(page.locator('.login-header__brand-name')).toContainText('SpinRise')
    await expect(page.locator('.login-card__form-title')).toContainText('Sign In')
    await expect(page.locator('.login-card__left-company')).toContainText('Kalpatharu Software Ltd')
  })

  /**
   * @scenario  Division dropdown loads from API
   * @purpose   Verify the division list is fetched and rendered
   * @prereqs   At least one active division exists
   * @expected  Division dropdown has at least one option
   */
  test('should load active divisions in the dropdown', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    // Wait for the API response
    await page.waitForResponse(/divisions\/active/)

    // Click division select and verify options exist
    await loginPage.divisionField.locator('.ant-select-selector').click()
    const dropdown = page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
    await dropdown.waitFor({ state: 'visible' })

    const options = dropdown.locator('.ant-select-item-option')
    await expect(options).toHaveCount(1, { timeout: 5000 })
    // At minimum 1 division
    const count = await options.count()
    expect(count).toBeGreaterThanOrEqual(1)
  })

  /**
   * @scenario  Transaction Date defaults to today
   * @purpose   Verify the date picker is pre-populated with today's date
   * @prereqs   None
   * @expected  Date picker shows today's date in DD-MMM-YYYY format
   */
  test('should default transaction date to today', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    const today = new Date()
    const months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
    const expectedDate = `${String(today.getDate()).padStart(2,'0')}-${months[today.getMonth()]}-${today.getFullYear()}`

    const dateInput = page.locator('.ant-picker input').first()
    await expect(dateInput).toHaveValue(expectedDate)
  })
})

// ─────────────────────────────────────────────────────────────────────────────
// NEGATIVE PATH
// ─────────────────────────────────────────────────────────────────────────────

test.describe('Login — Negative Path', () => {
  /**
   * @scenario  Login fails with wrong password
   * @purpose   Verify incorrect credentials show an error, not crash
   * @prereqs   Admin user exists
   * @expected  Error toast shown; still on login page
   */
  test('should show error for invalid credentials', async ({ page }) => {
    const loginPage = new LoginPage(page)
    const creds = buildLoginData('admin')

    await loginPage.goto()
    await loginPage.selectDivision(creds.divCode)
    await loginPage.fillUserId(creds.userName)
    await loginPage.fillPassword('WRONG_PASSWORD_123!')
    await loginPage.loginButton.click()

    // Should show error toast
    await loginPage.expectLoginError('Invalid')
    // Should remain on login page
    await expect(page).toHaveURL(/login/)
  })

  /**
   * @scenario  Form validation on empty submit
   * @purpose   Verify all required fields trigger inline validation errors
   * @prereqs   None
   * @expected  Each required field shows a "Required" error message
   */
  test('should show validation errors when submitting empty form', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    // Wait for form to be ready, then submit without filling
    await loginPage.loginButton.click()

    // All required fields should show errors
    await expect(page.locator('.ant-form-item-explain-error').first()).toBeVisible()
  })

  /**
   * @scenario  Login with empty User ID
   * @purpose   Verify User ID field validation
   * @prereqs   None
   * @expected  "Please enter your User ID" validation shown
   */
  test('should show validation error for empty User ID', async ({ page }) => {
    const loginPage = new LoginPage(page)
    const creds = buildLoginData('admin')

    await loginPage.goto()
    await loginPage.selectDivision(creds.divCode)
    // Skip user ID, fill password
    await loginPage.fillPassword(creds.password)
    await loginPage.loginButton.click()

    await expect(
      page.locator('.ant-form-item-explain-error').filter({ hasText: 'Please enter your User ID' }),
    ).toBeVisible()
  })

  /**
   * @scenario  Future date rejected in Transaction Date
   * @purpose   The date picker should disable future dates
   * @prereqs   None
   * @expected  Tomorrow's date cell is disabled in the calendar
   */
  test('should disable future dates in transaction date picker', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    // Open the date picker
    await page.locator('.ant-picker').click()
    await page.locator('.ant-picker-dropdown').waitFor({ state: 'visible' })

    // Tomorrow's date should have the disabled class
    const tomorrow = new Date()
    tomorrow.setDate(tomorrow.getDate() + 1)
    const tomorrowDay = tomorrow.getDate()

    // Find tomorrow's cell and verify it's disabled
    const cells = page.locator('.ant-picker-cell')
    const tomorrowCell = cells.filter({ hasText: `${tomorrowDay}` }).last()
    await expect(tomorrowCell).toHaveClass(/ant-picker-cell-disabled/)
  })
})

// ─────────────────────────────────────────────────────────────────────────────
// SECURITY
// ─────────────────────────────────────────────────────────────────────────────

test.describe('Login — Security', () => {
  /**
   * @scenario  XSS injection in User ID field
   * @purpose   Ensure XSS payloads are not executed
   * @prereqs   None
   * @expected  Input is treated as plain text; no alert dialog appears
   */
  test('should not execute XSS payload in User ID field', async ({ page }) => {
    const loginPage = new LoginPage(page)
    await loginPage.goto()

    // Set up dialog listener — should NOT be triggered
    let alertFired = false
    page.on('dialog', (dialog) => {
      alertFired = true
      void dialog.dismiss()
    })

    await loginPage.fillUserId('<script>alert("XSS")</script>')
    await loginPage.fillPassword('anypass')

    // Verify no alert was triggered
    expect(alertFired).toBe(false)

    // Verify the input contains the raw string, not executed JS
    const value = await loginPage.userIdInput.inputValue()
    expect(value).toContain('script')
  })

  /**
   * @scenario  SQL injection in login fields
   * @purpose   Verify parameterized queries prevent SQL injection
   * @prereqs   Backend uses parameterized stored procedures
   * @expected  Login returns an error (invalid credentials), not a DB error
   */
  test('should handle SQL injection gracefully in credentials', async ({ page }) => {
    const loginPage = new LoginPage(page)
    const creds = buildLoginData('admin')

    await loginPage.goto()
    await loginPage.selectDivision(creds.divCode)
    await loginPage.fillUserId("admin' OR '1'='1")
    await loginPage.fillPassword("' OR 1=1 --")
    await loginPage.loginButton.click()

    // Should get an error, not a successful login
    await loginPage.expectLoginError('')
    await expect(page).toHaveURL(/login/)
  })

  /**
   * @scenario  Unauthenticated access to protected route
   * @purpose   Verify ProtectedRoute redirects to login
   * @prereqs   User is not logged in (cleared storageState)
   * @expected  Redirected to /login when accessing /purchase/requisition
   */
  test('should redirect unauthenticated users to login', async ({ page }) => {
    // Try accessing a protected route without auth
    await page.goto('/purchase/requisition')
    // Should be redirected to login
    await expect(page).toHaveURL(/login/, { timeout: 10_000 })
  })
})
