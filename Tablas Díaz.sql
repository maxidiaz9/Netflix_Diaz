create database	NETFLIX;

USE NETFLIX;

CREATE table PeliculasYSeries (

ID_PeliculaSerie INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Titulo varchar (100) NOT NULL,
Año INT NOT NULL,
Duracion INT NOT NULL,
Cantidad_Temporadas INT);

USE NETFLIX;

create table Usuarios (
Id_Usuario INT NOT NULL auto_increment primary key,
NOMBRE TEXT (40) NOT NULL,
Correo_electronico TEXT (40) NOT NULL,
Tipo_de_plan TEXT (40) NOT NULL,
Forma_de_pago TEXT (40) NOT NULL,
DNI INT NOT NULL);

CREATE TABLE Género (
ID_Género INT NOT NULL auto_increment primary key,
Nombre TEXT (40)
);

use NETFLIX;

CREATE TABLE Calificación (
    ID_Calificación INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Puntuación TINYINT,
    Id_Usuario INT,
    ID_PeliculaSerie INT,
    FOREIGN KEY (Id_Usuario) REFERENCES Usuarios (Id_Usuario),
    FOREIGN KEY (ID_PeliculaSerie) REFERENCES PeliculasYSeries (ID_PeliculaSerie)
    );

use NETFLIX;

Create table Historial_de_Visualización (
ID_Recomendación INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fecha_de_recomendación date,
Id_Usuario INT,
ID_PeliculaSerie INT,
FOREIGN KEY (Id_Usuario) REFERENCES Usuarios (Id_Usuario),
FOREIGN KEY (ID_PeliculaSerie) REFERENCES PeliculasYSeries (ID_PeliculaSerie)
);

use NETFLIX;
    
Create table Recomendación (
ID_Visualización INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fecha_visualización date,
Id_Usuario INT,
ID_PeliculaSerie INT,
FOREIGN KEY (Id_Usuario) REFERENCES Usuarios (Id_Usuario),
FOREIGN KEY (ID_PeliculaSerie) REFERENCES PeliculasYSeries (ID_PeliculaSerie)
);

