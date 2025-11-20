-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  event_dlq
CREATE INDEX IF NOT EXISTS idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
