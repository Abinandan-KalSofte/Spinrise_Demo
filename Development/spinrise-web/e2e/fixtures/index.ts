/**
 * Fixtures index — exports the extended test object with shared fixtures.
 *
 * Usage in test files:
 *   import { test, expect } from '../../fixtures'
 *   (instead of importing from @playwright/test directly)
 *
 * This allows us to inject per-test fixtures (auth state, API clients)
 * without repeating setup code in every spec file.
 */

import { test as base, expect } from '@playwright/test'
import { loginViaApi } from '../utils/apiHelpers'
import { buildLoginData } from '../utils/testDataFactory'

// ── Extended fixture types ────────────────────────────────────────────────────

interface SpinriseFixtures {
  /** Admin access token — use for direct API calls in tests */
  adminToken: string
  /** The processing date used in this test run */
  processingDate: string
}

// ── Extended test object ──────────────────────────────────────────────────────

export const test = base.extend<SpinriseFixtures>({
  /**
   * Provide admin auth token for API calls within tests.
   * Used in afterEach cleanup to delete records created during the test.
   */
  adminToken: async ({ request }, use) => {
    const creds = buildLoginData('admin')
    const session = await loginViaApi(request, {
      divCode:  creds.divCode,
      userName: creds.userName,
      password: creds.password,
    })
    await use(session.tokens.accessToken)
  },

  /** Processing date for this test session */
  processingDate: async ({}, use) => {
    await use(
      process.env.PROCESSING_DATE ??
      new Date().toISOString().split('T')[0],
    )
  },
})

export { expect }
