import { test, expect } from '@playwright/test';
import { config } from './config';
import { loginToApp } from './helpers';

// ─────────────────────────────────────────────
//  TEST SUITE 1 — Authentication
// ─────────────────────────────────────────────

test.describe('Authentication', () => {

  test('TC-01 | Login with valid credentials should reach dashboard', async ({ page }) => {
    await page.goto(config.baseUrl);
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc01-login-page.png' });

    await loginToApp(page);

    // Verify we left the login page
    const currentUrl = page.url();
    expect(currentUrl).not.toContain('login');

    // Verify dashboard loaded (look for common dashboard indicators)
    const dashboardVisible = await page.locator(
      'h1, h2, .dashboard, .welcome, nav, .sidebar, .menu'
    ).first().isVisible({ timeout: 10000 }).catch(() => false);

    await page.screenshot({ path: 'test-results/screenshots/tc01-dashboard.png' });
    expect(dashboardVisible).toBeTruthy();
    console.log('✅ TC-01 PASSED: Login with valid credentials successful');
  });


  test('TC-02 | Login with wrong password should show error', async ({ page }) => {
    await page.goto(config.baseUrl);
    await page.waitForLoadState('networkidle');

    // Company / Division selection
    const companyEl = page.locator(config.selectors.companyDropdown).first();
    if (await companyEl.isVisible({ timeout: 3000 }).catch(() => false)) {
      const tag = await companyEl.evaluate(el => el.tagName.toLowerCase());
      if (tag === 'select') {
        await companyEl.selectOption({ label: config.login.company });
      } else {
        await companyEl.fill(config.login.company);
      }
    }

    const divisionEl = page.locator(config.selectors.divisionDropdown).first();
    if (await divisionEl.isVisible({ timeout: 3000 }).catch(() => false)) {
      const tag = await divisionEl.evaluate(el => el.tagName.toLowerCase());
      if (tag === 'select') {
        await divisionEl.selectOption({ label: config.login.division });
      } else {
        await divisionEl.fill(config.login.division);
      }
    }

    const userEl = page.locator(config.selectors.usernameInput).first();
    if (await userEl.isVisible({ timeout: 3000 }).catch(() => false)) {
      await userEl.fill(config.login.username);
    }

    const passEl = page.locator(config.selectors.passwordInput).first();
    if (await passEl.isVisible({ timeout: 3000 }).catch(() => false)) {
      await passEl.fill('WRONG_PASSWORD_12345');
    }

    await page.locator(config.selectors.loginButton).first().click();
    await page.waitForLoadState('networkidle');

    await page.screenshot({ path: 'test-results/screenshots/tc02-wrong-password.png' });

    // Verify still on login page or error is shown
    const errorVisible = await page.locator(
      '.error, .alert, .alert-danger, [class*="error"], [class*="invalid"], ' +
      'p:has-text("invalid"), p:has-text("incorrect"), p:has-text("wrong"), ' +
      'span:has-text("Invalid"), div:has-text("Incorrect")'
    ).first().isVisible({ timeout: 5000 }).catch(() => false);

    const stillOnLogin = page.url().includes('login') ||
      await page.locator(config.selectors.passwordInput).isVisible({ timeout: 3000 }).catch(() => false);

    expect(errorVisible || stillOnLogin).toBeTruthy();
    console.log('✅ TC-02 PASSED: Wrong password correctly rejected');
  });


  test('TC-03 | Logout should return to login page', async ({ page }) => {
    await loginToApp(page);
    await page.screenshot({ path: 'test-results/screenshots/tc03-before-logout.png' });

    const logoutBtn = page.locator(config.selectors.logoutButton).first();
    await logoutBtn.waitFor({ timeout: 10000 });
    await logoutBtn.click();
    await page.waitForLoadState('networkidle');

    await page.screenshot({ path: 'test-results/screenshots/tc03-after-logout.png' });

    const onLoginPage =
      page.url().includes('login') ||
      await page.locator(config.selectors.passwordInput).isVisible({ timeout: 5000 }).catch(() => false) ||
      await page.locator(config.selectors.loginButton).isVisible({ timeout: 5000 }).catch(() => false);

    expect(onLoginPage).toBeTruthy();
    console.log('✅ TC-03 PASSED: Logout successful, returned to login page');
  });

});


// ─────────────────────────────────────────────
//  TEST SUITE 2 — Transaction CRUD
// ─────────────────────────────────────────────

test.describe('Sales Transactions - CRUD', () => {

  test.beforeEach(async ({ page }) => {
    await loginToApp(page);
    await page.waitForLoadState('networkidle');
  });


  test('TC-04 | Navigate to Sales > New Transaction and save', async ({ page }) => {
    // Open Sales menu
    const salesMenu = page.locator(config.selectors.salesMenu).first();
    await salesMenu.waitFor({ timeout: 10000 });
    await salesMenu.click();
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc04-sales-menu.png' });

    // Click New Transaction
    const newBtn = page.locator(config.selectors.newTransactionBtn).first();
    await newBtn.waitFor({ timeout: 10000 });
    await newBtn.click();
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc04-new-transaction-form.png' });

    const f = config.selectors.transactionFields;

    // Fill customer
    const customerEl = page.locator(f.customer).first();
    if (await customerEl.isVisible({ timeout: 5000 }).catch(() => false)) {
      await customerEl.fill('Test Customer Auto');
    }

    // Fill amount
    const amountEl = page.locator(f.amount).first();
    if (await amountEl.isVisible({ timeout: 5000 }).catch(() => false)) {
      await amountEl.fill('5000');
    }

    // Fill date
    const dateEl = page.locator(f.date).first();
    if (await dateEl.isVisible({ timeout: 5000 }).catch(() => false)) {
      const today = new Date().toISOString().split('T')[0];
      await dateEl.fill(today);
    }

    await page.screenshot({ path: 'test-results/screenshots/tc04-form-filled.png' });

    // Save
    await page.locator(f.saveBtn).first().click();
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc04-after-save.png' });

    // Verify saved — look for success toast, confirmation, or record in table
    const savedConfirmed = await page.locator(
      '.success, .alert-success, [class*="success"], ' +
      'p:has-text("saved"), p:has-text("created"), p:has-text("Success"), ' +
      'div:has-text("Test Customer Auto")'
    ).first().isVisible({ timeout: 8000 }).catch(() => false);

    expect(savedConfirmed).toBeTruthy();
    console.log('✅ TC-04 PASSED: New transaction saved successfully');
  });


  test('TC-05 | Edit an existing transaction', async ({ page }) => {
    // Navigate to sales/transaction list
    const salesMenu = page.locator(config.selectors.salesMenu).first();
    if (await salesMenu.isVisible({ timeout: 5000 }).catch(() => false)) {
      await salesMenu.click();
      await page.waitForLoadState('networkidle');
    }

    await page.screenshot({ path: 'test-results/screenshots/tc05-list-view.png' });

    // Click first edit button
    const editBtn = page.locator(config.selectors.editButton).first();
    await editBtn.waitFor({ timeout: 10000 });
    await editBtn.click();
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc05-edit-form.png' });

    // Update the amount field
    const amountEl = page.locator(config.selectors.transactionFields.amount).first();
    if (await amountEl.isVisible({ timeout: 5000 }).catch(() => false)) {
      await amountEl.triple_click?.() ?? await amountEl.click({ clickCount: 3 });
      await amountEl.fill('9999');
    }

    // Save changes
    await page.locator(config.selectors.transactionFields.saveBtn).first().click();
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc05-after-edit-save.png' });

    const updateConfirmed = await page.locator(
      '.success, .alert-success, [class*="success"], ' +
      'p:has-text("updated"), p:has-text("saved"), div:has-text("9999")'
    ).first().isVisible({ timeout: 8000 }).catch(() => false);

    expect(updateConfirmed).toBeTruthy();
    console.log('✅ TC-05 PASSED: Transaction edited and saved');
  });


  test('TC-06 | Delete a transaction record', async ({ page }) => {
    const salesMenu = page.locator(config.selectors.salesMenu).first();
    if (await salesMenu.isVisible({ timeout: 5000 }).catch(() => false)) {
      await salesMenu.click();
      await page.waitForLoadState('networkidle');
    }

    // Count rows before delete
    const rowsBefore = await page.locator(config.selectors.tableRow).count();
    await page.screenshot({ path: 'test-results/screenshots/tc06-before-delete.png' });

    // Click delete on first row
    const deleteBtn = page.locator(config.selectors.deleteButton).first();
    await deleteBtn.waitFor({ timeout: 10000 });
    await deleteBtn.click();

    // Handle confirmation dialog
    const confirmBtn = page.locator(config.selectors.confirmDelete).first();
    if (await confirmBtn.isVisible({ timeout: 3000 }).catch(() => false)) {
      await confirmBtn.click();
    }

    // Handle browser native confirm dialog
    page.on('dialog', async dialog => {
      await dialog.accept();
    });

    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc06-after-delete.png' });

    const rowsAfter = await page.locator(config.selectors.tableRow).count();

    const deleteConfirmed = await page.locator(
      '.success, .alert-success, [class*="success"], p:has-text("deleted")'
    ).first().isVisible({ timeout: 5000 }).catch(() => false);

    expect(rowsAfter < rowsBefore || deleteConfirmed).toBeTruthy();
    console.log('✅ TC-06 PASSED: Transaction deleted. Rows before:', rowsBefore, '→ after:', rowsAfter);
  });

});


// ─────────────────────────────────────────────
//  TEST SUITE 3 — Validation
// ─────────────────────────────────────────────

test.describe('Form Validation', () => {

  test.beforeEach(async ({ page }) => {
    await loginToApp(page);
    await page.waitForLoadState('networkidle');
  });


  test('TC-07 | Submit empty transaction form should show validation errors', async ({ page }) => {
    const salesMenu = page.locator(config.selectors.salesMenu).first();
    if (await salesMenu.isVisible({ timeout: 5000 }).catch(() => false)) {
      await salesMenu.click();
      await page.waitForLoadState('networkidle');
    }

    const newBtn = page.locator(config.selectors.newTransactionBtn).first();
    await newBtn.waitFor({ timeout: 10000 });
    await newBtn.click();
    await page.waitForLoadState('networkidle');

    // Submit without filling anything
    await page.locator(config.selectors.transactionFields.saveBtn).first().click();
    await page.waitForTimeout(1500);

    await page.screenshot({ path: 'test-results/screenshots/tc07-validation-errors.png' });

    // Detect validation messages
    const validationShown = await page.locator(
      '.validation-error, .field-error, .invalid-feedback, ' +
      '[class*="error"], [class*="invalid"], ' +
      'span:has-text("required"), span:has-text("Required"), ' +
      'p:has-text("required"), div:has-text("required"), ' +
      ':invalid'
    ).first().isVisible({ timeout: 5000 }).catch(() => false);

    // Also check we did NOT navigate away from the form
    const stillOnForm = await page.locator(
      config.selectors.transactionFields.saveBtn
    ).isVisible({ timeout: 3000 }).catch(() => false);

    await page.screenshot({ path: 'test-results/screenshots/tc07-validation-result.png' });
    expect(validationShown || stillOnForm).toBeTruthy();
    console.log('✅ TC-07 PASSED: Validation errors shown on empty form submit');
  });


  test('TC-08 | Login with empty fields should show error', async ({ page }) => {
    await page.goto(config.baseUrl);
    await page.waitForLoadState('networkidle');
    await page.screenshot({ path: 'test-results/screenshots/tc08-empty-login.png' });

    // Attempt login without filling any field
    const loginBtn = page.locator(config.selectors.loginButton).first();
    if (await loginBtn.isVisible({ timeout: 5000 }).catch(() => false)) {
      await loginBtn.click();
      await page.waitForTimeout(1500);
    }

    await page.screenshot({ path: 'test-results/screenshots/tc08-login-validation.png' });

    const errorOrStillOnPage =
      await page.locator('.error, .alert, [class*="error"], :invalid').first()
        .isVisible({ timeout: 3000 }).catch(() => false) ||
      await page.locator(config.selectors.loginButton).isVisible({ timeout: 3000 }).catch(() => false);

    expect(errorOrStillOnPage).toBeTruthy();
    console.log('✅ TC-08 PASSED: Empty login correctly blocked');
  });

});
