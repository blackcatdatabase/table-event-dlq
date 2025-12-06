-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  event_dlq

CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at);
