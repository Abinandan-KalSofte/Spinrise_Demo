/**
 * Ant Design Component Helpers
 *
 * Ant Design components render complex DOM that doesn't map to simple
 * role/label selectors. These helpers encapsulate the correct interaction
 * patterns so tests stay readable and maintainable.
 *
 * For beginners: Ant Design's <Select> is NOT a native <select> element.
 * It's a custom div-based component with a floating dropdown overlay.
 * You must click the trigger, wait for the dropdown, then click the option.
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'

// ── Select / Dropdown ─────────────────────────────────────────────────────────

/**
 * Select an option from an Ant Design <Select> by its associated form label.
 *
 * @param page   - Playwright Page
 * @param label  - The form field label text (e.g. "Department")
 * @param value  - The visible option text to select (e.g. "Spinning – Ring Frame")
 *
 * Usage:
 *   await selectByLabel(page, 'Department', 'Spinning')
 */
export async function selectByLabel(
  page: Page,
  label: string,
  value: string,
): Promise<void> {
  // Click the select trigger (the combobox associated with the label)
  const select = page.locator('.ant-form-item').filter({ hasText: label }).first()
  await select.locator('.ant-select-selector').click()

  // Wait for the floating dropdown overlay to appear
  const dropdown = page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
  await dropdown.waitFor({ state: 'visible' })

  // Click the matching option
  await dropdown.locator('.ant-select-item-option', { hasText: value }).first().click()

  // Verify dropdown closes
  await dropdown.waitFor({ state: 'hidden' })
}

/**
 * Select an option from an Ant Design <Select> by the selector's placeholder.
 *
 * @param page        - Playwright Page
 * @param placeholder - Placeholder text of the select (e.g. "Select department…")
 * @param value       - The option label text to select
 */
export async function selectByPlaceholder(
  page: Page,
  placeholder: string,
  value: string,
): Promise<void> {
  // Find the select whose placeholder matches
  const selector = page.locator('.ant-select-selector').filter({
    has: page.locator(`[title="${placeholder}"], .ant-select-selection-placeholder:has-text("${placeholder}")`),
  })
  await selector.click()

  const dropdown = page.locator('.ant-select-dropdown').filter({ isVisible: true }).last()
  await dropdown.waitFor({ state: 'visible' })
  await dropdown.locator('.ant-select-item-option', { hasText: value }).first().click()
  await dropdown.waitFor({ state: 'hidden' })
}

/**
 * Get the currently selected value text from an Ant Design Select
 * identified by its form label.
 */
export async function getSelectedValue(page: Page, label: string): Promise<string> {
  const item = page.locator('.ant-form-item').filter({ hasText: label }).first()
  return (
    (await item.locator('.ant-select-selection-item').textContent()) ?? ''
  ).trim()
}

// ── DatePicker ────────────────────────────────────────────────────────────────

/**
 * Set an Ant Design DatePicker value by form label.
 * Clears the current value and types the new date, then presses Enter.
 *
 * @param page  - Playwright Page
 * @param label - Form label text (e.g. "PR Date")
 * @param date  - Date string in the picker's format: "DD-MMM-YYYY" (e.g. "14-May-2026")
 */
export async function setDateByLabel(
  page: Page,
  label: string,
  date: string,
): Promise<void> {
  const formItem = page.locator('.ant-form-item').filter({ hasText: label }).first()
  const input = formItem.locator('.ant-picker input').first()

  await input.click()
  // Select all and replace
  await input.fill('')
  await input.type(date)
  // Confirm selection with Enter (closes calendar popup)
  await input.press('Enter')

  // Wait for the calendar panel to close
  await page.locator('.ant-picker-dropdown').waitFor({ state: 'hidden' }).catch(() => {
    // Popup may already be closed — ignore
  })
}

// ── Table helpers ─────────────────────────────────────────────────────────────

/**
 * Count visible rows in a custom HTML table (not Ant Design Table).
 * Spinrise uses native <table> elements for performance.
 */
export async function getTableRowCount(page: Page): Promise<number> {
  return page.locator('table tbody tr:not([style*="display: none"])').count()
}

/**
 * Get text of a specific cell in the custom table.
 *
 * @param page     - Playwright Page
 * @param rowIndex - Zero-based row index
 * @param colIndex - Zero-based column index
 */
export async function getTableCellText(
  page: Page,
  rowIndex: number,
  colIndex: number,
): Promise<string> {
  const cell = page.locator(`table tbody tr`).nth(rowIndex).locator('td').nth(colIndex)
  return ((await cell.textContent()) ?? '').trim()
}

/**
 * Click an action button (by tooltip title) in a specific table row.
 * Spinrise PR list uses Tooltip-wrapped icon buttons in the Actions column.
 *
 * @param page       - Playwright Page
 * @param rowIndex   - Zero-based row index
 * @param actionName - Tooltip text: "View", "Edit", "Download PDF", "Delete PR"
 */
export async function clickTableRowAction(
  page: Page,
  rowIndex: number,
  actionName: string,
): Promise<void> {
  const row = page.locator('table tbody tr').nth(rowIndex)
  // Hover to trigger tooltip (ensures button is visible)
  const btn = row.locator(`button[title="${actionName}"], button:has([aria-label="${actionName}"])`)
  if (await btn.count() === 0) {
    // Fall back: find the Tooltip parent by hovering and matching aria-label
    await row.locator('button').filter({ hasText: '' }).nth(getActionIndex(actionName)).click()
  } else {
    await btn.click()
  }
}

/** Maps action name to zero-based button index in the Actions column */
function getActionIndex(name: string): number {
  const order: Record<string, number> = {
    View: 0,
    Edit: 1,
    'Download PDF': 2,
    'Delete PR': 3,
  }
  return order[name] ?? 0
}

/**
 * Find a table row that contains specific text in any cell.
 * Returns the row locator for further interactions.
 */
export function getTableRowByText(page: Page, text: string): Locator {
  return page.locator('table tbody tr').filter({ hasText: text })
}

// ── Modal helpers ─────────────────────────────────────────────────────────────

/**
 * Wait for an Ant Design Modal to appear and return its locator.
 */
export async function waitForModal(page: Page): Promise<Locator> {
  const modal = page.locator('.ant-modal-content').first()
  await modal.waitFor({ state: 'visible' })
  return modal
}

/**
 * Click the primary OK / confirm button in an open Ant Design Modal.
 * Works for both Modal and Modal.confirm().
 */
export async function confirmModal(page: Page): Promise<void> {
  const modal = page.locator('.ant-modal-content').first()
  await modal.waitFor({ state: 'visible' })
  // Primary button (OK / Confirm)
  await modal.locator('.ant-btn-primary').click()
  // Wait for modal to close
  await modal.waitFor({ state: 'hidden' })
}

/**
 * Click the Cancel button in an open Ant Design Modal.
 */
export async function cancelModal(page: Page): Promise<void> {
  const modal = page.locator('.ant-modal-content').first()
  await modal.waitFor({ state: 'visible' })
  await modal.locator('.ant-btn-default, .ant-modal-close').first().click()
  await modal.waitFor({ state: 'hidden' })
}

/**
 * Get the title text of the currently open modal.
 */
export async function getModalTitle(page: Page): Promise<string> {
  return (
    (await page.locator('.ant-modal-title').first().textContent()) ?? ''
  ).trim()
}

// ── Ant Design Alert ──────────────────────────────────────────────────────────

/**
 * Wait for an Ant Design Alert banner to appear and verify its message.
 * Used for inline form errors and pre-check warnings.
 */
export async function expectAlertMessage(
  page: Page,
  expectedText: string,
): Promise<void> {
  await expect(page.locator('.ant-alert-message')).toContainText(expectedText, {
    timeout: 8000,
  })
}

// ── Ant Design Tag ────────────────────────────────────────────────────────────

/**
 * Get the text of an Ant Design Tag in a specific table row.
 * Useful for reading PR status from the list.
 */
export async function getTagInRow(page: Page, rowIndex: number): Promise<string> {
  const row = page.locator('table tbody tr').nth(rowIndex)
  return ((await row.locator('.ant-tag').last().textContent()) ?? '').trim()
}

// ── Form validation ───────────────────────────────────────────────────────────

/**
 * Assert that a form item shows a validation error message.
 * Ant Design renders validation errors in .ant-form-item-explain-error.
 *
 * @param page    - Playwright Page
 * @param label   - The field label text
 * @param message - Expected error text (partial match)
 */
export async function expectFieldError(
  page: Page,
  label: string,
  message: string,
): Promise<void> {
  const formItem = page.locator('.ant-form-item').filter({ hasText: label }).first()
  await expect(formItem.locator('.ant-form-item-explain-error')).toContainText(
    message,
    { timeout: 5000 },
  )
}

// ── Spin/loading ──────────────────────────────────────────────────────────────

/**
 * Wait for any Ant Design Spin loading indicator to disappear.
 * Use after navigation or after triggering API calls.
 */
export async function waitForSpinToDisappear(page: Page): Promise<void> {
  const spin = page.locator('.ant-spin-spinning')
  if (await spin.count() > 0) {
    await spin.waitFor({ state: 'hidden', timeout: 30_000 })
  }
}
