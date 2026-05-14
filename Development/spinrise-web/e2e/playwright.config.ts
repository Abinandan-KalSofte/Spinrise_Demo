/**
 * Playwright Configuration — SpinRise ERP (Production-Ready)
 *
 * Features:
 *  ✓ Serial execution (ERP shares DB state; parallel would cause race conditions)
 *  ✓ Automatic retries on CI (2 retries) / fail-fast locally
 *  ✓ Comprehensive reporting (Allure, HTML, JSON)
 *  ✓ Screenshot/video on failure, trace on retry
 *  ✓ Multiple environment support (DEV, UAT, PROD)
 *  ✓ Environment-based configuration
 *  ✓ Network resilience configuration
 *  ✓ Reusable auth sessions
 *  ✓ Test filtering and grouping
 */

import { defineConfig, devices } from '@playwright/test'
import dotenv from 'dotenv'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

// Load environment variables from .env.test
dotenv.config({ path: path.resolve(__dirname, '.env.test') })

// ── Environment Detection ────────────────────────────────────────────────────

const ENV = (process.env.TEST_ENV || 'uat').toLowerCase()
const CI = process.env.CI === 'true'

const BASE_URLS = {
  dev: 'http://localhost:5173/',
  uat: 'http://172.16.16.40:3000/',
  prod: 'http://172.16.16.40:3000/',
}

const baseURL = process.env.BASE_URL || BASE_URLS[ENV] || BASE_URLS.uat

// ── Test Filtering ──────────────────────────────────────────────────────────

const SMOKE_ONLY = process.env.SMOKE === 'true'
const SMOKE_FAST = process.env.SMOKE_FAST === 'true'

export default defineConfig({
  // ── Test Discovery & Filtering ──────────────────────────────────────────

  testDir: './tests',

  // Grep pattern: run only matching test names
  // npx playwright test --grep "@smoke" → run smoke tests only
  // npx playwright test --grep "@critical" → run critical tests only
  ...(SMOKE_ONLY && { testMatch: /smoke\.spec\.ts/ }),
  ...(SMOKE_FAST && { testMatch: /smoke\.spec\.ts/, timeout: 30_000 }),

  // ── Parallel Execution (disabled by default for safety) ──────────────────

  // Workers: 1 = serial (safe for stateful ERP)
  // To enable parallel: workers: 4 (but test data must be isolated!)
  fullyParallel: false,
  workers: process.env.WORKERS ? parseInt(process.env.WORKERS) : 1,

  // ── Retry Strategy ──────────────────────────────────────────────────────

  retries: CI ? 2 : 0,

  // ── Reporters (multiple formats for different needs) ────────────────────

  reporter: [
    ['allure-playwright'],                                                 // Allure (for CI/CD dashboards)
    ['html', { outputFolder: 'playwright-report', open: 'never' }],       // HTML report
    ['json', { outputFile: 'test-results/results.json' }],               // JSON for parsing
    ['list'],                                                             // Console output
    ...(CI ? [['github']] : []),                                         // GitHub Actions integration on CI
  ],

  // ── Global Test Settings ────────────────────────────────────────────────

  use: {
    // Frontend base URL
    baseURL,

    // Screenshots: only on failure (saves storage)
    screenshot: 'only-on-failure',

    // Videos: only on failure
    video: 'retain-on-failure',

    // Traces: on first retry for debugging
    trace: 'on-first-retry',

    // Viewport: ERP designed for 1280×800+
    viewport: { width: 1280, height: 800 },

    // Timeouts (individual action level)
    actionTimeout: 15_000,
    navigationTimeout: 30_000,

    // HTTP/HTTPS handling
    ignoreHTTPSErrors: true,

    // Accept locale for content negotiation
    locale: 'en-US',
    timezoneId: 'Asia/Kolkata',

    // Reduce flakiness on LAN
    offline: false,
  },

  // ── Output Artifacts ────────────────────────────────────────────────────

  outputDir: 'test-results',

  // ── Global Timeouts ────────────────────────────────────────────────────

  // Per-test timeout (individual test can override)
  timeout: 60_000,

  // Assertion timeout (expect() calls)
  expect: { timeout: 10_000 },

  // Browser launch timeout
  launch: { timeout: 30_000 },

  // ── Metadata ────────────────────────────────────────────────────────────

  metadata: {
    environment: ENV,
    baseURL,
    ci: CI,
  },

  // ── Browser Projects ────────────────────────────────────────────────────

  projects: [
    // Phase 0: Setup (create auth sessions)
    {
      name: 'setup',
      testMatch: /.*\.setup\.ts/,
      use: {
        ...devices['Desktop Chrome'],
        baseURL,
      },
    },

    // Phase 1: Smoke tests (quick validation)
    {
      name: 'smoke',
      testMatch: /smoke\.spec\.ts/,
      use: {
        ...devices['Desktop Chrome'],
        baseURL,
        screenshot: 'only-on-failure',
        video: 'retain-on-failure',
        trace: 'on-first-retry',
        storageState: 'fixtures/.auth/admin.json',
      },
      dependencies: ['setup'],
      timeout: 30_000,
    },

    // Phase 2: Regression (comprehensive)
    {
      name: 'regression',
      testMatch: /regression\.spec\.ts/,
      use: {
        ...devices['Desktop Chrome'],
        baseURL,
        screenshot: 'only-on-failure',
        video: 'retain-on-failure',
        trace: 'on-first-retry',
        storageState: 'fixtures/.auth/admin.json',
      },
      dependencies: ['setup'],
      timeout: 90_000,
    },

    // Phase 3: Workflow (approval scenarios)
    {
      name: 'workflow',
      testMatch: /workflow\.spec\.ts/,
      use: {
        ...devices['Desktop Chrome'],
        baseURL,
        screenshot: 'only-on-failure',
        video: 'retain-on-failure',
        trace: 'on-first-retry',
        storageState: 'fixtures/.auth/admin.json',
      },
      dependencies: ['setup'],
      timeout: 90_000,
    },

    // Phase 4: E2E (full journeys)
    {
      name: 'e2e',
      testMatch: /e2e\.spec\.ts/,
      use: {
        ...devices['Desktop Chrome'],
        baseURL,
        screenshot: 'only-on-failure',
        video: 'retain-on-failure',
        trace: 'on-first-retry',
        storageState: 'fixtures/.auth/admin.json',
      },
      dependencies: ['setup'],
      timeout: 120_000,
    },
  ],

  // ── Web Server (for local dev) ──────────────────────────────────────────

  // Uncomment to auto-start dev server before tests
  // webServer: {
  //   command: 'npm run dev',
  //   url: 'http://localhost:5173',
  //   reuseExistingServer: !process.env.CI,
  //   timeout: 120_000,
  // },
})
