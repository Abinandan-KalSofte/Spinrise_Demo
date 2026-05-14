# Spinrise ERP — Playwright E2E Test Suite

## Quick Start

```bash
# 1. Install dependencies
cd Development/spinrise-web
npm install --save-dev @playwright/test allure-playwright dotenv mssql @types/mssql

# 2. Install Playwright browsers
npx playwright install chromium

# 3. Copy and fill environment config
cp e2e/.env.test.example e2e/.env.test
# → Edit .env.test with real credentials

# 4. Start the dev server and backend, then run tests
npm run dev &           # frontend on :5173
# Start backend on :5000

# 5. Run all tests
npx playwright test --config=e2e/playwright.config.ts

# 6. View HTML report
npx playwright show-report e2e/playwright-report

# 7. View Allure report
npx allure serve e2e/allure-results
```

## Folder Structure

```
e2e/
├── playwright.config.ts     Config: retries, reporters, video, trace
├── .env.test                Environment variables (never commit real passwords)
├── pages/                   Page Object Models
│   ├── BasePage.ts          Shared base class
│   ├── LoginPage.ts         Login page
│   ├── DashboardPage.ts     Dashboard
│   ├── pr/
│   │   ├── PRListPage.ts    PR list with filters
│   │   └── PRFormPage.ts    PR form (V1) — main form
│   └── po/
│       └── POListPage.ts    PO list
├── fixtures/
│   ├── auth.fixture.ts      Saved login states (storageState)
│   └── index.ts             Extended test object with fixtures
├── utils/
│   ├── antdHelpers.ts       Ant Design Select/DatePicker/Modal helpers
│   ├── apiHelpers.ts        Direct API calls for setup/teardown
│   ├── dbVerify.ts          SQL Server verification queries
│   └── testDataFactory.ts   Dynamic test data generators
├── test-data/
│   ├── users.json           Test user credentials
│   ├── pr.json              PR test data (depCode, itemCode, etc.)
│   └── po.json              PO test data
└── tests/
    ├── auth/
    │   ├── auth.setup.ts    Runs once — creates storageState files
    │   └── login.spec.ts    Login/logout tests
    ├── dashboard/
    │   └── dashboard.spec.ts
    ├── purchase-requisition/
    │   ├── pr-crud.spec.ts       Create/Read/Update/Delete
    │   ├── pr-approval.spec.ts   Status workflow
    │   ├── pr-keyboard.spec.ts   Keyboard shortcuts
    │   ├── pr-validation.spec.ts Required fields, API errors
    │   └── pr-security.spec.ts   XSS, SQLi, auth bypass
    └── purchase-order/
        └── po-crud.spec.ts       PO CRUD basics
```

## Key Design Decisions

| Decision | Why |
|---|---|
| `workers: 1` | ERP shares DB state — parallel tests cause PR number conflicts |
| `storageState` auth | Login UI test is slow; all other tests skip it via saved session |
| `afterEach` API cleanup | Tests are isolated — each test deletes what it created |
| Ant Design helpers | AntD uses custom DOM; native selectors fail without wrappers |
| Mock for approval states | Creating L1/L2/Final approved PRs requires separate user accounts |

## Selector Strategy

Priority order (hardest to break → easiest to break):

1. `data-testid="..."` — if added to components
2. `getByRole()` — buttons, inputs, headings
3. `getByLabel()` — form fields
4. `getByText()` — visible content
5. `.ant-*` class — Ant Design components only
6. ~~XPath~~ — never used

## Adding test data

Edit `e2e/test-data/pr.json`:
- `valid.depCode` must match a real department in `SpinRiseSaranya`
- `valid.lines[].itemCode` must match a real item in `in_item`

## DB Verification

Tests include inline SQL comments for manual verification:
```sql
-- After PR create:
SELECT INDNO, INDSTAT FROM PO_INDENT WHERE INDNO = <prNo>
-- Expected: INDSTAT = 'OPEN'

-- After PR delete:
SELECT ISNULL(DELFLG,'N') AS DELFLG FROM PO_INDENT WHERE INDNO = <prNo>
-- Expected: DELFLG = 'Y'
```
