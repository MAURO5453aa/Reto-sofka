create database concurso_preguntas;
use concurso_preguntas;

create table categorias(
	Id int primary key,
    nombre varchar(50),
    dificultad int
);

create table jugadores(
    nickName nvarchar(100) primary key,
    nombre varchar(50),
    puntaje int
);

create table juegos(
	Id int auto_increment primary key,
    nickNameJugador nvarchar(100),
    rondaMaxima int,
    puntajeMaximo int,
    acumulado int,
    finalForzado boolean
);


create table preguntas(
	Id int primary key,
    id_categoria int,
    enunciado nvarchar(300),
    opcion1 nvarchar(100),
    opcion2 nvarchar(100),
    opcion3 nvarchar(100),
    opcion4 nvarchar(100),
    correcta int
);

alter table preguntas add foreign key(id_categoria) references categorias(Id);
alter table juegos add foreign key(nickNameJugador) references jugadores(nickName);

insert into categorias (Id, nombre, dificultad) values (1, "Arte", 1),(2, "Geografia", 2),(3, "Historia", 3),(4, "Cultura general", 4),(5, "Entretenimiento", 5);
insert into preguntas (Id, id_categoria, enunciado, opcion1, opcion2, opcion3, opcion4, correcta) values
(1, 1, "¿Quién escribió 'Azazel'?", "Isaac Asimov"," Salvador Dalí","Dante Alighieri","Alejandro MAcno ", 1),
(2, 1, "¿De qué género es la obra 'Luces de Bohemia'?", "Musica", "Drama", "Teatro", "Comedia", 3,
(3, 1, "¿En qué año se suicidó Van Gogh?", "1236","1996","1890","1860",3),
(4, 1, "¿Cuántos anillos fueron creados por Sauron para los Señores Enanos en el Señor de los Anillos?", "7","8","6","5",1),
(5, 1, "¿Qué nota musical hay entre re y fa?","Do","La","si","Mi", 4),

(6,2, "¿En qué provincia se encuentra Elche?", "Fracia","Cataluña","Alicante","Madrid",3),
(7,2, "¿Dónde se encuentra el río Nilo?", "Asia", "Africa", "America ", "Europa", 2),
(8,2, "¿Cuántas estrellas tiene la bandera de China? ", "6","9"," 5","20.",4),
(9,2, "¿En qué país está Poitiers?", "Francia","Alejandria","España","Londres",1),
(10,2, "¿Por cuanta agua está cubierta la Tierra?", "100%","60.7%","78%","70.7%",4),

(11,3, "Qué civilización antigua tenía faraones como gobernantes?", "Mesopotamia","Egipto","Roma","Grecia", 2),
(12,3, "¿Cuándo se produjo la Batalla de Las Piedras? ", "1811","1489)","2000)","1985)",1),
(13,3, "¿Cuándo se viaja por primera vez al espacio?", "1961","1960 ","1899","1965",1),
(14,3, "¿A qué diosa está dedicado el Partenón?", "Eztia","Atenea","Leona","Selene",2),
(15,3, "¿Quién pintó la bóveda de la capilla sixtina?", "Miguel Angel","Boticelli","Donatello","Leonardo da Vinci",1),

(16,4, "¿Cuál es el país más grande y el más pequeño del mundo?", "Canadá y Mónaco","Rusia y Vaticano","China y Nauru","India y San Marino",2),
(17,4, "¿Cuál es la montaña más alta del continente americano?", "Pico Neblina","Aconcagua","Pico Bolívar","Monte Everest",2),
(18,4, "¿En qué país de África el español es la lengua oficial?", "Cabo Verde","Guinea ecuatorial","Liberia","Costa de Marfil",2),
(19,4, "¿Cuáles de estas construcciones famosas quedan en los Estados Unidos?", "Dancing House, 30 st Mary Axe, La Casa Blanca","Estatua de la Libertad, puente Golden Gate, Empire State Building","La ciudad prohibida, la Sagrada Familia, el Panteón","Lincoln Memorial, Sydney Opera House, Burj Khalifa",2),
(20,4, "La toma de Granada fue en el año..", "1566","1492","1600","1960",2),

(21,5, "¿Qué fruta es la casa de Bob Esponja?", "Piña","naranja","sandia","limon", 1),
(22,5, "¿En qué año se estrenó la película de Disney Pinocho?" "1940", "1569","1963","2000","1999",1),
(23,5, "¿Qué es el Jpop?", "Pop japones ","Bachata","kpop","pop",1),
(24,5, "¿En qué año murió Marilyn Monroe", "1899","2000","1962","1899",3),
(25,5, "¿Cuántos discos de estudio hizo Queen con Freddie Mercury?", "5","6","20","16",4);