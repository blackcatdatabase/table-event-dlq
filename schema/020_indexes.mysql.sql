-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  event_dlq
CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
