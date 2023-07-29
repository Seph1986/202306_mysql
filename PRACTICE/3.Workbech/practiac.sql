USE twitter;

-- INSERT
INSERT users(first_name,last_name,handle,birthday,created_at,updated_at)
VALUES ('Juan','Perez','j.perez85','1985-03-25',Now(),Now());

-- SELECT
SELECT * FROM users;

-- UPDATE
UPDATE users
SET first_name = 'Kody', last_name = 'Brayan', updated_at = Now()
WHERE id = 1;

-- DELETE
DELETE FROM users 
WHERE id = 10;

SELECT * FROM users