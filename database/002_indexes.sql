-- ============================================================================
-- Performance Indexes
-- Real Estate Lead Intake Automation System
-- ============================================================================

-- Lead lookup indexes
CREATE INDEX idx_leads_email
ON leads(email);

CREATE INDEX idx_leads_phone
ON leads(phone_e164);

CREATE INDEX idx_leads_status
ON leads(lead_status);

CREATE INDEX idx_leads_created_at
ON leads(created_at);

-- Notification indexes
CREATE INDEX idx_notification_logs_lead_id
ON notification_logs(lead_id);

CREATE INDEX idx_notification_logs_status
ON notification_logs(delivery_status);

-- Error log indexes
CREATE INDEX idx_workflow_error_logs_created_at
ON workflow_error_logs(created_at);