/**
 * Authentication Setup — runs ONCE before all tests
 *
 * This file matches the pattern /.*\.setup\.ts/ in playwright.config.ts
 * and is run by the 'setup' project before any other test project.
 *
 * It creates three saved auth states:
 *   - fixtures/.auth/admin.json
 *   - fixtures/.auth/manager.json
 *   - fixtures/.auth/viewer.json
 *
 * Each auth state is a JSON file containing browser cookies and
 * localStorage contents for that user's authenticated session.
 *
 * For beginners: This is like saving a browser session after logging in.
 * Instead of logging in before every single test (slow), we log in once,
 * save the session, and every test starts already logged in.
 */

// Re-export from the shared fixtures file
// This allows the setup project to discover this file
export { } from '../../fixtures/auth.fixture'
