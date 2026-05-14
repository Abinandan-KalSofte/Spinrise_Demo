/**
 * ModalHelper — Reusable modal interaction utilities
 *
 * Handles Ant Design Modal interactions:
 *  - Wait for modal
 *  - Select values in modal
 *  - Close/confirm modal
 *  - Error handling
 */

import type { Page, Locator } from '@playwright/test'
import { expect } from '@playwright/test'

export class ModalHelper {
  private page: Page
  private logger: any

  constructor(page: Page, logger?: any) {
    this.page = page
    this.logger = logger || console
  }

  /**
   * Wait for a modal to appear by title.
   */
  async waitForModal(title: string, timeout: number = 10_000): Promise<Locator> {
    this.logger.log(`⏳ Waiting for modal "${title}"`)

    const modal = this.page.locator('.ant-modal').filter({ hasText: title }).first()
    await modal.waitFor({ state: 'visible', timeout })

    this.logger.log(`✓ Modal appeared`)
    return modal
  }

  /**
   * Wait for any modal to appear.
   */
  async waitForAnyModal(timeout: number = 10_000): Promise<Locator> {
    this.logger.log(`⏳ Waiting for modal`)

    const modal = this.page.locator('.ant-modal').first()
    await modal.waitFor({ state: 'visible', timeout })

    this.logger.log(`✓ Modal appeared`)
    return modal
  }

  /**
   * Get modal title text.
   */
  async getModalTitle(modal?: Locator): Promise<string> {
    const titleLocator = (modal ?? this.page.locator('.ant-modal').first()).locator(
      '.ant-modal-title',
    )
    const title = await titleLocator.textContent()
    return (title ?? '').trim()
  }

  /**
   * Select a value from a select inside a modal.
   * Identifies the select by its label.
   */
  async selectInModal(label: string, value: string, modal?: Locator): Promise<void> {
    this.logger.log(`🎯 Selecting "${value}" from "${label}" in modal`)

    const modalElement = modal ?? this.page.locator('.ant-modal').first()

    // Find the form item with the label
    const formItem = modalElement
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()

    // Click the select trigger
    const selectTrigger = formItem.locator('.ant-select-selector').first()
    await selectTrigger.click()

    // Find and click the option
    const dropdown = this.page
      .locator('.ant-select-dropdown')
      .filter({ isVisible: true })
      .last()
    await dropdown.waitFor({ state: 'visible' })

    await dropdown.locator('.ant-select-item-option', { hasText: value }).first().click()
    await dropdown.waitFor({ state: 'hidden' })

    this.logger.log(`✓ Selected`)
  }

  /**
   * Fill an input field in a modal.
   */
  async fillInModal(label: string, value: string, modal?: Locator): Promise<void> {
    this.logger.log(`📝 Filling "${label}" with "${value}"`)

    const modalElement = modal ?? this.page.locator('.ant-modal').first()

    const input = modalElement
      .locator('.ant-form-item')
      .filter({ hasText: label })
      .first()
      .locator('input')
      .first()

    await input.fill(value)

    this.logger.log(`✓ Filled`)
  }

  /**
   * Click OK/Confirm button in modal.
   */
  async confirmModal(modal?: Locator): Promise<void> {
    this.logger.log(`✅ Confirming modal`)

    const modalElement = modal ?? this.page.locator('.ant-modal').first()
    const confirmButton = modalElement
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(modalElement.locator('.ant-modal-footer button').filter({ hasText: /OK|Confirm|Yes|Save/ }).first())

    await confirmButton.click()

    // Wait for modal to close
    await this.page.locator('.ant-modal').first().waitFor({ state: 'hidden', timeout: 5_000 }).catch(() => {
      // Modal might be detached, which is fine
    })

    this.logger.log(`✓ Modal confirmed`)
  }

  /**
   * Click Cancel/Close button in modal.
   */
  async cancelModal(modal?: Locator): Promise<void> {
    this.logger.log(`❌ Canceling modal`)

    const modalElement = modal ?? this.page.locator('.ant-modal').first()
    const cancelButton = modalElement
      .locator('.ant-modal-footer .ant-btn-default')
      .or(modalElement.locator('.ant-modal-footer button').filter({ hasText: /Cancel|Close|No/ }).first())

    await cancelButton.click()

    await this.page.locator('.ant-modal').first().waitFor({ state: 'hidden', timeout: 5_000 }).catch(() => {
      // Modal might be detached
    })

    this.logger.log(`✓ Modal canceled`)
  }

  /**
   * Close modal by clicking the X button.
   */
  async closeModal(modal?: Locator): Promise<void> {
    this.logger.log(`❌ Closing modal`)

    const modalElement = modal ?? this.page.locator('.ant-modal').first()
    const closeButton = modalElement.locator('.ant-modal-close')

    await closeButton.click()

    await this.page.locator('.ant-modal').first().waitFor({ state: 'hidden', timeout: 5_000 }).catch(() => {
      // Modal might be detached
    })

    this.logger.log(`✓ Modal closed`)
  }

  /**
   * Assert modal is visible.
   */
  async expectModalVisible(title?: string): Promise<void> {
    if (title) {
      const modal = this.page.locator('.ant-modal').filter({ hasText: title }).first()
      await expect(modal).toBeVisible()
    } else {
      await expect(this.page.locator('.ant-modal').first()).toBeVisible()
    }
  }

  /**
   * Assert modal contains text.
   */
  async expectModalContains(text: string): Promise<void> {
    await expect(this.page.locator('.ant-modal').first()).toContainText(text)
  }
}
