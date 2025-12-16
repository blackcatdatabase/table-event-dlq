-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
