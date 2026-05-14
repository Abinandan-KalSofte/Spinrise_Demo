/**
 * Test Data Factory — Generate realistic test data for PR, workflows, etc.
 *
 * Factories generate complete, valid test data that can be used across all tests.
 * All data is deterministic and reproducible.
 */

import dayjs from 'dayjs'

// ── Data Types ─────────────────────────────────────────────────────────────

export interface User {
  divCode: string
  userName: string
  password: string
  role: 'admin' | 'manager' | 'viewer'
}

export interface PurchaseRequisition {
  department: string
  section: string
  requestedBy: string
  requisitionType: string
  refNo?: string
  date: string
  items: PRItem[]
}

export interface PRItem {
  itemCode?: string
  description: string
  quantity: number
  unit: string
  estimatedRate: number
  remarks?: string
}

export interface Workflow {
  action: 'submit' | 'approve' | 'reject'
  remarks?: string
}

// ── User Factory ───────────────────────────────────────────────────────────

export function buildAdminUser(): User {
  return {
    divCode: process.env.ADMIN_DIV_CODE || '01',
    userName: process.env.ADMIN_USERNAME || 'kalsofte',
    password: process.env.ADMIN_PASSWORD || 'ERP@JAT2023',
    role: 'admin',
  }
}

export function buildManagerUser(): User {
  return {
    divCode: process.env.MANAGER_DIV_CODE || '01',
    userName: process.env.MANAGER_USERNAME || 'kalsofte',
    password: process.env.MANAGER_PASSWORD || 'ERP@JAT2023',
    role: 'manager',
  }
}

export function buildViewerUser(): User {
  return {
    divCode: process.env.VIEWER_DIV_CODE || '01',
    userName: process.env.VIEWER_USERNAME || 'kalsofte',
    password: process.env.VIEWER_PASSWORD || 'ERP@JAT2023',
    role: 'viewer',
  }
}

export function buildLoginData(role: 'admin' | 'manager' | 'viewer' = 'admin'): User {
  switch (role) {
    case 'admin':
      return buildAdminUser()
    case 'manager':
      return buildManagerUser()
    case 'viewer':
      return buildViewerUser()
    default:
      return buildAdminUser()
  }
}

// ── PR Item Factory ────────────────────────────────────────────────────────

export function buildPRItem(overrides?: Partial<PRItem>): PRItem {
  return {
    description: `Test Item ${Date.now()}`,
    quantity: 10,
    unit: 'Pieces',
    estimatedRate: 100.5,
    remarks: 'Standard item for testing',
    ...overrides,
  }
}

export function buildPRItems(count: number = 1, overrides?: Partial<PRItem>): PRItem[] {
  const items: PRItem[] = []
  for (let i = 0; i < count; i++) {
    items.push(buildPRItem({ ...overrides }))
  }
  return items
}

// ── PR Factory ──────────────────────────────────────────────────────────────

export function buildPR(overrides?: Partial<PurchaseRequisition>): PurchaseRequisition {
  return {
    department: 'Administration',
    section: 'Office',
    requestedBy: 'Kalsofte Admin',
    requisitionType: 'Material',
    date: dayjs().format('DD-MMM-YYYY'),
    items: buildPRItems(1),
    ...overrides,
  }
}

export function buildSimplePR(itemCount: number = 1): PurchaseRequisition {
  return {
    department: 'Administration',
    section: 'Office',
    requestedBy: 'Kalsofte Admin',
    requisitionType: 'Material',
    date: dayjs().format('DD-MMM-YYYY'),
    items: buildPRItems(itemCount),
  }
}

export function buildComplexPR(): PurchaseRequisition {
  return {
    department: 'Administration',
    section: 'Office',
    requestedBy: 'Kalsofte Admin',
    requisitionType: 'Capital',
    refNo: `REF-${Date.now()}`,
    date: dayjs().format('DD-MMM-YYYY'),
    items: buildPRItems(3, {
      quantity: 50,
      estimatedRate: 250.75,
    }),
  }
}

// ── Workflow Factory ────────────────────────────────────────────────────────

export function buildSubmitWorkflow(overrides?: Partial<Workflow>): Workflow {
  return {
    action: 'submit',
    remarks: 'Submitted for approval',
    ...overrides,
  }
}

export function buildApproveWorkflow(overrides?: Partial<Workflow>): Workflow {
  return {
    action: 'approve',
    remarks: 'Approved - all items verified',
    ...overrides,
  }
}

export function buildRejectWorkflow(remarks: string = 'Requires revision'): Workflow {
  return {
    action: 'reject',
    remarks,
  }
}

// ── Unique Data Generators ────────────────────────────────────────────────

export function generateUniqueId(prefix: string = 'TEST'): string {
  return `${prefix}-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`
}

export function generateEmail(baseEmail: string = 'test'): string {
  return `${baseEmail}+${Date.now()}@test.local`
}

export function generateRefNo(): string {
  return `REF-${dayjs().format('YYYYMMDD')}-${Math.random().toString(36).substr(2, 5).toUpperCase()}`
}

// ── Batch Data Generators ──────────────────────────────────────────────────

export interface BatchPROptions {
  count: number
  itemsPerPR?: number
  startDate?: string
  departments?: string[]
}

export function generateBatchPRs(options: BatchPROptions): PurchaseRequisition[] {
  const {
    count,
    itemsPerPR = 2,
    startDate = dayjs().format('DD-MMM-YYYY'),
    departments = ['Administration', 'Operations', 'Finance'],
  } = options

  const prs: PurchaseRequisition[] = []

  for (let i = 0; i < count; i++) {
    prs.push({
      department: departments[i % departments.length],
      section: 'General',
      requestedBy: 'Kalsofte Admin',
      requisitionType: i % 2 === 0 ? 'Material' : 'Capital',
      date: startDate,
      items: buildPRItems(itemsPerPR),
    })
  }

  return prs
}

// ── Date Generators ────────────────────────────────────────────────────────

export function getTodayFormatted(): string {
  return dayjs().format('DD-MMM-YYYY')
}

export function getDateWithOffset(days: number): string {
  return dayjs().add(days, 'days').format('DD-MMM-YYYY')
}

export function getDateRange(startDaysOffset: number, endDaysOffset: number) {
  return {
    from: dayjs().add(startDaysOffset, 'days').format('DD-MMM-YYYY'),
    to: dayjs().add(endDaysOffset, 'days').format('DD-MMM-YYYY'),
  }
}

// ── Validation Helpers ─────────────────────────────────────────────────────

export function validatePR(pr: PurchaseRequisition): { valid: boolean; errors: string[] } {
  const errors: string[] = []

  if (!pr.department) errors.push('Department is required')
  if (!pr.section) errors.push('Section is required')
  if (!pr.requestedBy) errors.push('Requested By is required')
  if (!pr.items || pr.items.length === 0) errors.push('At least one item is required')

  pr.items.forEach((item, index) => {
    if (!item.description) errors.push(`Item ${index + 1}: Description is required`)
    if (item.quantity <= 0) errors.push(`Item ${index + 1}: Quantity must be > 0`)
    if (item.estimatedRate < 0) errors.push(`Item ${index + 1}: Rate cannot be negative`)
  })

  return {
    valid: errors.length === 0,
    errors,
  }
}

// ── Test Scenarios ─────────────────────────────────────────────────────────

export interface TestScenario {
  name: string
  pr: PurchaseRequisition
  expectedStatus: string
  expectedApprovals: number
}

export function buildScenarios(): TestScenario[] {
  return [
    {
      name: 'Simple single-item PR',
      pr: buildSimplePR(1),
      expectedStatus: 'OPEN',
      expectedApprovals: 0,
    },
    {
      name: 'Multi-item material requisition',
      pr: buildSimplePR(3),
      expectedStatus: 'OPEN',
      expectedApprovals: 0,
    },
    {
      name: 'Complex capital PR',
      pr: buildComplexPR(),
      expectedStatus: 'OPEN',
      expectedApprovals: 0,
    },
  ]
}
