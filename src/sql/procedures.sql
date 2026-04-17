-- Auto-generated: procedures — procedures v9077
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_9077 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_9077_name
    ON procedures_—_procedures_9077(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_9077_created
    ON procedures_—_procedures_9077(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_9077 (name, email)
VALUES
    ('item_0', 'val_0_9077'),
    ('item_1', 'val_1_9077'),
    ('item_2', 'val_2_9077'),
    ('item_3', 'val_3_9077'),
    ('item_4', 'val_4_9077'),
    ('item_5', 'val_5_9077'),
    ('item_6', 'val_6_9077'),
    ('item_7', 'val_7_9077');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_9077_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_9077
GROUP BY name
ORDER BY total DESC;
