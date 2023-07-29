USE users_schema;

-- INSERT
INSERT INTO users(nombre,apellido,email,created_at,updated_at)
VALUES ('Ramon','Perez','ramoncito@gmail.com',Now(),Now());

INSERT INTO users(nombre,apellido,email,created_at,updated_at)
VALUES ('Michel','Nunez','michelito@gmail.com',Now(),Now());

INSERT INTO users(nombre,apellido,email,created_at,updated_at)
VALUES ('Juan','Valdez','juancito@hotmail.com',Now(),Now());

-- SELECT
SELECT * FROM users;

SELECT email FROM users
WHERE id = 1;

SELECT id FROM users
WHERE id = 3;

-- UPDATE
UPDATE users
SET apellido = 'Panqueques'
WHERE id = 3;

-- DELETE
DELETE FROM users
WHERE id = 2;

-- SELECT
SELECT nombre FROM users;

SELECT *	 
FROM users
ORDER BY nombre DESC;
