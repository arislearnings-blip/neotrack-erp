# NeoTrack ERP Accounting Rules

## Accounting Philosophy

All modules must post automatically to accounting.

Users should never manually create inventory accounting entries.

Financial statements must be generated entirely from transaction postings.

---

# Core Financial Reports

1. General Ledger
2. Trial Balance
3. Profit & Loss
4. Balance Sheet

---

# Account Types

Assets

Liabilities

Equity

Income

Expense

Cost of Goods Sold

---

# Customer Logic

Each Customer must have a linked Accounts Receivable ledger.

Example:

Customer:
ABC Traders

Ledger:
Accounts Receivable - ABC Traders

---

# Supplier Logic

Each Supplier must have a linked Accounts Payable ledger.

Example:

Supplier:
Steel Suppliers Ltd

Ledger:
Accounts Payable - Steel Suppliers Ltd

---

# Inventory Logic

Each inventory item must be linked to:

Inventory Asset Account

COGS Account

Sales Account

---

# Purchase Posting

Purchase Bill

Dr Inventory

Cr Accounts Payable

---

# Supplier Payment

Dr Accounts Payable

Cr Cash/Bank

---

# Sales Invoice

Dr Accounts Receivable

Cr Sales Revenue

Dr Cost of Goods Sold

Cr Inventory

---

# Customer Receipt

Dr Cash/Bank

Cr Accounts Receivable

---

# Inventory Adjustment Increase

Dr Inventory

Cr Inventory Gain

---

# Inventory Adjustment Decrease

Dr Inventory Loss

Cr Inventory

---

# Production Material Issue

Dr Work In Process

Cr Raw Material Inventory

---

# Finished Goods Receipt

Dr Finished Goods Inventory

Cr Work In Process

---

# Journal Voucher

Manual accounting adjustment.

Must always balance.

Total Debit = Total Credit

---

# Trial Balance Rule

Total Debit = Total Credit

Always.

No exceptions.

---

# Profit & Loss

Income

Less COGS

Gross Profit

Less Expenses

Net Profit

---

# Balance Sheet

Assets

Liabilities

Equity

Current Year Profit

