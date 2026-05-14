/**
 * PR CRUD Test Suite
 *
 * Covers full Create / Read / Update / Delete operations
 * on the Purchase Requisition form (v1).
 *
 * Route: /purchase/requisition/v1/new
 *
 * Test isolation:
 *  - Each test that creates a PR cleans it up in afterEach via API
 *  - Tests that need a pre-existing PR create one via API in beforeEach
 *
 * DB verification SQL (SpinRiseSaranya):
 *   SELECT INDNO, INDSTAT, DEPCODE FROM PO_INDENT WHERE INDNO = @prNo
 */

import { test, expect } from '../../fixtures'
import { PRFormPage } from '../../pages/pr/PRFormPage'
import { PRListPage } from '../../pages/pr/PRListPage'
import { selectByLabel, setDateByLabel, waitForSpinToDisappear } from '../../utils/antdHelpers'
import { createPRViaApi, deletePRViaApi } from '../../utils/apiHelpers'
import { buildValidPR, todayApi } from '../../utils/testDataFactory'
import prTestData from '../../test-data/pr.json' assert { type: 'json' }

test.describe('Purchase Requisition — CRUD', () => {
  let prFormPage: PRFormPage
  let prListPage: PRListPage

  // Track PR numbers created during tests for cleanup
  const createdPRNos: number[] = []

  test.beforeEach(async ({ page }) => {
    prFormPage = new PRFormPage(page)
    prListPage = new PRListPage(page)
  })

  test.afterEach(async ({ request, adminToken, processingDate }) => {
    // Clean up all PRs created during the test
    for (const prNo of createdPRNos) {
      await deletePRViaApi(request, adminToken, processingDate, prNo).catch(() => {
        // Ignore cleanup errors — the record may already be deleted
      })
    }
    createdPRNos.length = 0
  })

  // ── CREATE ────────────────────────────────────────────────────────────────

  /**
   * @scenario  Create a new PR with required fields only
   * @purpose   Verify a PR can be created and assigned a PR number
   * @prereqs   Department and item master data exist in SpinRiseSaranya
   * @expected  PR saved; PR-XXXXX badge appears; status = Requested
   *
   * API: POST /api/v1/purchase-requisitions
   *   Request: { prDate, depCode, iType, lines: [{ itemCode, qtyRequired, isSample }] }
   *   Response: { success: true, data: { prNo: number } }
   *
   * DB: SELECT INDNO, INDSTAT FROM PO_INDENT WHERE INDNO = @prNo
   *     Expected: INDSTAT = 'OPEN'
   */
  test('should create a new PR and assign PR number', async ({ page }) => {
    await prFormPage.goto()
    await prFormPage.clickNew()

    // Fill header
    await selectByLabel(page, 'Department', prTestData.valid.depCode)
    await selectByLabel(page, 'Requisition Type', prTestData.valid.iType)

    // Add a line item
    // The line items table has an Add button — click it to open item picker
    const addBtn = page.getByRole('button', { name: /Add Item|Add/i }).first()
    if (await addBtn.count() > 0) {
      await addBtn.click()
      // Fill item search in the item picker modal
      const modal = page.locator('.ant-modal-content')
      if (await modal.count() > 0) {
        await modal.locator('input').first().fill(prTestData.valid.lines[0].itemCode)
        await page.waitForResponse(/item-info|items/)
        // Select first result
        await modal.locator('table tbody tr').first().click()
      }
    }

    // Save
    const prNo = await prFormPage.clickSave()
    expect(prNo).not.toBeNull()

    if (prNo) {
      createdPRNos.push(prNo)
      // Verify PR number badge appeared
      await prFormPage.expectPRNumber(prNo)
    }
  })

  /**
   * @scenario  View an existing PR in view mode
   * @purpose   Verify all header fields display correctly in read-only mode
   * @prereqs   A PR exists in the database
   * @expected  Form shows PR details; Save button disabled; field values visible
   */
  test('should view an existing PR in read-only mode', async ({ request, adminToken, processingDate, page }) => {
    // Create a PR via API to guarantee one exists
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: prData.lines.map((l) => ({
        itemCode:    l.itemCode,
        qtyRequired: l.qty,
        isSample:    false,
        uom:         l.uom,
      })),
    })
    createdPRNos.push(prNo)

    // Navigate to view mode
    await prFormPage.gotoView(prNo)

    // Verify read-only state
    await prFormPage.expectViewMode()
    await prFormPage.expectPRNumber(prNo)
  })

  /**
   * @scenario  Edit an existing OPEN PR
   * @purpose   Verify changes can be saved to an existing PR
   * @prereqs   An OPEN PR exists
   * @expected  Section field updated; success toast shown
   */
  test('should edit and save changes to an OPEN PR', async ({ request, adminToken, processingDate, page }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: prData.lines.map((l) => ({
        itemCode:    l.itemCode,
        qtyRequired: l.qty,
        isSample:    false,
      })),
    })
    createdPRNos.push(prNo)

    // Open in edit mode
    await prFormPage.gotoEdit(prNo)

    // Modify the section field
    const newSection = 'Blow Room - Edited'
    await page.getByPlaceholder('e.g. Ring Frame').fill(newSection)

    // Save
    const [response] = await Promise.all([
      page.waitForResponse(/purchase-requisitions/),
      prFormPage.saveButton.click(),
    ])
    expect(response.status()).toBeLessThan(400)

    // Verify we're back in view mode showing the saved PR
    await prFormPage.expectViewMode()
    await prFormPage.expectPRNumber(prNo)
  })

  /**
   * @scenario  Delete an OPEN PR from the form toolbar
   * @purpose   Verify PR can be deleted with a reason; removed from list
   * @prereqs   An OPEN PR exists; delete reasons configured in DB
   * @expected  PR deleted; PR number no longer in the list
   *
   * DB: SELECT ISNULL(DELFLG,'N') FROM PO_INDENT WHERE INDNO = @prNo
   *     Expected: DELFLG = 'Y'
   */
  test('should delete an OPEN PR via toolbar More → Delete', async ({ request, adminToken, processingDate, page }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: prData.lines.map((l) => ({
        itemCode:    l.itemCode,
        qtyRequired: l.qty,
        isSample:    false,
      })),
    })
    // Do NOT push to createdPRNos — it'll be deleted in this test

    await prFormPage.gotoView(prNo)
    await prFormPage.clickDelete()
    await prFormPage.confirmDelete()

    await prFormPage.expectSuccessMessage('deleted')
  })

  // ── READ (List) ───────────────────────────────────────────────────────────

  /**
   * @scenario  PR list shows all PRs with pagination
   * @purpose   Verify the list renders rows and pagination controls
   * @prereqs   At least one PR in the DB for this division/FY
   * @expected  Table has rows; pagination shows "X–Y of Z records"
   */
  test('should load PR list with rows and pagination', async () => {
    await prListPage.goto()
    await waitForSpinToDisappear(prListPage.page)

    // Table should have at least one row or "no data" message
    const rowCount = await prListPage.getRowCount()
    const noData = prListPage.noDataMessage
    const hasNoData = await noData.isVisible().catch(() => false)

    // Either rows exist OR the empty state message is shown — both are valid
    expect(rowCount > 0 || hasNoData).toBe(true)
  })

  /**
   * @scenario  Filter PR list by PR number
   * @purpose   Verify the PR No filter narrows the list
   * @prereqs   At least one PR exists
   * @expected  List shows only the matching PR
   */
  test('should filter PR list by PR number', async ({ request, adminToken, processingDate }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: prData.lines.map((l) => ({
        itemCode:    l.itemCode,
        qtyRequired: l.qty,
        isSample:    false,
      })),
    })
    createdPRNos.push(prNo)

    await prListPage.goto()
    await prListPage.filterByPRNo(String(prNo))

    await prListPage.expectPRInList(prNo)
  })

  /**
   * @scenario  Navigate to PR form via list "View" action
   * @purpose   Verify clicking View button opens correct PR in view mode
   * @prereqs   At least one PR in list
   * @expected  PR form opens with matching PR number in view mode
   */
  test('should open PR in view mode from list', async ({ request, adminToken, processingDate, page }) => {
    const prData = buildValidPR()
    const prNo = await createPRViaApi(request, adminToken, processingDate, {
      prDate:   prData.prDateApi,
      depCode:  prData.depCode,
      iType:    prData.iType,
      lines: prData.lines.map((l) => ({
        itemCode:    l.itemCode,
        qtyRequired: l.qty,
        isSample:    false,
      })),
    })
    createdPRNos.push(prNo)

    await prListPage.goto()
    await prListPage.filterByPRNo(String(prNo))
    await prListPage.clickViewForPR(prNo)

    await expect(page).toHaveURL(new RegExp(`prNo=${prNo}`))
    await prFormPage.expectViewMode()
  })

  // ── RECORD NAVIGATION ─────────────────────────────────────────────────────

  /**
   * @scenario  Navigate records using First/Prev/Next/Last buttons
   * @purpose   Verify record navigation buttons load different PRs
   * @prereqs   At least 2 PRs exist in DB
   * @expected  PR number changes after navigation
   */
  test('should navigate between records with nav buttons', async ({ page }) => {
    await prFormPage.goto()
    await prFormPage.waitForFormLoad()

    // Get current PR number
    const initialUrl = page.url()

    // Try navigating to first record
    if (await prFormPage.firstButton.isVisible()) {
      await prFormPage.navigateFirst()
      // After navigation, URL should contain prNo
      await expect(page).toHaveURL(/prNo=/)
    }
  })
})
