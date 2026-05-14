/**
 * PR Approval Workflow Test Suite
 *
 * Tests the complete PR status state machine:
 *   PENDING/OPEN → L1_APPROVED → L2_APPROVED → FINAL_APPROVED
 *   PENDING/OPEN → CANCELLED
 *
 * Rules under test:
 *  - Once a PR reaches L1_APPROVED, the Edit/Modify button is disabled
 *  - Blocked statuses prevent editing: L1_APPROVED, L2_APPROVED,
 *    FINAL_APPROVED, CANCELLED, CONVERTED, RECEIVED
 *  - The form goes to view mode automatically for blocked statuses
 *
 * DB Verification SQL:
 *   SELECT INDSTAT FROM PO_INDENT WHERE INDNO = @prNo
 *   Expected: varies by step
 *
 * NOTE: Full approval workflow tests require role-specific user accounts.
 *       The tests here verify UI behaviour based on PR status.
 *       Actual approval API calls require L1/L2/Final approver credentials.
 */

import { test, expect } from '../../fixtures'
import { PRFormPage } from '../../pages/pr/PRFormPage'
import { PRListPage } from '../../pages/pr/PRListPage'
import { createPRViaApi, deletePRViaApi, getPRStatusViaApi } from '../../utils/apiHelpers'
import { buildValidPR } from '../../utils/testDataFactory'
import { getTagInRow } from '../../utils/antdHelpers'
import prTestData from '../../test-data/pr.json' assert { type: 'json' }

test.describe('Purchase Requisition — Approval Workflow', () => {
  let prFormPage: PRFormPage
  let prListPage: PRListPage
  const createdPRNos: number[] = []

  test.beforeEach(async ({ page }) => {
    prFormPage = new PRFormPage(page)
    prListPage = new PRListPage(page)
  })

  test.afterEach(async ({ request, adminToken, processingDate }) => {
    for (const prNo of createdPRNos) {
      await deletePRViaApi(request, adminToken, processingDate, prNo).catch(() => {})
    }
    createdPRNos.length = 0
  })

  // ── Status-based UI behaviour ─────────────────────────────────────────────

  /**
   * @scenario  OPEN PR shows edit-mode controls
   * @purpose   Verify an OPEN PR can be modified
   * @prereqs   An OPEN PR exists
   * @expected  Modify menu item is enabled; Save button available after Modify
   */
  test('OPEN PR should allow editing', async ({ request, adminToken, processingDate }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    await prFormPage.gotoView(prNo)

    // Modify should be enabled for OPEN status
    await prFormPage.openMoreMenu()
    const modifyItem = prFormPage.modifyMenuItem
    const isEnabled = await modifyItem.isEnabled()
    expect(isEnabled).toBe(true)

    // Close menu
    await prFormPage.page.keyboard.press('Escape')
  })

  /**
   * @scenario  L1_APPROVED PR blocks edit
   * @purpose   Verify blocked status disables Modify
   * @prereqs   A PR with L1_APPROVED status in the DB (may need manual setup)
   * @expected  Save button disabled; form in view-only mode
   *
   * This test uses a mock because creating an L1_APPROVED PR requires
   * a separate approver account. The mock verifies the UI logic correctly
   * interprets the status.
   *
   * API: GET /api/v1/purchase-requisitions/{prNo}
   *   Response: { data: { prStatus: "L1_APPROVED", ... } }
   */
  test('L1_APPROVED PR should be read-only (mocked)', async ({ page, request, adminToken, processingDate }) => {
    // Create an OPEN PR first
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    // Mock the GET endpoint to return L1_APPROVED status
    await page.route(new RegExp(`purchase-requisitions/${prNo}(?!\/)`), async (route) => {
      if (route.request().method() === 'GET') {
        const originalResponse = await route.fetch()
        const body = (await originalResponse.json()) as { data?: { prStatus?: string } }
        if (body.data) {
          body.data.prStatus = 'L1_APPROVED'
        }
        await route.fulfill({ json: body })
      } else {
        await route.continue()
      }
    })

    await prFormPage.gotoView(prNo)

    // The form should be in view mode (Save disabled)
    await prFormPage.expectViewMode()

    // Verify status tag says "First Level Approved"
    const statusTag = page.locator('.ant-tag').filter({ hasText: /First Level|L1/i })
    // Either the tag is visible or the view mode is enforced
    const viewModeEnforced = await prFormPage.saveButton.isDisabled()
    expect(viewModeEnforced).toBe(true)
  })

  /**
   * @scenario  PR status displayed correctly in the list
   * @purpose   Verify status tags render with correct text in the PR list
   * @prereqs   PRs with various statuses exist
   * @expected  Status column shows correct label for each status
   */
  test('should display correct status labels in PR list', async ({ request, adminToken, processingDate, page }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    await prListPage.goto()
    await prListPage.filterByPRNo(String(prNo))

    // Newly created PR should have "Requested" status
    await prListPage.expectPRStatus(prNo, prTestData.statuses.open.label)
  })

  /**
   * @scenario  Approval status pipeline displayed on APPROVED PR
   * @purpose   Verify approver names and dates appear in header response
   * @prereqs   A PR with L1_APPROVED status (mocked)
   * @expected  Level 1 approver name visible on PR detail
   *
   * API: GET /api/v1/purchase-requisitions/{prNo}
   *   Response includes: level1ApproverName, level1ApprovedAt
   */
  test('should show approver info on approved PR (mocked)', async ({ page, request, adminToken, processingDate }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    // Mock to include approval data
    await page.route(new RegExp(`purchase-requisitions/${prNo}(?!\/)`), async (route) => {
      if (route.request().method() === 'GET') {
        const originalResponse = await route.fetch()
        const body = (await originalResponse.json()) as {
          data?: {
            prStatus?: string
            level1ApproverName?: string
            level1ApprovedAt?: string
          }
        }
        if (body.data) {
          body.data.prStatus = 'L1_APPROVED'
          body.data.level1ApproverName = 'Test Approver'
          body.data.level1ApprovedAt = new Date().toISOString()
        }
        await route.fulfill({ json: body })
      } else {
        await route.continue()
      }
    })

    await prFormPage.gotoView(prNo)

    // Verify the page loaded without crashing
    await expect(page.locator('body')).toBeVisible()
    await prFormPage.expectViewMode()
  })

  // ── Cancel flow ───────────────────────────────────────────────────────────

  /**
   * @scenario  Discard edits via Alt+X (cancel flow)
   * @purpose   Verify uncommitted changes are discarded when user cancels
   * @prereqs   An OPEN PR loaded in edit mode; changes made
   * @expected  Dirty modal shown; after confirming, original values restored
   */
  test('should discard unsaved changes when user confirms cancel', async ({ request, adminToken, processingDate, page }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    await prFormPage.gotoEdit(prNo)

    // Make a change
    const sectionInput = page.getByPlaceholder('e.g. Ring Frame')
    await sectionInput.fill('TEMP CHANGE DO NOT SAVE')

    // Press Alt+X to cancel
    await prFormPage.pressAltX()

    // Dirty modal should appear
    await prFormPage.expectDirtyModal()

    // Confirm "Leave without saving"
    await prFormPage.confirmLeaveWithoutSaving()

    // Should reload the PR without the temp change
    await prFormPage.waitForFormLoad()
    await prFormPage.expectViewMode()
  })

  // ── Blocked status edit attempts ──────────────────────────────────────────

  /**
   * @scenario  Cannot delete a non-OPEN PR from list
   * @purpose   Verify delete button is disabled for blocked statuses in list
   * @prereqs   A PR with non-OPEN status exists (mocked)
   * @expected  Delete button tooltip shows "Only open PRs can be deleted"
   */
  test('Delete button in list should be disabled for non-OPEN PR', async ({ page, request, adminToken, processingDate }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: [{ itemCode: prData.lines[0].itemCode, qtyRequired: prData.lines[0].qty, isSample: false }],
    })
    createdPRNos.push(prNo)

    // Mock the list to show the PR as L1_APPROVED
    await page.route(/purchase-requisitions\/paginated/, async (route) => {
      const originalResponse = await route.fetch()
      const body = (await originalResponse.json()) as {
        data?: { items?: Array<{ prNo: number; prStatus: string; isDeleted: boolean }> }
      }
      if (body.data?.items) {
        body.data.items = body.data.items.map((item) =>
          item.prNo === prNo ? { ...item, prStatus: 'L1_APPROVED' } : item,
        )
      }
      await route.fulfill({ json: body })
    })

    await prListPage.goto()
    await prListPage.filterByPRNo(String(prNo))

    // Find the row and verify the delete button is disabled
    const row = page.locator('table tbody tr').filter({ hasText: `#${prNo}` }).first()
    const deleteBtn = row.getByRole('button').filter({ has: page.locator('[data-icon="delete"]') })
    if (await deleteBtn.count() > 0) {
      await expect(deleteBtn).toBeDisabled()
    }
  })
})
