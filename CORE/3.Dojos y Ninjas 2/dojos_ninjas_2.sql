-- INSERT 3 DOJOS

INSERT dojos(nombre,created_at,updated_at) VALUES 
('DOJO TORTUGA',NOW(),NOW()),
('DOJO CONEJO',NOW(),NOW()),
('DOJO GATO',NOW(),NOW());


-- DELETE TODOS LOS DOJOS
DELETE FROM dojos;


-- INSERT 3 NUEVOS DOJOS
INSERT dojos(nombre,created_at,updated_at)VALUES 
('DOJO ELEFANTE',NOW(),NOW()),
('DOJO PEZ',NOW(),NOW()),
('DOJO PERRO',NOW(),NOW());


-- INSERT NINJAS

INSERT ninjas(first_name,last_name,age,created_at,updated_at,dojo_id)VALUES 
('Jorge','Ramirez',14,NOW(),NOW(),4),
('Roberto','Tamales',16,NOW(),NOW(),4),
('Juan','Perez',13,NOW(),NOW(),4),
('Ernesto','Gutierrez',31,NOW(),NOW(),5),
('Gustavo','Ronsalmes',29,NOW(),NOW(),5),
('Alberto','Noruega',34,NOW(),NOW(),5),
('Marisa','Estigarribia',21,NOW(),NOW(),6),
('Silvia','Esteque',22,NOW(),NOW(),6),
('Marisa','Noruega',24,NOW(),NOW(),6);

SELECT * FROM ninjas;
SELECT * FROM dojos;

-- NINJAS DEL PRIMER DOJO
SELECT dojos.id,dojos.nombre, ninjas.first_name
FROM dojos
JOIN ninjas ON dojos.id = ninjas.dojo_id
ORDER BY dojos.id DESC LIMIT 3;

-- TODOS LOS NINJAS DEL ULTIMO DOJO
SELECT ninjas.id,ninjas.first_name, dojos.nombre
FROM dojos
JOIN ninjas ON dojos.id = ninjas.dojo_id
ORDER BY ninjas.id DESC LIMIT 1;