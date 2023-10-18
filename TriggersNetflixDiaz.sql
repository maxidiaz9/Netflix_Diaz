Use netflix; 

-- Crear el trigger para registrar calificaciones
DELIMITER //

CREATE TRIGGER RegistrarCalificacion
AFTER INSERT ON calificación
FOR EACH ROW
BEGIN
    INSERT INTO RegistroCalificaciones (Id_Usuario, ID_PeliculaSerie, Puntuación, Fecha)
    VALUES (NEW.ID_Usuario, NEW.ID_PeliculaSerie, NEW.Puntuación, NOW());
END;
//
DELIMITER ;


-- Crear el trigger para recomendaciones automáticas
DELIMITER //

CREATE TRIGGER GenerarRecomendacion
AFTER INSERT ON calificación
FOR EACH ROW
BEGIN
    IF NEW.Puntuación = 1 THEN
        INSERT INTO Recomendacion (Id_Usuario, ID_PeliculaSerie, Fecha_de_recomendación)
        VALUES (NEW.Id_Usuario, NEW.ID_PeliculaSerie, NOW());
    END IF;
END;
//
DELIMITER ;

-- Crear el trigger para registrar recomendaciones
DELIMITER //

CREATE TRIGGER RegistrarRecomendacion
AFTER INSERT ON recomendación
FOR EACH ROW
BEGIN
    INSERT INTO recomendación (Id_Usuario, ID_PeliculaSerie, Fecha_visualización)
    VALUES (NEW.Id_Usuario, NEW.ID_PeliculaSerie, NEW.Fecha_visualización);
END;
//
DELIMITER ;

-- Crear el trigger para actualizar el promedio de calificaciones
DELIMITER //

CREATE TRIGGER ActualizarPromedioCalificaciones
AFTER INSERT ON calificación
FOR EACH ROW
BEGIN
    UPDATE peliculasyseries
    SET PromedioCalificaciones = (
        SELECT AVG(Puntuación)
        FROM calificación
        WHERE ID_PeliculaSerie = NEW.ID_PeliculaSerie
    )
    WHERE ID_PeliculaSerie = NEW.ID_PeliculaSerie;
END;
//
DELIMITER ;