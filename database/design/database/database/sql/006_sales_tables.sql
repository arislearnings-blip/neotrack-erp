-- ==========================================
-- NeoTrack ERP
-- 006 Sales Tables
-- ==========================================

CREATE TABLE quotation_header (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    quotation_number VARCHAR(30) UNIQUE NOT NULL,

    quotation_date DATE NOT NULL,

    customer_id BIGINT REFERENCES customers(id),

    valid_until DATE,

    status VARCHAR(30) DEFAULT 'Draft',

    remarks TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE quotation_details (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    quotation_id BIGINT REFERENCES quotation_header(id) ON DELETE CASCADE,

    item_id BIGINT REFERENCES items(id),

    quantity NUMERIC(18,3),

    rate NUMERIC(18,2),

    discount NUMERIC(18,2) DEFAULT 0,

    tax_amount NUMERIC(18,2) DEFAULT 0,

    line_total NUMERIC(18,2)
);

CREATE TABLE sales_order_header (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    so_number VARCHAR(30) UNIQUE NOT NULL,

    so_date DATE NOT NULL,

    customer_id BIGINT REFERENCES customers(id),

    warehouse_id BIGINT REFERENCES warehouses(id),

    reference_no VARCHAR(100),

    status VARCHAR(30) DEFAULT 'Draft',

    remarks TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE sales_order_details (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    so_id BIGINT REFERENCES sales_order_header(id) ON DELETE CASCADE,

    item_id BIGINT REFERENCES items(id),

    quantity NUMERIC(18,3),

    rate NUMERIC(18,2),

    discount NUMERIC(18,2) DEFAULT 0,

    tax_amount NUMERIC(18,2) DEFAULT 0,

    line_total NUMERIC(18,2)
);

CREATE TABLE delivery_note_header (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    dn_number VARCHAR(30) UNIQUE NOT NULL,

    dn_date DATE NOT NULL,

    customer_id BIGINT REFERENCES customers(id),

    so_id BIGINT REFERENCES sales_order_header(id),

    warehouse_id BIGINT REFERENCES warehouses(id),

    status VARCHAR(30) DEFAULT 'Draft',

    remarks TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE delivery_note_details (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    dn_id BIGINT REFERENCES delivery_note_header(id) ON DELETE CASCADE,

    item_id BIGINT REFERENCES items(id),

    quantity NUMERIC(18,3),

    rate NUMERIC(18,2),

    line_total NUMERIC(18,2)
);

CREATE TABLE sales_invoice_header (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    invoice_number VARCHAR(30) UNIQUE NOT NULL,

    invoice_date DATE NOT NULL,

    customer_id BIGINT REFERENCES customers(id),

    dn_id BIGINT REFERENCES delivery_note_header(id),

    due_date DATE,

    status VARCHAR(30) DEFAULT 'Draft',

    remarks TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE sales_invoice_details (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    invoice_id BIGINT REFERENCES sales_invoice_header(id) ON DELETE CASCADE,

    item_id BIGINT REFERENCES items(id),

    quantity NUMERIC(18,3),

    rate NUMERIC(18,2),

    discount NUMERIC(18,2) DEFAULT 0,

    tax_amount NUMERIC(18,2) DEFAULT 0,

    line_total NUMERIC(18,2)
);
