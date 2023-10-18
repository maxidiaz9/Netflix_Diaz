use netflix; 

-- Función 1: Obtener Nombre de Usuario por ID
DELIMITER //
CREATE FUNCTION ObtenerNombreUsuarioPorID(idUsuario INT) RETURNS VARCHAR(255) DETERMINISTIC

BEGIN
    DECLARE nombreUsuario VARCHAR(255);
    SELECT NOMBRE INTO nombreUsuario
    FROM usuarios
    WHERE Id_Usuario = idUsuario;
    RETURN nombreUsuario;
END //
DELIMITER ;

-- Función 2: Obtener Duración Total de Series por Género
DELIMITER //
CREATE FUNCTION ObtenerDuracionTotalSeriesPorGenero(generoID INT) RETURNS TIME DETERMINISTIC
BEGIN
    DECLARE duracionTotal TIME;
    SELECT SEC_TO_TIME(SUM(Duracion)) INTO duracionTotal
    FROM peliculasyseries ps
    JOIN género g ON ps.ID_Género = g.ID_Género
    WHERE g.ID_Género = generoID AND ps.Cantidad_Temporadas > 0;
    RETURN duracionTotal;
END //
DELIMITER ;
