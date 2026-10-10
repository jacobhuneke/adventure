
-- +goose Up
ALTER TABLE users
ADD is_adventure_red BOOLEAN DEFAULT FALSE NOT NULL;

-- +goose Down
ALTER TABLE users DROP COLUMN is_adventure_red;