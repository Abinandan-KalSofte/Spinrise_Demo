/**
 * Retry — Automatic retry logic for flaky operations
 *
 * Handles:
 *  - Stale element references
 *  - Temporary network glitches
 *  - Race conditions
 *  - Transient failures
 */

export interface RetryOptions {
  maxAttempts?: number
  delayMs?: number
  backoffMultiplier?: number
  timeout?: number
  onRetry?: (attempt: number, error: Error) => void
  logger?: any
}

const DEFAULT_OPTIONS: Required<RetryOptions> = {
  maxAttempts: 3,
  delayMs: 500,
  backoffMultiplier: 1.5,
  timeout: 30_000,
  onRetry: () => {},
  logger: console,
}

export class RetryHelper {
  /**
   * Retry a function until it succeeds or max attempts reached.
   * Useful for handling stale elements, transient API errors, etc.
   *
   * @param fn - Async function to retry
   * @param options - Retry configuration
   * @returns Result of successful function call
   *
   * Example:
   *   const result = await retry(() => page.click('.button'), { maxAttempts: 3 })
   */
  static async execute<T>(
    fn: () => Promise<T>,
    options: RetryOptions = {},
  ): Promise<T> {
    const config = { ...DEFAULT_OPTIONS, ...options }
    let lastError: Error | null = null
    let delay = config.delayMs

    for (let attempt = 1; attempt <= config.maxAttempts; attempt++) {
      try {
        return await Promise.race([
          fn(),
          new Promise<T>((_, reject) =>
            setTimeout(() => reject(new Error('Operation timeout')), config.timeout),
          ),
        ])
      } catch (error) {
        lastError = error as Error

        if (attempt < config.maxAttempts) {
          config.logger.warn(
            `⚠️ Attempt ${attempt}/${config.maxAttempts} failed: ${lastError.message}. Retrying in ${delay}ms...`,
          )

          config.onRetry(attempt, lastError)

          await new Promise((resolve) => setTimeout(resolve, delay))
          delay = Math.ceil(delay * config.backoffMultiplier)
        }
      }
    }

    throw new Error(
      `Failed after ${config.maxAttempts} attempts: ${lastError?.message ?? 'Unknown error'}`,
    )
  }

  /**
   * Retry a synchronous function (blocks until success).
   */
  static executeSync<T>(
    fn: () => T,
    options: RetryOptions = {},
  ): T {
    const config = { ...DEFAULT_OPTIONS, ...options }
    let lastError: Error | null = null
    let delay = config.delayMs

    for (let attempt = 1; attempt <= config.maxAttempts; attempt++) {
      try {
        return fn()
      } catch (error) {
        lastError = error as Error

        if (attempt < config.maxAttempts) {
          config.logger.warn(
            `⚠️ Attempt ${attempt}/${config.maxAttempts} failed: ${lastError.message}. Retrying in ${delay}ms...`,
          )

          config.onRetry(attempt, lastError)

          // Simple sleep
          const end = Date.now() + delay
          while (Date.now() < end) {
            // Busy wait (not ideal but works for sync)
          }

          delay = Math.ceil(delay * config.backoffMultiplier)
        }
      }
    }

    throw new Error(
      `Failed after ${config.maxAttempts} attempts: ${lastError?.message ?? 'Unknown error'}`,
    )
  }

  /**
   * Retry with a condition (keep trying until condition is true).
   * Useful for polling values.
   */
  static async waitForCondition(
    condition: () => Promise<boolean>,
    options: RetryOptions = {},
  ): Promise<void> {
    const config = { ...DEFAULT_OPTIONS, ...options }
    const startTime = Date.now()
    let delay = config.delayMs

    while (Date.now() - startTime < config.timeout) {
      try {
        const result = await condition()
        if (result) {
          return
        }
      } catch (error) {
        config.logger.debug(`Condition check failed: ${error}`)
      }

      await new Promise((resolve) => setTimeout(resolve, delay))
      delay = Math.ceil(delay * config.backoffMultiplier)
    }

    throw new Error(`Condition not met within ${config.timeout}ms`)
  }

  /**
   * Retry a Playwright action that might be flaky.
   * Handles stale element references gracefully.
   */
  static async executeWithRetry(
    fn: () => Promise<void>,
    options: Partial<RetryOptions> = {},
  ): Promise<void> {
    const mergedOptions = {
      ...options,
      maxAttempts: options.maxAttempts || 3,
    }

    return this.execute(fn, mergedOptions)
  }
}
