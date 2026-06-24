# NeoTrack ERP Relationship Matrix & Transaction Flow

## Master Relationships

Roles
↓
Users

Customers
↓
Sales Orders
↓
Invoices
↓
Receipts

Suppliers
↓
Purchase Orders
↓
Bills
↓
Payments

Items
↓
Purchasing
↓
Inventory
↓
Manufacturing
↓
Sales

Warehouses
↓
Inventory Transactions

Chart Of Accounts
↓
Journal Entries
↓
General Ledger
↓
Financial Reports

---

# Purchasing Flow

Purchase Requisition
↓
Purchase Order
↓
Goods Receipt Note
↓
Supplier Bill
↓
Payment

---

# Purchasing Inventory Impact

GRN
↓
Inventory Increase

Stock Ledger Update

Warehouse Balance Update

Item Quantity Update

---

# Purchasing Accounting Impact

Supplier Bill

Dr Inventory

Cr Accounts Payable

---

Payment

Dr Accounts Payable

Cr Cash / Bank

---

# Sales Flow

Quotation
↓
Sales Order
↓
Delivery Note
↓
Sales Invoice
↓
Receipt

---

# Sales Inventory Impact

Delivery Note

Inventory Decrease

Stock Ledger Update

Warehouse Balance Update

Item Quantity Update

---

# Sales Accounting Impact

Sales Invoice

Dr Accounts Receivable

Cr Sales Revenue

---

COGS Entry

Dr Cost Of Goods Sold

Cr Finished Goods Inventory

---

Customer Receipt

Dr Cash / Bank

Cr Accounts Receivable

---

# Manufacturing Flow

Bill Of Materials
↓
Production Order
↓
Material Issue
↓
Production Entry
↓
Finished Goods Receipt

---

# Manufacturing Inventory Impact

Material Issue

Raw Material Inventory Decrease

---

Finished Goods Receipt

Finished Goods Inventory Increase

---

Stock Ledger Updated

Warehouse Updated

Item Quantities Updated

---

# Manufacturing Accounting Impact

Material Issue

Dr Work In Process

Cr Raw Material Inventory

---

Finished Goods Receipt

Dr Finished Goods Inventory

Cr Work In Process

---

# Inventory Flow

Purchase Receipt
↓
Increase Stock

Sales Delivery
↓
Decrease Stock

Material Issue
↓
Decrease Stock

Finished Goods Receipt
↓
Increase Stock

Stock Transfer
↓
Move Stock Between Warehouses

Stock Adjustment
↓
Increase Or Decrease Stock

---

# Financial Reporting Flow

Source Transaction
↓
Journal Entry
↓
General Ledger
↓
Trial Balance
↓
Profit & Loss
↓
Balance Sheet

---

# Customer Relationship Matrix

Customer
↓
Quotation

Customer
↓
Sales Order

Customer
↓
Sales Invoice

Customer
↓
Receipt

Customer
↓
Customer Ledger

Customer
↓
Statement Of Account

---

# Supplier Relationship Matrix

Supplier
↓
Purchase Order

Supplier
↓
Goods Receipt Note

Supplier
↓
Supplier Bill

Supplier
↓
Payment

Supplier
↓
Supplier Ledger

Supplier
↓
Statement Of Account

---

# Item Relationship Matrix

Item
↓
Purchase Order

Item
↓
GRN

Item
↓
Sales Order

Item
↓
Delivery Note

Item
↓
Invoice

Item
↓
Stock Ledger

Item
↓
BOM

Item
↓
Production

---

# Warehouse Relationship Matrix

Warehouse
↓
GRN

Warehouse
↓
Delivery Note

Warehouse
↓
Stock Transfer

Warehouse
↓
Stock Adjustment

Warehouse
↓
Material Issue

Warehouse
↓
Finished Goods Receipt

Warehouse
↓
Stock Ledger

---

# Chart Of Accounts Relationship Matrix

Chart Of Accounts
↓
Customers

Chart Of Accounts
↓
Suppliers

Chart Of Accounts
↓
Items

Chart Of Accounts
↓
Journal Entries

Chart Of Accounts
↓
Financial Reports

---

# QuickBooks Style Conversion Rules

Quotation
→ Convert To Sales Order

Sales Order
→ Convert To Delivery Note

Delivery Note
→ Convert To Invoice

Invoice
→ Convert To Receipt

---

Purchase Requisition
→ Convert To Purchase Order

Purchase Order
→ Convert To GRN

GRN
→ Convert To Supplier Bill

Supplier Bill
→ Convert To Payment

---

Production Order
→ Convert To Material Issue

Material Issue
→ Convert To Production Entry

Production Entry
→ Convert To Finished Goods Receipt

---

# Universal Relationship Rules

Source Document Remains Available

Target Document Links To Source

No Duplicate Data Entry

Document History Available

Transaction Drill Down Available

Full Audit Trail Available

One Click Navigation Between Documents

Document Status Updates Automatically

Posted Transactions Affect Inventory

Posted Transactions Affect Accounting

Financial Reports Generated Automatically
