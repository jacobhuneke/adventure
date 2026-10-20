
-- name: CreateAdventure :one
INSERT INTO adventures (id, created_at, updated_at, body, user_id)
VALUES (
    $1,
    $2,
    $3,
    $4,
    $5
)
RETURNING *;

-- name: GetAdventures :many
SELECT * FROM adventures
ORDER BY created_at ASC;

-- name: GetAdventure :one
SELECT * FROM adventures
WHERE id = $1;

-- name: DeleteAdventures :exec
DELETE FROM adventures;

-- name: DeleteAdventureByID :exec
DELETE FROM adventures
WHERE id = $1;

-- name: GetAdventuresByUser :many
SELECT * FROM adventures
WHERE user_id = $1
ORDER BY created_at ASC;