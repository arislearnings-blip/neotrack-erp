
# NeoTrack ERP Sales Module

## Sales Workflow

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

## Quotation Header

QuotationID (PK)

QuotationNumber

QuotationDate

CustomerID

ValidUntil

Status

Remarks

CreatedAt

---

## Quotation Details

QuotationDetailID (PK)

QuotationID (FK)

ItemID

Description

Quantity

Rate

Discount

TaxID

Amount

---

## Sales Order Header

SOID (PK)

SONumber

SODate

CustomerID

WarehouseID

ReferenceNo

Status

Remarks

CreatedAt

---

## Sales Order Details

SODetailID (PK)

SOID (FK)

ItemID

Description

Quantity

Rate

Discount

TaxID

Amount

---

## Delivery Note Header

DNID (PK)

DNNumber

DNDate

CustomerID

SOID

WarehouseID

Status

Remarks

CreatedAt

---

## Delivery Note Details

DNDetailID (PK)

DNID (FK)

ItemID

Quantity

Rate

Amount

---

## Sales Invoice Header

InvoiceID (PK)

InvoiceNumber

InvoiceDate

CustomerID

DNID

DueDate

Status

Remarks

CreatedAt

---

## Sales Invoice Details

InvoiceDetailID (PK)

InvoiceID (FK)

ItemID

Quantity

Rate

Discount

TaxID

Amount

---

## Receipt Header

ReceiptID (PK)

ReceiptNumber

ReceiptDate

CustomerID

ReceiptMethod

ReferenceNo

Status

Remarks

CreatedAt

---

## Receipt Details

ReceiptDetailID (PK)

ReceiptID (FK)

InvoiceID

ReceivedAmount

DiscountAmount

AdjustmentAmount

---

## Document Relationships

Quotation
↓
Sales Order

Sales Order
↓
Delivery Note

Delivery Note
↓
Sales Invoice

Sales Invoice
↓
Receipt

---

## Auto Numbering

QT-00001

SO-00001

DN-00001

INV-00001

REC-00001

---

## Sales Statuses

Draft

Open

Partially Processed

Completed

Cancelled

Closed

---

## Inventory Posting

Delivery Note

Reduce Inventory

Update Stock Ledger

Update Item Quantity

---

## Accounting Posting

Sales Invoice

Dr Accounts Receivable

Cr Sales Revenue

---

## Cost Of Goods Sold Posting

Dr Cost Of Goods Sold

Cr Finished Goods Inventory

---

## Customer Receipt

Dr Cash/Bank

Cr Accounts Receivable

---

## Universal Actions

New

Edit

View

Delete

Print

PDF

Export Excel

Duplicate

Email

---

## Search & Filters

Number

Customer

Item

Warehouse

Status

Date Range

User

Amount Range

---

## Restrictions

Cannot create Delivery Note without Sales Order

Cannot create Invoice without Delivery Note

Cannot create Receipt without Invoice

Cannot delete posted transactions

Cancelled documents remain in audit history

Auto numbers never reused

---

## Customer Ledger Impact

Invoice increases customer balance

Receipt decreases customer balance

Customer statement generated automatically

---

## Audit Trail

Created By

Created Date

Modified By

Modified Date

Approval History

Status Changes
