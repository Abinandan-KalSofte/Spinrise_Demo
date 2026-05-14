/**
 * Logger — Structured logging for tests
 *
 * Provides consistent, colorized logging with timestamps and levels.
 * Attach to pages and use throughout test execution for debugging.
 */

export enum LogLevel {
  DEBUG = 'DEBUG',
  INFO = 'INFO',
  WARN = 'WARN',
  ERROR = 'ERROR',
}

export class TestLogger {
  private testName: string
  private logLevel: LogLevel
  private logs: Array<{ timestamp: string; level: LogLevel; message: string }> = []

  constructor(testName: string, logLevel: LogLevel = LogLevel.INFO) {
    this.testName = testName
    this.logLevel = logLevel
  }

  // ── Logging methods ────────────────────────────────────────────────────────

  debug(message: string): void {
    if (this.shouldLog(LogLevel.DEBUG)) {
      this.log(LogLevel.DEBUG, message)
    }
  }

  log(message: string): void {
    this.log(LogLevel.INFO, message)
  }

  info(message: string): void {
    this.log(LogLevel.INFO, message)
  }

  warn(message: string): void {
    this.log(LogLevel.WARN, message)
  }

  error(message: string): void {
    this.log(LogLevel.ERROR, message)
  }

  // ── Internal ───────────────────────────────────────────────────────────────

  private log(level: LogLevel, message: string): void {
    const timestamp = new Date().toISOString()
    const logEntry = { timestamp, level, message }

    this.logs.push(logEntry)

    // Console output with colors
    const color = this.getColorForLevel(level)
    const prefix = `[${timestamp}] [${level}] [${this.testName}]`
    console.log(`${color}${prefix} ${message}\x1b[0m`)
  }

  private shouldLog(level: LogLevel): boolean {
    const levels = [LogLevel.DEBUG, LogLevel.INFO, LogLevel.WARN, LogLevel.ERROR]
    return levels.indexOf(level) >= levels.indexOf(this.logLevel)
  }

  private getColorForLevel(level: LogLevel): string {
    switch (level) {
      case LogLevel.DEBUG:
        return '\x1b[36m' // Cyan
      case LogLevel.INFO:
        return '\x1b[32m' // Green
      case LogLevel.WARN:
        return '\x1b[33m' // Yellow
      case LogLevel.ERROR:
        return '\x1b[31m' // Red
    }
  }

  /**
   * Get all logged messages.
   */
  getAllLogs(): Array<{ timestamp: string; level: LogLevel; message: string }> {
    return [...this.logs]
  }

  /**
   * Get logs as formatted string for debugging.
   */
  toString(): string {
    return this.logs
      .map((log) => `[${log.timestamp}] [${log.level}] ${log.message}`)
      .join('\n')
  }

  /**
   * Clear logs.
   */
  clear(): void {
    this.logs = []
  }
}
