USE amistades

INSERT users (first_name,last_name,created_at,updated_at) VALUES
('Amy','Giver',NOW(),NOW()),
('Eli','Byers',NOW(),NOW()),
('Big','Bird',NOW(),NOW()),
('La rana','Rene',NOW(),NOW()),
('Marky','Mark',NOW(),NOW()),
('Sean','Conery',NOW(),NOW());

INSERT friendships (user_id,friend_id,created_at,updated_at) VALUES
(1,2,NOW(),NOW()),
(1,4,NOW(),NOW()),
(1,6,NOW(),NOW()),
(2,1,NOW(),NOW()),
(2,3,NOW(),NOW()),
(2,5,NOW(),NOW()),
(3,2,NOW(),NOW()),
(3,5,NOW(),NOW()),
(4,3,NOW(),NOW()),
(5,1,NOW(),NOW()),
(5,6,NOW(),NOW()),
(6,2,NOW(),NOW()),
(6,3,NOW(),NOW());

SELECT users.first_name, users.last_name, amigo.first_name, amigo.last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users as amigo ON amigo.id = friendships.friend_id;

SELECT users.id, users.first_name, users.last_name, amigo.id ,amigo.first_name, amigo.last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users as amigo ON amigo.id = friendships.friend_id
WHERE friendships.friend_id = 1

SELECT COUNT(friendships.id) AS total_relations	
FROM friendships

SELECT users.first_name, users.last_name, COUNT(friendships.friend_id) AS total_friends
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS amigo ON amigo.id = friendships.friend_id
GROUP BY friendships.user_id

SELECT users.first_name, users.last_name, amigo.first_name AS friend_first_name, amigo.last_name AS friend_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS amigo ON amigo.id = friendships.friend_id
WHERE friendships.user_id = 3