/*
   forma de hacer comentarios
   en varias líneas
   Creaación de la base de datos para hacer practica de las consultas
*/
CREATE DATABASE IF NOT EXISTS Consultas;

-- Seleccionamos Consultas como BD predeterminada
USE consultas;

-- Se crea la tabla donde almacenaremos la información

CREATE TABLE IF NOT EXISTS tblUsuario(
Idx int PRIMARY KEY AUTO_INCREMENT,
    Usuario VARCHAR(30),
    Nombre VARCHAR(30),
    Genero VARCHAR(1),
    Nivel TINYINT,
    Email VARCHAR(50),
    Telefono VARCHAR(20),
    Marca VARCHAR(20),
    Compania VARCHAR(20),
    Saldo FLOAT,
    Activo BOOLEAN
);

-- Insertamos los datos a guardar en la tabla

INSERT INTO tblUsuario VALUES
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

/*
Responda las siguientes preguntas:
1. Listar los nombres de los usuarios
*/
select Nombre
from tblUsuario;

-- 2. Listar todas las columnas de la tabla usuarios.
select *
from tblUsuario;

-- 3. Calcular el saldo máximo de los usuarios de sexo femenino.
select max(saldo)
from tblUsuario
where Genero = "M";

-- 4. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY.
select Nombre, Telefono
from tblUsuario
where Marca in ("NOKIA" ,"BLACKBERRY", "SONY");

-- 5. Contar los usuarios sin saldo o inactivos.
select Count(idx)
from tblUsuario
where Saldo = 0 or not activo;

-- 6. Listar el login de los usuarios con nivel 1, 2 o 3
select Usuario
from tblUsuario
where Nivel in (1,2,3);
-- 7. Listar los números de teléfono con saldo menor o igual a 300
select Telefono
from tblUsuario
where saldo <= 300;

-- 8. Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
select sum(saldo)
from tblUsuario
Where Compania = "NEXTEL";



-- 9. Contar el número de usuarios por compañía telefónica
select count(*)
From tlbUsuario
Group by compania;

-- 10. Contar el número de usuarios por nivel

Select Nivel, count(*)
from tblUsuario
group by Nivel;

-- 11. Listar el login de los usuarios con nivel 2
select Usuario
from tblUsuario
where

-- 12. Mostrar el email de los usuarios que usan gmail
-- 13. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
