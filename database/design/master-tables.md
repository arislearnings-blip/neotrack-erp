# NeoTrack ERP Master Tables

## Roles

RoleID (PK)

RoleCode

RoleName

Description

IsActive

CreatedAt

UpdatedAt

---

## Users

UserID (PK)

UserCode

FullName

Username

Email

PasswordHash

RoleID (FK)

Mobile

Status

LastLogin

CreatedAt

UpdatedAt

---

## Chart Of Accounts

AccountID (PK)

AccountCode

AccountName

ParentAccountID

AccountType

AccountLevel

IsControlAccount

Status

---

## Customers

CustomerID (PK)

CustomerCode

CustomerName

ContactPerson

Phone

Mobile

Email

Address

City

Country

NTN

STRN

CreditLimit

PaymentTermsID

ReceivableAccountID

Status

CreatedAt

---

## Suppliers

SupplierID (PK)

SupplierCode

SupplierName

ContactPerson

Phone

Mobile

Email

Address

City

Country

NTN

STRN

PaymentTermsID

PayableAccountID

Status

CreatedAt

---

## Units

UnitID (PK)

UnitCode

UnitName

---

## Categories

CategoryID (PK)

CategoryCode

CategoryName

Description

---

## Warehouses

WarehouseID (PK)

WarehouseCode

WarehouseName

Location

Manager

Status

---

## Items

ItemID (PK)

ItemCode

ItemName

CategoryID

UnitID

ItemType

InventoryAccountID

COGSAccountID

SalesAccountID

PurchaseAccountID

StandardCost

SellingPrice

MinimumStock

MaximumStock

Barcode

Description

Status

CreatedAt

---

## Tax Codes

TaxID (PK)

TaxCode

TaxName

TaxRate

TaxAccountID

Status

---

## Payment Terms

PaymentTermsID (PK)

TermsCode

TermsName

Days

---

## Master Relationships

Roles → Users

Customers → Accounts Receivable

Suppliers → Accounts Payable

Items → Categories

Items → Units

Items → Inventory Accounts

Items → COGS Accounts

Items → Sales Accounts

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

## Deletion Rules

No physical deletion.

Use:

Active

Inactive

