set AUTOCOMMIT = 0;

use Netflix;
START transaction;
DELETE from usuarios
where Id_Usuario in (23,24);

COMMIT; 
/*COMMIT se utiliza para confirmar y aplicar los cambios en la base de datos. Es decir que si ejecutamos
la sentencia COMMIT se eliminarán los usuarios con id 24 y 25, por haberse desuscripto de nuestro servicio
de Netflix*/

ROLLBACK;
/* ROLLBACK se utiliza para deshacer todos los cambios en la transacción actual en caso 
de un error o una condición no deseada. Si ocurre un problema, podemos usar ROLLBACK 
para revertir la eliminación de los usuarios 23 y 24 y dejar la base de datos en su 
estado anterior antes de la transacción.*/

Use netflix; 
select * from usuarios; 

START TRANSACTION; 

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (31, 'El Señor de los Anillos 1', 2001, 490, 0);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (32, 'El Señor de los Anillos 2', 2002, 495, 0);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (33, 'El Señor de los Anillos 3', 2003, 557, 0);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (34, 'Peaky Blinders', 2013, 5050, 6);

SAVEPOINT Nuevas_series_1;

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (35, 'Sex Education', 2019, 4200, 4);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (36, 'Black Mirror', 2011, 3350, 6);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (37, 'The Office', 2005, 4600, 9);

INSERT INTO peliculasyseries (ID_PeliculaSerie, Titulo, Año, Duracion, Cantidad_Temporadas)
VALUES (38, 'Breaking Bad', 2008, 3600, 5);

SAVEPOINT Nuevas_series_2;

ROLLBACK TO SAVEPOINT Nuevas_series_1
/* Esta línea elimina el savepoint después de los primeros 4 registros insertados.
Podés ejecutar esta línea si querés deshacer las inserciones realizadas después de ese punto 
y volver al estado anterior de la base de datos antes de la inserción de "Sex Education", 
"Black Mirror", "The Office" y "Breaking Bad".*/

Use netflix; 
select * from peliculasyseries; 