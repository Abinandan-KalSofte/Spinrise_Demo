/**
 * PRListPage — Page Object Model
 *
 * Route: /purchase/requisition
 * Covers:
 *  - Filter bar (PR No, Date Range, Department, Status)
 *  - Custom HTML table (not Ant Design Table)
 *  - Row actions: View, Edit, Download PDF, Delete
 *  - Pagination (10 records per page)
 *  - Delete confirmation modal with reason select
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from '../BasePage'
import { selectByLabel, waitForModal, confirmModal } from '../../utils/antdHelpers'

// PR status values as used in the backend
export type PRStatus =
  | 'OPEN'
  | 'L1_APPROVED'
  | 'L2_APPROVED'
  | 'FINAL_APPROVED'
  | 'CANCELLED'
  | 'CONVERTED'
  | 'RECEIVED'

export class PRListPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  // ── Locators ──────────────────────────────────────────────────────────────

  get filterPRNoInput() {
    return this.page.getByPlaceholder('PR No.')
  }

  get filterDepartmentSelect() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Department' }).locator('.ant-select-selector').first()
  }

  get filterStatusSelect() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Status' }).locator('.ant-select-selector').first()
  }

  get searchButton() {
    return this.page.getByRole('button', { name: /Search/i })
  }

  get resetButton() {
    return this.page.getByRole('button', { name: /Reset/i })
  }

  get tableRows() {
    return this.page.locator('table tbody tr')
  }

  get noDataMessage() {
    return this.page.getByText('No purchase requisitions found')
  }

  get paginationWidget() {
    return this.page.locator('.ant-pagination')
  }

  get loadingSpinner() {
    return this.page.locator('.ant-spin-spinning')
  }

  // ── Navigation ────────────────────────────────────────────────────────────

  async goto(): Promise<void> {
    await this.navigate('/purchase/requisition')
    await this.waitForListLoad()
  }

  async waitForListLoad(): Promise<void> {
    // Wait for the PR list API to respond
    await this.page.waitForResponse(/purchase-requisitions\/paginated/, { timeout: 15_000 })
    // Wait for loading spinner to disappear
    if (await this.loadingSpinner.count() > 0) {
      await this.loadingSpinner.waitFor({ state: 'hidden', timeout: 15_000 })
    }
  }

  // ── Filter actions ────────────────────────────────────────────────────────

  /**
   * Filter the list by PR Number.
   */
  async filterByPRNo(prNo: string): Promise<void> {
    await this.filterPRNoInput.fill(prNo)
    await this.search()
  }

  /**
   * Filter by status using the Status dropdown.
   * @param statusLabel - Visible label e.g. "Requested", "Final Approved"
   */
  async filterByStatus(statusLabel: string): Promise<void> {
    await this.filterStatusSelect.click()
    const dropdown = this.page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
    await dropdown.waitFor({ state: 'visible' })
    await dropdown.locator('.ant-select-item-option', { hasText: statusLabel }).first().click()
    await dropdown.waitFor({ state: 'hidden' })
    await this.search()
  }

  /**
   * Click the Search button and wait for results to load.
   */
  async search(): Promise<void> {
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/paginated/),
      this.searchButton.click(),
    ])
    await response.finished()
  }

  /**
   * Click Reset and wait for results to reload.
   */
  async reset(): Promise<void> {
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/paginated/),
      this.resetButton.click(),
    ])
    await response.finished()
  }

  // ── Row actions ───────────────────────────────────────────────────────────

  /**
   * Get the count of visible data rows (excludes loading/empty state rows).
   */
  async getRowCount(): Promise<number> {
    const rows = this.tableRows
    const count = await rows.count()
    // Exclude the "no data" row and loading row
    let dataRows = 0
    for (let i = 0; i < count; i++) {
      const text = await rows.nth(i).textContent()
      if (text && !text.includes('No purchase requisitions')) {
        dataRows++
      }
    }
    return dataRows
  }

  /**
   * Click View for the row matching a PR number.
   * Navigates to /purchase/requisition/v1/new?prNo=...&mode=view
   */
  async clickViewForPR(prNo: number): Promise<void> {
    const row = this.getRowByPRNo(prNo)
    await row.getByRole('button').filter({ has: this.page.locator('[data-icon="eye"]') }).click()
    await this.page.waitForURL(/requisition\/v1\/new/)
  }

  /**
   * Click Edit for the row matching a PR number.
   * Navigates to /purchase/requisition/v1/new?prNo=...&mode=edit
   */
  async clickEditForPR(prNo: number): Promise<void> {
    const row = this.getRowByPRNo(prNo)
    await row.getByRole('button').filter({ has: this.page.locator('[data-icon="edit"]') }).click()
    await this.page.waitForURL(/requisition\/v1\/new/)
  }

  /**
   * Click Delete for the row matching a PR number.
   * Opens the delete confirmation modal.
   */
  async clickDeleteForPR(prNo: number): Promise<void> {
    const row = this.getRowByPRNo(prNo)
    await row.getByRole('button').filter({ has: this.page.locator('[data-icon="delete"]') }).click()
  }

  /**
   * Complete the delete flow: click delete, select reason, confirm.
   */
  async deletePR(prNo: number, reasonLabel?: string): Promise<void> {
    await this.clickDeleteForPR(prNo)
    const modal = await waitForModal(this.page)
    // Select a delete reason from the dropdown inside the modal
    await modal.locator('.ant-select-selector').click()
    const dropdown = this.page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
    await dropdown.waitFor({ state: 'visible' })
    // Select first available reason if none specified
    if (reasonLabel) {
      await dropdown.locator('.ant-select-item-option', { hasText: reasonLabel }).first().click()
    } else {
      await dropdown.locator('.ant-select-item-option').first().click()
    }
    await dropdown.waitFor({ state: 'hidden' })
    // Click Confirm Delete (danger button in modal footer)
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/\d+/),
      modal.getByRole('button', { name: 'Confirm Delete' }).click(),
    ])
    await response.finished()
  }

  // ── Pagination ────────────────────────────────────────────────────────────

  /**
   * Navigate to the next page.
   */
  async goToNextPage(): Promise<void> {
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/paginated/),
      this.paginationWidget.getByRole('button', { name: /next/i }).click(),
    ])
    await response.finished()
  }

  /**
   * Read the "X–Y of Z records" pagination summary text.
   */
  async getPaginationSummaryText(): Promise<string> {
    return ((await this.paginationWidget.locator('li.ant-pagination-total-text').textContent()) ?? '').trim()
  }

  // ── Assertions ────────────────────────────────────────────────────────────

  /**
   * Assert a PR number is visible in the table.
   */
  async expectPRInList(prNo: number): Promise<void> {
    await expect(this.page.locator(`text=#${prNo}`)).toBeVisible({ timeout: 10_000 })
  }

  /**
   * Assert a PR number is NOT in the list (e.g. after deletion).
   */
  async expectPRNotInList(prNo: number): Promise<void> {
    await expect(this.page.locator(`text=#${prNo}`)).toHaveCount(0)
  }

  /**
   * Assert the status tag for a specific PR.
   *
   * @param prNo          - PR number
   * @param expectedLabel - Visible status label e.g. "Requested", "Final Approved"
   */
  async expectPRStatus(prNo: number, expectedLabel: string): Promise<void> {
    const row = this.getRowByPRNo(prNo)
    await expect(row.locator('.ant-tag')).toContainText(expectedLabel, { timeout: 8000 })
  }

  // ── Private helpers ───────────────────────────────────────────────────────

  private getRowByPRNo(prNo: number): ReturnType<Page['locator']> {
    return this.page.locator('table tbody tr').filter({ hasText: `#${prNo}` }).first()
  }
}
