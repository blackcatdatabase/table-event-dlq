-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  event_dlq

CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
