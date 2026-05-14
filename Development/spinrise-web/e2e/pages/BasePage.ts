/**
 * BasePage — shared foundation for all Page Object Models
 *
 * Every page class extends BasePage so common behaviours
 * (navigation, waiting, message reading) live in one place.
 */

import type { Page, Locator, Response } from '@playwright/test'
import { expect } from '@playwright/test'

export class BasePage {
  readonly page: Page

  constructor(page: Page) {
    this.page = page
  }

  // ── Navigation ────────────────────────────────────────────────────────────

  /**
   * Navigate to a path relative to baseURL.
   * Waits for the network to be idle before returning.
   */
  async navigate(path: string): Promise<void> {
    await this.page.goto(path)
    await this.waitForPageLoad()
  }

  /**
   * Wait for navigation + network to settle.
   * Use after clicks that trigger route changes.
   */
  async waitForPageLoad(): Promise<void> {
    await this.page.waitForLoadState('networkidle')
  }

  // ── API interception helpers ──────────────────────────────────────────────

  /**
   * Wait for a specific API response.
   * @param urlPattern  - string or RegExp matching the endpoint
   * @param trigger     - callback that triggers the request (e.g. a click)
   * @returns the Response object for assertion
   *
   * Usage:
   *   const res = await basePage.waitForApiResponse(/purchase-requisitions/, () =>
   *     page.getByRole('button', { name: 'Save' }).click()
   *   )
   *   expect(res.status()).toBe(200)
   */
  async waitForApiResponse(
    urlPattern: string | RegExp,
    trigger: () => Promise<void> | void,
  ): Promise<Response> {
    const [response] = await Promise.all([
      this.page.waitForResponse(urlPattern),
      trigger(),
    ])
    return response
  }

  /**
   * Wait for a POST/PUT/DELETE request to complete,
   * then return the parsed JSON body.
   */
  async waitForApiRequest(
    urlPattern: string | RegExp,
    trigger: () => Promise<void> | void,
  ): Promise<Response> {
    const [response] = await Promise.all([
      this.page.waitForResponse(
        (res) =>
          (typeof urlPattern === 'string'
            ? res.url().includes(urlPattern)
            : urlPattern.test(res.url())) &&
          res.status() < 400,
      ),
      trigger(),
    ])
    return response
  }

  // ── Ant Design message (toast) helpers ───────────────────────────────────

  /**
   * Read the latest Ant Design success/error message toast text.
   * The .ant-message-notice element appears at the top of the page.
   */
  getAntMessage(): Locator {
    return this.page.locator('.ant-message-notice').last()
  }

  /**
   * Assert a success toast containing the given text appears.
   */
  async expectSuccessMessage(text: string): Promise<void> {
    await expect(
      this.page.locator('.ant-message-notice-content').last(),
    ).toContainText(text, { timeout: 8000 })
  }

  /**
   * Assert an error toast containing the given text appears.
   */
  async expectErrorMessage(text: string): Promise<void> {
    await expect(
      this.page.locator('.ant-message-notice-content').last(),
    ).toContainText(text, { timeout: 8000 })
  }

  // ── Alert banner (inline page alerts, not toasts) ────────────────────────

  /**
   * Get the Ant Design Alert banner on the page (type=error/warning).
   */
  getAlertBanner(): Locator {
    return this.page.locator('.ant-alert-message').first()
  }

  // ── Generic helpers ───────────────────────────────────────────────────────

  /**
   * Take a named screenshot — useful for manual debugging.
   * Auto-screenshots on failure are handled by playwright.config.ts.
   */
  async takeScreenshot(name: string): Promise<void> {
    await this.page.screenshot({
      path: `test-results/screenshots/${name}-${Date.now()}.png`,
      fullPage: true,
    })
  }

  /**
   * Wait for a locator to be visible with an optional timeout.
   * Prefer this over page.waitForTimeout().
   */
  async waitForVisible(locator: Locator, timeout = 10_000): Promise<void> {
    await locator.waitFor({ state: 'visible', timeout })
  }

  /**
   * Wait for a locator to be hidden.
   */
  async waitForHidden(locator: Locator, timeout = 10_000): Promise<void> {
    await locator.waitFor({ state: 'hidden', timeout })
  }

  /**
   * Get current page URL.
   */
  currentUrl(): string {
    return this.page.url()
  }
}
