/**
 * DashboardPage — Page Object Model
 *
 * The dashboard (/  route) shows:
 *  - 4 StatCards: Total PO Amount, Pending Approval, Approved Amount, Rejected
 *  - TrendChart (monthly bar chart)
 *  - StatusChart (pie/donut)
 *  - RecentTable (latest PO records)
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from './BasePage'

export class DashboardPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  // ── Locators ──────────────────────────────────────────────────────────────

  get pageTitle() {
    return this.page.getByRole('heading', { name: 'Purchase Overview' })
  }

  /** All 4 KPI stat cards */
  get statCards() {
    return this.page.locator('.ant-card').filter({ hasText: /Amount|Approval|Rejected/ })
  }

  /** "Total PO Amount" stat card */
  get totalPOAmountCard() {
    return this.page.locator('.ant-card').filter({ hasText: 'Total PO Amount' }).first()
  }

  /** "Pending Approval" stat card */
  get pendingApprovalCard() {
    return this.page.locator('.ant-card').filter({ hasText: 'Pending Approval' }).first()
  }

  /** "Approved Amount" stat card */
  get approvedAmountCard() {
    return this.page.locator('.ant-card').filter({ hasText: 'Approved Amount' }).first()
  }

  /** "Rejected" stat card */
  get rejectedCard() {
    return this.page.locator('.ant-card').filter({ hasText: 'Rejected' }).first()
  }

  /** Recent POs table */
  get recentTable() {
    return this.page.locator('table').last()
  }

  /** Navigation link to PR List */
  get prListNavLink() {
    return this.page.getByRole('menuitem', { name: /Purchase Requisition|PR/i }).first()
  }

  // ── Actions ───────────────────────────────────────────────────────────────

  /**
   * Navigate to the dashboard and wait for data to load.
   */
  async goto(): Promise<void> {
    await this.navigate('/')
    await this.waitForDashboardLoad()
  }

  /**
   * Wait for all dashboard API calls to complete.
   */
  async waitForDashboardLoad(): Promise<void> {
    // Dashboard fetches stats, trend, and recent POs
    await this.page.waitForLoadState('networkidle')
  }

  /**
   * Read the value displayed in the Total PO Amount card.
   */
  async getTotalPOAmountText(): Promise<string> {
    return (
      (await this.totalPOAmountCard.locator('.ant-statistic-content-value, h3, .value').first().textContent()) ?? ''
    ).trim()
  }

  // ── Assertions ────────────────────────────────────────────────────────────

  /**
   * Assert the dashboard page has loaded with the title visible.
   */
  async expectDashboardLoaded(): Promise<void> {
    await expect(this.pageTitle).toBeVisible()
  }

  /**
   * Assert all 4 KPI stat cards are rendered (even if showing '—' while loading).
   */
  async expectStatCardsVisible(): Promise<void> {
    await expect(this.totalPOAmountCard).toBeVisible()
    await expect(this.pendingApprovalCard).toBeVisible()
    await expect(this.approvedAmountCard).toBeVisible()
    await expect(this.rejectedCard).toBeVisible()
  }

  /**
   * Assert the page does NOT show an error alert.
   */
  async expectNoError(): Promise<void> {
    const alert = this.page.locator('.ant-alert-error')
    await expect(alert).toHaveCount(0)
  }

  /**
   * Assert the recent table has at least N rows visible.
   */
  async expectRecentTableHasRows(minRows: number): Promise<void> {
    const rows = this.page.locator('table tbody tr')
    await expect(rows).toHaveCount(minRows, { timeout: 15_000 })
  }
}
