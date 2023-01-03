CREATE DATABASE concessionaria;


USE concessionaria;


CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    custo FLOAT NOT NULL,
    descricao VARCHAR(100)
);


CREATE TABLE servico(
    id INT PRIMARY KEY AUTO_INCREMENT,
    custo FLOAT NOT NULL,
    descricao VARCHAR(100),
    tempo_realiza DATETIME(6) NOT NULL
);


CREATE TABLE cliente(
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    descricao VARCHAR(100)
);


CREATE TABLE veiculo(
    renavan VARCHAR(14) PRIMARY KEY,
    cor VARCHAR(30) NOT NULL,
    chassi VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    id_cliente VARCHAR(11) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(cpf)
);



CREATE TABLE relato_cliente(
    id_relato INT PRIMARY KEY AUTO_INCREMENT,
    problema VARCHAR(100) NOT NULL,
    data_relato DATETIME(6) NOT NULL,
    id_veiculo VARCHAR(14) NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(renavan)
);



CREATE TABLE orcamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_emissao DATETIME(6) NOT NULL,
    previsaoEntrega DATETIME(6) NOT NULL,
    forma_pagamento VARCHAR(30) NOT NULL,
    situacao VARCHAR(30) NOT NULL,
    valor FLOAT NOT NULL,
    id_veiculo VARCHAR(14),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(renavan)
);




CREATE TABLE itens_produto(
    custo FLOAT NOT NULL,
    situacao VARCHAR(30) NOT NULL,
    quantidade INT NOT NULL,
    id_produto INT NOT NULL,
    id_orcamento INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produto(id),
    FOREIGN KEY (id_orcamento) REFERENCES orcamento(id)
);



CREATE TABLE itens_servico(
    custo FLOAT NOT NULL,
    situacao VARCHAR(30) NOT NULL,
    id_servico INT NOT NULL,
    id_orcamento INT NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servico(id),
    FOREIGN KEY (id_orcamento) REFERENCES orcamento(id)
);





insert into produto values

(default,'Jogo', 'R$30.00'),

(default,'PS4', 'R$30.00'),

(default,'Carro', 'R$30.00'),

(default,'Camiseta','R$30.00'),

(default,'Controle','R$30.00'),

(default,'PS5', '30.00'),

(default,'Moto', 'R$30.00'),

(default,'Casa','R$30.00'),

(default,'Microfone','R$30.00'),

(default,'Fone','R$30.00');










insert into servico values

(default,'R$30.00','Produto mais vendido','1 mês'),

(default,'R$30.00','Produto mais vendido','2 mês'),

(default,'R$30.00','Produto mais vendido','3 mês'),

(default,'R$30.00','Produto mais vendido','8 mês'),

(default,'R$30.00','Produto mais vendido','9 mês'),

(default,'R$30.00','Produto mais vendido','1 mês'),

(default,'R$30.00','Produto mais vendido','1 mês'),

(default,'R$30.00','Produto mais vendido','1 mês'),

(default,'R$30.00','Produto mais vendido','1 mês'),

(default,'R$30.00','Produto mais vendido','1 mês');








insert into cliente values

(default,'AnaB','12345678910','997788663','Cabelo liso'),

(default,'Ana','12345678950','997788663','Roupas rasgadas'),

(default,'AnaC','12345678990','997788663','Cabelo Vermelho'),

(default,'AnaD','12345678960','997788663','Cabelo Colorido'),

(default,'Anav','12345678900','997788663','Olhos pretos '),

(default,'AnaL','12345678910','997788663','Olhos verdes '),

(default,'AnaH','12345678911','997788663','Cabelo preto'),

(default,'AnaM','12345678914','997788663','Olhos Vermelhos'),

(default,'AnaB','12345678918','997788663','Olhos Azuis'),

(default,'AnaA','12345678919','997788663','Cabelo Ruim');









insert into veiculo values

(default,'BMW', 'Lucas', 'Branco','73d654', '2016'),

(default,'BMW', 'Renan', 'azul','73A674', '2016'),

(default,'BMW', 'Lima', 'Vermelho','DAS64G', '2016'),

(default,'BMW', 'Lauan', 'Branco','DSF65S', '2016'),

(default,'BMW', 'Paulo', 'Preto','SDWE44', '2016'),

(default,'BMW', 'Ivan', 'Branco','73G654', '2016'),

(default,'BMW', 'Gomas', 'Branco','73D6L4', '2016'),

(default,'BMW', 'Dona', 'Branco','D3D654', '2016'),

(default,'BMW', 'Launa', 'Azul escuro','73d654'),

(default,'CBMW', 'Luan', 'Branco','73d65SP');










insert into relato_cliente values

(default,'Problema no Freio','Data 10/07/2012'),

(default,'Problema no Freio','Data 10/07/2013'),

(default,'Problema no Freio','Data 10/07/2019'),

(default,'Problema no Freio','Data 10/07/2018'),

(default,'Problema no Freio','Data 10/07/2003'),

(default,'Problema no Freio','Data 10/07/2022'),

(default,'Problema no Freio','Data 10/07/2015'),

(default,'Problema no Freio','Data 10/07/2020'),

(default,'Problema no Freio','Data 10/07/2014'),

(default,'Problema no Freio','Data 10/07/2016');









insert into orcamento values

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65756545465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65756545465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65756545465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65756545465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 657565485465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65751000465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 657565657865),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 65756455465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 657515945465),

(default,1, '343', 'Em conserto, data de entrega não prevista em 7 dias', '2022-08-02 20:17:17', '2021-10-30 18:17:17', 'Cartão', 657561005465);






insert into itens_produto values

(default,'543', 12, 'Em andamento', 1, 1),

(default,'300', 12, 'Em andamento', 1, 2),

(default,'456', 12, 'Em andamento', 1, 3),

(default,'543', 12, 'Em andamento', 1, 4),

(default,'500', 12, 'Em andamento', 1, 5),

(default,'654', 12, 'Em andamento', 1, 6),

(default,'123', 12, 'Em andamento', 1, 7),

(default,'698', 12, 'Em andamento', 1, 8),

(default,'456', 12, 'Em andamento', 1, 9),

(default,'123', 12, 'Em andamento', 1, 10);






insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (1, 'Problema no pneu', '2021-10-30 07:17:17', '234');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (2, 'Problema no teto', '2021-10-30 10:17:17', '754');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (3, 'Problema no moto', '2021-10-30 09:17:17', '321');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (4, 'Problema no vidro', '2021-10-30 08:17:17', '575');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (5, 'Problema no porta', '2021-10-30 12:17:17', '245');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (6, 'Problema no oleo', '2021-10-30 14:17:17', '343');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (7, 'Problema no banco direito', '2021-10-30 18:17:17', '654');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (8, 'Problema no pneu', '2021-10-30 19:17:17', '234');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (9, 'Problema no banco esquerdo', '2021-10-30 21:17:17', '543');

insert into itens_servico (id_servico , descricao, tempo_realizado, custo) values (10, 'Problema no pneu', '2021-10-30 20:17:17', '234');

delete from itens_servico where  id_servico=3;
delete from itens_servico where id_servico=4 ;
delete from itens_servico where id_servico=5;

delete from produto  where id_prduto=5;
delete from produto   where id_prduto=6  ;

delete from cliente where cpf ;
delete from cliente where nome  ;
delete from cliente where telefone  ;

delete from veiculo where renavan  ;
delete from veiculo where cor   ;
delete from veiculo where modelo   ;


delete from relato_cliente where id_relato   ;
delete from relato_cliente where problema    ;
delete from relato_cliente where data_relato    ;


delete from orcamento where data_emissao   ;
delete from orcamento where previsaoEntrega    ;
delete from orcamento where forma_pagamento    ;


delete from itens_produto where id_produto=3;
delete from itens_produto where id_produto=2 ;
delete from itens_produto where id_produto=1   ;



#Atualizar as datas dos Orçamentos
update orcamento set data = '2021-10-30 22:20:40' where data = '2021-10-30 20:17:17';

#Atualizar o modelo de um veículo para
update veiculo set modelo = 'BMW' where modelo = 'Sprit';

#Atualizar o ano dos veículos menores que 2021 para 2016
update veiculo set ano = '2016' where ano = '2021';

#Atualizar o nome dos clientes que contém 'a' para 'A' (não importa em que parte do nome)
update cliente set nome = replace(nome,'a','A');

#Atualizar a situação de todos orçamentos para "Andamento"
update orcamento set situacao = 'Andamento' where situacao = 'Em conserto, data de entrega não analisada em 7 dias';

#Atualizar o valor de todos produtos para 3000
update produto set custo = '3000' where custo;

#Atualizar o valor total do Orçamento atraves da somatória de itens_serviço e itens_produto
UPDATE orcamento , item_produto , item_servico
SET orcamento.valor = item_produto.custo * item_produto.quantidade + item_servico.custo
WHERE orcamento.id_orcamento = item_produto.id_orcamento AND orcamento.id_orcamento = item_servico.id_orcamento; 

#Mostrar todos orçamentos
SELECT valor FROM orcamento;

#Mostrar todos clientes em ordem crescente
SELECT * FROM cliente ORDER BY nome ASC;

#Mostrar apenas os modelos dos veículos
SELECT modelo FROM veiculo;

#Mostrar orçamentos realizados no mês de outubro
SELECT data FROM orcamento WHERE MONTH(data) = '10';

#Mostrar descrição e valor de Produtos e Serviços
SELECT descricao, custo
FROM produto;

SELECT descricao, custo
FROM servico;

#Mostrar o orçamento de menor valor
SELECT MIN(valor) FROM orcamento;

#Mostrar o primeiro veículo inserido
SELECT * FROM veiculo LIMIT 1;

#Mostrar o último cliente cadastrado
SELECT * FROM cliente order by nome desc LIMIT 1;

#mostrar orçamento com valor acima de 1000 e menor que 2000
SELECT* FROM orcamento where valor >1000 and valor<2000;

#Mostrar a media de valores de orcamento
SELECT sum(valor)/10 FROM orcamento; 



