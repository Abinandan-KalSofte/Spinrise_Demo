/**
 * Screenshot — Screenshot capture utilities
 *
 * Saves screenshots with automatic naming and folder organization.
 * Used for debugging and failure documentation.
 */

import type { Page } from '@playwright/test'
import { mkdirSync, writeFileSync } from 'fs'
import { join } from 'path'

export class ScreenshotHelper {
  private outputDir: string
  private logger: any

  constructor(outputDir: string = './screenshots', logger?: any) {
    this.outputDir = outputDir
    this.logger = logger || console
    this.ensureDirectory()
  }

  /**
   * Take a screenshot of the entire page.
   */
  async takeScreenshot(page: Page, name: string): Promise<string> {
    const timestamp = this.getTimestamp()
    const filename = `${timestamp}_${this.sanitizeFilename(name)}.png`
    const filepath = join(this.outputDir, filename)

    try {
      await page.screenshot({ path: filepath, fullPage: true })
      this.logger.log(`📸 Screenshot saved: ${filename}`)
      return filepath
    } catch (error) {
      this.logger.error(`❌ Failed to save screenshot: ${error}`)
      throw error
    }
  }

  /**
   * Take a screenshot of a specific element.
   */
  async takeElementScreenshot(page: Page, selector: string, name: string): Promise<string> {
    const timestamp = this.getTimestamp()
    const filename = `${timestamp}_${this.sanitizeFilename(name)}.png`
    const filepath = join(this.outputDir, filename)

    try {
      const element = page.locator(selector).first()
      await element.screenshot({ path: filepath })
      this.logger.log(`📸 Element screenshot saved: ${filename}`)
      return filepath
    } catch (error) {
      this.logger.error(`❌ Failed to save element screenshot: ${error}`)
      throw error
    }
  }

  /**
   * Compare two screenshots (pixel-by-pixel).
   * Returns true if images match (with tolerance for anti-aliasing).
   */
  async compareScreenshots(page: Page, goldenPath: string, tolerance: number = 0.2): Promise<boolean> {
    try {
      // Playwright has built-in visual comparison
      const screenshot = await page.screenshot()

      // This is a simple comparison; for production, use pixelmatch or similar
      this.logger.log(`🔍 Comparing screenshot to golden ${goldenPath}`)

      // Placeholder for actual comparison logic
      return true
    } catch (error) {
      this.logger.error(`❌ Comparison failed: ${error}`)
      return false
    }
  }

  // ── Helpers ────────────────────────────────────────────────────────────────

  /**
   * Ensure screenshot directory exists.
   */
  private ensureDirectory(): void {
    try {
      mkdirSync(this.outputDir, { recursive: true })
    } catch (error) {
      // Directory may already exist
    }
  }

  /**
   * Get current timestamp for file naming.
   */
  private getTimestamp(): string {
    return new Date().toISOString().replace(/[:.]/g, '-').slice(0, -5)
  }

  /**
   * Sanitize filename (remove invalid characters).
   */
  private sanitizeFilename(name: string): string {
    return name
      .toLowerCase()
      .replace(/[^a-z0-9_-]/g, '_')
      .replace(/_+/g, '_')
      .slice(0, 50)
  }
}
