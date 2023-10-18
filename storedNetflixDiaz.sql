Use Netflix;
-- Crear el procedimiento almacenado para ordenar una tabla
DELIMITER //

CREATE PROCEDURE OrdenarTabla(
    IN tabla VARCHAR(50), -- Nombre de la tabla a ordenar
    IN campoOrdenamiento VARCHAR(50), -- Campo por el cual ordenar
    IN orden VARCHAR(10) -- 'asc' para ascendente, 'desc' para descendente
)
BEGIN
    -- Construir la consulta SQL dinámica
    SET @sql = CONCAT('SELECT * FROM ', tabla, ' ORDER BY ', campoOrdenamiento, ' ', orden);
    
    -- Preparar y ejecutar la consulta SQL dinámica
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

Use netflix;
-- Crear el procedimiento almacenado para insertar o eliminar registros en Netflix
DELIMITER //

CREATE PROCEDURE InsertarEliminarRegistroNetflix(
    INOUT parametro INT, -- Parámetro para insertar o eliminar
    IN nombreTabla VARCHAR(50) -- Nombre de la tabla
)
BEGIN
    IF parametro IS NULL THEN
        -- Inserción de registros (Modificar los valores según la tabla)
        INSERT INTO nombreTabla (NOMBRE, Correo_electronico, Tipo_de_plan, Forma_de_pago, DNI)
        VALUES ('NuevoUsuario', 'correo@ejemplo.com', 'PlanEjemplo', 'PagoEjemplo', '123456789');
    ELSE
        -- Eliminación de registros (Modificar la condición según la tabla)
        DELETE FROM nombreTabla
        WHERE Id_Usuario = parametro; -- Cambia 'Id_Usuario' al nombre de la columna de ID apropiada
    END IF;
END //
DELIMITER ;
