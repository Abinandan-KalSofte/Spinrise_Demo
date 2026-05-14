/**
 * POListPage — Page Object Model
 *
 * Route: /purchase/order
 *
 * Covers:
 *  - Summary count cards (total, draft, approved)
 *  - Filter bar (date range, supplier, status)
 *  - Paginated PO table
 *  - Row actions: Edit, Delete
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from '../BasePage'

export class POListPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  // ── Locators ──────────────────────────────────────────────────────────────

  get tableRows() {
    return this.page.locator('table tbody tr, .ant-table-row')
  }

  get newPOButton() {
    return this.page.getByRole('button', { name: /New|New PO/i }).first()
  }

  get loadingSpinner() {
    return this.page.locator('.ant-spin-spinning')
  }

  // ── Navigation ────────────────────────────────────────────────────────────

  async goto(): Promise<void> {
    await this.navigate('/purchase/order')
    await this.waitForListLoad()
  }

  async waitForListLoad(): Promise<void> {
    await this.page.waitForLoadState('networkidle')
    if (await this.loadingSpinner.count() > 0) {
      await this.loadingSpinner.waitFor({ state: 'hidden', timeout: 20_000 })
    }
  }

  // ── Assertions ────────────────────────────────────────────────────────────

  async expectPageLoaded(): Promise<void> {
    await expect(this.page).toHaveURL(/purchase\/order/)
    await expect(this.page.locator('body')).toBeVisible()
  }

  async getRowCount(): Promise<number> {
    return this.tableRows.count()
  }
}
