-- ==========================================
-- NeoTrack ERP
-- 003 Customers & Suppliers
-- ==========================================

CREATE TABLE customers (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    customer_code VARCHAR(20) UNIQUE NOT NULL,

    customer_name VARCHAR(200) NOT NULL,

    contact_person VARCHAR(200),

    phone VARCHAR(50),

    mobile VARCHAR(50),

    email VARCHAR(200),

    address TEXT,

    city VARCHAR(100),

    country VARCHAR(100),

    credit_limit NUMERIC(18,2) DEFAULT 0,

    payment_terms_id BIGINT REFERENCES payment_terms(id),

    receivable_account_id BIGINT REFERENCES chart_of_accounts(id),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE suppliers (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    supplier_code VARCHAR(20) UNIQUE NOT NULL,

    supplier_name VARCHAR(200) NOT NULL,

    contact_person VARCHAR(200),

    phone VARCHAR(50),

    mobile VARCHAR(50),

    email VARCHAR(200),

    address TEXT,

    city VARCHAR(100),

    country VARCHAR(100),

    payment_terms_id BIGINT REFERENCES payment_terms(id),

    payable_account_id BIGINT REFERENCES chart_of_accounts(id),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);
