-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  event_dlq

CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
