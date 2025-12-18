-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  event_dlq

CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
