
create database db_auto;

use db_auto;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- Create category and type tables

create table cars_categories(
	car_category_id tinyint unsigned not null primary key auto_increment,
    car_category_name char(50) not null
);

insert into cars_categories
values (null, "passenger"),
	   (null, "truck"),
	   (null, "mototechnics"),
	   (null, "special technique"),
	   (null, "bus"),
	   (null, "trailer"),
	   (null, "water technology");

create table cars_types(
	car_type_id tinyint unsigned not null primary key auto_increment,
    car_type_name char(50) not null
);

insert into cars_types
values (null, "flatbed"),
	   (null, "dump"),
	   (null, "autocyst"),
	   (null, "tug"),
	   (null, "garbage"),
	   (null, "motorcycle"),
	   (null, "moped"),
	   (null, "tricycle"),
	   (null, "snowmobile"),
	   (null, "truck crane"),
	   (null, "auto loader"),
	   (null, "tractor"),
	   (null, "hydrocycle"),
	   (null, "boat"),
	   (null, "yacht");

create table categories_types(
	category_type_id int unsigned not null primary key auto_increment,
    car_category_id tinyint unsigned,
    car_type_id tinyint unsigned,
    foreign key (car_category_id) 
    references cars_categories(car_category_id) 
    on delete set null 
    on update cascade,
    foreign key (car_type_id)
    references cars_types(car_type_id)
    on delete set null 
    on update cascade
);

insert into categories_types 
values (null, 1, null),
	   (null, 2, 1),
	   (null, 2, 2),
	   (null, 2, 3),
	   (null, 2, 4),
	   (null, 2, 5),
	   (null, 3, 6),
	   (null, 3, 7),
	   (null, 3, 8),
	   (null, 3, 9),
	   (null, 4, 10),
	   (null, 4, 11),
	   (null, 4, 12),
	   (null, 5, null),
	   (null, 6, null),
	   (null, 7, 13),
	   (null, 7, 14),
	   (null, 7, 15);

-- --------------------------------------------------

-- Create brands and models tables

create table car_brands(
	brand_id int unsigned not null primary key auto_increment,
    brand_name char(50) not null unique
);

insert into car_brands 
values (null, "Mercedes-Bendz"),
	   (null, "Toyota"),
	   (null, "Nissan"),
	   (null, "BMW"),
	   (null, "Hyundai");

create table car_models(
	model_id int unsigned not null primary key auto_increment,
    model_name char(50) not null unique
);

insert into car_models 
values (null, '124'),
	   (null, '170'),
	   (null, '180'),
	   (null, '190'),
	   (null, '200'),
	   (null, '220'),
	   (null, '230'),
	   (null, 'A 180'),
	   (null, 'B 200'),
	   (null, 'B 250'),
	   (null, 'B Electric drive'),
	   (null, 'C 180'),
	   (null, 'C 240'),
	   (null, 'CL 180'),
	   (null, 'CL 230'),
	   (null, 'CLA 180'),
	   (null, 'CLA 200'),
	   (null, 'CLC 350'),
	   (null, 'CLS 220'),
	   (null, 'CLS 250'),
	   (null, 'CLS 300'),
	   (null, 'Conecto'),
	   (null, 'E 230'),
	   (null, 'E 36 AMG'),
	   (null, 'Econic'),
	   (null, 'G 230'),
	   (null, 'G 300'),
	   (null, 'GLA 200'),
	   (null, 'GLC 220'),
	   (null, 'GLE 500'),
	   (null, 'R 500'),
	   (null, 'S 500'),
	   (null, 'SL 500');
       
insert into car_models 
values (null, '4-runner'),
	   (null, 'Aristo'),
	   (null, 'Belta'),
	   (null, 'Caldina'),
	   (null, 'Camry'),
	   (null, 'Century'),
	   (null, 'Corolla'),
	   (null, 'Curren'),
	   (null, 'Estima'),
	   (null, 'Fortuner'),
	   (null, 'GT86'),
	   (null, 'Hilux'),
	   (null, 'Ipsum'),
	   (null, 'IQ'),
	   (null, 'Land Cruiser'),
	   (null, 'Matrix'),
	   (null, 'Optimo'),
	   (null, 'Previa'),
	   (null, 'Sienta'),
	   (null, 'Tundra'),
	   (null, 'Vista'),
	   (null, 'Vitz'),
	   (null, 'Will'),
	   (null, 'Windom'),
	   (null, 'Wish'),
	   (null, 'Yaris');
       
insert into car_models 
values (null, 'AD'),
	   (null, 'Almera'),
	   (null, 'Altima'),
	   (null, 'Armada'),
	   (null, 'Atlas'),
	   (null, 'Cargo'),
	   (null, 'Cube'),
	   (null, 'Gloria'),
	   (null, 'Juke'),
	   (null, 'Largo'),
	   (null, 'Laurel'),
	   (null, 'March'),
	   (null, 'Maxima'),
	   (null, 'Maurano'),
	   (null, 'Patrol'),
	   (null, 'Pickup'),
	   (null, 'Primera'),
	   (null, 'Quest'),
	   (null, 'Rogue'),
	   (null, 'Safari'),
	   (null, 'Sentra'),
	   (null, 'Serena'),
	   (null, 'Skyline'),
	   (null, 'Sunny'),
	   (null, 'Teana'),
	   (null, 'Terrano'),
	   (null, 'Tiida'),
	   (null, 'Titan'),
	   (null, 'Urvan'),
	   (null, 'Versa'),
	   (null, 'X-trail'),
	   (null, 'Xterra');
       
insert into car_models 
values (null, '114'),
	   (null, '120'),
	   (null, '130'),
	   (null, '140'),
	   (null, '320'),
	   (null, '430'),
	   (null, '520'),
	   (null, 'Active Hybrid 5'),
	   (null, '730'),
	   (null, 'Active Hybrid 7'),
	   (null, 'C 650 GT'),
	   (null, 'F 700 GS'),
	   (null, 'F 800 GS'),
	   (null, 'F 800 GT'),
	   (null, 'G 130 GS'),
	   (null, 'i3'),
	   (null, 'i4'),
	   (null, 'i7'),
	   (null, 'i8'),
	   (null, 'K 1600 GTL'),
	   (null, 'M1'),
	   (null, 'M2'),
	   (null, 'M3'),
	   (null, 'M4'),
	   (null, 'M5'),
	   (null, 'M6'),
	   (null, 'M8'),
	   (null, 'R nineT'),
	   (null, 'X1'),
	   (null, 'X2'),
	   (null, 'X3'),
	   (null, 'X4'),
	   (null, 'X5'),
	   (null, 'X6'),
	   (null, 'X7'),
	   (null, 'XM'),
	   (null, 'Z1'),
	   (null, 'Z2'),
	   (null, 'Z3'),
	   (null, 'Z4'),
	   (null, 'Z8');
       
insert into car_models 
values (null, 'Accend'),
	   (null, 'Atos'),
	   (null, 'Avante'),
	   (null, 'County'),
	   (null, 'Coupe'),
	   (null, 'Creta'),
	   (null, 'Elantra'),
	   (null, 'Excel'),
	   (null, 'Galloper'),
	   (null, 'Genesis'),
	   (null, 'Gold'),
	   (null, 'H 100'),
	   (null, 'H 200'),
	   (null, 'HD'),
	   (null, 'HL'),
	   (null, 'HSL'),
	   (null, 'ix20'),
	   (null, 'ix35'),
	   (null, 'Lontra'),
	   (null, 'Marcia'),
	   (null, 'NF'),
	   (null, 'Palisade'),
	   (null, 'Pony'),
	   (null, 'Porter'),
	   (null, 'Prime'),
	   (null, 'Santa Cruz'),
	   (null, 'Santa Fe'),
	   (null, 'Santamo'),
	   (null, 'Solaris'),
	   (null, 'Sonata'),
	   (null, 'Terracan'),
	   (null, 'Tiburon'),
	   (null, 'Trajet'),
	   (null, 'Tucson'),
	   (null, 'Veloster'),
	   (null, 'Veracruz'),
	   (null, 'XG 30'),
	   (null, 'XG 350');

create table brand_model(
	brand_model_id int unsigned not null primary key auto_increment,
    brand_id int unsigned,
    model_id int unsigned,
    foreign key (brand_id)
    references car_brands(brand_id)
    on delete set null
    on update cascade,
    foreign key (model_id)
    references car_models(model_id)
    on delete set null
    on update cascade
);

insert into brand_model
values (null, 1, 1),
	   (null, 1, 2),
	   (null, 1, 3),
	   (null, 1, 4),
	   (null, 1, 5),
	   (null, 1, 6),
	   (null, 1, 7),
	   (null, 1, 8),
	   (null, 1, 9),
	   (null, 1, 10),
	   (null, 1, 11),
	   (null, 1, 12),
	   (null, 1, 13),
	   (null, 1, 14),
	   (null, 1, 15),
	   (null, 1, 16),
	   (null, 1, 17),
	   (null, 1, 18),
	   (null, 1, 19),
	   (null, 1, 20),
	   (null, 1, 21),
	   (null, 1, 22),
	   (null, 1, 23),
	   (null, 1, 24),
	   (null, 1, 25),
	   (null, 1, 26),
	   (null, 1, 27),
	   (null, 1, 28),
	   (null, 1, 29),
	   (null, 1, 30),
	   (null, 1, 31),
	   (null, 1, 32),
	   (null, 1, 33);


insert into brand_model
values (null, 2, 34),
	   (null, 2, 35),
	   (null, 2, 36),
	   (null, 2, 37),
	   (null, 2, 38),
	   (null, 2, 39),
	   (null, 2, 40),
	   (null, 2, 41),
	   (null, 2, 42),
	   (null, 2, 43),
	   (null, 2, 44),
	   (null, 2, 45),
	   (null, 2, 46),
	   (null, 2, 47),
	   (null, 2, 48),
	   (null, 2, 49),
	   (null, 2, 50),
	   (null, 2, 51),
	   (null, 2, 52),
	   (null, 2, 53),
	   (null, 2, 54),
	   (null, 2, 55),
	   (null, 2, 56),
	   (null, 2, 57),
	   (null, 2, 58),
	   (null, 2, 59);
       
insert into brand_model
values (null, 3, 60),
	   (null, 3, 61),
	   (null, 3, 62),
	   (null, 3, 63),
	   (null, 3, 64),
	   (null, 3, 65),
	   (null, 3, 66),
	   (null, 3, 67),
	   (null, 3, 68),
	   (null, 3, 69),
	   (null, 3, 70),
	   (null, 3, 71),
	   (null, 3, 72),
	   (null, 3, 73),
	   (null, 3, 74),
	   (null, 3, 75),
	   (null, 3, 76),
	   (null, 3, 77),
	   (null, 3, 78),
	   (null, 3, 79),
	   (null, 3, 80),
	   (null, 3, 81),
	   (null, 3, 82),
	   (null, 3, 83),
	   (null, 3, 84),
	   (null, 3, 85),
	   (null, 3, 86),
	   (null, 3, 87),
	   (null, 3, 88),
	   (null, 3, 89),
	   (null, 3, 90),
	   (null, 3, 91);

insert into brand_model
values (null, 4, 92),
	   (null, 4, 93),
	   (null, 4, 94),
	   (null, 4, 95),
	   (null, 4, 96),
	   (null, 4, 97),
	   (null, 4, 98),
	   (null, 4, 99),
	   (null, 4, 100),
	   (null, 4, 101),
	   (null, 4, 102),
	   (null, 4, 103),
	   (null, 4, 104),
	   (null, 4, 105),
	   (null, 4, 106),
	   (null, 4, 107),
	   (null, 4, 108),
	   (null, 4, 109),
	   (null, 4, 110),
	   (null, 4, 111),
	   (null, 4, 112),
	   (null, 4, 113),
	   (null, 4, 114),
	   (null, 4, 115),
	   (null, 4, 116),
	   (null, 4, 117),
	   (null, 4, 118),
	   (null, 4, 119),
	   (null, 4, 120),
	   (null, 4, 121),
	   (null, 4, 122),
	   (null, 4, 123),
	   (null, 4, 124),
	   (null, 4, 125),
	   (null, 4, 126),
	   (null, 4, 127),
	   (null, 4, 128),
	   (null, 4, 129),
	   (null, 4, 130),
	   (null, 4, 131),
	   (null, 4, 132);
       
insert into brand_model
values (null, 5, 133),
	   (null, 5, 134),
	   (null, 5, 135),
	   (null, 5, 136),
	   (null, 5, 137),
	   (null, 5, 138),
	   (null, 5, 139),
	   (null, 5, 140),
	   (null, 5, 141),
	   (null, 5, 142),
	   (null, 5, 143),
	   (null, 5, 144),
	   (null, 5, 145),
	   (null, 5, 146),
	   (null, 5, 147),
	   (null, 5, 148),
	   (null, 5, 149),
	   (null, 5, 150),
	   (null, 5, 151),
	   (null, 5, 152),
	   (null, 5, 153),
	   (null, 5, 154),
	   (null, 5, 155),
	   (null, 5, 156),
	   (null, 5, 157),
	   (null, 5, 158),
	   (null, 5, 159),
	   (null, 5, 160),
	   (null, 5, 161),
	   (null, 5, 162),
	   (null, 5, 163),
	   (null, 5, 164),
	   (null, 5, 165),
	   (null, 5, 166),
	   (null, 5, 167),
	   (null, 5, 168),
	   (null, 5, 169),
	   (null, 5, 170);

-- --------------------------------------------------

-- price tpes

create table car_price_type (
	price_type_id tinyint unsigned not null auto_increment primary key,
	price_type_name char(50) not null
);

insert into car_price_type
values  (null, "AMD"),
  (null, "EUR"),
  (null, "USD"),
  (null, "RUB");

-- --------------------------------------------------

-- Car limber

create table car_limber (
	limber_id tinyint unsigned not null auto_increment primary key,
	limber_name char(50) not null
);

insert into car_limber
values  (null, "FWD"),
  (null, "RWD"),	
  (null, "AWD 4x4");

-- --------------------------------------------------

-- Cars' colors table 
create table cars_color(
	car_color_id tinyint unsigned not null primary key auto_increment,
    car_color_name char(40) not null
);

insert into cars_color 
values (null, "White"),
	   (null, "Black"),
	   (null, "Silver"),
	   (null, "Blue"),
	   (null, "Red"),
	   (null, "Green"),
	   (null, "Grey"),
	   (null, "Lightblue"),
	   (null, "Phink"),
	   (null, "Yellow"),
	   (null, "Gold"),
	   (null, "Brown"),
	   (null, "Purple"),
	   (null, "Orange"),
	   (null, "Other");

-- --------------------------------------------------

-- Car engine

create table car_engine(
	engine_id tinyint unsigned not null auto_increment primary key,	
    engine_name char(50) not null
);

insert into car_engine
values  (null, "AMD"),
             (null, "Gasoline"),
             (null, "Gas"),
             (null, "Diesel"),
             (null, "Hybrid"), 
             (null, "Electric"),
             (null, "Hydrogen"),
             (null, "No engine"),
             (null, "Gasoline and gas");

-- --------------------------------------------------
-- Car handlebar

create table car_handlebar(
	handlebar_id tinyint unsigned not null auto_increment primary key,
	hadlebar_name char(50) not null
);

  insert into car_handlebar
  values (null, "Right"),
        (null, "Left"),
        (null, "Transformed from right and left");
        
-- ------------------------------------------------


-- Car body 

create table car_body(
	body_id tinyint unsigned not null primary key auto_increment,
    body_name char(50) not null
);

insert into car_body
values (null, 'Hatchback'),
       (null, 'Universal'),
       (null, 'Coupe'),
       (null, 'Cabriolet'),
       (null, 'SUV'),
       (null, 'Pickup truck'),
       (null, 'Minivan'),
       (null, 'Van'),
       (null, 'Limousine'),
	   (null, 'Sedan');

-- ------------------------------------------------

-- Car interier color

create table car_interier_color(
	interier_color_id tinyint unsigned not null auto_increment primary key,
    interier_color_name char(50) not null
);


insert into car_interier_color
values (null, "White"),
	   (null, "Black"),
	   (null, "Silver"),
	   (null, "Blue"),
	   (null, "Red"),
	   (null, "Green"),
	   (null, "Grey"),
	   (null, "Lightblue"),
	   (null, "Phink"),
	   (null, "Yellow"),
	   (null, "Gold"),
	   (null, "Brown"),
	   (null, "Purple"),
	   (null, "Orange"),
	   (null, "Other");

-- ------------------------------------------------
-- Car address

create table car_address(
	address_id int unsigned not null primary key auto_increment,
	country char(50) not null,
    region char(50) not null,
    city char(50) not null
);

-- ------------------------------------------------

-- User 

create table sign_account(
 sign_account_id tinyint unsigned not null auto_increment primary key,
 sign_account_type char(50) not null
);

insert into sign_account 
values (null, 'Facebook'),
	   (null, 'Gmail');

create table user_status(
 user_status_id tinyint unsigned not null auto_increment primary key,
 user_status char(50) not null
);


insert into user_status
values (null, 'Uncorfimed'),
	   (null, 'Corfimed'),
       (null, 'Diller');

create table users (
	user_id int unsigned not null auto_increment primary key,
    user_name char(50) not null,
    user_surname char(50) not null,
    user_email char(50) not null,
    user_phone int unsigned,
    user_viber int unsigned,
    user_whatsapp int unsigned,
    user_status tinyint unsigned default 1,
    check ((user_phone >= 10000000) and (user_phone <= 99999999)),
    check ((user_viber >= 10000000) and (user_viber <= 99999999)),
    check ((user_whatsapp >= 10000000) and (user_whatsapp <= 99999999)),
    foreign key (user_status)
    references user_status(user_status_id)
    on delete set null
    on update cascade
);


insert into users 
values (null, 'John', 'Vardanyan', 'vardanyanJohn@gmail.com', 77777777, 77777777, 77777777, 2),
	   (null, 'Jesica', 'Vrderezyan', 'varderezyanHamov@mail.ru', 88888888, 88888888, 88888888, 2),
	   (null, 'Hayastan', 'Nairyan', 'ArmeniaTheBest@gmail.com', 99999999, 99999999, 99999999, 2),
	   (null, 'Evelina', 'Frangulyan', 'Evuk1995@gmail.com', 44653525, 44653525, 44653525, 2),
	   (null, 'Vazgen', 'Abrahamyan', 'Vzg48@gmail.com', null, null, null, null);

create table user_sign(
	id int unsigned not null auto_increment primary key,
    user_id int unsigned,
    sign_account_id tinyint unsigned,
    token varchar(1000),
    foreign key (user_id)
    references users(user_id)
    on delete set null
    on update cascade,
    foreign key (sign_account_id)
    references sign_account(sign_account_id)
    on delete set null
    on update cascade
);


insert into user_sign
values (null, 1, 1, 'sdn6876dcgf68768qew87676hjre'),
	   (null, 2, 2, 'adfhgh64596fafdsv8768er7te68'),
	   (null, 3, 2, '5tg48dsf6ger67gs86g7es8rgr8e'),
	   (null, 4, 1, 'fdsafgaerg654684er687ger68fe'),
	   (null, 5, 2, 'wekfherjfherfh684687wefw86ew');
-- ------------------------------------------------

-- Special version 

create table special_versions (
	version_id tinyint unsigned not null auto_increment primary key,
    version_name char(50) not null,
    version_price int unsigned not null,
    verion_range char(50)
);

insert into special_versions
values (null, "Top", 1000, "main page"),
       (null, "Urgent sale", 2000, "main page"),
       (null, "Search top", 1000, "Seatch page"),
       (null, "Underline", 500, "All pages"),
	   (null, "None", 0, "none");

-- --------------------------------------------------


-- Pay methods

create table pay_methods(
	method_id tinyint unsigned not null auto_increment primary key,
    method_name char(50) not null
);

insert into pay_methods
values (null, 'idram'),
	   (null, 'tellCell'),
	   (null, 'easy pay'),
	   (null, 'visa and master card'),
	   (null, 'arca card');

-- --------------------------------------------------

-- Messeges

create table users_messages (
  message_id bigint unsigned not null auto_increment primary key,
    message_sender int unsigned,
    message_receiver int unsigned,
    send_date date default (current_timestamp()),
    message_data varchar(1000) not null,
    foreign key (message_sender)
    references users(user_id)
    on delete set null
    on update cascade,
    foreign key (message_receiver)
    references users(user_id)
    on delete set null
    on update cascade
);

insert into users_messages
values (null, 5, 2, '2023-09-19 14:34:06', 'Exbayr ijnelu tex unes?'),
	   (null, 2, 5, '2023-09-19 14:34:40', 'Inchqan?'),
       (null, 5, 2, '2023-09-19 14:35:20', 'De mi 200-i kargi'),
	   (null, 2, 5, '2023-09-19 14:36:12', 'Che im axper chem texavorvum'),
       (null, 5, 2, '2023-09-19 14:37:20', 'Lav mersi');

insert into users_messages
values (null, 5, 1, '2023-09-19 14:34:06', 'Inch xndiner uni?'),
	   (null, 1, 5, '2023-09-19 14:35:00', 'Idealakav vichakum e, voch mi xndir chuni'),
       (null, 5, 1, '2023-09-19 14:36:28', 'Isk kosmetik xndirner kan?'),
	   (null, 1, 5, '2023-09-19 14:37:35', 'Mi hat poqr xaz ka, hetevi shitoki vra'),
       (null, 5, 1, '2023-09-19 14:39:28', 'Inchpes tesnem?'),
	   (null, 1, 5, '2023-09-19 14:52:48', 'Irikva koxm nuyn hamari vatsapin zangeq, cuyc tam'),
       (null, 5, 1, '2023-09-19 14:55:32', 'Lav mersi');
       
-- --------------------------------------------------

-- Create car table include only main attributes 

create table car_main(
	car_id bigint unsigned not null auto_increment primary key,
    category_type_id int unsigned,
    brand_model_id int unsigned,
    price int unsigned not null,    
	price_type_id tinyint unsigned,
    main_image_URL varchar(500), 
    car_date date,
    
    foreign key (category_type_id)
    references categories_types(category_type_id)
    on delete set null
    on update cascade,
    foreign key (brand_model_id)
    references brand_model(brand_model_id)
    on delete set null
    on update cascade,
    foreign key (price_type_id)
    references car_price_type(price_type_id)
    on delete set null
    on update cascade
);

--------------------------------------------------

-- Create car secondary attributes table
use db_auto;

create table car_secondary(
	car_secondary_id bigint unsigned not null auto_increment primary key,
    car_id bigint unsigned,
    body_id tinyint unsigned,
    engine_id tinyint unsigned, 
    handlebar_id tinyint unsigned,
    the_run int unsigned not null,
    color_id tinyint unsigned,
    interier_color_id tinyint unsigned,
    engine_size tinyint unsigned,
    horse_power int unsigned, 
    foreign key (car_id)
    references car_main(car_id)
    on delete set null
    on update cascade,
    foreign key (body_id)
    references car_body(body_id)
    on delete set null
    on update cascade,
    foreign key (engine_id)
    references car_engine(engine_id)
    on delete set null
    on update cascade,
    foreign key (handlebar_id)
    references car_handlebar(handlebar_id)
    on delete set null
    on update cascade,
    foreign key (color_id)
    references cars_color(car_color_id)
    on delete set null
    on update cascade,
    foreign key (interier_color_id)
    references car_interier_color(interier_color_id)
    on delete set null
    on update cascade,
    check (engine_size >= 2 and engine_size <= 70)
);

--------------------------------------------------

-- Create images table

create table cars_images(
	id bigint unsigned not null auto_increment primary key,
    car_id bigint unsigned,
    image_url varchar(500),
    foreign key (car_id)
    references car_main(car_id)
    on delete set null
    on update cascade
);

-- --------------------------------------------------

-- create car metadata

create table car_metadata(
	metadata_id bigint unsigned not null auto_increment primary key,
    car_id bigint unsigned,
    metada_data char(50),
    foreign key (car_id)
    references car_main(car_id)
    on delete set null
    on update cascade
);

insert into car_metadata
values (null, 1, 'ABS'),
	   (null, 1, 'TRC'),
	   (null, 1, 'ESP'),
	   (null, 1, 'Heating of mirrors'),
	   (null, 1, 'Heated seats'),
	   (null, 1, 'Light sensor'),
	   (null, 1, 'Cruise control'),
	   (null, 1, 'Anti-hijacking system'),
	   (null, 1, 'Central valve'),
	   (null, 1, 'Steering wheel adjustment'),
	   (null, 1, 'Luke'),
	   (null, 1, 'CD/MP3'),
	   (null, 1, 'Airbags'),
	   (null, 1, 'Leather hall'),
	   (null, 1, 'Climate control'),
	   (null, 1, 'Sound insulation');


insert into car_metadata
values (null, 2, 'ABS'),
	   (null, 2, 'Heated seats'),
	   (null, 2, 'Power mirrors'),
	   (null, 2, 'Cruise control');


insert into car_metadata
values (null, 3, 'ABS'),
	   (null, 3, 'TRC'),
	   (null, 3, 'EBD'),
	   (null, 3, 'ESP'),
	   (null, 3, 'Turbocharger'),
	   (null, 3, 'On-board computer'),
	   (null, 3, 'Heated mirrors'),
	   (null, 3, 'Heated seats'),
	   (null, 3, 'Electric mirrors'),
	   (null, 3, 'Rain sensor'),
	   (null, 3, 'Light sensor'),
	   (null, 3, 'Cruise control');

insert into car_metadata
values (null, 4, 'ABS'),
	   (null, 4, 'ESP'),
	   (null, 4, 'On-board computer'),
	   (null, 4, 'Heated mirrors'),
	   (null, 4, 'Heated seats'),
	   (null, 4, 'Electric mirrors'),
	   (null, 4, 'Light sensor'),
	   (null, 4, 'Cruise control');
       

insert into car_metadata
values (null, 5, 'ABS'),
	   (null, 5, 'TRC'),
	   (null, 5, 'EBD'),
	   (null, 5, 'ESP'),
	   (null, 5, 'Monitor/TV'),
	   (null, 5, 'On-board computer'),
	   (null, 5, 'Heated mirrors'),
	   (null, 5, 'Heated seats'),
	   (null, 5, 'Electric mirrors'),
	   (null, 5, 'Rain sensor'),
	   (null, 5, 'Light sensor'),
	   (null, 5, 'Cruise control'),
	   (null, 5, 'Xenon headlights'),
	   (null, 5, 'LED headlights'),
	   (null, 5, 'Headlight washer'),
	   (null, 5, 'Anti-theft system'),
	   (null, 5, 'Central locking'),
	   (null, 5, 'Parktronic'),
	   (null, 5, 'Parking control'),
	   (null, 5, 'Steering wheel adjustment'),
	   (null, 5, 'Fog lights'),
	   (null, 5, 'Aluminum wheels'),
	   (null, 5, 'New tires'),
	   (null, 5, 'Panoramic sunroof'),
	   (null, 5, 'Heated steering wheel'),
	   (null, 5, 'Rear view camera'),
	   (null, 5, 'Navigation system'),
	   (null, 5, 'Airbags'),
	   (null, 5, 'Electronic adjustment of front seats'),
	   (null, 5, 'Armored interior'),
	   (null, 5, 'Air conditioning'),
	   (null, 5, 'Climate control'),
	   (null, 5, 'Power steering steering wheel'),
	   (null, 5, 'Hydraulic steering'),
	   (null, 5, 'Power windows'),
	   (null, 5, 'Sound insulation'),
	   (null, 5, 'Tuning');       

-- --------------------------------------------------

-- Insert cars

insert into car_main
values (null, 1, 38, 12000, 3, null, '2022-7-04'), -- Camry
	   (null, 1, 63, 6000000, 1, null, '2021-8-12'), -- Niisan
       (null, 1, 17, 200000, 4, null, '2023-11-02'), -- Mercedes
       (null, 1, 133, 16000, 2, null, '2021-3-30'), -- Hyundai
       (null, 1, 126, 7000000, 1, null,  '2022-5-15'); -- BMW

insert into car_secondary 
values (null, 1, 10, 2, 2, 1500, 1, 4, 20, 250),
	   (null, 2, 5, 2, 2, 30000, 7, 5, 50, 360),
	   (null, 3, 10, 2, 2, 25000, 1, 7, 40, 270),
	   (null, 4, 10, 2, 2, 11000, 2, 15, 23, 180),
	   (null, 5, 5, 2, 2, 22000, 3, 13, 35, 320);

-- -----------------------------------------------

-- User's added cars table

create table user_add_cars(
	id bigint unsigned not null auto_increment primary key,
    user_id int unsigned,
	car_id bigint unsigned,
    version_id tinyint unsigned,
    method_id tinyint unsigned,
    foreign key (user_id)
    references users(user_id)
    on delete set null
    on update cascade,
    foreign key (car_id)
    references  car_main(car_id)
    on delete set null
    on update cascade,
    foreign key (version_id)
    references special_versions(version_id)
    on delete set null
    on update cascade,
    foreign key (method_id)
    references pay_methods(method_id)
    on delete set null
    on update cascade
);

insert into user_add_cars
values (null, 1, 5, 5, 1),
	   (null, 2, 3, 2, 1),
	   (null, 2, 2, 2, 3),
	   (null, 3, 1, 1, 5),
	   (null, 4, 4, 3, 4);


-- --------------------------------------

-- User saved cars

create table user_save_cars(
	user_id int unsigned not null,
    car_id bigint unsigned not null,
    foreign key (user_id)
    references users(user_id)
    on update cascade,
    foreign key (car_id)
    references car_main(car_id)
    on update cascade,
    primary key(user_id, car_id)
);

insert into user_save_cars 
values (5, 2),
	   (5, 4);

-- --------------------------------------

-- Main page view

create view main_page_cars_data as
select CM.car_id, CB.brand_name, CMO.model_name, CM.price, CPT.price_type_name, CM.main_image_URL, year(CM.car_date) as "Year", SV.version_name
from car_main as CM
left join brand_model as BM
on CM.brand_model_id = BM.brand_model_id
left join car_brands as CB
on CB.brand_id = BM.brand_id
left join car_models as CMO
on CMO.model_id = BM.model_id
left join car_price_type as CPT
on CM.price_type_id = CPT.price_type_id
left join user_add_cars as UAC
on CM.car_id = UAC.car_id
left join special_versions as SV
on UAC.version_id = SV.version_id;


create view single_page_car_data as
select CM.car_id, CB.brand_name, 
CMO.model_name, CM.price, CPT.price_type_name, 
CM.main_image_URL, year(CM.car_date) as "Year", 
SV.version_name, CBO.body_name, CE.engine_name,
CC.car_color_name, CIC.interier_color_name,
CH.hadlebar_name, CS.the_run, CS.engine_size, CS.horse_power,
group_concat(concat(CMD.metada_data) order by CMD.car_id asc) as Other_options
from car_main as CM
left join brand_model as BM
on CM.brand_model_id = BM.brand_model_id
left join car_brands as CB
on CB.brand_id = BM.brand_id
left join car_models as CMO
on CMO.model_id = BM.model_id
left join car_price_type as CPT
on CM.price_type_id = CPT.price_type_id
left join user_add_cars as UAC
on CM.car_id = UAC.car_id
left join special_versions as SV
on UAC.version_id = SV.version_id
inner join car_secondary as CS
on CM.car_id = CS.car_id
left join car_body as CBO
on CBO.body_id = CS.body_id
left join car_engine as CE
on CS.engine_id = CE.engine_id
left join car_handlebar as CH
on CS.handlebar_id = CH.handlebar_id
left join cars_color as CC
on CC.car_color_id = CS.color_id
left join car_interier_color as CIC
on CIC.interier_color_id = CS.interier_color_id 
left join car_metadata as CMD
on CM.car_id = CMD.car_id
group by CM.car_id;


create view brand_model_for_search as
select CB.brand_name, CM.model_name
from brand_model as BM
left join car_brands as CB
on BM.brand_id = CB.brand_id
left join car_models as CM
on BM.model_id = CM.model_id;

select * from main_page_cars_data;
select * from single_page_car_data;

CREATE INDEX messages ON users_messages(send_date);
create index car_top on user_add_cars(version_id);
create index search on car_main(brand_model_id);

delimiter //
create procedure search_car_by_name(in brand char(20), in model char(20))
begin
	select * from brand_model_for_search
    where brand_name like concat(brand, '%') or model_name like concat(model, '%');
end //
delimiter ;

call search_car_by_name('merc', "cl");

delimiter //
create procedure searched_results (in brand char(20), in model char(20), 
									in min_price int, in max_price int)
begin 
	set @brand_name := if(ISNULL(brand), '', brand);
    set @model_name := if(isnull(model), '', brand);
    set @min_price := if(isnull(min_price), 0, min_price);
    set @mac_price := if(isnull(max_price), 2147483647, max_price);
    select * from main_page_cars_data
    where brand_name like concat(@brand_name, '%') and model_name like concat(@model_name, '%')
    and price between @min_price and @mac_price;
end // 
delimiter ;

call searched_results(null, null, 50000, 3000000);