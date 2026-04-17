-- Auto-generated: table creation v5554
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_5554 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_5554_name
    ON table_creation_5554(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_5554_created
    ON table_creation_5554(created_at DESC);

-- Seed data
INSERT INTO table_creation_5554 (name, status)
VALUES
    ('item_0', 'val_0_5554'),
    ('item_1', 'val_1_5554'),
    ('item_2', 'val_2_5554'),
    ('item_3', 'val_3_5554'),
    ('item_4', 'val_4_5554'),
    ('item_5', 'val_5_5554');

-- View
CREATE OR REPLACE VIEW v_table_creation_5554_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_5554
GROUP BY name
ORDER BY total DESC;
