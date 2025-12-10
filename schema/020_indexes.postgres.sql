-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  event_dlq

CREATE INDEX IF NOT EXISTS idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
