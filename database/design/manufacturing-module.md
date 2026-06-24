# NeoTrack ERP Manufacturing Module

## Manufacturing Workflow

Bill Of Materials (BOM)
↓
Production Order
↓
Material Issue
↓
Production Entry
↓
Finished Goods Receipt

---

## Manufacturing Objectives

Production Planning

Raw Material Consumption

Work In Process Tracking

Finished Goods Production

Production Costing

Manufacturing Reporting

Inventory Integration

Accounting Integration

---

## BOM Header

BOMID (PK)

BOMNumber

FinishedGoodID

VersionNo

EffectiveDate

Status

Remarks

CreatedAt

---

## BOM Details

BOMDetailID (PK)

BOMID (FK)

RawMaterialID

Quantity

UnitID

WastagePercent

Remarks

---

## Production Order Header

ProductionID (PK)

ProductionNumber

ProductionDate

BOMID

FinishedGoodID

PlannedQuantity

Status

Remarks

CreatedAt

---

## Production Order Details

ProductionDetailID (PK)

ProductionID (FK)

RawMaterialID

RequiredQuantity

IssuedQuantity

ConsumedQuantity

BalanceQuantity

---

## Material Issue Header

IssueID (PK)

IssueNumber

IssueDate

ProductionID

WarehouseID

Status

Remarks

CreatedAt

---

## Material Issue Details

IssueDetailID (PK)

IssueID (FK)

ItemID

IssuedQuantity

UnitCost

Amount

---

## Production Entry Header

ProductionEntryID (PK)

ProductionEntryNumber

ProductionDate

ProductionID

ProducedQuantity

RejectedQuantity

ScrapQuantity

Status

Remarks

CreatedAt

---

## Production Entry Details

ProductionEntryDetailID (PK)

ProductionEntryID (FK)

RawMaterialID

ConsumedQuantity

UnitCost

Amount

---

## Finished Goods Receipt Header

FGRID (PK)

FGRNumber

ReceiptDate

ProductionID

WarehouseID

Status

Remarks

CreatedAt

---

## Finished Goods Receipt Details

FGRDetailID (PK)

FGRID (FK)

FinishedGoodID

Quantity

UnitCost

Amount

---

## Manufacturing Relationships

BOM
↓
Production Order

Production Order
↓
Material Issue

Material Issue
↓
Production Entry

Production Entry
↓
Finished Goods Receipt

---

## Auto Numbering

BOM-00001

PROD-00001

ISS-00001

PEN-00001

FGR-00001

---

## Production Statuses

Draft

Planned

Released

In Progress

Completed

Cancelled

Closed

---

## Inventory Posting

Material Issue

Reduce Raw Material Inventory

Update Stock Ledger

---

## Work In Process Posting

Dr Work In Process Inventory

Cr Raw Material Inventory

---

## Finished Goods Receipt

Increase Finished Goods Inventory

Update Stock Ledger

---

## Finished Goods Accounting

Dr Finished Goods Inventory

Cr Work In Process Inventory

---

## Scrap Handling

Scrap Quantity Recorded

Scrap Cost Tracked

Optional Scrap Sale Process

---

## Production Cost Components

Raw Material Cost

Direct Labor Cost

Factory Overhead

Utility Cost

Packaging Cost

Other Manufacturing Cost

---

## Production Reports

BOM Report

Production Order Report

Material Consumption Report

Finished Goods Report

Production Cost Report

WIP Report

Scrap Report

Efficiency Report

Production Variance Report

---

## Search & Filters

Production Number

BOM Number

Finished Good

Raw Material

Warehouse

Status

Date Range

User

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

Search

Advanced Filters

---

## Restrictions

Cannot Issue Material Without Production Order

Cannot Create Production Entry Without Material Issue

Cannot Create Finished Goods Receipt Without Production Entry

Cannot Delete Posted Transactions

Auto Numbers Never Reused

No Negative Inventory

---

## Audit Trail

Created By

Created Date

Modified By

Modified Date

Approval History

Status Changes

---

## Manufacturing Integration

Inventory Module
↓
Raw Material Consumption

Inventory Module
↓
Finished Goods Receipt

Accounting Module
↓
Automatic Journal Entries

Reporting Module
↓
Production Costing

Financial Statements
↓
Trial Balance

Profit & Loss

Balance Sheet
