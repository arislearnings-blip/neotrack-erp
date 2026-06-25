NeoTrack ERP User Roles & Permission Engine

Objective

Every user must belong to a role.

Permissions are assigned to roles.

Users inherit permissions from their role.

---

Role 1: Administrator

Full Access

Can:

- Create Users
- Edit Users
- Delete Users
- Manage Permissions
- Access All Modules
- Access All Reports
- Configure System Settings
- Close Fiscal Year

Restrictions:

None

---

Role 2: Accountant

Can Access:

- Chart of Accounts
- Journal Entries
- Receipt Vouchers
- Payment Vouchers
- Trial Balance
- Profit & Loss
- Balance Sheet
- Customer Ledger
- Supplier Ledger

Can:

- Create
- Edit
- Print
- Export

Cannot:

- Delete Posted Transactions

---

Role 3: Purchase User

Can Access:

- Suppliers
- Purchase Orders
- GRN
- Supplier Bills

Can:

- Create
- Edit
- Print

Cannot:

- Post Accounting Entries
- Access Financial Reports

---

Role 4: Sales User

Can Access:

- Customers
- Quotations
- Sales Orders
- Delivery Notes
- Sales Invoices

Can:

- Create
- Edit
- Print

Cannot:

- Access Financial Statements

---

Role 5: Store User

Can Access:

- Inventory
- Stock Transfer
- Stock Adjustment
- Inventory Count

Can:

- Create
- Edit
- Print

Cannot:

- Access Accounting

---

Role 6: Production User

Can Access:

- BOM
- Production Orders
- Material Issues
- Finished Goods Receipts

Can:

- Create
- Edit
- Print

Cannot:

- Access Financial Reports

---

Role 7: Management

Read Only

Can View:

- Dashboard
- Sales Reports
- Purchase Reports
- Inventory Reports
- Trial Balance
- Profit & Loss
- Balance Sheet

Cannot:

- Edit Transactions
- Delete Transactions

---

Transaction Permissions

Every Transaction Must Support:

- Add
- Edit
- Delete
- View
- Print
- PDF
- Export Excel

---

Approval Workflow

Purchase Order

Draft
→ Submitted
→ Approved
→ Closed

---

Sales Order

Draft
→ Submitted
→ Approved
→ Closed

---

Production Order

Draft
→ Submitted
→ Approved
→ Completed

---

Supplier Bill

Draft
→ Approved
→ Posted

---

Sales Invoice

Draft
→ Approved
→ Posted

---

Journal Voucher

Draft
→ Approved
→ Posted

---

Posted Transaction Rules

Posted Transactions:

Cannot Be Deleted

Only Administrator Can Reverse

All Changes Logged In Audit Log

---

Dashboard Security

Users Only See:

Their Authorized Modules

Their Authorized Reports

Their Authorized Actions