-- ============================================================================
-- Workflow Error Logs
-- ============================================================================

CREATE TABLE workflow_error_logs (
    id BIGSERIAL PRIMARY KEY,

    workflow_name TEXT,
    workflow_id TEXT,
    execution_id TEXT,

    node_name TEXT,

    error_message TEXT NOT NULL,
    error_stack TEXT,

    payload JSONB,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);