-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  event_dlq

CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
