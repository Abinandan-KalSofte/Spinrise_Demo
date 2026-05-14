/**
 * Test Data Factory
 *
 * Generates unique test data at runtime to prevent conflicts
 * when tests run multiple times or in CI.
 *
 * For beginners: Using static test data (same values every run)
 * causes failures when a previous run left data behind.
 * Factories generate fresh data each time using timestamps.
 */

import dayjs from 'dayjs'

// ── Types ─────────────────────────────────────────────────────────────────────

export interface PRTestData {
  prDate: string       // "DD-MMM-YYYY" for date picker input
  prDateApi: string    // "YYYY-MM-DD" for API payload
  depCode: string
  depName: string
  iType: string
  iTypeDesc: string
  reqName: string
  section: string
  refNo: string
  lines: PRLineTestData[]
}

export interface PRLineTestData {
  itemCode: string
  itemName: string
  uom: string
  qty: number
  place: string
  remarks: string
}

export interface LoginTestData {
  divCode: string
  userName: string
  password: string
  processingDate: string   // "DD-MMM-YYYY"
  processingDateApi: string // "YYYY-MM-DD"
}

// ── Login data ────────────────────────────────────────────────────────────────

export function buildLoginData(role: 'admin' | 'manager' | 'viewer'): LoginTestData {
  const today = dayjs()
  const map = {
    admin: {
      divCode:  process.env.ADMIN_DIV_CODE  ?? 'SAR',
      userName: process.env.ADMIN_USERNAME  ?? 'admin',
      password: process.env.ADMIN_PASSWORD  ?? 'admin123',
    },
    manager: {
      divCode:  process.env.MANAGER_DIV_CODE  ?? 'SAR',
      userName: process.env.MANAGER_USERNAME  ?? 'manager',
      password: process.env.MANAGER_PASSWORD  ?? 'mgr123',
    },
    viewer: {
      divCode:  process.env.VIEWER_DIV_CODE  ?? 'SAR',
      userName: process.env.VIEWER_USERNAME  ?? 'viewer',
      password: process.env.VIEWER_PASSWORD  ?? 'view123',
    },
  }

  return {
    ...map[role],
    processingDate:    today.format('DD-MMM-YYYY'),
    processingDateApi: today.format('YYYY-MM-DD'),
  }
}

// ── PR test data ──────────────────────────────────────────────────────────────

/**
 * Build a valid PR payload for happy-path tests.
 * Uses environment-configured values where possible.
 */
export function buildValidPR(overrides: Partial<PRTestData> = {}): PRTestData {
  const today = dayjs()
  return {
    prDate:    today.format('DD-MMM-YYYY'),
    prDateApi: today.format('YYYY-MM-DD'),
    depCode:   'SPIN',
    depName:   'Spinning',
    iType:     'O',
    iTypeDesc: 'Ordinary',
    reqName:   '101',
    section:   'Ring Frame',
    refNo:     '',
    lines: [
      {
        itemCode: 'ITEM001',
        itemName: 'Test Item One',
        uom:      'NOS',
        qty:      10,
        place:    'Store',
        remarks:  'Test remark',
      },
    ],
    ...overrides,
  }
}

/**
 * Build a PR with edge-case data (max lengths, special chars).
 */
export function buildEdgeCasePR(): PRTestData {
  return buildValidPR({
    section:  'A'.repeat(100),   // max 100 chars
    refNo:    'REF-999999',
    lines: [
      {
        itemCode: 'ITEM001',
        itemName: 'Edge Case Item',
        uom:      'KGS',
        qty:      9999.999,      // max qty with 3dp
        place:    'Store',
        remarks:  '<script>alert(1)</script>',  // XSS probe
      },
    ],
  })
}

/**
 * Build a PR with SQL injection payloads in text fields.
 */
export function buildSqlInjectionPR(): PRTestData {
  return buildValidPR({
    section: "'; DROP TABLE PO_INDENT; --",
    lines: [
      {
        itemCode: 'ITEM001',
        itemName: 'SQL Injection Test',
        uom:      'NOS',
        qty:      1,
        place:    "' OR '1'='1",
        remarks:  '1=1; SELECT * FROM sys.tables',
      },
    ],
  })
}

// ── Security payloads ─────────────────────────────────────────────────────────

export const XSS_PAYLOADS = [
  '<script>alert("XSS")</script>',
  '<img src=x onerror=alert(1)>',
  'javascript:alert(1)',
  '"><svg onload=alert(1)>',
]

export const SQL_INJECTION_PAYLOADS = [
  "'; DROP TABLE PO_INDENT; --",
  "' OR '1'='1",
  "1=1; SELECT * FROM sys.tables --",
  "UNION SELECT NULL,NULL,NULL --",
]

// ── Date utilities ────────────────────────────────────────────────────────────

export function todayFormatted(): string {
  return dayjs().format('DD-MMM-YYYY')
}

export function todayApi(): string {
  return dayjs().format('YYYY-MM-DD')
}

/** Returns a future date (always invalid for PR date which must be ≤ today) */
export function tomorrowFormatted(): string {
  return dayjs().add(1, 'day').format('DD-MMM-YYYY')
}

/** First day of current financial year (April 1) */
export function fyStartFormatted(): string {
  const ref = dayjs()
  const year = ref.month() >= 3 ? ref.year() : ref.year() - 1
  return dayjs(`${year}-04-01`).format('DD-MMM-YYYY')
}
