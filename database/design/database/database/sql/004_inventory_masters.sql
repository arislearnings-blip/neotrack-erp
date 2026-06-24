-- ==========================================
-- NeoTrack ERP
-- 004 Inventory Masters
-- ==========================================

CREATE TABLE tax_codes (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    tax_code VARCHAR(20) UNIQUE NOT NULL,

    tax_name VARCHAR(100) NOT NULL,

    tax_rate NUMERIC(10,2) DEFAULT 0,

    tax_account_id BIGINT REFERENCES chart_of_accounts(id),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE items (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    item_code VARCHAR(50) UNIQUE NOT NULL,

    item_name VARCHAR(200) NOT NULL,

    category_id BIGINT REFERENCES categories(id),

    unit_id BIGINT REFERENCES units(id),

    item_type VARCHAR(50),

    inventory_account_id BIGINT REFERENCES chart_of_accounts(id),

    cogs_account_id BIGINT REFERENCES chart_of_accounts(id),

    sales_account_id BIGINT REFERENCES chart_of_accounts(id),

    purchase_account_id BIGINT REFERENCES chart_of_accounts(id),

    standard_cost NUMERIC(18,2) DEFAULT 0,

    selling_price NUMERIC(18,2) DEFAULT 0,

    minimum_stock NUMERIC(18,2) DEFAULT 0,

    maximum_stock NUMERIC(18,2) DEFAULT 0,

    barcode VARCHAR(100),

    description TEXT,

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);
