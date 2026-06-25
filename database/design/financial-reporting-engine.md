NeoTrack ERP Financial Reporting Engine

Objective

All reports must be generated from:

- chart_of_accounts
- journal_header
- journal_details
- stock_ledger

No report should store balances.

All balances must be calculated dynamically.

---

1. General Ledger

Purpose:

Show complete movement of one account.

Filters:

- From Date
- To Date
- Account

Columns:

- Date
- Voucher No
- Voucher Type
- Description
- Debit
- Credit
- Running Balance

Source:

journal_header
journal_details

---

2. Customer Ledger

Purpose:

Show complete customer activity.

Transactions:

- Sales Invoices
- Receipt Vouchers
- Credit Notes
- Journal Entries

Columns:

- Date
- Document No
- Debit
- Credit
- Balance

Source:

customers
journal_details

---

3. Supplier Ledger

Purpose:

Show supplier transactions.

Transactions:

- Supplier Bills
- Payments
- Debit Notes
- Journal Entries

Columns:

- Date
- Document No
- Debit
- Credit
- Balance

Source:

suppliers
journal_details

---

4. Trial Balance

Purpose:

Verify accounting accuracy.

Rule:

Total Debits = Total Credits

Columns:

- Account Code
- Account Name
- Debit
- Credit

Source:

chart_of_accounts
journal_details

---

5. Profit & Loss Statement

Purpose:

Measure profitability.

Income:

- Sales
- Other Income

Expenses:

- Cost of Goods Sold
- Manufacturing Cost
- Administrative Expenses
- Selling Expenses
- Financial Charges

Formula:

Income

Expenses

Net Profit

Source:

chart_of_accounts
journal_details

---

6. Balance Sheet

Purpose:

Show financial position.

Assets

Current Assets

- Cash
- Bank
- Accounts Receivable
- Inventory

Fixed Assets

- Machinery
- Equipment
- Vehicles

Liabilities

Current Liabilities

- Accounts Payable
- Taxes Payable

Long Term Liabilities

Equity

- Capital
- Retained Earnings

Formula:

Assets

Liabilities
+
Equity

Source:

chart_of_accounts
journal_details

---

7. Inventory Valuation

Purpose:

Show inventory value.

Columns:

- Item Code
- Item Name
- Quantity
- Average Cost
- Total Value

Source:

items
stock_ledger

---

8. Stock Ledger Report

Purpose:

Show item movement history.

Columns:

- Date
- Reference
- Warehouse
- Qty In
- Qty Out
- Balance Qty

Source:

stock_ledger

---

9. Stock Aging Report

Purpose:

Identify slow-moving inventory.

Groups:

- 0-30 Days
- 31-60 Days
- 61-90 Days
- 91-180 Days
- 180+ Days

Source:

stock_ledger

---

10. Accounts Receivable Aging

Purpose:

Track customer outstanding balances.

Groups:

- Current
- 30 Days
- 60 Days
- 90 Days
- 120+ Days

Source:

sales_invoice
receipt_voucher

---

11. Accounts Payable Aging

Purpose:

Track supplier balances.

Groups:

- Current
- 30 Days
- 60 Days
- 90 Days
- 120+ Days

Source:

supplier_bill
payment_voucher

---

Standard Report Features

Every report must support:

- Search
- Filters
- Date Range
- Export Excel
- Export PDF
- Print
- Drill Down
- Refresh

---

Dashboard Summary Cards

- Total Sales
- Total Purchases
- Inventory Value
- Accounts Receivable
- Accounts Payable
- Cash Balance
- Bank Balance
- Net Profit

Dashboard values must be calculated from live transactions.

No manual totals allowed.