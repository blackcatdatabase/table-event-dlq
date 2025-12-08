# event_dlq

Dead-letter queue holding events that failed permanently.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| attempts | INT | NO | 0 | How many attempts were made. |
| error | TEXT | NO |  | Error message explaining the failure. |
| event | JSON | NO |  | Original event payload (JSON). |
| event_key | CHAR(36) | YES |  | Event key / idempotency token. |
| first_failed_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the first failure. |
| id | BIGINT | NO |  | Surrogate primary key. |
| last_failed_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp of the latest failure. |
| retryable | BOOLEAN | NO | 0 | Whether the event can be retried safely. |
| source | VARCHAR(100) | NO |  | Event source or producer system. |

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
| vw_event_dlq | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_event_dlq | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
