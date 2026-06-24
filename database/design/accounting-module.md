# NeoTrack ERP Accounting Module

## Accounting Workflow

Source Transaction
↓
Automatic Journal Entry
↓
General Ledger
↓
Trial Balance
↓
Profit & Loss
↓
Balance Sheet

---

## Accounting Objectives

Double Entry Accounting

Automatic Posting

Financial Reporting

Audit Trail

Period Control

Bank Reconciliation

---

## Journal Voucher Header

JournalID (PK)

JournalNumber

JournalDate

ReferenceType

ReferenceID

Narration

Status

CreatedAt

---

## Journal Voucher Details

JournalDetailID (PK)

JournalID (FK)

AccountID

DebitAmount

CreditAmount

Description

---

## Receipt Voucher Header

ReceiptID (PK)

ReceiptNumber

ReceiptDate

CustomerID

CashBankAccountID

ReferenceNo

Remarks

Status

CreatedAt

---

## Receipt Voucher Details

ReceiptDetailID (PK)

ReceiptID (FK)

InvoiceID

ReceivedAmount

DiscountAmount

AdjustmentAmount

---

## Payment Voucher Header

PaymentID (PK)

PaymentNumber

PaymentDate

SupplierID

CashBankAccountID

ReferenceNo

Remarks

Status

CreatedAt

---

## Payment Voucher Details

PaymentDetailID (PK)

PaymentID (FK)

BillID

PaidAmount

DiscountAmount

AdjustmentAmount

---

## Contra Voucher Header

ContraID (PK)

ContraNumber

ContraDate

FromAccountID

ToAccountID

Amount

Remarks

Status

CreatedAt

---

## Adjustment Voucher Header

AdjustmentID (PK)

AdjustmentNumber

AdjustmentDate

ReferenceNo

Remarks

Status

CreatedAt

---

## Adjustment Voucher Details

AdjustmentDetailID (PK)

AdjustmentID (FK)

AccountID

DebitAmount

CreditAmount

Description

---

## Recurring Journal Header

RecurringID (PK)

RecurringNumber

Frequency

StartDate

EndDate

Status

CreatedAt

---

## Recurring Journal Details

RecurringDetailID (PK)

RecurringID (FK)

AccountID

DebitAmount

CreditAmount

Description

---

## Auto Numbering

JV-00001

REC-00001

PAY-00001

CON-00001

ADJ-00001

RJV-00001

---

## Accounting Rules

Every Journal Must Balance

Total Debit = Total Credit

No Exceptions

---

## Source Posting Rules

Purchase Bill

Dr Inventory

Cr Accounts Payable

---

Supplier Payment

Dr Accounts Payable

Cr Cash / Bank

---

Sales Invoice

Dr Accounts Receivable

Cr Sales Revenue

---

Cost Of Goods Sold

Dr Cost Of Goods Sold

Cr Finished Goods Inventory

---

Customer Receipt

Dr Cash / Bank

Cr Accounts Receivable

---

Material Issue

Dr Work In Process

Cr Raw Material Inventory

---

Finished Goods Receipt

Dr Finished Goods Inventory

Cr Work In Process

---

## General Ledger

Generated Automatically

No Manual Editing

---

## Customer Ledger

Generated Automatically

Based On Customer Transactions

---

## Supplier Ledger

Generated Automatically

Based On Supplier Transactions

---

## Trial Balance

Generated Automatically

Debit Total Must Equal Credit Total

---

## Profit & Loss Structure

Sales Revenue

Less Cost Of Goods Sold

Gross Profit

Less Operating Expenses

Net Profit

---

## Balance Sheet Structure

Assets

Liabilities

Equity

Current Year Profit

---

## Cash Flow Statement

Operating Activities

Investing Activities

Financing Activities

---

## Bank Reconciliation Header

BankReconID (PK)

BankAccountID

StatementDate

OpeningBalance

ClosingBalance

Status

CreatedAt

---

## Bank Reconciliation Details

BankReconDetailID (PK)

BankReconID (FK)

TransactionID

TransactionDate

Amount

ClearedStatus

---

## Financial Reports

General Journal

General Ledger

Customer Ledger

Supplier Ledger

Trial Balance

Profit & Loss

Balance Sheet

Cash Flow Statement

Bank Reconciliation Report

Account Activity Report

---

## Fiscal Period Controls

Open Period

Closed Period

Year End Closing

Financial Locking

---

## Search & Filters

Voucher Number

Account

Customer

Supplier

Date Range

Reference Number

Amount Range

User

Status

---

## Universal Actions

New

Edit

View

Delete

Print

PDF

Export Excel

Search

Advanced Filters

Audit Trail

---

## Restrictions

Cannot Save Unbalanced Journal

Cannot Delete Posted Transactions

Cannot Edit Closed Fiscal Period

Auto Numbers Never Reused

Financial Reports Must Balance

---

## Audit Trail

Created By

Created Date

Modified By

Modified Date

Approval History

Status Changes

---

## Accounting Integration

Purchasing Module
↓
Accounts Payable

Inventory Module
↓
Inventory Assets

Manufacturing Module
↓
WIP & Finished Goods

Sales Module
↓
Accounts Receivable

Financial Reports
↓
Trial Balance

Profit & Loss

Balance Sheet
