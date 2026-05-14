/**
 * Database Verification Queries — Spinrise ERP
 *
 * After UI actions, verify the data actually landed in SQL Server.
 * Uses the `mssql` npm package for direct DB access.
 *
 * SETUP: npm install mssql @types/mssql --save-dev
 *
 * For beginners: These functions bypass the API entirely and talk
 * directly to SQL Server. This confirms that the stored procedure
 * actually wrote the correct data — not just that the UI looked right.
 *
 * TARGET DATABASE: SpinRiseSaranya (M01)
 * TABLE NAMES use the legacy ERP naming: PO_INDENT (PR header),
 * PO_INDENTDET (PR lines), IN_DEP (departments)
 */

import sql from 'mssql'

// ── Connection config (reads from .env.test) ─────────────────────────────────

function getDbConfig(): sql.config {
  return {
    server: process.env.DB_SERVER ?? '172.16.16.52\\sql2016',
    database: process.env.DB_NAME ?? 'SpinRiseSaranya',
    user: process.env.DB_USER ?? 'sa',
    password: process.env.DB_PASSWORD ?? '',
    options: {
      encrypt: false,
      trustServerCertificate: true,
    },
    requestTimeout: 15_000,
    connectionTimeout: 10_000,
  }
}

let pool: sql.ConnectionPool | null = null

async function getPool(): Promise<sql.ConnectionPool> {
  if (!pool || !pool.connected) {
    pool = await sql.connect(getDbConfig())
  }
  return pool
}

export async function closeDbConnection(): Promise<void> {
  if (pool) {
    await pool.close()
    pool = null
  }
}

// ── PR Header verification ────────────────────────────────────────────────────

/**
 * Verify a PR exists in PO_INDENT with the expected status.
 *
 * SQL:
 *   SELECT INDNO, INDSTAT, INDDT, DEPCODE
 *   FROM   PO_INDENT
 *   WHERE  INDNO = @prNo
 *
 * @returns the row data or null if not found
 */
export async function verifyPRExists(prNo: number): Promise<{
  prNo: number
  status: string
  prDate: Date
  depCode: string
} | null> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .query<{ INDNO: number; INDSTAT: string; INDDT: Date; DEPCODE: string }>(
      `SELECT INDNO, INDSTAT, INDDT, DEPCODE
       FROM   PO_INDENT
       WHERE  INDNO = @prNo`,
    )

  const row = result.recordset[0]
  if (!row) return null
  return {
    prNo: row.INDNO,
    status: row.INDSTAT,
    prDate: row.INDDT,
    depCode: row.DEPCODE,
  }
}

/**
 * Verify the status of a PR.
 *
 * SQL:
 *   SELECT INDSTAT FROM PO_INDENT WHERE INDNO = @prNo
 *
 * @returns status string e.g. 'OPEN', 'L1_APPROVED', 'CANCELLED'
 */
export async function verifyPRStatus(prNo: number): Promise<string | null> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .query<{ INDSTAT: string }>(
      `SELECT INDSTAT FROM PO_INDENT WHERE INDNO = @prNo`,
    )
  return result.recordset[0]?.INDSTAT ?? null
}

/**
 * Verify a PR has been soft-deleted (DELFLG = 'Y').
 *
 * SQL:
 *   SELECT DELFLG FROM PO_INDENT WHERE INDNO = @prNo
 *
 * @returns true if the PR is marked deleted
 */
export async function verifyPRDeleted(prNo: number): Promise<boolean> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .query<{ DELFLG: string }>(
      `SELECT ISNULL(DELFLG, 'N') AS DELFLG FROM PO_INDENT WHERE INDNO = @prNo`,
    )
  return result.recordset[0]?.DELFLG === 'Y'
}

// ── PR Line verification ──────────────────────────────────────────────────────

/**
 * Verify line count for a PR.
 *
 * SQL:
 *   SELECT COUNT(*) AS LineCount
 *   FROM   PO_INDENTDET
 *   WHERE  INDNO = @prNo AND ISNULL(DELFLG, 'N') = 'N'
 */
export async function verifyPRLineCount(prNo: number): Promise<number> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .query<{ LineCount: number }>(
      `SELECT COUNT(*) AS LineCount
       FROM   PO_INDENTDET
       WHERE  INDNO = @prNo
         AND  ISNULL(DELFLG, 'N') = 'N'`,
    )
  return result.recordset[0]?.LineCount ?? 0
}

/**
 * Verify a specific item exists in a PR's lines.
 *
 * SQL:
 *   SELECT ITEMCODE, INDQTY FROM PO_INDENTDET
 *   WHERE  INDNO = @prNo AND ITEMCODE = @itemCode
 *   AND    ISNULL(DELFLG,'N') = 'N'
 */
export async function verifyPRLineItem(
  prNo: number,
  itemCode: string,
): Promise<{ itemCode: string; qty: number } | null> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .input('itemCode', sql.VarChar(50), itemCode)
    .query<{ ITEMCODE: string; INDQTY: number }>(
      `SELECT ITEMCODE, INDQTY
       FROM   PO_INDENTDET
       WHERE  INDNO = @prNo
         AND  ITEMCODE = @itemCode
         AND  ISNULL(DELFLG,'N') = 'N'`,
    )
  const row = result.recordset[0]
  if (!row) return null
  return { itemCode: row.ITEMCODE, qty: row.INDQTY }
}

// ── Audit log verification ────────────────────────────────────────────────────

/**
 * Verify an audit log entry exists for a PR action.
 *
 * SQL:
 *   SELECT TOP 1 ACTION, ACTIONBY, ACTIONDT
 *   FROM   PO_INDENT_AUDIT
 *   WHERE  INDNO = @prNo AND ACTION = @action
 *   ORDER BY ACTIONDT DESC
 */
export async function verifyPRAuditEntry(
  prNo: number,
  action: string,
): Promise<boolean> {
  const db = await getPool()
  const result = await db
    .request()
    .input('prNo', sql.Int, prNo)
    .input('action', sql.VarChar(50), action)
    .query<{ ACTION: string }>(
      `SELECT TOP 1 ACTION
       FROM   PO_INDENT_AUDIT
       WHERE  INDNO = @prNo AND ACTION = @action
       ORDER BY ACTIONDT DESC`,
    )
  return result.recordset.length > 0
}
