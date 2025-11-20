-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  event_dlq
-- Contract view for [event_dlq]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_event_dlq AS
SELECT
  id,
  source,
  event_key,
  event,
  error,
  retryable,
  attempts,
  first_failed_at,
  last_failed_at
FROM event_dlq;
