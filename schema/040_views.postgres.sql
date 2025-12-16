-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  event_dlq

-- Contract view for [event_dlq]
CREATE OR REPLACE VIEW vw_event_dlq AS
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
