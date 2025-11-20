-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  event_dlq
CREATE TABLE IF NOT EXISTS event_dlq (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `source` VARCHAR(100) NOT NULL,
  event_key CHAR(36) NULL,
  event JSON NOT NULL,
  error TEXT NOT NULL,
  retryable BOOLEAN NOT NULL DEFAULT 0,
  attempts INT UNSIGNED NOT NULL DEFAULT 0,
  first_failed_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  last_failed_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
