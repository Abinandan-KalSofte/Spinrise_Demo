/**
 * AGGridHelper — Reusable AG Grid interaction utilities
 *
 * AG Grid is a complex component with virtual scrolling and dynamic rendering.
 * This helper encapsulates all grid operations with proper waits and error handling.
 *
 * Features:
 *  - Cell click/double-click with stale element handling
 *  - Cell value get/set with editable cells
 *  - Row selection (single/multi)
 *  - Row search and scroll
 *  - Grid load wait with network idle
 *  - Virtual scroll support
 *  - Error recovery
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'

export interface GridCell {
  row: number
  col: number
  value?: string
}

export interface GridSearchOptions {
  columnName?: string
  searchText: string
  timeout?: number
}

export class AGGridHelper {
  private page: Page
  private gridSelector: string
  private logger: any

  constructor(page: Page, gridSelector: string = '.ag-root', logger?: any) {
    this.page = page
    this.gridSelector = gridSelector
    this.logger = logger || console
  }

  // ── Grid Load Helpers ──────────────────────────────────────────────────────

  /**
   * Wait for the AG Grid to be fully rendered and ready.
   * Waits for:
   *  1. Grid container to be visible
   *  2. Loading overlay to disappear (if present)
   *  3. Network to be idle
   */
  async waitForGridLoad(timeout: number = 30_000): Promise<void> {
    this.logger.log('⏳ Waiting for AG Grid to load...')

    // Wait for grid container
    const grid = this.page.locator(this.gridSelector).first()
    await grid.waitFor({ state: 'visible', timeout })

    // Wait for loading overlay to disappear
    const loadingOverlay = this.page.locator('.ag-overlay-loading-center')
    if (await loadingOverlay.count() > 0) {
      await loadingOverlay.waitFor({ state: 'hidden', timeout })
    }

    // Wait for network to settle
    await this.page.waitForLoadState('networkidle').catch(() => {
      this.logger.warn('⚠️ Network idle timeout (continuing)')
    })

    this.logger.log('✓ AG Grid ready')
  }

  /**
   * Get the count of visible rows in the grid (excludes hidden/virtual rows).
   * Accounts for virtual scrolling.
   */
  async getRowCount(timeout: number = 10_000): Promise<number> {
    await this.page.waitForFunction(
      ({ gridSelector }) => {
        const grid = document.querySelector(gridSelector)
        return grid && grid.querySelector('.ag-row') !== null
      },
      { gridSelector: this.gridSelector },
      { timeout },
    )

    const rows = this.page.locator(`${this.gridSelector} .ag-row`).all()
    const rowCount = (await rows).filter((row) =>
      row.isVisible().catch(() => false),
    ).length

    this.logger.log(`📊 Grid has ${rowCount} visible rows`)
    return rowCount
  }

  /**
   * Get all data from the grid via browser context (faster than clicking cells).
   * Returns array of objects where keys are column names.
   */
  async getGridData(): Promise<Record<string, string>[]> {
    const data = await this.page.evaluate(({ gridSelector }) => {
      const grid = document.querySelector(gridSelector) as any
      if (!grid || !grid.__agGridInstance) return []

      const api = grid.__agGridInstance.api
      const rows = []
      api.forEachNode((node: any) => {
        rows.push(node.data)
      })
      return rows
    }, { gridSelector: this.gridSelector })

    this.logger.log(`📋 Extracted ${data.length} rows from grid`)
    return data
  }

  // ── Cell Operations ────────────────────────────────────────────────────────

  /**
   * Click a specific cell in the grid.
   * Handles virtual scrolling by scrolling to the cell first.
   *
   * @param row - Zero-based row index
   * @param col - Zero-based column index (or column name if grid supports it)
   */
  async clickCell(row: number, col: number | string): Promise<void> {
    this.logger.log(`🖱️ Clicking cell [${row}, ${col}]`)

    const cell = this.getCellLocator(row, col)
    await cell.waitFor({ state: 'visible', timeout: 15_000 })

    // Scroll to cell (important for virtual scrolling)
    await cell.scrollIntoViewIfNeeded()
    await this.page.waitForTimeout(200) // Small delay for scroll to settle

    // Click with retry logic for stale elements
    let retries = 3
    while (retries > 0) {
      try {
        await cell.click({ timeout: 5_000 })
        this.logger.log(`✓ Cell clicked`)
        return
      } catch (error) {
        retries--
        if (retries === 0) throw error
        this.logger.warn(`⚠️ Stale element, retrying... (${retries} left)`)
        await this.page.waitForTimeout(300)
      }
    }
  }

  /**
   * Double-click a cell (for edit mode).
   */
  async doubleClickCell(row: number, col: number | string): Promise<void> {
    this.logger.log(`🖱️ Double-clicking cell [${row}, ${col}]`)

    const cell = this.getCellLocator(row, col)
    await cell.waitFor({ state: 'visible', timeout: 15_000 })
    await cell.scrollIntoViewIfNeeded()
    await this.page.waitForTimeout(200)

    let retries = 3
    while (retries > 0) {
      try {
        await cell.dblclick({ timeout: 5_000 })
        this.logger.log(`✓ Cell double-clicked (edit mode)`)
        return
      } catch (error) {
        retries--
        if (retries === 0) throw error
        this.logger.warn(`⚠️ Stale element, retrying...`)
        await this.page.waitForTimeout(300)
      }
    }
  }

  /**
   * Get cell value (text content).
   */
  async getCellValue(row: number, col: number | string): Promise<string> {
    const cell = this.getCellLocator(row, col)
    await cell.waitFor({ state: 'visible', timeout: 10_000 })

    const value = await cell.textContent()
    this.logger.log(`📖 Cell value: "${value?.trim()}"`)
    return (value ?? '').trim()
  }

  /**
   * Set cell value (for editable cells).
   * Handles text input, number input, and select cells.
   */
  async setCellValue(row: number, col: number | string, value: string): Promise<void> {
    this.logger.log(`✏️ Setting cell [${row}, ${col}] to "${value}"`)

    await this.doubleClickCell(row, col)
    await this.page.waitForTimeout(300) // Wait for edit mode to activate

    // Find the input field (could be input, textarea, or select)
    const input = this.page
      .locator(`${this.gridSelector} .ag-cell-edit-wrapper input, textarea, select`)
      .first()

    await input.waitFor({ state: 'visible', timeout: 10_000 })
    await input.fill(value)
    await input.press('Enter') // Confirm edit

    this.logger.log(`✓ Cell value set`)
  }

  /**
   * Get cell locator (private helper).
   * Supports both numeric column indices and column names.
   */
  private getCellLocator(row: number, col: number | string): Locator {
    if (typeof col === 'number') {
      return this.page.locator(
        `${this.gridSelector} .ag-row:nth-child(${row + 1}) .ag-cell:nth-child(${col + 1})`,
      )
    } else {
      // Column name — requires data-col attribute
      return this.page.locator(
        `${this.gridSelector} .ag-row:nth-child(${row + 1}) [data-col="${col}"]`,
      )
    }
  }

  // ── Row Selection ──────────────────────────────────────────────────────────

  /**
   * Click the checkbox to select a row.
   */
  async selectRow(row: number): Promise<void> {
    this.logger.log(`☑️ Selecting row ${row}`)

    const checkbox = this.page.locator(
      `${this.gridSelector} .ag-row:nth-child(${row + 1}) .ag-checkbox-input`,
    )

    await checkbox.waitFor({ state: 'visible', timeout: 10_000 })
    await checkbox.check()

    this.logger.log(`✓ Row selected`)
  }

  /**
   * Deselect a row.
   */
  async deselectRow(row: number): Promise<void> {
    const checkbox = this.page.locator(
      `${this.gridSelector} .ag-row:nth-child(${row + 1}) .ag-checkbox-input`,
    )
    await checkbox.uncheck()
  }

  /**
   * Select multiple rows by indices.
   */
  async selectRows(rows: number[]): Promise<void> {
    for (const row of rows) {
      await this.selectRow(row)
    }
  }

  /**
   * Get count of selected rows.
   */
  async getSelectedRowCount(): Promise<number> {
    const count = await this.page.locator(
      `${this.gridSelector} .ag-checkbox-input:checked`,
    ).count()
    return count
  }

  // ── Search & Filter ────────────────────────────────────────────────────────

  /**
   * Search for a row by cell value.
   * Scrolls through the grid looking for the first matching cell.
   *
   * @param options.searchText - Text to search for
   * @param options.columnName - (Optional) specific column to search
   * @param options.timeout - Search timeout
   * @returns Row index or -1 if not found
   */
  async searchRow(options: GridSearchOptions): Promise<number> {
    const { searchText, columnName, timeout = 30_000 } = options
    this.logger.log(`🔍 Searching for "${searchText}"${columnName ? ` in ${columnName}` : ''}`)

    const startTime = Date.now()

    // Get grid data and search
    const data = await this.getGridData()
    for (let i = 0; i < data.length; i++) {
      const row = data[i]

      if (columnName) {
        if (row[columnName]?.includes(searchText)) {
          this.logger.log(`✓ Found at row ${i}`)
          return i
        }
      } else {
        // Search all columns
        if (Object.values(row).some((val) => val?.toString().includes(searchText))) {
          this.logger.log(`✓ Found at row ${i}`)
          return i
        }
      }

      if (Date.now() - startTime > timeout) {
        this.logger.warn(`⚠️ Search timeout after ${timeout}ms`)
        return -1
      }
    }

    this.logger.warn(`⚠️ Not found`)
    return -1
  }

  /**
   * Scroll the grid vertically.
   * Useful for testing virtual scrolling and loading more data.
   *
   * @param pixels - Pixels to scroll (positive = down, negative = up)
   */
  async scrollGrid(pixels: number): Promise<void> {
    this.logger.log(`📜 Scrolling grid ${pixels > 0 ? 'down' : 'up'} ${Math.abs(pixels)}px`)

    await this.page.evaluate(
      ({ gridSelector, pixels }) => {
        const grid = document.querySelector(gridSelector)
        const scrollContainer = grid?.querySelector('.ag-body-viewport') as HTMLElement
        if (scrollContainer) {
          scrollContainer.scrollTop += pixels
        }
      },
      { gridSelector: this.gridSelector, pixels },
    )

    await this.page.waitForTimeout(500) // Wait for scroll to settle
    this.logger.log(`✓ Scroll complete`)
  }

  /**
   * Scroll to a specific row (handles virtual scrolling).
   */
  async scrollToRow(row: number): Promise<void> {
    this.logger.log(`📜 Scrolling to row ${row}`)

    const cell = this.page.locator(
      `${this.gridSelector} .ag-row:nth-child(${row + 1}) .ag-cell`,
    ).first()

    await cell.scrollIntoViewIfNeeded()
    await this.page.waitForTimeout(300)

    this.logger.log(`✓ Scrolled to row ${row}`)
  }

  // ── Grid Actions ───────────────────────────────────────────────────────────

  /**
   * Click an action button in a row (e.g. Edit, Delete, View).
   * Assumes action buttons are in the first/last column.
   */
  async clickRowAction(row: number, actionButtonLocator: string): Promise<void> {
    this.logger.log(`🔘 Clicking action on row ${row}`)

    const actionButton = this.page.locator(
      `${this.gridSelector} .ag-row:nth-child(${row + 1}) ${actionButtonLocator}`,
    )

    await actionButton.waitFor({ state: 'visible', timeout: 10_000 })
    await actionButton.click()

    this.logger.log(`✓ Action clicked`)
  }

  /**
   * Wait for a specific row to appear (useful after adding a row).
   */
  async waitForRowWithValue(
    searchText: string,
    timeout: number = 10_000,
  ): Promise<number> {
    this.logger.log(`⏳ Waiting for row with "${searchText}"`)

    const startTime = Date.now()
    let rowIndex = -1

    while (Date.now() - startTime < timeout) {
      rowIndex = await this.searchRow({ searchText, timeout: 2000 })
      if (rowIndex !== -1) {
        this.logger.log(`✓ Row found at index ${rowIndex}`)
        return rowIndex
      }
      await this.page.waitForTimeout(500)
    }

    throw new Error(`Row with "${searchText}" not found within ${timeout}ms`)
  }

  // ── Validation Helpers ─────────────────────────────────────────────────────

  /**
   * Assert a cell contains expected value.
   */
  async expectCellValue(row: number, col: number | string, expected: string): Promise<void> {
    const actual = await this.getCellValue(row, col)
    expect(actual).toContain(expected)
  }

  /**
   * Assert grid is empty (no data rows).
   */
  async expectEmpty(): Promise<void> {
    const count = await this.getRowCount()
    expect(count).toBe(0)
  }

  /**
   * Assert grid has at least N rows.
   */
  async expectMinRows(minCount: number): Promise<void> {
    const count = await this.getRowCount()
    expect(count).toBeGreaterThanOrEqual(minCount)
  }
}
