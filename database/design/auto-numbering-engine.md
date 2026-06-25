# NeoTrack ERP Auto Numbering & Document Lifecycle Engine

## Objective

Every transaction must receive a unique document number automatically.

Users must never manually enter document numbers.

---

# Purchase Documents

Purchase Order

PO-00001
PO-00002
PO-00003

---

Goods Receipt Note

GRN-00001
GRN-00002

---

Supplier Bill

BILL-00001
BILL-00002

---

Payment Voucher

PAY-00001
PAY-00002

---

# Sales Documents

Quotation

QT-00001

---

Sales Order

SO-00001

---

Delivery Note

DN-00001

---

Sales Invoice

INV-00001

---

Receipt Voucher

REC-00001

---

# Inventory Documents

Transfer

TRF-00001

---

Adjustment

ADJ-00001

---

Count Sheet

CNT-00001

---

# Manufacturing Documents

BOM

BOM-00001

---

Production Order

PROD-00001

---

Material Issue

MI-00001

---

Finished Goods Receipt

FGR-00001

---

# Accounting Documents

Journal Voucher

JV-00001

---

Contra Voucher

CV-00001

---

# Number Generation Rule

When User Clicks Save:

Read document_sequences

Increment current_number

Generate Document Number

Save Record

Update current_number

---

# Purchase Lifecycle

Purchase Order

Draft
↓
Submitted
↓
Approved
↓
Closed

---

PO → GRN

GRN Must Allow:

View Source PO

Copy Remaining Quantities

Partial Receipt

Multiple Receipts

PO Balance Tracking

---

GRN → Supplier Bill

Supplier Bill Must Allow:

Select GRN

Pull Items Automatically

Pull Quantities Automatically

Pull Rates Automatically

Update Outstanding Quantity

---

Supplier Bill → Payment

Payment Must Allow:

Select Supplier

View Outstanding Bills

Allocate Payment

Track Remaining Balance

---

# Sales Lifecycle

Quotation

Draft
↓
Approved
↓
Closed

---

Quotation → Sales Order

Convert Quotation To SO

---

Sales Order

Draft
↓
Approved
↓
Closed

---

SO → Delivery Note

Pull Open Quantities

Allow Partial Delivery

Track Balance Qty

---

Delivery Note → Sales Invoice

Pull Delivered Items

Pull Quantities

Pull Rates

Track Unbilled Deliveries

---

Sales Invoice → Receipt

Select Customer

View Outstanding Invoices

Allocate Receipt

Track Remaining Balance

---

# Manufacturing Lifecycle

BOM

Active
Inactive

---

BOM → Production Order

Load BOM Components

Load Standard Quantities

---

Production Order

Draft
↓
Approved
↓
Released
↓
Completed

---

Production Order → Material Issue

Load Required Materials

Track Issued Quantities

Track Remaining Quantities

---

Production Order → Finished Goods Receipt

Track Produced Quantity

Track Remaining Quantity

Calculate Production Cost

---

# Edit Rules

Draft

Editable

---

Approved

Restricted

---

Posted

Read Only

---

Closed

Locked

---

# Delete Rules

Draft

Can Delete

---

Approved

Cannot Delete

---

Posted

Cannot Delete

Must Reverse

---

# Relationship Rules

PO Shows:

Related GRNs
Related Bills
Related Payments

---

SO Shows:

Related Deliveries
Related Invoices
Related Receipts

---

Production Order Shows:

Related Material Issues
Related Finished Goods Receipts

---

# Drill Down Rules

Dashboard
↓
Report
↓
Transaction
↓
Document

One Click Navigation Required

---

# Audit Rules

Every Change Records:

User

Date

Time

Old Value

New Value

Reason
