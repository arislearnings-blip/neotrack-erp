# NeoTrack ERP Database Schema Standards

## Database Engine

PostgreSQL

---

## Naming Standards

Tables:
snake_case

Columns:
snake_case

Primary Keys:
id

Foreign Keys:
table_name_id

---

## Audit Fields

Every Table Must Contain

created_at

created_by

updated_at

updated_by

is_active

---

# Security Tables

## roles

id

role_code

role_name

description

---

## users

id

user_code

full_name

username

email

password_hash

role_id

mobile

last_login

---

# Master Tables

## chart_of_accounts

id

account_code

account_name

parent_account_id

account_type

account_level

is_control_account

---

## customers

id

customer_code

customer_name

contact_person

phone

mobile

email

address

city

country

ntn

strn

credit_limit

payment_terms_id

receivable_account_id

---

## suppliers

id

supplier_code

supplier_name

contact_person

phone

mobile

email

address

city

country

ntn

strn

payment_terms_id

payable_account_id

---

## units

id

unit_code

unit_name

---

## categories

id

category_code

category_name

description

---

## warehouses

id

warehouse_code

warehouse_name

location

manager

---

## items

id

item_code

item_name

category_id

unit_id

item_type

inventory_account_id

cogs_account_id

sales_account_id

purchase_account_id

standard_cost

selling_price

minimum_stock

maximum_stock

barcode

description

---

## tax_codes

id

tax_code

tax_name

tax_rate

tax_account_id

---

## payment_terms

id

terms_code

terms_name

days

---

# Purchasing Tables

## purchase_requisition_header

id

pr_number

pr_date

requested_by

department

status

remarks

---

## purchase_requisition_details

id

pr_id

item_id

quantity

required_date

remarks

---

## purchase_order_header

id

po_number

po_date

supplier_id

warehouse_id

reference_no

status

remarks

---

## purchase_order_details

id

po_id

item_id

quantity

rate

discount

tax_id

amount

---

## grn_header

id

grn_number

grn_date

supplier_id

po_id

warehouse_id

status

remarks

---

## grn_details

id

grn_id

item_id

received_qty

accepted_qty

rejected_qty

rate

amount

---

## supplier_bill_header

id

bill_number

bill_date

supplier_id

grn_id

due_date

status

remarks

---

## supplier_bill_details

id

bill_id

item_id

quantity

rate

tax_id

amount

---

# Sales Tables

## quotation_header

id

quotation_number

quotation_date

customer_id

status

---

## quotation_details

id

quotation_id

item_id

quantity

rate

amount

---

## sales_order_header

id

so_number

so_date

customer_id

warehouse_id

status

---

## sales_order_details

id

so_id

item_id

quantity

rate

amount

---

## delivery_note_header

id

dn_number

dn_date

customer_id

so_id

warehouse_id

status

---

## delivery_note_details

id

dn_id

item_id

quantity

rate

amount

---

## invoice_header

id

invoice_number

invoice_date

customer_id

dn_id

due_date

status

---

## invoice_details

id

invoice_id

item_id

quantity

rate

amount

---

# Inventory Tables

## stock_ledger

id

transaction_date

transaction_type

reference_type

reference_id

warehouse_id

item_id

qty_in

qty_out

unit_cost

balance_qty

balance_value

---

## stock_transfer_header

id

transfer_number

transfer_date

from_warehouse_id

to_warehouse_id

status

---

## stock_transfer_details

id

transfer_id

item_id

quantity

unit_cost

amount

---

## stock_adjustment_header

id

adjustment_number

adjustment_date

warehouse_id

status

---

## stock_adjustment_details

id

adjustment_id

item_id

system_qty

physical_qty

difference_qty

amount

---

# Manufacturing Tables

## bom_header

id

bom_number

finished_good_id

version_no

effective_date

status

---

## bom_details

id

bom_id

raw_material_id

quantity

unit_id

wastage_percent

---

## production_order_header

id

production_number

production_date

bom_id

finished_good_id

planned_quantity

status

---

## production_order_details

id

production_id

raw_material_id

required_quantity

issued_quantity

consumed_quantity

---

## material_issue_header

id

issue_number

issue_date

production_id

warehouse_id

status

---

## material_issue_details

id

issue_id

item_id

issued_quantity

unit_cost

amount

---

## finished_goods_receipt_header

id

fgr_number

receipt_date

production_id

warehouse_id

status

---

## finished_goods_receipt_details

id

fgr_id

item_id

quantity

unit_cost

amount

---

# Accounting Tables

## journal_header

id

journal_number

journal_date

reference_type

reference_id

narration

status

---

## journal_details

id

journal_id

account_id

debit_amount

credit_amount

description

---

# Mandatory Indexes

Customer Code

Supplier Code

Item Code

Account Code

Voucher Number

Transaction Date

Status

Warehouse

Item

Customer

Supplier

---

# Mandatory Constraints

Unique Customer Code

Unique Supplier Code

Unique Item Code

Unique Account Code

Unique Voucher Number

Debit Must Equal Credit

No Negative Stock

No Duplicate Auto Numbers

---

# ERP Posting Flow

Transaction

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
