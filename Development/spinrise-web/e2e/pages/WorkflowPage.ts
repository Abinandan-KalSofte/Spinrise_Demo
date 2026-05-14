/**
 * WorkflowPage — Page Object Model for workflow approval/rejection
 *
 * Routes:
 *  - /purchase/requisition/v1/new?prNo=PR-00123 (view existing PR)
 *  - Workflow actions: Submit, Approve, Reject, Recall
 *
 * Handles:
 *  - Workflow button clicks
 *  - Remarks textarea
 *  - Level-wise approval tracking
 *  - Status transitions
 */

import type { Page } from '@playwright/test'
import { expect } from '@playwright/test'
import { BasePage } from '../BasePage'
import { ModalHelper } from '../../components/ModalHelper'

export type WorkflowAction = 'submit' | 'approve' | 'reject' | 'recall'
export type PRStatus =
  | 'OPEN'
  | 'L1_APPROVED'
  | 'L2_APPROVED'
  | 'FINAL_APPROVED'
  | 'CANCELLED'
  | 'CONVERTED'
  | 'RECEIVED'

export class WorkflowPage extends BasePage {
  private modalHelper: ModalHelper

  constructor(page: Page) {
    super(page)
    this.modalHelper = new ModalHelper(page)
  }

  // ── Workflow Button Locators ───────────────────────────────────────────────

  get submitButton() {
    return this.page.getByRole('button', { name: /Submit|Send/i })
  }

  get approveButton() {
    return this.page.getByRole('button', { name: /Approve/i })
  }

  get rejectButton() {
    return this.page.getByRole('button', { name: /Reject/i })
  }

  get recallButton() {
    return this.page.getByRole('button', { name: /Recall|Undo/i })
  }

  get convertButton() {
    return this.page.getByRole('button', { name: /Convert/i })
  }

  // ── Status Indicators ──────────────────────────────────────────────────────

  get prStatusBadge() {
    return this.page.locator('.ant-tag').not(this.page.locator('.ant-tag').filter({ hasText: /^PR-/ })).first()
  }

  get approvalChain() {
    return this.page.locator('[data-testid="approval-chain"], .approval-chain')
  }

  /**
   * Get current PR status text.
   */
  async getCurrentStatus(): Promise<string> {
    const status = await this.prStatusBadge.textContent()
    return (status ?? '').trim()
  }

  /**
   * Get approval level indicators (L1, L2, etc.).
   */
  async getApprovalLevels(): Promise<string[]> {
    const levels = await this.page
      .locator('.approval-level, [data-testid*="level"]')
      .allTextContents()
    return levels.map((l) => l.trim())
  }

  // ── Workflow Actions ───────────────────────────────────────────────────────

  /**
   * Submit the PR for workflow.
   */
  async submitForWorkflow(remarks?: string): Promise<void> {
    console.log('📤 Submitting PR for workflow...')

    await this.submitButton.click()

    // Wait for modal/confirmation
    await this.page.waitForTimeout(500)

    // Fill remarks if modal appears
    if (remarks) {
      const remarksInput = this.page
        .locator('textarea')
        .filter({ hasText: /Remarks|Comments|Notes/i })
        .first()

      if (await remarksInput.count() > 0) {
        await remarksInput.fill(remarks)
      }
    }

    // Click confirm button in modal if it exists
    const confirmBtn = this.page
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(this.page.locator('button').filter({ hasText: /OK|Submit|Confirm|Yes/ }))
      .first()

    if (await confirmBtn.count() > 0) {
      await confirmBtn.click()
    }

    // Wait for status to change
    await this.page.waitForTimeout(1000)

    console.log('✓ PR submitted for workflow')
  }

  /**
   * Approve the PR.
   */
  async approveWorkflow(remarks?: string, level?: string): Promise<void> {
    console.log(`✅ Approving${level ? ` Level ${level}` : ''}...`)

    // If multiple approval levels, click the specific one
    if (level) {
      const levelButton = this.page
        .locator('button')
        .filter({ hasText: new RegExp(`Approve|${level}`, 'i') })
        .first()
      await levelButton.click()
    } else {
      await this.approveButton.click()
    }

    await this.page.waitForTimeout(500)

    // Fill remarks if provided
    if (remarks) {
      const remarksInput = this.page
        .locator('textarea')
        .filter({ hasText: /Remarks|Comments|Notes/i })
        .first()

      if (await remarksInput.count() > 0) {
        await remarksInput.fill(remarks)
      }
    }

    // Click confirm button
    const confirmBtn = this.page
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(this.page.locator('button').filter({ hasText: /OK|Approve|Confirm|Yes/ }))
      .first()

    if (await confirmBtn.count() > 0) {
      await confirmBtn.click()
    }

    await this.page.waitForTimeout(1000)

    console.log('✓ Approved')
  }

  /**
   * Reject the PR.
   */
  async rejectWorkflow(remarks: string): Promise<void> {
    console.log('❌ Rejecting PR...')

    if (!remarks) {
      throw new Error('Rejection remarks are required')
    }

    await this.rejectButton.click()

    await this.page.waitForTimeout(500)

    // Fill rejection remarks
    const remarksInput = this.page
      .locator('textarea')
      .filter({ hasText: /Remarks|Comments|Notes|Reason/i })
      .first()

    if (await remarksInput.count() > 0) {
      await remarksInput.fill(remarks)
    }

    // Click confirm button
    const confirmBtn = this.page
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(this.page.locator('button').filter({ hasText: /OK|Reject|Confirm|Yes/ }))
      .first()

    if (await confirmBtn.count() > 0) {
      await confirmBtn.click()
    }

    await this.page.waitForTimeout(1000)

    console.log('✓ Rejected')
  }

  /**
   * Recall/Undo a submitted PR.
   */
  async recallWorkflow(remarks?: string): Promise<void> {
    console.log('🔄 Recalling PR...')

    await this.recallButton.click()

    await this.page.waitForTimeout(500)

    if (remarks) {
      const remarksInput = this.page
        .locator('textarea')
        .filter({ hasText: /Remarks|Comments|Notes/i })
        .first()

      if (await remarksInput.count() > 0) {
        await remarksInput.fill(remarks)
      }
    }

    const confirmBtn = this.page
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(this.page.locator('button').filter({ hasText: /OK|Recall|Confirm|Yes/ }))
      .first()

    if (await confirmBtn.count() > 0) {
      await confirmBtn.click()
    }

    await this.page.waitForTimeout(1000)

    console.log('✓ Recalled')
  }

  /**
   * Convert PR to PO (if applicable).
   */
  async convertToPO(): Promise<void> {
    console.log('🔄 Converting PR to PO...')

    await this.convertButton.click()

    // Wait for conversion confirmation
    await this.page.waitForTimeout(1000)

    const confirmBtn = this.page
      .locator('.ant-modal-footer .ant-btn-primary')
      .or(this.page.locator('button').filter({ hasText: /OK|Convert|Confirm/ }))
      .first()

    if (await confirmBtn.count() > 0) {
      await confirmBtn.click()
    }

    console.log('✓ Converted to PO')
  }

  // ── Status Assertions ──────────────────────────────────────────────────────

  /**
   * Assert PR is in a specific status.
   */
  async expectStatus(expectedStatus: PRStatus): Promise<void> {
    const currentStatus = await this.getCurrentStatus()
    expect(currentStatus).toContain(expectedStatus)
  }

  /**
   * Assert a workflow button is visible.
   */
  async expectWorkflowButtonVisible(action: WorkflowAction): Promise<void> {
    let button
    switch (action) {
      case 'submit':
        button = this.submitButton
        break
      case 'approve':
        button = this.approveButton
        break
      case 'reject':
        button = this.rejectButton
        break
      case 'recall':
        button = this.recallButton
        break
    }

    await expect(button).toBeVisible()
  }

  /**
   * Assert a workflow button is disabled.
   */
  async expectWorkflowButtonDisabled(action: WorkflowAction): Promise<void> {
    let button
    switch (action) {
      case 'submit':
        button = this.submitButton
        break
      case 'approve':
        button = this.approveButton
        break
      case 'reject':
        button = this.rejectButton
        break
      case 'recall':
        button = this.recallButton
        break
    }

    await expect(button).toBeDisabled()
  }

  /**
   * Assert a workflow button is hidden.
   */
  async expectWorkflowButtonHidden(action: WorkflowAction): Promise<void> {
    let button
    switch (action) {
      case 'submit':
        button = this.submitButton
        break
      case 'approve':
        button = this.approveButton
        break
      case 'reject':
        button = this.rejectButton
        break
      case 'recall':
        button = this.recallButton
        break
    }

    // Check that button is either not visible or not in DOM
    const count = await button.count()
    if (count === 0) {
      expect(count).toBe(0)
    } else {
      await expect(button).toBeHidden()
    }
  }

  /**
   * Assert approval chain shows specific levels approved.
   */
  async expectApprovalsCompleted(expectedCount: number): Promise<void> {
    const approvedLevels = await this.page
      .locator('.approval-level.approved, [data-testid*="approved"]')
      .count()

    expect(approvedLevels).toBeGreaterThanOrEqual(expectedCount)
  }
}
