# NeoTrack ERP Complete Voucher Posting Logic

## Core Rule

Every Posted Transaction Must:

1. Update Business Document Status
2. Update Stock Ledger (if inventory involved)
3. Create Journal Entry (if accounting involved)
4. Update Customer/Supplier Balances
5. Update Reports Automatically
6. Write Audit Log

Draft Transactions Do Nothing.

Only Posted Transactions Affect ERP Data.

---

# PURCHASE ORDER

Status:

Draft
→ Submitted
→ Approved
→ Closed

Posting Effect:

None

Accounting Entry:

None

Stock Effect:

None

Purpose:

Planning Only

---

# GOODS RECEIPT NOTE (GRN)

Status:

Draft
→ Approved
→ Posted

Stock Effect:

Inventory Increase

Stock Ledger:

Qty In

Accounting Entry:

None

Purpose:

Physical Receipt Of Goods

---

# SUPPLIER BILL

Status:

Draft
→ Approved
→ Posted

Journal Entry:

Dr Inventory

Cr Accounts Payable

Supplier Balance:

Increase

Stock Effect:

None

Purpose:

Financial Recognition Of Liability

---

# PAYMENT VOUCHER

Status:

Draft
→ Approved
→ Posted

Journal Entry:

Dr Accounts Payable

Cr Cash / Bank

Supplier Balance:

Decrease

Stock Effect:

None

---

# SALES QUOTATION

Posting Effect:

None

Purpose:

Customer Offer

---

# SALES ORDER

Posting Effect:

None

Purpose:

Customer Commitment

---

# DELIVERY NOTE

Status:

Draft
→ Approved
→ Posted

Stock Ledger:

Qty Out

Inventory Reduced

Accounting Entry:

None

Purpose:

Physical Delivery

---

# SALES INVOICE

Status:

Draft
→ Approved
→ Posted

Journal Entry:

Dr Accounts Receivable

Cr Sales Revenue

Customer Balance:

Increase

Stock Effect:

None

Purpose:

Financial Recognition Of Sale

---

# RECEIPT VOUCHER

Status:

Draft
→ Approved
→ Posted

Journal Entry:

Dr Cash / Bank

Cr Accounts Receivable

Customer Balance:

Decrease

Stock Effect:

None

---

# STOCK TRANSFER

Warehouse A:

Qty Out

Warehouse B:

Qty In

Accounting Entry:

None

Inventory Value:

No Change

---

# STOCK ADJUSTMENT INCREASE

Stock Ledger:

Qty In

Journal Entry:

Dr Inventory

Cr Inventory Gain

---

# STOCK ADJUSTMENT DECREASE

Stock Ledger:

Qty Out

Journal Entry:

Dr Inventory Loss

Cr Inventory

---

# MATERIAL ISSUE

Status:

Posted

Stock Ledger:

Raw Material Qty Out

Journal Entry:

Dr Work In Process (WIP)

Cr Raw Material Inventory

Purpose:

Move Cost Into Production

---

# FINISHED GOODS RECEIPT

Status:

Posted

Stock Ledger:

Finished Goods Qty In

Journal Entry:

Dr Finished Goods Inventory

Cr Work In Process (WIP)

Purpose:

Complete Production

---

# JOURNAL VOUCHER

Rule:

Total Debit = Total Credit

If Not Balanced:

Posting Blocked

Journal Entry:

User Defined

---

# CONTRA VOUCHER

Example:

Cash To Bank

Journal:

Dr Bank

Cr Cash

or

Dr Cash

Cr Bank

---

# AUTO POSTING RULES

When Supplier Bill Posts:

Automatically Create Journal

---

When Sales Invoice Posts:

Automatically Create Journal

---

When Receipt Voucher Posts:

Automatically Create Journal

---

When Payment Voucher Posts:

Automatically Create Journal

---

When Material Issue Posts:

Automatically Create Journal

Automatically Update Stock Ledger

---

When Finished Goods Receipt Posts:

Automatically Create Journal

Automatically Update Stock Ledger

---

# REVERSAL RULES

Posted Documents:

Cannot Be Deleted

Must Be Reversed

Reversal Creates:

Opposite Journal Entry

Opposite Stock Movement

Audit Log Record

---

# REPORT IMPACT

Every Posted Transaction Updates:

General Ledger

Customer Ledger

Supplier Ledger

Trial Balance

Profit & Loss

Balance Sheet

Inventory Valuation

Stock Ledger

Dashboard KPIs

No Manual Report Updates Allowed.
