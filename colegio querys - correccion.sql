create database universidad;
show databases;
use universidad;
#Aqui lo que hacemos es crear la base de datos para eso colocamos "create database"
#despues ponemos "show database" para ver si que esta en la carpeta de base de datos
#y despues le damos a "use" y la base datos que creamos

CREATE TABLE padres_y_madres (
    id INT NOT NULL AUTO_INCREMENT,
    rut INT NOT NULL,
    nombre CHAR(25),
    apellido CHAR(25),
    direccion VARCHAR(45),
    edad INT NOT NULL,
    correo VARCHAR(45),
    celular INT NOT NULL,
    PRIMARY KEY (id)
);
#Ahora creamos una tabla y para hacerlo ponemos "create table"
#y le ponemos los datos en la tabla
#y ahora le ponemos la "PRIMARY KEY"

create table alumnos (
	id int not null auto_increment,
rut int not null,
nombre char(25),
apellido char(25),
correo varchar(45),
direccion varchar(45),
celular int not null,
edad int not null,													
PRIMARY KEY (id),
foreign key (edad) references padres_y_madres(id)
);
#Ahora hacemos lo mismo pero agregando la "foreign key"
#despues le colocamos un dato de la tabla y ponemos "reference"
#para conectarlo con otra tabla

create table alumnas (
	id int not null auto_increment,
rut int not null,
nombre char(25),
apellido char(25),
correo varchar(45),
direccion varchar(45),
celular int not null,
edad int not null,											
PRIMARY KEY (id),
foreign key (edad) references padres_y_madres(id)
);
#creamos una tercera tabla y hacemos lo mismo que en la anterior

rename table padres_y_madres to papá_y_mamá;
rename table alumnos to alumno;
rename table alumnas to alumna;
#despues ponemos "rename" y "to" table para cambiar el nombre de la tabla

insert into papá_y_mamá(rut, nombre, apellido, numero_de_celular, edad)
values 
	('21.555.321-9', 'Mariano', 'Cortez', '+56_9_2143_1213', '30'),
    ('87.345.645-5', 'Morgan', 'Perez', '+56_9_6854_3344', '32'),
	('98.212.754-1', 'Mandy', 'sanhueza', '+56_9_5432_6865', '37'),
    ('36.765.987-3', 'Ana', 'Maldonado', '+56_9_3224,1134', '40');

insert into alumno(rut, nombre, apellido, numero_de_celular, edad)
values
	('49.432.543-4', 'Juan', 'Cortez', '+56_9_4576_9873', '17'),
    ('12.532.675-8', 'Daniel', 'Perez', '+56_9_3845_7690', '20'),
	('56.216.748-7', 'Hector', 'sanhueza', '+56_9_3456_9012', '18'),
    ('98.232.432-2', 'Carl', 'Maldonado', '+56_9_3418_8609', '18');
    
insert into alumna(rut, nombre, apellido, numero_de_celular, edad)
values
	('78.354.132-7', 'Sindy', 'Cortez', '+56_9_5498_4853', '18'),
    ('82.546.975-2', 'Milenka', 'Perez', '+56_9_1765_2324', '17'),
    ('96.435.678-9', 'Violeta', 'sanhueza', '+56_9_9872_4875', '20'),
    ('34.654.678-4', 'Vanessa', 'Maldonado', '+56_9_2341_6504', '17');
#ahora ponemos "insert into" y el nombre de la tabla y colocamos parentecis para agregar info a la tabla
#despues ponemos "values" y despues colocamos parentecis y ponemos la informacion.