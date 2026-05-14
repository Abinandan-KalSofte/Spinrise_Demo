/**
 * Auth Fixture — storageState login for fast test execution
 *
 * Instead of going through the login UI for every test (slow),
 * we perform a single real login via the API, then save the
 * browser localStorage state to a JSON file.
 *
 * Every test that depends on ['setup'] will reuse that saved state
 * — tests start already logged in.
 *
 * File paths:
 *   fixtures/.auth/admin.json    ← admin storageState
 *   fixtures/.auth/manager.json  ← manager storageState
 *   fixtures/.auth/viewer.json   ← viewer storageState
 */

import { test as setup, expect } from '@playwright/test'
import path from 'path'
import { fileURLToPath } from 'url'
import fs from 'fs'
import { loginViaApi } from '../utils/apiHelpers'
import { buildLoginData } from '../utils/testDataFactory'
import dayjs from 'dayjs'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const authDir = path.join(__dirname, '.auth')
fs.mkdirSync(authDir, { recursive: true })

// ── Admin setup ───────────────────────────────────────────────────────────────

setup('authenticate as admin', async ({ page, request }) => {
  const creds = buildLoginData('admin')

  // Call the backend login API directly (no UI)
  const session = await loginViaApi(request, {
    divCode:  creds.divCode,
    userName: creds.userName,
    password: creds.password,
  })

  // Inject the auth state into the browser's localStorage
  // This mimics what the React app does after a successful login.
  // Key: 'spinrise-auth-v2' — defined in useAuthStore.ts (persist name)
  await page.goto('/')
  await page.evaluate(
    ({ key, session, processingDate }) => {
      const storeValue = {
        state: {
          user:            session.user,
          tokens:          session.tokens,
          isAuthenticated: true,
          processingDate:  processingDate,
        },
        version: 0,
      }
      localStorage.setItem(key, JSON.stringify(storeValue))
    },
    {
      key:            'spinrise-auth-v2',
      session,
      processingDate: creds.processingDateApi,
    },
  )

  // Reload to let the React app pick up the localStorage state
  await page.reload()
  await page.waitForLoadState('networkidle')

  // Verify we're authenticated (should NOT be on /login)
  expect(page.url()).not.toContain('/login')

  // Save the browser storage state (localStorage + cookies) to file
  await page.context().storageState({ path: path.join(authDir, 'admin.json') })
})

// ── Manager setup ─────────────────────────────────────────────────────────────

setup('authenticate as manager', async ({ page, request }) => {
  const creds = buildLoginData('manager')

  const session = await loginViaApi(request, {
    divCode:  creds.divCode,
    userName: creds.userName,
    password: creds.password,
  })

  await page.goto('/')
  await page.evaluate(
    ({ key, session, processingDate }) => {
      localStorage.setItem(key, JSON.stringify({
        state: { user: session.user, tokens: session.tokens, isAuthenticated: true, processingDate },
        version: 0,
      }))
    },
    { key: 'spinrise-auth-v2', session, processingDate: creds.processingDateApi },
  )
  await page.reload()
  await page.waitForLoadState('networkidle')
  await page.context().storageState({ path: path.join(authDir, 'manager.json') })
})

// ── Viewer setup ──────────────────────────────────────────────────────────────

setup('authenticate as viewer', async ({ page, request }) => {
  const creds = buildLoginData('viewer')

  const session = await loginViaApi(request, {
    divCode:  creds.divCode,
    userName: creds.userName,
    password: creds.password,
  })

  await page.goto('/')
  await page.evaluate(
    ({ key, session, processingDate }) => {
      localStorage.setItem(key, JSON.stringify({
        state: { user: session.user, tokens: session.tokens, isAuthenticated: true, processingDate },
        version: 0,
      }))
    },
    { key: 'spinrise-auth-v2', session, processingDate: creds.processingDateApi },
  )
  await page.reload()
  await page.waitForLoadState('networkidle')
  await page.context().storageState({ path: path.join(authDir, 'viewer.json') })
})
