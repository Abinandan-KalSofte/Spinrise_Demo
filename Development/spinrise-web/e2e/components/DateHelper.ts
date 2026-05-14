/**
 * DateHelper — Reusable date picker operations
 *
 * Supports:
 *  - Manual input (typing dates)
 *  - Calendar picker (clicking dates)
 *  - Date range selection
 *  - Dynamic date calculations
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'
import dayjs from 'dayjs'

export class DateHelper {
  private page: Page
  private logger: any

  constructor(page: Page, logger?: any) {
    this.page = page
    this.logger = logger || console
  }

  /**
   * Set a date by typing into the date input field.
   * Format: "DD-MMM-YYYY" (e.g., "14-May-2026")
   */
  async setDateByInput(label: string, dateString: string): Promise<void> {
    this.logger.log(`📅 Setting date "${label}" to "${dateString}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const input = formItem.locator('.ant-picker input').first()
    await input.click()
    await input.fill(dateString)
    await input.press('Enter')

    // Wait for calendar to close
    await this.page
      .locator('.ant-picker-dropdown')
      .waitFor({ state: 'hidden', timeout: 3_000 })
      .catch(() => {
        // May already be closed
      })

    this.logger.log(`✓ Date set`)
  }

  /**
   * Set date using the calendar picker (clicking days).
   */
  async setDateByCalendar(label: string, day: number, month?: string, year?: number): Promise<void> {
    this.logger.log(`📅 Setting date "${label}" via calendar`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const input = formItem.locator('.ant-picker input').first()
    await input.click()

    // Wait for calendar to open
    const calendar = this.page
      .locator('.ant-picker-dropdown')
      .filter({ isVisible: true })
    await calendar.waitFor({ state: 'visible', timeout: 5_000 })

    // Navigate to correct month/year if provided
    if (month || year) {
      await this.navigateCalendar(month, year)
    }

    // Click the day
    const dayCell = calendar
      .locator('.ant-picker-cell')
      .filter({ hasText: day.toString() })
      .first()

    await dayCell.click()

    // Calendar should close after selection
    await calendar.waitFor({ state: 'hidden', timeout: 3_000 }).catch(() => {
      // May be detached
    })

    this.logger.log(`✓ Date selected`)
  }

  /**
   * Set date from today + days offset.
   * Useful for relative dates: tomorrow (+1), yesterday (-1), etc.
   */
  async setDateRelative(label: string, daysOffset: number, format: string = 'DD-MMM-YYYY'): Promise<void> {
    const date = dayjs().add(daysOffset, 'days').format(format)
    await this.setDateByInput(label, date)
  }

  /**
   * Set a date range (from and to).
   */
  async setDateRange(
    label: string,
    fromDate: string,
    toDate: string,
  ): Promise<void> {
    this.logger.log(`📅 Setting date range from "${fromDate}" to "${toDate}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const inputs = formItem.locator('.ant-picker input')

    // Set from date
    const fromInput = inputs.nth(0)
    await fromInput.click()
    await fromInput.fill(fromDate)
    await fromInput.press('Enter')

    await this.page.waitForTimeout(300)

    // Set to date
    const toInput = inputs.nth(1)
    await toInput.click()
    await toInput.fill(toDate)
    await toInput.press('Enter')

    this.logger.log(`✓ Date range set`)
  }

  /**
   * Clear a date picker.
   */
  async clearDate(label: string): Promise<void> {
    this.logger.log(`🗑️ Clearing date "${label}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const input = formItem.locator('.ant-picker input').first()
    await input.click()
    await input.clear()
    await input.press('Escape')

    this.logger.log(`✓ Date cleared`)
  }

  /**
   * Get the current value of a date picker.
   */
  async getDateValue(label: string): Promise<string> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const value = await formItem.locator('.ant-picker input').first().inputValue()
    return value.trim()
  }

  /**
   * Navigate calendar to a specific month/year.
   * (Helper used internally)
   */
  private async navigateCalendar(month?: string, year?: number): Promise<void> {
    const calendar = this.page
      .locator('.ant-picker-dropdown')
      .filter({ isVisible: true })

    // Click on month/year header to open month/year selector
    if (month || year) {
      const header = calendar.locator('.ant-picker-header-view').first()
      await header.click()

      await this.page.waitForTimeout(300)

      // Select year if provided
      if (year) {
        const yearCell = calendar
          .locator('.ant-picker-cell')
          .filter({ hasText: year.toString() })
          .first()
        await yearCell.click()
        await this.page.waitForTimeout(200)
      }

      // Select month if provided
      if (month) {
        const monthCell = calendar
          .locator('.ant-picker-cell')
          .filter({ hasText: month })
          .first()
        await monthCell.click()
        await this.page.waitForTimeout(200)
      }
    }
  }

  /**
   * Select a preset date range (e.g., "Last 7 days", "This month").
   * Presets depend on the specific date range picker.
   */
  async selectDateRangePreset(label: string, presetName: string): Promise<void> {
    this.logger.log(`📅 Selecting preset "${presetName}" for "${label}"`)

    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    await formItem.click()

    // Wait for range picker to open
    const rangeCalendar = this.page
      .locator('.ant-picker-dropdown')
      .filter({ isVisible: true })
    await rangeCalendar.waitFor({ state: 'visible', timeout: 5_000 })

    // Click the preset
    const preset = rangeCalendar
      .locator('.ant-picker-preset')
      .or(rangeCalendar.locator('button'))
      .filter({ hasText: presetName })
      .first()

    await preset.click()

    this.logger.log(`✓ Preset selected`)
  }

  // ── Assertions ─────────────────────────────────────────────────────────────

  /**
   * Assert date input has a specific value.
   */
  async expectDateValue(label: string, expectedDate: string): Promise<void> {
    const actual = await this.getDateValue(label)
    expect(actual).toBe(expectedDate)
  }

  /**
   * Assert date picker is enabled.
   */
  async expectDateEnabled(label: string): Promise<void> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const input = formItem.locator('.ant-picker input').first()
    const disabled = await input.isDisabled()
    expect(disabled).toBe(false)
  }

  /**
   * Assert date picker is disabled.
   */
  async expectDateDisabled(label: string): Promise<void> {
    const formItem = this.page
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    const input = formItem.locator('.ant-picker input').first()
    const disabled = await input.isDisabled()
    expect(disabled).toBe(true)
  }

  /**
   * Get today's date in DD-MMM-YYYY format.
   */
  getTodayFormatted(format: string = 'DD-MMM-YYYY'): string {
    return dayjs().format(format)
  }

  /**
   * Get a date in DD-MMM-YYYY format.
   */
  getDateFormatted(date: Date | string, format: string = 'DD-MMM-YYYY'): string {
    return dayjs(date).format(format)
  }

  /**
   * Calculate date offset from today.
   */
  getDateWithOffset(daysOffset: number, format: string = 'DD-MMM-YYYY'): string {
    return dayjs().add(daysOffset, 'days').format(format)
  }
}
