<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – event_dlq

Dead-letter queue holding events that failed permanently.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| source | VARCHAR(100) | NO | — | Event source or producer system. |  |
| event_key | CHAR(36) | YES | — | Event key / idempotency token. |  |
| event | JSONB | NO | — | Original event payload (JSON). |  |
| error | TEXT | NO | — | Error message explaining the failure. |  |
| retryable | BOOLEAN | NO | FALSE | Whether the event can be retried safely. |  |
| attempts | INTEGER | NO | 0 | How many attempts were made. |  |
| first_failed_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the first failure. |  |
| last_failed_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the latest failure. |  |