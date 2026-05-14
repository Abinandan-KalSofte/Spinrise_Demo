/**
 * API Helpers — Playwright APIRequestContext wrappers
 *
 * These functions call the Spinrise backend directly using Playwright's
 * built-in HTTP client (no browser involved). Useful for:
 *  - Setting up test prerequisites (create a PR before testing edit)
 *  - Cleaning up after tests (delete records created during the test)
 *  - Asserting API response payloads independently from the UI
 *
 * For beginners: This is separate from the browser tests.
 *   apiRequest = Playwright's direct HTTP client (like curl or Postman)
 *   page       = the actual browser automation
 */

import type { APIRequestContext } from '@playwright/test'

// ── Types mirrored from the frontend ─────────────────────────────────────────

interface LoginPayload {
  divCode: string
  userName: string
  password: string
}

interface AuthTokens {
  accessToken: string
  refreshToken: string
}

interface AuthUser {
  id: number
  userId: string
  userName: string
  email: string
  role: string
  divCode: string
}

interface LoginResult {
  user: AuthUser
  tokens: AuthTokens
}

interface CreatePRPayload {
  prDate: string          // "YYYY-MM-DD"
  depCode: string
  section?: string
  iType?: string
  reqName?: string
  refNo?: string
  lines: Array<{
    itemCode: string
    qtyRequired: number
    isSample: boolean
    uom?: string
  }>
}

interface ApiResponse<T> {
  success: boolean
  message: string
  data?: T
}

// ── Auth ──────────────────────────────────────────────────────────────────────

/**
 * Login via the backend API and return the auth tokens.
 * Used in setup.ts to create storageState for tests.
 *
 * @param request - Playwright's APIRequestContext
 * @param payload - login credentials
 */
export async function loginViaApi(
  request: APIRequestContext,
  payload: LoginPayload,
): Promise<LoginResult> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.post(`${baseUrl}/api/v1/auth/login`, {
    data: payload,
    headers: { 'Content-Type': 'application/json' },
  })

  if (!res.ok()) {
    const body = await res.text()
    throw new Error(`Login failed (${res.status()}): ${body}`)
  }

  const body = (await res.json()) as ApiResponse<LoginResult>
  if (!body.success || !body.data) {
    throw new Error(`Login API returned success=false: ${body.message}`)
  }
  return body.data
}

// ── Purchase Requisition ──────────────────────────────────────────────────────

/**
 * Create a Purchase Requisition via the API.
 * Returns the generated prNo.
 *
 * Use in beforeEach to set up a PR that a test will edit or delete.
 *
 * SQL verification:
 *   SELECT INDNO, STATUS FROM PO_INDENT WHERE INDNO = <prNo>
 *   Expected: STATUS = 'OPEN'
 *
 * API: POST /api/v1/purchase-requisitions
 *   Request:  { prDate, depCode, iType, lines[] }
 *   Response: { success: true, data: { prNo: number } }
 */
export async function createPRViaApi(
  request: APIRequestContext,
  token: string,
  processingDate: string,
  payload: CreatePRPayload,
): Promise<number> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.post(`${baseUrl}/api/v1/purchase-requisitions`, {
    data: payload,
    headers: {
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`,
      'X-Processing-Date': processingDate,
    },
  })

  if (!res.ok()) {
    const body = await res.text()
    throw new Error(`createPRViaApi failed (${res.status()}): ${body}`)
  }

  const body = (await res.json()) as ApiResponse<{ prNo: number }>
  if (!body.success || !body.data) {
    throw new Error(`createPRViaApi: API returned success=false: ${body.message}`)
  }
  return body.data.prNo
}

/**
 * Delete a Purchase Requisition via the API.
 * Used in afterEach to clean up test-created records.
 *
 * API: DELETE /api/v1/purchase-requisitions/{prNo}?deleteReasonCode=TEST
 */
export async function deletePRViaApi(
  request: APIRequestContext,
  token: string,
  processingDate: string,
  prNo: number,
  deleteReasonCode = 'TEST',
): Promise<void> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.delete(
    `${baseUrl}/api/v1/purchase-requisitions/${prNo}?deleteReasonCode=${deleteReasonCode}`,
    {
      headers: {
        Authorization: `Bearer ${token}`,
        'X-Processing-Date': processingDate,
      },
    },
  )

  // 404 = already deleted — acceptable
  if (!res.ok() && res.status() !== 404) {
    const body = await res.text()
    throw new Error(`deletePRViaApi failed (${res.status()}): ${body}`)
  }
}

/**
 * Fetch a PR's current status via the API.
 *
 * API: GET /api/v1/purchase-requisitions/{prNo}
 *   Response: { data: { prStatus: string, ... } }
 */
export async function getPRStatusViaApi(
  request: APIRequestContext,
  token: string,
  processingDate: string,
  prNo: number,
): Promise<string> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.get(
    `${baseUrl}/api/v1/purchase-requisitions/${prNo}`,
    {
      headers: {
        Authorization: `Bearer ${token}`,
        'X-Processing-Date': processingDate,
      },
    },
  )

  if (!res.ok()) {
    throw new Error(`getPRStatusViaApi failed (${res.status()})`)
  }
  const body = (await res.json()) as ApiResponse<{ prStatus: string }>
  return body.data?.prStatus ?? 'UNKNOWN'
}

// ── Active Divisions (anonymous endpoint) ─────────────────────────────────────

/**
 * Fetch active divisions — no auth required.
 * Used in tests to get a valid divCode for login.
 *
 * API: GET /api/v1/divisions/active
 *   Response: { data: [{ divCode, divName }] }
 */
export async function getActiveDivisionsViaApi(
  request: APIRequestContext,
): Promise<Array<{ divCode: string; divName: string }>> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.get(`${baseUrl}/api/v1/divisions/active`)
  if (!res.ok()) return []
  const body = (await res.json()) as ApiResponse<Array<{ divCode: string; divName: string }>>
  return body.data ?? []
}

// ── Lookup helpers ────────────────────────────────────────────────────────────

/**
 * Fetch departments lookup for a division.
 * Used to find a valid depCode for test data.
 *
 * API: GET /api/v1/lookups/departments
 */
export async function getDepartmentsViaApi(
  request: APIRequestContext,
  token: string,
  processingDate: string,
): Promise<Array<{ depCode: string; depName: string }>> {
  const baseUrl = process.env.API_BASE_URL ?? 'http://localhost:5000'
  const res = await request.get(`${baseUrl}/api/v1/lookups/departments`, {
    headers: {
      Authorization: `Bearer ${token}`,
      'X-Processing-Date': processingDate,
    },
  })
  if (!res.ok()) return []
  const body = (await res.json()) as ApiResponse<Array<{ depCode: string; depName: string }>>
  return body.data ?? []
}
