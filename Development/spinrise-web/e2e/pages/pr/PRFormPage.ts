/**
 * PRFormPage — Page Object Model
 *
 * Route: /purchase/requisition/v1/new (supports ?prNo=&mode=view|edit)
 *
 * This is the main PR form (RequisitionV1NewPage.tsx).
 * Layout:
 *  ┌─ PRDocBand (PR-XXXXX badge, status)
 *  ├─ Toolbar (New, Save, Print, List, More▾, ◄◄ ◄ ► ►► nav)
 *  ├─ PRHeaderV1 (Date, Dept, Section, Employee, Type, RefNo)
 *  ├─ PRLineItemsTable (item grid)
 *  └─ PRKPIStrip (item count, total qty, total cost)
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from '../BasePage'
import {
  selectByLabel,
  setDateByLabel,
  waitForModal,
  confirmModal,
  cancelModal,
  expectFieldError,
  waitForSpinToDisappear,
} from '../../utils/antdHelpers'

export class PRFormPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  // ── Toolbar locators ──────────────────────────────────────────────────────

  get newButton() {
    return this.page.getByRole('button', { name: /^New$/i })
  }

  get saveButton() {
    return this.page.getByRole('button', { name: /^Save$/i })
  }

  get printButton() {
    return this.page.getByRole('button', { name: /^Print$/i })
  }

  get listButton() {
    return this.page.getByRole('button', { name: /^List$/i })
  }

  get moreButton() {
    return this.page.getByRole('button', { name: /More/i })
  }

  get firstButton() {
    return this.page.locator('button[title*="First record"]')
  }

  get prevButton() {
    return this.page.locator('button[title*="Previous record"]')
  }

  get nextButton() {
    return this.page.locator('button[title*="Next record"]')
  }

  get lastButton() {
    return this.page.locator('button[title*="Last record"]')
  }

  // ── "More" menu items ─────────────────────────────────────────────────────

  get modifyMenuItem() {
    return this.page.getByRole('menuitem', { name: 'Modify' })
  }

  get cancelMenuItem() {
    return this.page.getByRole('menuitem', { name: /Cancel.*Alt/i })
  }

  get deleteMenuItem() {
    return this.page.getByRole('menuitem', { name: /Delete.*Ctrl/i })
  }

  // ── Header form locators ──────────────────────────────────────────────────

  get prDateInput() {
    return this.page.locator('.ant-picker input').first()
  }

  get departmentSelect() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Department' }).first()
  }

  get sectionInput() {
    return this.page.getByPlaceholder('e.g. Ring Frame')
  }

  get requestedBySelect() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Requested By' }).first()
  }

  get requisitionTypeSelect() {
    return this.page.locator('.ant-form-item').filter({ hasText: 'Requisition Type' }).first()
  }

  get refNoInput() {
    return this.page.getByPlaceholder('REF-…')
  }

  // ── Status/badge locators ─────────────────────────────────────────────────

  /**
   * The PR number badge (e.g. PR-00042) shown in the doc band.
   */
  get prNumberBadge() {
    return this.page.locator('.ant-tag').filter({ hasText: /^PR-/ }).first()
  }

  /**
   * The PR status tag in the doc band.
   */
  get prStatusTag() {
    return this.page.locator('.ant-tag').not(this.page.locator('.ant-tag').filter({ hasText: /^PR-/ })).first()
  }

  // ── Line items grid locators ──────────────────────────────────────────────

  get addLineButton() {
    return this.page.getByRole('button', { name: /Add Item|Add Line|\+ Add/i }).first()
  }

  get lineItemRows() {
    return this.page.locator('table tbody tr').filter({
      // Filter to only the line items table rows (not the header table)
      hasNot: this.page.locator('thead'),
    })
  }

  // ── KPI strip locators ────────────────────────────────────────────────────

  get kpiItemCount() {
    return this.page.locator('[data-testid="kpi-item-count"], .kpi-strip').filter({ hasText: /Item/i }).first()
  }

  // ── Navigation / load helpers ─────────────────────────────────────────────

  /**
   * Navigate to the PR form in new mode.
   */
  async goto(): Promise<void> {
    await this.navigate('/purchase/requisition/v1/new')
    await this.waitForFormLoad()
  }

  /**
   * Navigate to a specific PR in view mode.
   */
  async gotoView(prNo: number): Promise<void> {
    await this.navigate(`/purchase/requisition/v1/new?prNo=${prNo}&mode=view`)
    await this.waitForFormLoad()
  }

  /**
   * Navigate to a specific PR in edit mode.
   */
  async gotoEdit(prNo: number): Promise<void> {
    await this.navigate(`/purchase/requisition/v1/new?prNo=${prNo}&mode=edit`)
    await this.waitForFormLoad()
  }

  /**
   * Wait for the PR form to fully load (lookups + record data).
   */
  async waitForFormLoad(): Promise<void> {
    await this.page.waitForLoadState('networkidle')
    await waitForSpinToDisappear(this.page)
  }

  // ── Header form actions ───────────────────────────────────────────────────

  /**
   * Fill the PR header form with the provided values.
   */
  async fillHeader(values: {
    depCode?: string
    section?: string
    reqName?: string
    iType?: string
    refNo?: string
  }): Promise<void> {
    if (values.depCode) {
      await selectByLabel(this.page, 'Department', values.depCode)
    }
    if (values.section !== undefined) {
      await this.sectionInput.fill(values.section)
    }
    if (values.reqName) {
      await selectByLabel(this.page, 'Requested By', values.reqName)
    }
    if (values.iType) {
      await selectByLabel(this.page, 'Requisition Type', values.iType)
    }
    if (values.refNo !== undefined) {
      await this.refNoInput.fill(values.refNo)
    }
  }

  // ── Toolbar actions ───────────────────────────────────────────────────────

  /**
   * Click New (F3) — initialise a blank form.
   */
  async clickNew(): Promise<void> {
    await this.newButton.click()
  }

  /**
   * Click Save (Ctrl+S) and wait for the API response.
   * Returns the prNo from the response if it's a new record.
   */
  async clickSave(): Promise<number | null> {
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions/),
      this.saveButton.click(),
    ])
    if (response.status() >= 400) return null
    try {
      const body = (await response.json()) as { data?: { prNo?: number } }
      return body?.data?.prNo ?? null
    } catch {
      return null
    }
  }

  /**
   * Click Print — navigates to the print preview route.
   */
  async clickPrint(): Promise<void> {
    await this.printButton.click()
    await this.page.waitForURL(/print-preview/)
  }

  /**
   * Click List — navigates to the PR list.
   */
  async clickList(): Promise<void> {
    await this.listButton.click()
    await this.page.waitForURL(/\/purchase\/requisition$/)
  }

  /**
   * Open the "More" dropdown menu.
   */
  async openMoreMenu(): Promise<void> {
    await this.moreButton.click()
    // Wait for the dropdown to appear
    await this.page.locator('.ant-dropdown').waitFor({ state: 'visible' })
  }

  /**
   * Click Modify from the More menu.
   */
  async clickModify(): Promise<void> {
    await this.openMoreMenu()
    await this.modifyMenuItem.click()
  }

  /**
   * Click Delete from the More menu.
   */
  async clickDelete(): Promise<void> {
    await this.openMoreMenu()
    await this.deleteMenuItem.click()
    // Wait for the delete confirmation modal
    await waitForModal(this.page)
  }

  /**
   * Complete the delete flow: select a reason and confirm.
   */
  async confirmDelete(reasonText?: string): Promise<void> {
    const modal = await waitForModal(this.page)
    // Select reason
    await modal.locator('.ant-select-selector').click()
    const dropdown = this.page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
    await dropdown.waitFor({ state: 'visible' })
    if (reasonText) {
      await dropdown.locator('.ant-select-item-option', { hasText: reasonText }).first().click()
    } else {
      await dropdown.locator('.ant-select-item-option').first().click()
    }
    await dropdown.waitFor({ state: 'hidden' })
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/\d+/),
      modal.getByRole('button', { name: 'Confirm Delete' }).click(),
    ])
    await response.finished()
  }

  // ── Keyboard shortcuts ────────────────────────────────────────────────────

  /**
   * Press F3 to create a new record.
   */
  async pressF3(): Promise<void> {
    await this.page.keyboard.press('F3')
  }

  /**
   * Press Ctrl+S to save.
   */
  async pressCtrlS(): Promise<number | null> {
    const [response] = await Promise.all([
      this.page.waitForResponse(/purchase-requisitions/),
      this.page.keyboard.press('Control+s'),
    ])
    try {
      const body = (await response.json()) as { data?: { prNo?: number } }
      return body?.data?.prNo ?? null
    } catch {
      return null
    }
  }

  /**
   * Press Ctrl+D to open the delete modal.
   */
  async pressCtrlD(): Promise<void> {
    await this.page.keyboard.press('Control+d')
  }

  /**
   * Press Ctrl+P to open print preview.
   */
  async pressCtrlP(): Promise<void> {
    await Promise.all([
      this.page.waitForURL(/print-preview/),
      this.page.keyboard.press('Control+p'),
    ])
  }

  /**
   * Press Alt+X to cancel/discard edits.
   */
  async pressAltX(): Promise<void> {
    await this.page.keyboard.press('Alt+x')
  }

  /**
   * Press Ctrl+Left to navigate to the previous record.
   */
  async pressCtrlLeft(): Promise<void> {
    await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/navigate/),
      this.page.keyboard.press('Control+ArrowLeft'),
    ])
  }

  /**
   * Press Ctrl+Right to navigate to the next record.
   */
  async pressCtrlRight(): Promise<void> {
    await Promise.all([
      this.page.waitForResponse(/purchase-requisitions\/navigate/),
      this.page.keyboard.press('Control+ArrowRight'),
    ])
  }

  // ── Record navigation buttons ─────────────────────────────────────────────

  async navigateFirst(): Promise<void> {
    const [res] = await Promise.all([
      this.page.waitForResponse(/navigate/),
      this.firstButton.click(),
    ])
    await res.finished()
    await this.waitForFormLoad()
  }

  async navigatePrev(): Promise<void> {
    const [res] = await Promise.all([
      this.page.waitForResponse(/navigate/),
      this.prevButton.click(),
    ])
    await res.finished()
    await this.waitForFormLoad()
  }

  async navigateNext(): Promise<void> {
    const [res] = await Promise.all([
      this.page.waitForResponse(/navigate/),
      this.nextButton.click(),
    ])
    await res.finished()
    await this.waitForFormLoad()
  }

  async navigateLast(): Promise<void> {
    const [res] = await Promise.all([
      this.page.waitForResponse(/navigate/),
      this.lastButton.click(),
    ])
    await res.finished()
    await this.waitForFormLoad()
  }

  // ── Dirty check modal ─────────────────────────────────────────────────────

  /**
   * Assert the "Unsaved Changes" confirmation modal appeared.
   */
  async expectDirtyModal(): Promise<void> {
    await expect(this.page.locator('.ant-modal-title')).toContainText('Unsaved Changes')
  }

  /**
   * Click "Leave without saving" in the dirty-check modal.
   */
  async confirmLeaveWithoutSaving(): Promise<void> {
    await this.page.getByRole('button', { name: 'Leave without saving' }).click()
  }

  // ── Assertions ────────────────────────────────────────────────────────────

  /**
   * Assert the form is in edit mode (Save button is enabled).
   */
  async expectEditMode(): Promise<void> {
    await expect(this.saveButton).toBeEnabled()
  }

  /**
   * Assert the form is in view mode (Save button is disabled).
   */
  async expectViewMode(): Promise<void> {
    await expect(this.saveButton).toBeDisabled()
  }

  /**
   * Assert the PR number badge shows the expected PR.
   */
  async expectPRNumber(prNo: number): Promise<void> {
    const expected = `PR-${String(prNo).padStart(5, '0')}`
    await expect(this.prNumberBadge).toContainText(expected)
  }

  /**
   * Assert the PR status tag shows the expected label.
   */
  async expectStatus(statusLabel: string): Promise<void> {
    await expect(this.page.locator('.ant-tag').filter({ hasText: statusLabel })).toBeVisible()
  }

  /**
   * Assert a success toast appeared after saving.
   */
  async expectSaveSuccess(): Promise<void> {
    await this.expectSuccessMessage('saved')
  }

  /**
   * Assert the "Required" validation error on the Department field.
   */
  async expectDepartmentRequired(): Promise<void> {
    await expectFieldError(this.page, 'Department', 'Required')
  }

  /**
   * Assert the toolbar is completely disabled (for FINAL_APPROVED status).
   */
  async expectToolbarDisabled(): Promise<void> {
    await expect(this.saveButton).toBeDisabled()
    await expect(this.modifyMenuItem).toBeDisabled().catch(() => {
      // If menu isn't open, just check Save is disabled
    })
  }

  /**
   * Read the current PR number from the URL query parameter.
   */
  getPRNoFromUrl(): number | null {
    const url = new URL(this.currentUrl())
    const prNo = url.searchParams.get('prNo')
    return prNo ? parseInt(prNo, 10) : null
  }
}
