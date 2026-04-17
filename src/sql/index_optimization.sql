-- Auto-generated: index optimization v3506
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_3506 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3506_name
    ON index_optimization_3506(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_3506_created
    ON index_optimization_3506(created_at DESC);

-- Seed data
INSERT INTO index_optimization_3506 (name, status)
VALUES
    ('item_0', 'val_0_3506'),
    ('item_1', 'val_1_3506'),
    ('item_2', 'val_2_3506'),
    ('item_3', 'val_3_3506'),
    ('item_4', 'val_4_3506'),
    ('item_5', 'val_5_3506'),
    ('item_6', 'val_6_3506'),
    ('item_7', 'val_7_3506'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_3506_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_3506
GROUP BY name
ORDER BY total DESC;
