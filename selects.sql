SELECT * FROM esquema_dojos_y_ninjas;

-- recupera todos los ninjas del primer dojo
SELECT * FROM ninjas WHERE dojo_id = 4;

 -- recupera todos los ninjas del ultimo dojo
 SELECT * FROM ninjas WHERE dojo_id = 6;
 
-- recupera el dojo del ultimo ninja
SELECT dojo_id FROM ninjas WHERE id = 9;