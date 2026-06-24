-- ==========================================
-- NeoTrack ERP
-- 002 Accounting Masters
-- ==========================================

CREATE TABLE payment_terms (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    terms_code VARCHAR(20) UNIQUE NOT NULL,
    terms_name VARCHAR(100) NOT NULL,
    days INTEGER NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE chart_of_accounts (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    account_code VARCHAR(20) UNIQUE NOT NULL,

    account_name VARCHAR(200) NOT NULL,

    parent_account_id BIGINT REFERENCES chart_of_accounts(id),

    account_type VARCHAR(50) NOT NULL,

    account_level INTEGER DEFAULT 1,

    is_control_account BOOLEAN DEFAULT FALSE,

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);
