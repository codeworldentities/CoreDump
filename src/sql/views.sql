-- Auto-generated: views — views v6983
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_6983 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6983_name
    ON views_—_views_6983(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6983_created
    ON views_—_views_6983(created_at DESC);

-- Seed data
INSERT INTO views_—_views_6983 (name, metadata)
VALUES
    ('item_0', 'val_0_6983'),
    ('item_1', 'val_1_6983'),
    ('item_2', 'val_2_6983'),
    ('item_3', 'val_3_6983'),
    ('item_4', 'val_4_6983'),
    ('item_5', 'val_5_6983'),
    ('item_6', 'val_6_6983'),
    ('item_7', 'val_7_6983'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_6983_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_6983
GROUP BY name
ORDER BY total DESC;
