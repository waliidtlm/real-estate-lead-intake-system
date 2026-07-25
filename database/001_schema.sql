-- ============================================================================
-- Real Estate Lead Intake Automation System
-- Database Schema
-- ============================================================================

CREATE TABLE leads (
    id SERIAL PRIMARY KEY,
    raw_lead_id INTEGER REFERENCES raw_leads(id),

    source TEXT NOT NULL,
    source_lead_id TEXT,

    full_name TEXT,
    email TEXT,
    phone_e164 TEXT,

    lead_type TEXT,
    location TEXT,
    budget TEXT,
    timeline TEXT,

    message_clean TEXT,

    email_consent BOOLEAN DEFAULT FALSE,
    sms_consent BOOLEAN DEFAULT FALSE,

    lead_status TEXT DEFAULT 'new',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    inquiry_count INTEGER NOT NULL DEFAULT 1,
    last_inquiry_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (source, source_lead_id)
);