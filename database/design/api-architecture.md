NeoTrack ERP API Architecture

Purpose

The API Layer connects:

Frontend
↓
Business Logic
↓
Database

No screen should directly access database tables.

All actions must go through APIs.

---

Authentication APIs

POST /auth/login

POST /auth/logout

POST /auth/refresh

GET /auth/profile

---

Customer APIs

GET /customers

GET /customers/{id}

POST /customers

PUT /customers/{id}

DELETE /customers/{id}

---

Supplier APIs

GET /suppliers

GET /suppliers/{id}

POST /suppliers

PUT /suppliers/{id}

DELETE /suppliers/{id}

---

Item APIs

GET /items

GET /items/{id}

POST /items

PUT /items/{id}

DELETE /items/{id}

---

Purchase APIs

GET /purchase-orders

POST /purchase-orders

PUT /purchase-orders

POST /purchase-orders/approve

POST /purchase-orders/close

---

GRN APIs

GET /grns

POST /grns

PUT /grns

POST /grns/post

---

Supplier Bill APIs

GET /supplier-bills

POST /supplier-bills

PUT /supplier-bills

POST /supplier-bills/post

---

Sales APIs

GET /quotations

POST /quotations

GET /sales-orders

POST /sales-orders

GET /delivery-notes

POST /delivery-notes

GET /sales-invoices

POST /sales-invoices

POST /sales-invoices/post

---

Inventory APIs

GET /stock-ledger

GET /inventory-balance

POST /stock-transfer

POST /stock-adjustment

POST /inventory-count

---

Manufacturing APIs

GET /bom

POST /bom

GET /production-orders

POST /production-orders

POST /material-issue

POST /finished-goods-receipt

---

Accounting APIs

GET /journals

POST /journals

POST /receipt-vouchers

POST /payment-vouchers

POST /contra-vouchers

---

Reporting APIs

GET /reports/general-ledger

GET /reports/customer-ledger

GET /reports/supplier-ledger

GET /reports/trial-balance

GET /reports/profit-loss

GET /reports/balance-sheet

GET /reports/inventory-valuation

GET /reports/ar-aging

GET /reports/ap-aging

---

API Rules

Every API Must Support:

- Validation
- Authorization
- Audit Log
- Error Handling
- Pagination
- Search
- Filtering

No Direct Database Access Allowed.