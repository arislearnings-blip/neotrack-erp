# NeoTrack ERP Inventory & Warehouse Module

## Inventory Workflow

Purchase
↓
Receive Stock
↓
Store In Warehouse
↓
Issue To Production / Sale
↓
Stock Reduction

---

## Inventory Objectives

Real Time Stock

Multi Warehouse Support

Inventory Valuation

Stock Tracking

Stock Movements

Inventory Accounting Integration

---

## Stock Ledger Header

StockLedgerID (PK)

TransactionDate

TransactionType

ReferenceType

ReferenceID

WarehouseID

Remarks

CreatedAt

---

## Stock Ledger Details

StockLedgerDetailID (PK)

StockLedgerID (FK)

ItemID

QtyIn

QtyOut

UnitCost

TotalCost

BalanceQty

BalanceValue

---

## Stock Transfer Header

TransferID (PK)

TransferNumber

TransferDate

FromWarehouseID

ToWarehouseID

Status

Remarks

CreatedAt

---

## Stock Transfer Details

TransferDetailID (PK)

TransferID (FK)

ItemID

Quantity

UnitCost

Amount

---

## Stock Adjustment Header

AdjustmentID (PK)

AdjustmentNumber

AdjustmentDate

WarehouseID

AdjustmentType

Status

Remarks

CreatedAt

---

## Stock Adjustment Details

AdjustmentDetailID (PK)

AdjustmentID (FK)

ItemID

SystemQty

PhysicalQty

DifferenceQty

UnitCost

Amount

---

## Inventory Count Header

CountID (PK)

CountNumber

CountDate

WarehouseID

Status

Remarks

CreatedAt

---

## Inventory Count Details

CountDetailID (PK)

CountID (FK)

ItemID

SystemQty

CountedQty

VarianceQty

---

## Warehouse Relationships

Warehouse
↓
Stock Ledger

Warehouse
↓
Stock Transfer

Warehouse
↓
Inventory Count

Warehouse
↓
Stock Adjustment

---

## Auto Numbering

STK-00001

TRF-00001

ADJ-00001

CNT-00001

---

## Inventory Transaction Types

Purchase Receipt

Sales Delivery

Production Issue

Production Receipt

Stock Transfer

Stock Adjustment

Opening Stock

Inventory Count

---

## Inventory Valuation Methods

FIFO

Weighted Average

Standard Cost

---

## Recommended Method

Weighted Average Cost

---

## Stock Transfer Logic

Source Warehouse

Reduce Stock

↓

Destination Warehouse

Increase Stock

---

## Inventory Adjustment Increase

Dr Inventory

Cr Inventory Gain

---

## Inventory Adjustment Decrease

Dr Inventory Loss

Cr Inventory

---

## Inventory Reports

Stock Summary

Stock Detail

Inventory Valuation

Inventory Movement

Slow Moving Items

Fast Moving Items

Negative Stock Report

Reorder Report

Warehouse Stock Report

---

## Search & Filters

Item

Category

Warehouse

Date Range

Transaction Type

Reference Number

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

---

## Restrictions

No Negative Stock

No Deletion Of Posted Transactions

Cancelled Transactions Remain In Audit Trail

Auto Numbers Never Reused

Inventory Must Always Match Ledger

---

## Audit Trail

Created By

Created Date

Modified By

Modified Date

Approval History

Status Changes

---

## Inventory Integration

Purchase Module

↓

Inventory Increase

↓

Stock Ledger Update

---

Sales Module

↓

Inventory Decrease

↓

Stock Ledger Update

---

Manufacturing Module

↓

Raw Material Consumption

↓

Finished Goods Production

↓

Stock Ledger Update

