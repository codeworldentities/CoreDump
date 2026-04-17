-- Auto-generated: schema — database schema definition v7602
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_7602 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7602_name
    ON schema_—_database_schema_definition_7602(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7602_created
    ON schema_—_database_schema_definition_7602(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_7602 (name, is_active)
VALUES
    ('item_0', 'val_0_7602'),
    ('item_1', 'val_1_7602'),
    ('item_2', 'val_2_7602'),
    ('item_3', 'val_3_7602'),
    ('item_4', 'val_4_7602'),
    ('item_5', 'val_5_7602');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_7602_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_7602
GROUP BY name
ORDER BY total DESC;
