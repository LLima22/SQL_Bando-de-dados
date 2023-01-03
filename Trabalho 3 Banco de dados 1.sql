create database Gravadora;

use Gravadora;

create table musica(
id_mus_cod int ,
mus_nome varchar(255),
mus_duracao time,
mus_faixa varchar(255)
);
create table gravadora(
id_grav_cod int,
grav_nome varchar(255),
grav_end varchar(255)
);

create table album(
id_cod_album int,
cd_nome varchar (255),
cd_valor double,
cd_data_lancamento time,
id_cd_grav_cod int
);

create table autor(
id_aut_cod int,
aut_nome varchar(255)
);

create table musica_aut(
id_mus_cod int,
id_aut_cod int,
foreign key(id_aut_cod) references autor(aut_cod),
foreign key(id_mus_cod) references musica(mus_cod)
);

create table item_cd(
id_item_album_cod int,
id_item_mus_cod int,
foreign key(id_item_album_cod) references album(cod_album),
foreign key(id_item_mus_cod) references musica(mus_cod)
);

insert into autor values

(default,'Legião Urbana'),

(default,'7 Minutoz'),

(default,'banda djavú'),

(default,'calçinha preta'),

(default,'barões da pisadinha'),

(default,'calypso'),

(default,'linkin park');


insert into musica values

(default,'Tempo Perdido','5:00'),

(default,'Rap dos Hokages (Naruto) - A VONTADE DO FOGO','10:06'),

(default,'Não Desligue o Telefone','4:10'),

(default,'Manchete Dos Jornais','4:19'),

(default,'Cabeça voando','3:03'),

(default,'A Lua Me Traiu','3:55'),

(default,'Numb','3:06');


insert into gravadora values

(default,'EMI MUSIC','Roger Faxon  - Av. Rodolfo de Amoeda, 333, Rio de Janeiro – RJ'),

(default,'INDIE RECORS','Rua Mena Barreto,29, - Botafogo, Rio de Janeiro -RJ'),

(default,'ELDORADO','Av. Eng. Caetano Alvares, 55 - Prédio Indutrial-Limão, São Paulo – SP'),

(default,'UNIVERSAL MUSIC','Rua Said Aiach,305 Paraiso São Paulo – SP'),

(default,'SONY BMG MUSIC','Rua Dr. Edgar Teotônio Santana, 351 Barra Funda São Paulo - SP'),

(default,'WARNER MUSIC','Av. Tamboré, 25 - Barueri, São Paulo – SP'),

(default,'BDV PRODUÇÔES','Conjunto Promorar Raposo Tavares Cidade Travessa Cachoeira do Arrependido, São Paulo - SP');



insert into album values

(default,'EMI MUSIC','Back in Black',51.0,'1980 '),

(default,'INDIE RECORS','Thriller',66.0,'1982'),

(default,'ELDORADO','The Dark Side of the Moon ',45.0,'1973'),

(default,'UNIVERSAL MUSIC','Their Greatest Hits',42.0,'1976'),

(default,'SONY BMG MUSIC','Jagged Little Pill',35.0,'1970'),

(default,'WARNER MUSIC','Rumours ',27.9,'1977'),

(default,'BDV PRODUÇÔES','Led Zeppelin IV',29.0,'1971');

insert into item_cd values
(1),(2),(3),(4),
(5),(6), (7);

insert into musica_autor values
(1),(2),(3),(4),
(5),(6),(7);


