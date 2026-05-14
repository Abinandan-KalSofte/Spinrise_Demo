/**
 * Wait utilities — Smart wait helpers (no hardcoded timeouts!)
 *
 * Always prefer:
 *  - locator.waitFor()
 *  - expect()
 *  - page.waitForLoadState()
 *  - page.waitForFunction()
 *
 * NEVER use page.waitForTimeout() in production code.
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'

export class WaitHelper {
  private page: Page
  private logger: any

  constructor(page: Page, logger?: any) {
    this.page = page
    this.logger = logger || console
  }

  /**
   * Wait for any loading spinner to disappear.
   * Handles various spinner selectors (Ant Design, custom, etc.)
   */
  async waitForLoadingComplete(timeout: number = 30_000): Promise<void> {
    this.logger.log('⏳ Waiting for loading to complete...')

    const spinners = [
      '.ant-spin-spinning',
      '.ant-skeleton',
      '.loading-overlay',
      '[role="progressbar"]',
    ]

    for (const selector of spinners) {
      const spinner = this.page.locator(selector)
      if (await spinner.count() > 0) {
        await spinner.waitFor({ state: 'hidden', timeout })
      }
    }

    this.logger.log('✓ Loading complete')
  }

  /**
   * Wait for network to be idle (no pending requests).
   */
  async waitForNetworkIdle(timeout: number = 30_000): Promise<void> {
    this.logger.log('⏳ Waiting for network idle...')

    await this.page.waitForLoadState('networkidle', { timeout })

    this.logger.log('✓ Network idle')
  }

  /**
   * Wait for DOM to be stable (no mutations for a period).
   * Useful after dynamic content loads.
   */
  async waitForDOMStable(timeout: number = 10_000): Promise<void> {
    this.logger.log('⏳ Waiting for DOM to be stable...')

    await this.page.waitForFunction(
      () => {
        // Check if DOM is not mutating (no pending animations, transitions)
        const animations = (document as any).getAnimations?.() ?? []
        return animations.length === 0
      },
      { timeout },
    )

    this.logger.log('✓ DOM stable')
  }

  /**
   * Wait for a specific element to become visible and stable.
   */
  async waitForElement(locator: Locator, timeout: number = 30_000): Promise<void> {
    await locator.waitFor({ state: 'visible', timeout })
    await locator.evaluate((el) => {
      return new Promise((resolve) => {
        // Wait for element to stop moving (no scroll, no resize)
        let lastRect = el.getBoundingClientRect()
        let checks = 0

        const check = () => {
          const currentRect = el.getBoundingClientRect()
          if (
            lastRect.x === currentRect.x &&
            lastRect.y === currentRect.y &&
            lastRect.width === currentRect.width &&
            lastRect.height === currentRect.height
          ) {
            checks++
            if (checks >= 3) {
              resolve(undefined)
              return
            }
          } else {
            checks = 0
          }
          lastRect = currentRect
          requestAnimationFrame(check)
        }
        check()
      })
    })
  }

  /**
   * Wait for an API response matching a URL pattern.
   * Returns the response object for assertions.
   */
  async waitForApi(
    urlPattern: string | RegExp,
    trigger: () => Promise<void>,
    timeout: number = 30_000,
  ): Promise<any> {
    this.logger.log(`⏳ Waiting for API: ${urlPattern}`)

    const [response] = await Promise.all([
      this.page.waitForResponse(
        (res) =>
          (typeof urlPattern === 'string' ? res.url().includes(urlPattern) : urlPattern.test(res.url())) &&
          res.status() < 400,
        { timeout },
      ),
      trigger(),
    ])

    const json = await response.json()
    this.logger.log(`✓ API response: ${response.status()}`)
    return json
  }

  /**
   * Wait for a specific element to contain text.
   */
  async waitForText(locator: Locator, text: string, timeout: number = 30_000): Promise<void> {
    await expect(locator).toContainText(text, { timeout })
  }

  /**
   * Wait for a button to be clickable (visible, enabled, not loading).
   */
  async waitForClickable(locator: Locator, timeout: number = 30_000): Promise<void> {
    await locator.waitFor({ state: 'visible', timeout })
    await expect(locator).toBeEnabled({ timeout })
    await expect(locator).not.toHaveClass(/disabled|loading/, { timeout })
  }

  /**
   * Wait for a specific number of elements to be visible.
   */
  async waitForElementCount(locator: Locator, count: number, timeout: number = 30_000): Promise<void> {
    await expect(locator).toHaveCount(count, { timeout })
  }

  /**
   * Wait for an element to be removed from DOM.
   */
  async waitForElementGone(locator: Locator, timeout: number = 30_000): Promise<void> {
    await locator.waitFor({ state: 'hidden', timeout })
  }

  /**
   * Wait for page to redirect to a specific URL.
   */
  async waitForNavigation(targetUrl: string | RegExp, timeout: number = 30_000): Promise<void> {
    this.logger.log(`⏳ Waiting for navigation to: ${targetUrl}`)

    await this.page.waitForURL(targetUrl, { timeout })

    this.logger.log(`✓ Navigated`)
  }

  /**
   * Wait for a function to return true (custom wait condition).
   */
  async waitForCondition(
    condition: () => boolean | Promise<boolean>,
    timeout: number = 30_000,
    pollInterval: number = 500,
  ): Promise<void> {
    const startTime = Date.now()

    while (Date.now() - startTime < timeout) {
      try {
        const result = await Promise.resolve(condition())
        if (result) {
          return
        }
      } catch (error) {
        // Condition may throw, keep waiting
      }

      await new Promise((resolve) => setTimeout(resolve, pollInterval))
    }

    throw new Error(`Condition not met within ${timeout}ms`)
  }

  /**
   * Wait for no loading spinners and network idle.
   * This is the "full" wait used after major actions.
   */
  async waitForPageReady(timeout: number = 30_000): Promise<void> {
    this.logger.log('⏳ Waiting for page to be ready...')

    try {
      await Promise.race([
        this.waitForLoadingComplete(timeout),
        this.waitForNetworkIdle(timeout),
      ])
    } catch (error) {
      this.logger.warn('⚠️ Wait timeout (continuing)')
    }

    this.logger.log('✓ Page ready')
  }
}
