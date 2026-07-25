-- ============================================================================
-- Notification Logs
-- ============================================================================

CREATE TABLE notification_logs (
    id BIGSERIAL PRIMARY KEY,

    raw_lead_id BIGINT,
    lead_id BIGINT,

    notification_type VARCHAR(100) NOT NULL,
    channel VARCHAR(50) NOT NULL,

    recipient VARCHAR(255),
    priority VARCHAR(20),

    title TEXT,

    payload JSONB NOT NULL,

    delivery_status VARCHAR(30) NOT NULL DEFAULT 'pending',

    provider_message_id VARCHAR(255),
    error_message TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    sent_at TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);