drop database if exists pruebaDic;
create database pruebaDic;
CREATE USER IF NOT EXISTS 'pruebaDic'@'%' IDENTIFIED BY 'pruebaDic';
grant all privileges on pruebaDic.* to 'pruebaDic';

create table pruebaDic.user (
	username VARCHAR(50) primary key,
	password VARCHAR(50)
);
insert into pruebaDic.user (username, password) values ("inma","inma");
insert into pruebaDic.user (username, password) values ("pepe","pepe");
insert into pruebaDic.user (username, password) values ("juan","juan");
insert into pruebaDic.user (username, password) values ("rocio","rocio");
insert into pruebaDic.user (username, password) values ("maria","maria");

create table pruebaDic.train (
	id INT primary key,
	origin VARCHAR(100),
	final VARCHAR(100),
	price DECIMAL(6,2),
	date DATE,
	numbertickets INT
);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (1, 'Jubao', 'Palos de Ferreira', 561.79, '2022/06/30', 26);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (2, 'Niort', 'Youshan', 378.28, '2022/01/18', 70);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (3, 'Mahuta', 'Mollas', 129.53, '2022/06/03', 59);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (4, 'Qiakeri', 'Nakhon Nayok', 76.28, '2022/05/05', 70);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (5, 'Datarnangka', 'Debre Sina', 776.32, '2022/10/02', 42);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (6, 'Candating', 'Sinop', 887.96, '2022/09/09', 41);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (7, 'Huangzhuang', 'Bungkulan', 877.89, '2022/05/10', 89);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (8, 'Hwawon', 'Cabalaoangan', 720.44, '2022/07/23', 46);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (9, 'Esquina', 'Bidya', 764.12, '2022/03/19', 84);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (10, 'Surman', 'Orlová', 891.92, '2022/01/29', 45);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (11, 'Argayash', 'Lashkar Gah', 108.76, '2022/12/01', 27);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (12, 'Bojonglarang', 'Kulonkali', 153.52, '2022/05/22', 87);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (13, 'San Miguel', 'Sogod', 63.5, '2022/08/06', 68);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (14, 'Laborie', 'Komsomolsk-on-Amur', 382.63, '2022/04/28', 91);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (15, 'Minh Luong', 'Dongcheng', 927.94, '2022/04/25', 72);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (16, 'Krojo', 'Zblewo', 726.15, '2022/08/28', 23);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (17, 'Sasovo', 'Wingham', 431.56, '2022/10/27', 16);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (18, 'Vulcan', 'Jiangkou', 924.25, '2022/03/21', 76);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (19, 'Novosil’', 'Roshnik', 889.52, '2022/01/25', 48);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (20, 'Yangiqo‘rg‘on', 'Panjerrejo', 103.61, '2022/02/05', 65);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (21, 'Sucre', 'Lázne Kynzvart', 727.65, '2022/06/26', 86);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (22, 'Tanza', 'Dachun', 873.0, '2022/06/01', 69);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (23, 'Morelos', 'Ouanaminthe', 307.56, '2022/09/02', 1);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (24, 'Tournan-en-Brie', 'Caijiagang', 36.57, '2022/09/23', 80);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (25, 'Nong Ruea', 'Bihac', 69.52, '2022/01/01', 34);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (26, 'Lisala', 'Lanyi', 543.15, '2022/07/31', 77);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (27, 'Dve Mogili', 'Jardín América', 134.13, '2022/08/11', 95);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (28, 'Punsu', 'Courtaboeuf', 137.12, '2022/04/09', 95);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (29, 'Kapakabisa', 'Rolante', 936.98, '2022/11/04', 46);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (30, 'Changsha', 'Raas', 442.5, '2022/05/14', 36);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (31, 'Bimbo', 'Javhlant', 712.8, '2022/03/17', 28);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (32, 'Tsukuba', 'Milano', 380.16, '2022/09/24', 37);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (33, 'Dejen', 'Suai', 399.51, '2022/04/03', 86);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (34, 'Smach Mean Chey', 'Datong', 345.43, '2022/02/12', 27);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (35, 'Itapetininga', 'Nanping', 245.69, '2022/04/11', 26);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (36, 'Magatos', 'Eirol', 730.81, '2022/03/13', 18);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (37, 'Zarrin Shahr', 'Kihnio', 587.0, '2022/07/23', 78);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (38, 'Masalovka', 'San Mateo', 322.61, '2022/03/08', 95);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (39, 'Rejoyoso', 'Los Pinos', 532.8, '2022/11/01', 59);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (40, 'San Ignacio', 'Placencia', 636.18, '2022/10/09', 88);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (41, 'Ligatne', 'Tílisos', 373.87, '2021/12/15', 41);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (42, 'Toshkivka', 'Solna', 621.22, '2022/10/09', 75);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (43, 'Fumin', 'Nsok', 343.0, '2022/03/07', 36);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (44, 'Hengjian', 'Casais Baleal', 505.58, '2022/06/02', 13);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (45, 'Moscavide', 'Limín Khersonísou', 329.74, '2022/10/14', 96);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (46, 'Tegalrejo', 'Guaíba', 360.43, '2022/06/22', 52);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (47, 'Pa Kham', 'Cho-airong', 518.31, '2022/11/17', 88);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (48, 'Ladushkin', 'Luoyuan', 955.63, '2022/06/21', 54);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (49, 'Qizhen', 'Encontrados', 351.71, '2022/01/01', 70);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (50, 'La Fortuna', 'Bluff', 561.28, '2022/11/10', 55);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (51, 'São Caetano do Sul', 'Mbigou', 668.66, '2022/10/10', 24);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (52, 'Kota Kinabalu', 'Mambago', 642.15, '2022/08/22', 25);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (53, 'Gaoshi', 'Chengnan', 604.61, '2022/05/02', 49);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (54, 'Shuangqiao', 'Alebtong', 616.01, '2022/09/21', 61);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (55, 'Panyam', 'Heyan', 470.61, '2022/03/29', 9);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (56, 'Karolino-Buhaz', 'San Miguel', 722.53, '2022/08/11', 67);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (57, 'Kingston', 'Subrag', 707.95, '2022/07/19', 47);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (58, 'Niyang', 'Erfangping', 141.23, '2022/10/25', 23);
insert into pruebaDic.train (id, origin, final, price, date, numbertickets) values (59, 'Lezhë', 'Petite Anse', 245.5, '2022/07/08', 69);


create table pruebaDic.travels (
	iduser varchar(50)  references pruebaDic.user(username),
	idtravel INT references pruebaDic.train (id),
	seat INT,
    primary key(iduser, idtravel)
);

INSERT INTO pruebaDic.`travels` (`iduser`, `idtravel`, `seat`) VALUES
("inma", 3, 52),
("inma", 10, 47),
("inma", 11, 53),
("inma", 14, 19),
("inma", 24, 59),
("inma", 25, 75),
("inma", 39, 11),
("inma", 44, 72),
("inma", 45, 98),
("inma", 48, 99),
("inma", 53, 29),
("pepe", 15, 52),
("pepe", 16, 47),
("pepe", 18, 77),
("pepe", 20, 85),
("pepe", 26, 75),
("pepe", 39, 96),
("pepe", 43, 76),
("pepe", 47, 26),
("pepe", 58, 22),
("juan", 14, 18),
("juan", 15, 15),
("juan", 16, 80),
("juan", 23, 85),
("juan", 27, 16),
("juan", 39, 95),
("juan", 40, 63),
("juan", 43, 3),
("juan", 44, 18),
("juan", 57, 62),
("maria", 1, 100),
("maria", 3, 23),
("maria", 6, 18),
("maria", 16, 54),
("maria", 20, 55),
("maria", 21, 35),
("maria", 26, 72),
("maria", 27, 93),
("maria", 40, 74),
("maria", 51, 8),
("maria", 52, 69),
("maria", 53, 32),
("maria", 58, 72),
("inma", 1, 23),
("inma", 12, 13),
("inma", 32, 2),
("inma", 34, 67),
("inma", 52, 24);


