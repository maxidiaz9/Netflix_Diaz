-- Crear el usuario 'usuario_lectura' con contraseña 'contraseña_lectura'
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contraseña_lectura';

-- Asignar permisos de solo lectura a todas las tablas de la base de datos 'netflix'
GRANT SELECT ON netflix.* TO 'usuario_lectura'@'localhost';

-- No permitir al usuario eliminar registros
REVOKE DELETE ON netflix.* FROM 'usuario_lectura'@'localhost';

-- Crear el usuario 'usuario_modificacion' con contraseña 'contraseña_modificacion'
CREATE USER 'usuario_modificacion'@'localhost' IDENTIFIED BY 'contraseña_modificacion';

-- Asignar permisos de lectura, inserción y modificación a todas las tablas de la base de datos 'netflix'
GRANT SELECT, INSERT, UPDATE ON netflix.* TO 'usuario_modificacion'@'localhost';

-- No permitir al usuario eliminar registros
REVOKE DELETE ON netflix.* FROM 'usuario_modificacion'@'localhost';
