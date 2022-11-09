SELECT * FROM esquema_dojos_y_ninjas;  -- use el de la linea 3 para dojos y el de la linea 21 para ninjas, los hice 
-- en dif pestañas, ahora puse este q supongo q este sirve para los 2,, para guardarlos juntos
-- SELECT * FROM esquema_dojos_y_ninjas.dojos;

-- crear 3 dojos
INSERT INTO dojos (id, name) VALUES ('1', 'Python');
INSERT INTO dojos (id, name) VALUES ('2', 'PHP');
INSERT INTO dojos (id, name) VALUES ('3', 'Mern');

-- eliminar los 3 dojos recien creados
DELETE FROM dojos WHERE id = 1; 
DELETE FROM dojos WHERE id = 2; 
DELETE FROM dojos WHERE id = 3; 

-- crear 3 dojos nuevos
INSERT INTO dojos (id, name) VALUES ('4', 'Java');
INSERT INTO dojos (id, name) VALUES ('5', 'Python');
INSERT INTO dojos (id, name) VALUES ('6', 'JS');


-- SELECT * FROM esquema_dojos_y_ninjas.ninjas;

-- crear 3 ninjas q pertenezcan al primer dojo
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('1', 'Ana', 'Garcia', '23', '4');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('2', 'Jorge', 'Morales', '38', '4');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('3', 'Ema', 'Rivas', '29', '4');


-- crear 3 ninjas q pertenezcan al segundo dojo
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('4', 'Raul', 'Perez', '51', '5');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('5', 'Juan', 'Rojas', '40', '5');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('6', 'Pia', 'Rosales', '41', '5');


-- crear 3 ninjas q pertenezcan al tercer dojo
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('7', 'Miguel', 'Muñóz', '37', '6');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('8', 'Francy', 'Barrera', '22', '6');
INSERT INTO ninjas (id, firts_name, last_name, age, dojo_id) VALUES ('9', 'Franco', 'Barra', '30', '6');