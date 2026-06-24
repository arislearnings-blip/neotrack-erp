# NeoTrack ERP Purchasing Module

## Purchasing Workflow

Purchase Requisition
↓
Purchase Order
↓
Goods Receipt Note (GRN)
↓
Supplier Bill
↓
Payment

---

## Purchase Requisition Header

PRID (PK)

PRNumber

PRDate

RequestedBy

Department

Status

Remarks

CreatedAt

---

## Purchase Requisition Details

PRDetailID (PK)

PRID (FK)

ItemID

Quantity

RequiredDate

Remarks

---

## Purchase Order Header

POID (PK)

PONumber

PODate

SupplierID

WarehouseID

ReferenceNo

Status

Remarks

CreatedAt

---

## Purchase Order Details

PODetailID (PK)

POID (FK)

ItemID

Description

Quantity

Rate

Discount

TaxID

Amount

---

## Goods Receipt Note Header

GRNID (PK)

GRNNumber

GRNDate

SupplierID

POID

WarehouseID

Status

Remarks

CreatedAt

---

## Goods Receipt Note Details

GRNDetailID (PK)

GRNID (FK)

ItemID

ReceivedQty

AcceptedQty

RejectedQty

Rate

Amount

---

## Supplier Bill Header

BillID (PK)

BillNumber

BillDate

SupplierID

GRNID

DueDate

Status

Remarks

CreatedAt

---

## Supplier Bill Details

BillDetailID (PK)

BillID (FK)

ItemID

Quantity

Rate

TaxID

Amount

---

## Payment Header

PaymentID (PK)

PaymentNumber

PaymentDate

SupplierID

PaymentMethod

ReferenceNo

Status

Remarks

CreatedAt

---

## Payment Details

PaymentDetailID (PK)

PaymentID (FK)

BillID

PaidAmount

DiscountAmount

AdjustmentAmount

---

## Document Relationships

Purchase Requisition
↓
Purchase Order

Purchase Order
↓
Goods Receipt Note

Goods Receipt Note
↓
Supplier Bill

Supplier Bill
↓
Payment

---

## Auto Numbering

PR-00001

PO-00001

GRN-00001

BILL-00001

PAY-00001

---

## Purchasing Statuses

Draft

Open

Partially Processed

Completed

Cancelled

Closed

---

## Inventory Posting

GRN

Increase Inventory

Update Stock Ledger

Update Item Quantity

---

## Accounting Posting

Supplier Bill

Dr Inventory

Cr Accounts Payable

---

## Supplier Payment

Dr Accounts Payable

Cr Cash/Bank

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

Supplier

Item

Warehouse

Status

Date Range

User

Amount Range

---

## Restrictions

Cannot create GRN without Purchase Order

Cannot create Bill without GRN

Cannot create Payment without Bill

Cannot delete posted transactions

Cancelled documents remain in audit history

Auto numbers never reused

---

## Audit Trail

Created By

Created Date

Modified By

Modified Date

Approval History

Status Changes
