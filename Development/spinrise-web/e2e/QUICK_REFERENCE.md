# 🚀 Quick Command Reference — SpinRise ERP Automation Framework

## ⚡ Essential Commands

```bash
# ─────────────────────────────────────────────────────────────────
# TEST EXECUTION
# ─────────────────────────────────────────────────────────────────

# Run all tests (serial, default)
npm run test

# Run specific test suite
npm run test -- smoke.spec.ts         # Smoke tests only
npm run test -- regression.spec.ts    # Regression tests
npm run test -- workflow.spec.ts      # Workflow tests
npm run test -- e2e.spec.ts           # E2E tests

# Run with filters
npm run test -- --grep "Smoke"        # Match test name
npm run test -- --grep "Create PR"    # Pattern match
npm run test -- --grep "@critical"    # Tag-based (if tagged)

# Run in different modes
npm run test -- --headed              # See browser
npm run test -- --debug               # Interactive debugger
npm run test -- --update-snapshots    # Update visual comparisons

# ─────────────────────────────────────────────────────────────────
# ENVIRONMENT CONTROL
# ─────────────────────────────────────────────────────────────────

# Test on different environments
npm run test                          # UAT (default)
TEST_ENV=dev npm run test            # DEV
TEST_ENV=prod npm run test           # PROD
BASE_URL=http://custom:3000 npm run test  # Custom URL

# ─────────────────────────────────────────────────────────────────
# PARALLEL EXECUTION (use with caution!)
# ─────────────────────────────────────────────────────────────────

# Run with N workers (default = 1 for ERP data safety)
WORKERS=4 npm run test               # 4 parallel workers
WORKERS=1 npm run test               # Serial (safe)

# ─────────────────────────────────────────────────────────────────
# SMOKE TESTS (fast validation)
# ─────────────────────────────────────────────────────────────────

# Quick smoke test execution
SMOKE=true npm run test              # Smoke tests only (~5-10 min)

# Smoke with reduced timeout
SMOKE_FAST=true npm run test         # Smoke with 30s timeout per test

# ─────────────────────────────────────────────────────────────────
# REPORTING
# ─────────────────────────────────────────────────────────────────

# View HTML report
npx playwright show-report           # Open HTML report

# Generate Allure report (from test results)
npx allure generate allure-results --clean -o allure-report
npx allure open allure-report        # Open Allure dashboard

# View test traces (for failed tests)
npx playwright show-trace test-results/trace.zip

# ─────────────────────────────────────────────────────────────────
# DEBUGGING
# ─────────────────────────────────────────────────────────────────

# Debug mode (step through test)
npx playwright test --debug

# Show browser inspector
npx playwright inspect

# Capture live traces during test
npm run test -- --trace=on

# ─────────────────────────────────────────────────────────────────
# CI/CD PIPELINE
# ─────────────────────────────────────────────────────────────────

# Full CI run (with retries)
CI=true npm run test

# Generate all reports for CI
npm run test && npx allure generate allure-results --clean -o allure-report

# ─────────────────────────────────────────────────────────────────
# INSTALLATION & SETUP
# ─────────────────────────────────────────────────────────────────

# Install dependencies
npm install

# Update Playwright browsers
npx playwright install

# Install system dependencies (Linux)
npx playwright install-deps
```

---

## 📊 Test Execution Examples

### Run Smoke Tests (5 minutes)
```bash
npm run test -- smoke.spec.ts --headed
```

### Run Full Regression (30 minutes)
```bash
npm run test -- regression.spec.ts
```

### Debug Specific Test
```bash
npm run test -- --grep "Create and save PR" --debug
```

### Run on UAT with HTML Report
```bash
TEST_ENV=uat npm run test && npx playwright show-report
```

### Generate Allure Report for CI
```bash
CI=true npm run test && npx allure generate allure-results --clean -o allure-report
```

---

## 🎯 Test Naming Convention

Tests use descriptive names with prefixes:

| Prefix | Type | Example |
|--------|------|---------|
| `[Smoke]` | Sanity | `[Smoke] Login with valid credentials` |
| `[Regression]` | Feature | `[Regression] Edit line item in grid` |
| `[Workflow]` | Approval | `[Workflow] PR flows through single approval` |
| `[E2E]` | Journey | `[E2E] Complete workflow: Create → Approve` |

---

## 📝 Environment Variables (.env.test)

```bash
# Frontend URL
BASE_URL=http://172.16.16.40:3000/

# Backend API
API_BASE_URL=http://172.16.16.40:5001

# Test Users
ADMIN_DIV_CODE=01
ADMIN_USERNAME=kalsofte
ADMIN_PASSWORD=ERP@JAT2023

MANAGER_DIV_CODE=01
MANAGER_USERNAME=kalsofte
MANAGER_PASSWORD=ERP@JAT2023

VIEWER_DIV_CODE=01
VIEWER_USERNAME=kalsofte
VIEWER_PASSWORD=ERP@JAT2023

# Database (for SQL verification)
DB_SERVER=172.16.16.52\sql2016
DB_NAME=SpinRiseSaranya
DB_USER=sa
DB_PASSWORD=yourdbpassword

# Processing date for tests
PROCESSING_DATE=2026-05-14
```

---

## 🏗️ Project Structure Quick Reference

```
e2e/
├── components/          ← Component helpers (AGGrid, Modal, Dropdown, Date)
├── pages/              ← Page Objects (LoginPage, PRFormPage, WorkflowPage)
├── tests/              ← Test suites (smoke, regression, workflow, e2e)
│   ├── smoke/
│   ├── regression/
│   ├── workflow/
│   ├── e2e/
│   └── auth/           ← Auth setup
├── utils/              ← Helpers (logger, screenshot, wait, retry)
├── fixtures/           ← Test data & factories
├── playwright.config.ts ← Main configuration
├── .env.test          ← Environment variables
└── AUTOMATION_FRAMEWORK.md ← Full documentation
```

---

## 🔍 Common Debugging Scenarios

### Test Fails — How to Debug

```bash
# 1. See screenshot/video
npx playwright show-report

# 2. Check test trace
npx playwright show-trace test-results/trace.zip

# 3. Run with --headed to see browser
npm run test -- --headed --grep "Your Test Name"

# 4. Run with --debug for step-by-step
npm run test -- --debug --grep "Your Test Name"

# 5. Check logs in console output
```

### Flaky Test — How to Fix

```bash
# 1. Check your wait helpers
✅ Use WaitHelper instead of waitForTimeout()

# 2. Use RetryHelper for stale elements
await RetryHelper.execute(() => page.click('.button'))

# 3. Isolate test data
✅ Each test should have independent data

# 4. Check selector stability
✅ Use data-testid, role, or label selectors
```

### Performance Issue — How to Optimize

```bash
# 1. Check individual test times
npm run test -- --reporter=list

# 2. Profile with trace
npm run test -- --trace=on

# 3. Check network in trace
npx playwright show-trace test-results/trace.zip

# 4. Optimize wait times
✅ Use proper wait conditions
```

---

## 🚀 CI/CD Integration

### GitHub Actions Example

```yaml
name: E2E Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: '18'
      
      - run: npm ci
      - run: npx playwright install
      
      - run: CI=true npm run test
      
      - if: failure()
        uses: actions/upload-artifact@v3
        with:
          name: playwright-report
          path: playwright-report/
```

---

## 💡 Tips & Tricks

### Run Single Test
```bash
npm run test -- smoke.spec.ts -g "Login with valid"
```

### Update selectors
```bash
npx playwright codegen http://localhost:3000
```

### See all available tests
```bash
npm run test -- --list
```

### Retry a test
```bash
npm run test -- --retries=3
```

### Set custom timeout
```bash
npm run test -- --timeout=120000  # 2 minutes
```

---

## 📚 Further Reading

- Full documentation: `AUTOMATION_FRAMEWORK.md`
- Playwright docs: https://playwright.dev/
- Page Object Model: https://playwright.dev/docs/pom
- Best practices: Check comments in test files

---

**Need help?** Check the logs, take screenshots, and run with `--debug` mode! 🎯
