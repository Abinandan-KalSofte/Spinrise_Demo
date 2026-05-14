# 🚀 SpinRise ERP — Playwright TypeScript Automation Framework

> **Production-ready, enterprise-grade test automation framework** built with Playwright and TypeScript following Page Object Model and SOLID principles.

---

## 📋 Quick Start

### Prerequisites

```bash
npm install
```

### Run Tests

```bash
# Run all tests
npm run test

# Run smoke tests only (fast)
npm run test -- --grep "@smoke"

# Run specific test file
npm run test -- regression.spec.ts

# Run with specific environment
TEST_ENV=uat npm run test

# Run in headed mode (see browser)
npm run test -- --headed

# Run in debug mode
npm run test -- --debug
```

---

## 📁 Project Structure

```
e2e/
├── components/              # Reusable component helpers
│   ├── AGGridHelper.ts     # AG Grid interactions (virtual scroll, editing, search)
│   ├── ModalHelper.ts      # Modal/Dialog operations
│   ├── DropdownHelper.ts   # Select/Dropdown handling (normal, searchable, async, multi)
│   └── DateHelper.ts       # Date picker operations
│
├── pages/                   # Page Object Models
│   ├── BasePage.ts         # Shared foundation (navigation, API wait, messages)
│   ├── LoginPage.ts        # Login form interactions
│   ├── DashboardPage.ts    # Dashboard (if exists)
│   ├── WorkflowPage.ts     # Workflow approval/rejection
│   └── pr/
│       ├── PRListPage.ts   # PR list, filter, pagination
│       └── PRFormPage.ts   # PR creation and editing
│
├── tests/                   # Test suites by type
│   ├── smoke/              # Quick sanity tests (5-10 min)
│   │   └── smoke.spec.ts
│   ├── regression/         # In-depth feature tests (20-30 min)
│   │   └── regression.spec.ts
│   ├── workflow/           # Approval scenarios (20-30 min)
│   │   └── workflow.spec.ts
│   ├── e2e/               # Full business journeys (30-40 min)
│   │   └── e2e.spec.ts
│   └── auth/
│       └── auth.setup.ts   # Login session setup
│
├── utils/                   # Utility functions
│   ├── logger.ts           # Structured logging with levels
│   ├── screenshot.ts       # Screenshot capture utilities
│   ├── wait.ts             # Smart wait helpers (NO hardcoded timeouts!)
│   ├── retry.ts            # Automatic retry with exponential backoff
│   ├── antdHelpers.ts      # Ant Design specific helpers
│   ├── apiHelpers.ts       # API call utilities
│   └── testDataFactory.ts  # Test data generation
│
├── fixtures/                # Test fixtures and data
│   ├── dataFactory.ts      # Comprehensive test data factories
│   ├── user.json          # (generated) Test user credentials
│   ├── purchase.json      # (generated) PR test data
│   └── .auth/
│       └── admin.json      # (generated) Stored login session
│
├── playwright.config.ts     # Main configuration (multi-environment, phased)
├── .env.test               # Environment variables (DEV/UAT/PROD)
└── README.md               # This file
```

---

## 🎯 Test Suites

### 1. **Smoke Tests** (⚡ 5-10 minutes)

Critical path testing — catch major regressions fast.

```bash
npm run test -- --grep "Smoke"
```

**Covers:**
- ✅ Login (valid/invalid credentials)
- ✅ Create PR with single and multiple items
- ✅ Save PR
- ✅ Submit PR for workflow
- ✅ Approve workflow
- ✅ List view and filtering
- ✅ Form validation

---

### 2. **Regression Tests** (⏱️ 20-30 minutes)

In-depth feature testing with component interactions.

```bash
npm run test -- --grep "Regression"
```

**Covers:**
- ✅ AG Grid cell editing and virtual scrolling
- ✅ Dropdown (normal, searchable, multi-select, async)
- ✅ Date pickers (input, calendar, relative dates, ranges)
- ✅ Modal interactions
- ✅ Workflow status transitions
- ✅ Error handling and recovery
- ✅ Stale element retry logic

---

### 3. **Workflow Tests** (⏱️ 20-30 minutes)

Complete approval workflow scenarios.

```bash
npm run test -- --grep "Workflow"
```

**Covers:**
- ✅ Single-level approval
- ✅ Multi-level approval chain
- ✅ Rejection and recall
- ✅ Approval with remarks
- ✅ Button visibility based on status
- ✅ Multi-approver scenarios

---

### 4. **E2E Tests** (⏱️ 30-40 minutes)

Full business journeys and integration tests.

```bash
npm run test -- --grep "E2E"
```

**Covers:**
- ✅ Complete workflow: Create → Submit → Approve
- ✅ Rejection and resubmission cycle
- ✅ Batch PR creation (scalability)
- ✅ Multi-approver workflows
- ✅ List/filter/view integration
- ✅ Performance testing (10 PR creation)

---

## 🛠️ Component Helpers

### **AGGridHelper** — AG Grid Interactions

Handles virtual scrolling, dynamic rendering, and stale elements.

```typescript
const grid = new AGGridHelper(page, '.ag-root', logger)

// Wait for grid to load
await grid.waitForGridLoad()

// Get row count (accounts for virtual scrolling)
const count = await grid.getRowCount()

// Click and double-click cells
await grid.clickCell(0, 2)
await grid.doubleClickCell(0, 2)

// Get/set cell values
const value = await grid.getCellValue(0, 2)
await grid.setCellValue(0, 2, 'new value')

// Row selection
await grid.selectRow(1)
await grid.selectRows([0, 1, 2])

// Search rows
const rowIndex = await grid.searchRow({ searchText: 'Socket', columnName: 'Description' })

// Scroll grid
await grid.scrollToRow(10)
await grid.scrollGrid(500) // pixels

// Assertions
await grid.expectCellValue(0, 2, 'expected')
await grid.expectMinRows(5)
await grid.expectEmpty()
```

---

### **DropdownHelper** — Select/Dropdown Interactions

Supports normal, searchable, async, and multi-select.

```typescript
const dropdown = new DropdownHelper(page, logger)

// Select by label
await dropdown.selectByLabel('Department', 'Administration')

// Select by placeholder
await dropdown.selectByPlaceholder('Select item...', 'Option A')

// Get selected value
const selected = await dropdown.getSelectedValue('Department')

// Multi-select
await dropdown.selectMultiple('Tags', ['Tag1', 'Tag2'])
const values = await dropdown.getSelectedValues('Tags')

// Async select (waits for options to load)
await dropdown.selectAsync('Supplier', 'ACME', 'ACME Corp')

// Clear
await dropdown.clearSelect('Department')

// Get all options
const options = await dropdown.getAvailableOptions('Department')

// Assertions
await dropdown.expectSelectEnabled('Department')
await dropdown.expectOptionAvailable('Department', 'Administration')
```

---

### **DateHelper** — Date Picker Operations

Handles input, calendar picker, and date ranges.

```typescript
const dates = new DateHelper(page, logger)

// Set date by typing
await dates.setDateByInput('PR Date', '14-May-2026')

// Set date via calendar
await dates.setDateByCalendar('PR Date', 14, 'May', 2026)

// Relative dates
await dates.setDateRelative('PR Date', 1) // tomorrow
await dates.setDateRelative('PR Date', -1) // yesterday

// Date range
await dates.setDateRange('Date Range', '01-Jan-2026', '31-Jan-2026')

// Get current value
const value = await dates.getDateValue('PR Date')

// Preset ranges (e.g., "Last 7 days")
await dates.selectDateRangePreset('Date Range', 'Last 7 days')

// Utility methods
const today = dates.getTodayFormatted()
const tomorrow = dates.getDateWithOffset(1)

// Assertions
await dates.expectDateValue('PR Date', '14-May-2026')
await dates.expectDateEnabled('PR Date')
```

---

### **ModalHelper** — Modal/Dialog Interactions

```typescript
const modal = new ModalHelper(page, logger)

// Wait for modal
await modal.waitForModal('Confirmation')

// Get title
const title = await modal.getModalTitle()

// Fill/select in modal
await modal.fillInModal('Remarks', 'Test remarks')
await modal.selectInModal('Approval Level', 'L2 Approver')

// Confirm/cancel
await modal.confirmModal()
await modal.cancelModal()
await modal.closeModal()

// Assertions
await modal.expectModalVisible('Confirmation')
await modal.expectModalContains('Approve this PR?')
```

---

## 📊 Utilities

### **WaitHelper** — Smart Wait Operations

**Never use `page.waitForTimeout()`** — use these instead:

```typescript
const wait = new WaitHelper(page, logger)

// Wait for loading to complete
await wait.waitForLoadingComplete()

// Wait for network idle
await wait.waitForNetworkIdle()

// Wait for DOM to be stable
await wait.waitForDOMStable()

// Wait for specific element
await wait.waitForElement(page.locator('.data-container'))

// Wait for API response
const data = await wait.waitForApi(/purchase-requisitions/, async () => {
  await page.click('.create-btn')
})

// Wait for specific text
await wait.waitForText(page.locator('.message'), 'Success')

// Wait for clickable button
await wait.waitForClickable(page.getByRole('button', { name: 'Save' }))

// Custom condition
await wait.waitForCondition(async () => {
  const count = await grid.getRowCount()
  return count > 0
})

// Full page ready (no loading + network idle)
await wait.waitForPageReady()
```

---

### **RetryHelper** — Automatic Retry with Backoff

Handles stale elements and transient failures:

```typescript
const retry = new RetryHelper()

// Retry async operation
await RetryHelper.execute(
  async () => {
    await page.click('.button')
  },
  {
    maxAttempts: 3,
    delayMs: 500,
    backoffMultiplier: 1.5,
    timeout: 30_000,
    onRetry: (attempt, error) => {
      logger.warn(`Attempt ${attempt} failed: ${error.message}`)
    },
  }
)

// Retry sync function
const value = RetryHelper.executeSync(
  () => document.querySelector('.value').textContent
)

// Wait for condition with retry
await RetryHelper.waitForCondition(
  async () => await grid.getRowCount() > 0,
  { timeout: 10_000 }
)
```

---

### **TestLogger** — Structured Logging

```typescript
const logger = new TestLogger('My Test', LogLevel.INFO)

logger.debug('Debug message')
logger.log('Info message')
logger.warn('Warning message')
logger.error('Error message')

// Get all logs
const logs = logger.getAllLogs()
console.log(logger.toString()) // Formatted output
logger.clear()
```

---

## 🧪 Test Data Factory

Generate realistic test data:

```typescript
import {
  buildAdminUser,
  buildManagerUser,
  buildSimplePR,
  buildComplexPR,
  buildPRItems,
  generateBatchPRs,
  buildApproveWorkflow,
} from './fixtures/dataFactory'

// Users
const admin = buildAdminUser() // from .env
const manager = buildManagerUser()

// Single PR
const pr = buildSimplePR(2) // 2 items
const complexPr = buildComplexPR()

// Batch
const batch = generateBatchPRs({
  count: 10,
  itemsPerPR: 3,
  departments: ['Administration', 'Operations'],
})

// Items
const items = buildPRItems(5, { quantity: 20, estimatedRate: 250.75 })

// Workflows
const submit = buildSubmitWorkflow()
const approve = buildApproveWorkflow({ remarks: 'Approved' })
const reject = buildRejectWorkflow('Revise and resubmit')

// Validation
const { valid, errors } = validatePR(pr)
if (!valid) console.error(errors)

// Date utilities
const today = getTodayFormatted()
const tomorrow = getDateWithOffset(1)
const range = getDateRange(-7, 7) // last 7 to next 7 days
```

---

## 🌍 Environment Support

Switch between DEV, UAT, and PROD:

```bash
# Run tests against UAT (default)
npm run test

# Run against DEV
TEST_ENV=dev npm run test

# Run against PROD
TEST_ENV=prod npm run test
```

**Configuration in `.env.test`:**

```env
# Frontend URL
BASE_URL=http://172.16.16.40:3000/

# Backend API
API_BASE_URL=http://172.16.16.40:5001

# Users (from .env)
ADMIN_USERNAME=kalsofte
ADMIN_PASSWORD=ERP@JAT2023
ADMIN_DIV_CODE=01

# Processing date
PROCESSING_DATE=2026-05-14
```

---

## 🎬 Running Tests

### Local Execution

```bash
# Run all tests
npm run test

# Run specific suite
npm run test -- smoke.spec.ts
npm run test -- regression.spec.ts
npm run test -- workflow.spec.ts
npm run test -- e2e.spec.ts

# Run with grep filter
npm run test -- --grep "Smoke"
npm run test -- --grep "Create PR"
npm run test -- --grep "approval"

# Headed mode (see browser)
npm run test -- --headed

# Debug mode (interactive)
npm run test -- --debug

# Single test (focus)
npm run test -- --grep "^\\[Smoke\\] Login with valid credentials$"
```

### CI/CD Pipeline

```bash
# Run with retries and reports
CI=true npm run test

# Generate Allure report
npx allure generate allure-results --clean -o allure-report
npx allure open allure-report
```

---

## 📊 Reports

### Allure Report

```bash
# Generate (from CI artifacts)
npx allure generate allure-results --clean -o allure-report

# Open report
npx allure open allure-report
```

### HTML Report

```bash
# Auto-opens after test run
npx playwright show-report
```

---

## 🐛 Debugging

### View Traces

```bash
npx playwright show-trace test-results/trace.zip
```

### Inspect Elements

```bash
npx playwright inspect spinrise-web
```

### Run with Inspector

```bash
npx playwright test --debug
```

---

## ✅ Best Practices

### ✅ DO

- ✅ Use **Page Object Model** for all page interactions
- ✅ Use **WaitHelper** instead of `waitForTimeout()`
- ✅ **Log extensively** with TestLogger
- ✅ Use **RetryHelper** for flaky operations
- ✅ **Validate early** with assertions
- ✅ **Isolate test data** per test
- ✅ Use **fixtures** for shared setup
- ✅ **Take screenshots** on failure
- ✅ Follow **SOLID principles**
- ✅ Keep selectors in **Page Objects**

### ❌ DON'T

- ❌ No `page.waitForTimeout()` in production code
- ❌ No XPath or nth() selectors
- ❌ No fragile class selectors
- ❌ No hardcoded waits
- ❌ No test logic in test files (use Page Objects)
- ❌ No shared test state between tests
- ❌ No bare assertions (use expect with matchers)
- ❌ No selectors in test files
- ❌ No password strings in code (use .env)
- ❌ No parallel execution without isolation

---

## 📚 Selector Priority

1. **data-testid** — Explicit, stable, decoupled from DOM
2. **getByRole()** — Semantic, accessible, user-centric
3. **getByLabel()** — Form fields by label
4. **aria-label** — Accessible, semantic
5. **CSS selector** — Last resort, specific enough not to break

**❌ Avoid:**
- `nth()` — Fragile
- `xpath` — Slow, fragile
- Class selectors — Change with styling

---

## 🤝 Extending the Framework

### Add New Page Object

```typescript
// pages/NewPage.ts
import { BasePage } from './BasePage'
import type { Page } from '@playwright/test'

export class NewPage extends BasePage {
  constructor(page: Page) {
    super(page)
  }

  get submitButton() {
    return this.page.getByRole('button', { name: 'Submit' })
  }

  async submit() {
    await this.submitButton.click()
  }
}
```

### Add New Test Suite

```typescript
// tests/new-feature/new-feature.spec.ts
import { test, expect } from '../../fixtures'
import { NewPage } from '../../pages/NewPage'

test.describe('[Feature] New Feature Tests', () => {
  test('should do something', async ({ page }) => {
    const newPage = new NewPage(page)
    // Test code here
  })
})
```

---

## 📞 Troubleshooting

### Tests Pass Locally but Fail on CI

- ✅ Check `.env.test` has correct CI URLs
- ✅ Ensure CI environment variables are set
- ✅ Check network connectivity
- ✅ Verify database is seeded on CI

### Stale Element Exceptions

- ✅ Use `RetryHelper.execute()`
- ✅ Ensure proper waits before interactions
- ✅ Don't store element references across actions

### Timeout Errors

- ✅ Check network (waterfall in DevTools)
- ✅ Increase timeout for slow environments
- ✅ Use `WaitHelper.waitForPageReady()` instead of manual waits

### Flaky Tests

- ✅ Use explicit waits (not sleep)
- ✅ Check for race conditions
- ✅ Isolate test data
- ✅ Verify selectors are stable

---

## 🚀 Production Deployment

### Pre-Deployment Checklist

- [ ] All smoke tests pass
- [ ] All regression tests pass
- [ ] No hardcoded credentials
- [ ] No environment-specific code
- [ ] Allure report generated
- [ ] Screenshots reviewed for failures
- [ ] Logs reviewed for warnings

### Performance Benchmarks

| Metric | Target | Actual |
|--------|--------|--------|
| Smoke tests | < 10 min | ? |
| Regression | < 30 min | ? |
| E2E | < 40 min | ? |
| Single test | < 2 min | ? |
| Page load | < 500ms | ? |

---

## 📖 Resources

- [Playwright Docs](https://playwright.dev/)
- [Ant Design Components](https://ant.design/components/overview/)
- [SOLID Principles](https://en.wikipedia.org/wiki/SOLID)
- [Page Object Model](https://playwright.dev/docs/pom)

---

## 📝 License

Internal use only — SpinRise ERP Project

---

**Happy testing! 🎉**
