/**
 * DropdownHelper — Enhanced select/dropdown operations
 *
 * Supports:
 *  - Normal Ant Design Select
 *  - Searchable Select
 *  - Async Select (loads options dynamically)
 *  - Multi-Select
 *  - Tag Input
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'

export interface SelectOptions {
  searchable?: boolean
  multiple?: boolean
  timeout?: number
}

export class DropdownHelper {
  private page: Page
  private logger: any

  constructor(page: Page, logger?: any) {
    this.page = page
    this.logger = logger || console
  }

  // ── Select by Label ────────────────────────────────────────────────────────

  /**
   * Select a value from a dropdown identified by its form label.
   * Works with normal and searchable selects.
   */
  async selectByLabel(
    label: string,
    value: string,
    options: SelectOptions = {},
  ): Promise<void> {
    this.logger.log(`🎯 Selecting "${value}" from "${label}"`)

    const { searchable = false, timeout = 10_000 } = options

    // Find the form item
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    // Click the select trigger
    const trigger = formItem.locator('.ant-select-selector').first()
    await trigger.waitFor({ state: 'visible', timeout })
    await trigger.click()

    // Wait for dropdown
    const dropdown = this.page
      .locator('.ant-select-dropdown')
      .filter({ isVisible: true })
      .last()
    await dropdown.waitFor({ state: 'visible', timeout })

    // If searchable, type to filter options
    if (searchable) {
      const input = dropdown.locator('.ant-select-clear input, input').first()
      await input.fill(value)
      await this.page.waitForTimeout(300) // Wait for filtering
    }

    // Click the option
    const option = dropdown
      .locator('.ant-select-item-option')
      .filter({ hasText: value })
      .first()
    await option.click()

    // Wait for dropdown to close
    await dropdown.waitFor({ state: 'hidden', timeout }).catch(() => {
      // May be detached
    })

    this.logger.log(`✓ Selected`)
  }

  /**
   * Select by placeholder text instead of label.
   */
  async selectByPlaceholder(
    placeholder: string,
    value: string,
    options: SelectOptions = {},
  ): Promise<void> {
    this.logger.log(`🎯 Selecting "${value}" from placeholder "${placeholder}"`)

    const { searchable = false, timeout = 10_000 } = options

    const selector = this.page
      .locator('.ant-select-selector')
      .filter({
        has: this.page.locator(`[title="${placeholder}"]`),
      })
      .first()

    await selector.click()

    const dropdown = this.page
      .locator('.ant-select-dropdown')
      .filter({ isVisible: true })
      .last()
    await dropdown.waitFor({ state: 'visible', timeout })

    if (searchable) {
      const input = dropdown.locator('input').first()
      await input.fill(value)
      await this.page.waitForTimeout(300)
    }

    await dropdown
      .locator('.ant-select-item-option')
      .filter({ hasText: value })
      .first()
      .click()

    this.logger.log(`✓ Selected`)
  }

  /**
   * Get the currently selected value(s) from a select by label.
   */
  async getSelectedValue(label: string): Promise<string> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const selectedText = await formItem
      .locator('.ant-select-selection-item')
      .first()
      .textContent()

    return (selectedText ?? '').trim()
  }

  /**
   * Get all selected values in a multi-select.
   */
  async getSelectedValues(label: string): Promise<string[]> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const items = await formItem
      .locator('.ant-select-selection-item-content')
      .allTextContents()

    return items.map((item) => item.trim())
  }

  /**
   * Clear a select (set to empty).
   */
  async clearSelect(label: string): Promise<void> {
    this.logger.log(`🗑️ Clearing select "${label}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const clearBtn = formItem.locator('.ant-select-clear')
    if (await clearBtn.count() > 0) {
      await clearBtn.click()
    }

    this.logger.log(`✓ Cleared`)
  }

  /**
   * Select multiple values (for multi-select).
   */
  async selectMultiple(
    label: string,
    values: string[],
    options: SelectOptions = {},
  ): Promise<void> {
    this.logger.log(`🎯 Selecting multiple: ${values.join(', ')} from "${label}"`)

    const { searchable = false, timeout = 10_000 } = options

    for (const value of values) {
      const formItem = this.page
        .locator('.ant-form-item')
        .filter({ hasText: label })
        .first()

      const trigger = formItem.locator('.ant-select-selector').first()
      await trigger.click()

      const dropdown = this.page
        .locator('.ant-select-dropdown')
        .filter({ isVisible: true })
        .last()
      await dropdown.waitFor({ state: 'visible', timeout })

      if (searchable) {
        const input = dropdown.locator('input').first()
        await input.fill(value)
        await this.page.waitForTimeout(300)
      }

      await dropdown
        .locator('.ant-select-item-option')
        .filter({ hasText: value })
        .first()
        .click()

      // For multi-select, dropdown stays open
      await this.page.waitForTimeout(200)
    }

    // Close dropdown
    await this.page.keyboard.press('Escape')

    this.logger.log(`✓ Selected ${values.length} values`)
  }

  /**
   * Unselect a value from multi-select (by clicking the × on the tag).
   */
  async unselectValue(label: string, value: string): Promise<void> {
    this.logger.log(`❌ Unselecting "${value}" from "${label}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const closeIcon = formItem
      .locator('.ant-select-selection-item')
      .filter({ hasText: value })
      .first()
      .locator('.ant-select-selection-item-remove')

    await closeIcon.click()

    this.logger.log(`✓ Unselected`)
  }

  // ── Async Select ──────────────────────────────────────────────────────────

  /**
   * Select from an async select that loads options after typing.
   * Waits for options to load before selecting.
   */
  async selectAsync(
    label: string,
    searchTerm: string,
    valueToSelect: string,
  ): Promise<void> {
    this.logger.log(`🔍 Async select: searching for "${searchTerm}", selecting "${valueToSelect}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const trigger = formItem.locator('.ant-select-selector').first()
    await trigger.click()

    // Type search term (triggers async load)
    const input = this.page.locator('.ant-select-dropdown input').first()
    await input.fill(searchTerm)

    // Wait for options to load (loading spinner disappears)
    await this.page.locator('.ant-select-spinner').waitFor({ state: 'hidden', timeout: 10_000 }).catch(() => {
      // May not have a spinner
    })

    // Wait for options to appear
    await this.page.waitForFunction(
      () => {
        return document.querySelectorAll('.ant-select-item-option').length > 0
      },
      { timeout: 10_000 },
    )

    // Click the matching option
    const dropdown = this.page
      .locator('.ant-select-dropdown')
      .filter({ isVisible: true })
      .last()

    await dropdown
      .locator('.ant-select-item-option')
      .filter({ hasText: valueToSelect })
      .first()
      .click()

    this.logger.log(`✓ Selected`)
  }

  // ── Option List ────────────────────────────────────────────────────────────

  /**
   * Get all available options in an open dropdown.
   */
  async getAvailableOptions(label: string): Promise<string[]> {
    this.logger.log(`📋 Getting options for "${label}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const trigger = formItem.locator('.ant-select-selector').first()
    await trigger.click()

    const dropdown = this.page
      .locator('.ant-select-dropdown')
      .filter({ isVisible: true })
      .last()
    await dropdown.waitFor({ state: 'visible' })

    const options = await dropdown
      .locator('.ant-select-item-option')
      .allTextContents()

    // Close dropdown
    await this.page.keyboard.press('Escape')

    return options.map((opt) => opt.trim())
  }

  /**
   * Assert a select has a specific option available.
   */
  async expectOptionAvailable(label: string, value: string): Promise<void> {
    const options = await this.getAvailableOptions(label)
    expect(options).toContain(value)
  }

  /**
   * Assert a select is disabled.
   */
  async expectSelectDisabled(label: string): Promise<void> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const selector = formItem.locator('.ant-select-selector').first()
    await expect(selector).toHaveClass(/ant-select-disabled/)
  }

  /**
   * Assert a select is enabled.
   */
  async expectSelectEnabled(label: string): Promise<void> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const selector = formItem.locator('.ant-select-selector').first()
    // Check that it doesn't have the disabled class
    const classes = await selector.getAttribute('class')
    expect(classes).not.toContain('ant-select-disabled')
  }
}
