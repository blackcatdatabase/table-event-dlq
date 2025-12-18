# event_dlq

Dead-letter queue holding events that failed permanently.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| source | VARCHAR(100) | NO |  | Event source or producer system. |  |
| event_key | CHAR(36) | YES |  | Event key / idempotency token. |  |
| event | mysql: JSON / postgres: JSONB | NO |  | Original event payload (JSON). |  |
| error | TEXT | NO |  | Error message explaining the failure. |  |
| retryable | BOOLEAN | NO | mysql: 0 / postgres: FALSE | Whether the event can be retried safely. |  |
| attempts | mysql: INT / postgres: INTEGER | NO | 0 | How many attempts were made. |  |
| first_failed_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the first failure. |  |
| last_failed_at | mysql: DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the latest failure. |  |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_event_dlq_source_time | source,last_failed_at | CREATE INDEX idx_event_dlq_source_time ON event_dlq (source, last_failed_at) |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_event_dlq_source_time | source,last_failed_at | CREATE INDEX IF NOT EXISTS idx_event_dlq_source_time ON event_dlq (source, last_failed_at) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_event_dlq | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_event_dlq | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
