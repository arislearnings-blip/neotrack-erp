# NeoTrack ERP Posting Engine

## Purpose

The Posting Engine controls how every transaction affects:

* Inventory
* General Ledger
* Customer Balances
* Supplier Balances
* Profit & Loss
* Balance Sheet

No transaction should directly update reports.

All reports must read from:

* stock_ledger
* journal_header
* journal_details

---

# Purchasing Flow

Purchase Order

→ No Accounting Entry

→ No Inventory Entry

---

Goods Receipt Note (GRN)

Inventory Increases

Stock Ledger:

Qty In

No Accounting Entry

---

Supplier Bill

Journal Entry:

Dr Inventory

Cr Accounts Payable

Supplier Balance Increases

---

Payment Voucher

Journal Entry:

Dr Accounts Payable

Cr Cash/Bank

Supplier Balance Decreases

---

# Sales Flow

Quotation

No Posting

---

Sales Order

No Posting

---

Delivery Note

Inventory Decreases

Stock Ledger:

Qty Out

---

Sales Invoice

Journal Entry:

Dr Accounts Receivable

Cr Sales Revenue

Customer Balance Increases

---

Receipt Voucher

Journal Entry:

Dr Cash/Bank

Cr Accounts Receivable

Customer Balance Decreases

---

# Inventory Flow

Stock Transfer

Warehouse A:

Qty Out

Warehouse B:

Qty In

No Accounting Entry

---

Stock Adjustment Increase

Dr Inventory

Cr Inventory Gain

---

Stock Adjustment Decrease

Dr Inventory Loss

Cr Inventory

---

# Manufacturing Flow

Material Issue

Stock Ledger:

Raw Material Qty Out

Journal:

Dr Work In Process

Cr Raw Material Inventory

---

Finished Goods Receipt

Stock Ledger:

Finished Goods Qty In

Journal:

Dr Finished Goods Inventory

Cr Work In Process

---

# Journal Entry Rules

Total Debit Must Equal Total Credit

Posting Not Allowed If Out Of Balance

---

# Reports

General Ledger

Reads journal_details

---

Trial Balance

Reads journal_details

---

Profit & Loss

Reads chart_of_accounts
+
journal_details

---

Balance Sheet

Reads chart_of_accounts
+
journal_details

---

Inventory Valuation

Reads stock_ledger

---

Item History

Reads stock_ledger
