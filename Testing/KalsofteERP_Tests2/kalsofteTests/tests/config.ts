// ============================================================
//  CONFIGURE YOUR CREDENTIALS HERE BEFORE RUNNING
// ============================================================
export const config = {
  baseUrl: 'http://172.16.16.40:3000',

  login: {
    company:  'Kalsofte',       // Company name dropdown value
    division: 'ERPKSL',         // Division dropdown value
    username: 'Kalsofte',  // ← Replace with your username
    password: 'ERPKSL',  // ← Replace with your password
  },

  // Adjust these selectors to match your actual HTML elements
  // Tip: Right-click element in browser → Inspect → copy selector
  selectors: {
    companyDropdown:  'select[name="company"], #company, [placeholder*="company" i]',
    divisionDropdown: 'select[name="division"], #division, [placeholder*="division" i]',
    usernameInput:    'input[name="username"], input[name="email"], #username, #email',
    passwordInput:    'input[type="password"], #password',
    loginButton:      'button[type="submit"], input[type="submit"], button:has-text("Login"), button:has-text("Sign In")',
    logoutButton:     'a:has-text("Logout"), button:has-text("Logout"), a:has-text("Sign Out")',

    // Sales / Transaction menu — update these to match your app's menu text
    salesMenu:        'a:has-text("Sales"), li:has-text("Sales")',
    newTransactionBtn:'a:has-text("New Transaction"), button:has-text("New Transaction"), a:has-text("Add")',

    // Transaction form fields — update to match your form
    transactionFields: {
      customer: 'input[name="customer"], #customer, [placeholder*="customer" i]',
      amount:   'input[name="amount"], #amount, [placeholder*="amount" i]',
      date:     'input[name="date"], input[type="date"], #date',
      saveBtn:  'button:has-text("Save"), button[type="submit"], input[type="submit"]',
    },

    // Table/list selectors
    tableRow:     'table tbody tr, .transaction-row, .list-item',
    editButton:   'button:has-text("Edit"), a:has-text("Edit"), .edit-btn',
    deleteButton: 'button:has-text("Delete"), a:has-text("Delete"), .delete-btn',
    confirmDelete:'button:has-text("Yes"), button:has-text("Confirm"), button:has-text("OK")',
  }
};
