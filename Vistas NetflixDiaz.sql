use netflix;

CREATE VIEW Vista_PeliculasSeriesPorGenero AS
SELECT g.Nombre AS Genero,
       ps.Titulo AS Titulo,
       ps.Año AS Anio,
       ps.Cantidad_Temporadas AS Temporadas
FROM género g
JOIN peliculasyseries ps ON g.ID_Género = ps.ID_PeliculaSerie;


USE netflix;

CREATE VIEW Vista_HistorialDeVisualizacion AS
SELECT u.Nombre AS Usuario,
       ps.Titulo AS Titulo,
       hv.Fecha_visualización AS Fecha
FROM usuarios u
JOIN recomendación hv ON u.Id_Usuario = hv.Id_Usuario
JOIN peliculasyseries ps ON hv.ID_PeliculaSerie = ps.ID_PeliculaSerie;


use netflix;
CREATE VIEW Vista_Calificaciones AS
SELECT u.Nombre AS Usuario,
       ps.Titulo AS Titulo,
       c.Puntuación AS Calificación
FROM usuarios u
JOIN calificación c ON u.Id_Usuario = c.Id_Usuario
JOIN peliculasyseries ps ON c.ID_PeliculaSerie = ps.ID_PeliculaSerie;


Use Netflix;
CREATE VIEW Vista_RecomendacionesParaUsuarios AS
SELECT u.Nombre AS Usuario,
       ps.Titulo AS Recomendacion,
       r.Fecha_visualización AS Fecha
FROM usuarios u
JOIN recomendación r ON u.Id_Usuario = r.Id_Usuario
JOIN peliculasyseries ps ON r.ID_PeliculaSerie = ps.ID_PeliculaSerie;

Use Netflix;
CREATE VIEW Vista_ConsumoMensualUsuariosPremium AS
SELECT u.Nombre AS Usuario,
       MONTH(hv.Fecha_de_recomendación) AS Mes,
       COUNT(*) AS NumeroVistas
FROM usuarios u
JOIN Historial_de_visualización hv ON u.Id_Usuario = hv.Id_Usuario
WHERE u.Tipo_de_plan = 'Premium'
GROUP BY u.Nombre, Mes;
