import { Page, expect } from '@playwright/test';
import { config } from './config';

// Reusable login helper — called at the start of every test that needs auth
export async function loginToApp(page: Page): Promise<void> {
  await page.goto(config.baseUrl);
  await page.waitForLoadState('networkidle');

  // --- Company selection (dropdown or text field) ---
  const companyEl = page.locator(config.selectors.companyDropdown).first();
  if (await companyEl.isVisible({ timeout: 5000 }).catch(() => false)) {
    const tag = await companyEl.evaluate(el => el.tagName.toLowerCase());
    if (tag === 'select') {
      await companyEl.selectOption({ label: config.login.company });
    } else {
      await companyEl.fill(config.login.company);
    }
    await page.waitForTimeout(500);
  }

  // --- Division selection ---
  const divisionEl = page.locator(config.selectors.divisionDropdown).first();
  if (await divisionEl.isVisible({ timeout: 5000 }).catch(() => false)) {
    const tag = await divisionEl.evaluate(el => el.tagName.toLowerCase());
    if (tag === 'select') {
      await divisionEl.selectOption({ label: config.login.division });
    } else {
      await divisionEl.fill(config.login.division);
    }
    await page.waitForTimeout(500);
  }

  // --- Username ---
  const userEl = page.locator(config.selectors.usernameInput).first();
  if (await userEl.isVisible({ timeout: 5000 }).catch(() => false)) {
    await userEl.fill(config.login.username);
  }

  // --- Password ---
  const passEl = page.locator(config.selectors.passwordInput).first();
  if (await passEl.isVisible({ timeout: 5000 }).catch(() => false)) {
    await passEl.fill(config.login.password);
  }

  // --- Submit ---
  await page.locator(config.selectors.loginButton).first().click();
  await page.waitForLoadState('networkidle');
}
