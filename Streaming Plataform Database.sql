-- Deleta o banco de dados. drop database Plataforma_Streaming;  
-- drop database Plataforma_Streaming; 
-- Cria o banco de dados. 
create database Plataforma_Streaming;  
use Plataforma_Streaming;  

  

-- Criação das tabelas. 
create table Pais (
    codigo_pais int primary key,
    nome_pais varchar(100)
);

INSERT INTO Pais VALUES (1,"Brasil");
INSERT INTO Pais VALUES (2,"Canada");
INSERT INTO Pais VALUES (3, 'Estados Unidos');
INSERT INTO Pais VALUES (4, 'Mexico');
INSERT INTO Pais VALUES (5, 'Argentina');
INSERT INTO Pais VALUES (6, 'Reino Unido');
INSERT INTO Pais VALUES (7, 'França');
INSERT INTO Pais VALUES (8, 'Alemanha');
INSERT INTO Pais VALUES (9, 'Australia');
INSERT INTO Pais VALUES (10, 'Japão');



create table Cidade (
    codigo_cidade int primary key,
    unidade_da_federacao varchar(25), 
    codigo_pais int,
    foreign key (codigo_pais) references Pais(codigo_pais)
);

-- Inserir dados na tabela Cidade com duas cidades para cada país.
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (1, 'São Paulo', 1);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (2, 'Rio de Janeiro', 1);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (3, 'Toronto', 2);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (4, 'Vancouver', 2);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (5, 'Nova York', 3);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (6, 'Los Angeles', 3);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (7, 'Cidade do México', 4);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (8, 'Guadalajara', 4);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (9, 'Buenos Aires', 5);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (10, 'Córdoba', 5);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (11, 'Londres', 6);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (12, 'Manchester', 6);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (13, 'Paris', 7);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (14, 'Marselha', 7);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (15, 'Berlim', 8);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (16, 'Munique', 8);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (17, 'Sydney', 9);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (18, 'Melbourne', 9);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (19, 'Tóquio', 10);
INSERT INTO Cidade (codigo_cidade, unidade_da_federacao, codigo_pais) VALUES (20, 'Osaka', 10);

create table Cliente(  
cod_cliente int primary key,  
cod_endereço int,  
nome varchar(100),  
CPF char(11),  
rua varchar(100),  
bairro varchar(100),  
numero_residencia int,
codigo_cidade int,
foreign key (codigo_cidade) references Cidade(codigo_cidade) 
);  
-- Inserir dados na tabela Cliente. 
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (1, 1, 'Cliente 1', '12345678901');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (2, 2, 'Cliente 2', '23456789012');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (3, 3, 'Cliente 3', '34567890123');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (4, 4, 'Cliente 4', '45678901234');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (5, 5, 'Cliente 5', '56789012345');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (6, 6, 'Cliente 6', '67890123456');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (7, 7, 'Cliente 7', '78901234567');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (8, 8, 'Cliente 8', '89012345678');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (9, 9, 'Cliente 9', '90123456789');
INSERT INTO Cliente (cod_cliente, cod_endereço, nome, CPF) VALUES (10, 10, 'Cliente 10', '01234567890'); 



create table Tipo_de_Usuario( -- Relação 1xn com usuario 
codigo_tipo int primary key, 
nome varchar(50) 
);

INSERT INTO Tipo_de_Usuario VALUES (1, "Criança");
INSERT INTO Tipo_de_Usuario VALUES (2, "Adolescente");
INSERT INTO Tipo_de_Usuario VALUES (3, "Adulto");


create table Usuario(   
codigo_usuario int primary key,   
cod_cliente int,   
codigo_tipo int, 
foreign key (cod_cliente) references Cliente(cod_cliente), 
foreign key (codigo_tipo ) references Tipo_de_Usuario(codigo_tipo) 
);    




-- Inserir dados na tabela Usuario. 
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (1, 'Tipo 1', 1);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (2, 'Tipo 2', 2);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (3, 'Tipo 1', 3);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (4, 'Tipo 2', 4);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (5, 'Tipo 1', 5);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (6, 'Tipo 2', 6);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (7, 'Tipo 1', 7);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (8, 'Tipo 2', 8);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (9, 'Tipo 1', 9);
INSERT INTO Usuario (codigo_usuario, tipo, cod_cliente) VALUES (10, 'Tipo 2', 10);


 


create table Qualidade(  
codigo_qualidade int primary key,  
nome varchar(100)  
);  
-- Inserir dados na tabela Qualidade. 
INSERT INTO Qualidade (codigo_qualidade, nome) VALUES (1, 'HD');
INSERT INTO Qualidade (codigo_qualidade, nome) VALUES (2, 'Full HD');
INSERT INTO Qualidade (codigo_qualidade, nome) VALUES (3, '4K');
INSERT INTO Qualidade (codigo_qualidade, nome) VALUES (4, '8K');




create table Plano_de_Assinatura(  
codigo_plano int primary key,  
cod_qualidade int,  
mensalidade decimal(4,2),  -- Mensalidade com 4 digitos, 2 apos a vírgula
foreign key (cod_qualidade) references Qualidade(codigo_qualidade) 
);  

-- Inserir dados na tabela Plano_de_Assinatura. 
INSERT INTO Plano_de_Assinatura (codigo_plano, cod_qualidade, mensalidade, data_do_pagamento) VALUES (2, 2, 15.99);
INSERT INTO Plano_de_Assinatura (codigo_plano, cod_qualidade, mensalidade, data_do_pagamento) VALUES (3, 3, 20.99);
INSERT INTO Plano_de_Assinatura (codigo_plano, cod_qualidade, mensalidade, data_do_pagamento) VALUES (4, 4, 25.99);
INSERT INTO Plano_de_Assinatura (codigo_plano, cod_qualidade, mensalidade, data_do_pagamento) VALUES (5, 5, 30.99);


-- Relação entre as tabelas "Cliente" e tabela "Plano_de_Assinatura". 
create table Forma_de_Pagamento(
codigo_forma_de_pagamento int primary key,
nome varchar(50)
);

-- Inserir dados na tabela Forma_de_Pagamento incluindo criptomoedas.
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (1, 'Cartão de Crédito');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (2, 'PayPal');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (3, 'Boleto Bancário');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (4, 'Cartão de Débito');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (5, 'Transferência Bancária');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (6, 'Bitcoin');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (7, 'Ethereum');
INSERT INTO Forma_de_Pagamento (codigo_forma_de_pagamento, nome) VALUES (8, 'Litecoin');


create table Assina(  
codigo_plano int,  
codigo_usuario int,  
primary key(codigo_plano,codigo_usuario), 
foreign key (codigo_plano) references Plano_de_Assinatura(codigo_plano),   
foreign key (codigo_usuario) references Usuario(codigo_usuario), 
codigo_forma_de_pagamento int, 
foreign key (codigo_forma_de_pagamento) references Forma_de_Pagamento(codigo_forma_de_pagamento),
data_de_assinatura datetime
);  
-- Inserir dados na tabela Assina. 
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES (1, 1, 'Cartão de Credito', '2023-10-01');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(2, 2, 'PayPal', '2023-10-02');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(3, 3, 'Boleto Bancario', '2023-10-03');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(4, 4, 'Cartão de Debito', '2023-10-04'); 
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(2, 5, 'Ethereum', '2023-10-05');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(1, 6, 'Transferencia Bancaria', '2023-10-27');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(3, 7, 'PayPal', '2023-10-05');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(2, 8, 'Transferencia Bancaria', '2023-11-08');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(1, 9, 'Bitcoin', '2023-12-01');
INSERT INTO Assina (codigo_plano, codigo_usuario, forma_de_pagamento, data_de_assinatura) VALUES(1, 10, 'Cartão de Credito', '2023-02-23');



create table Genero (
codigo_genero int primary key,
nome varchar(50)
);

INSERT INTO Genero VALUES (1,"Teror");
INSERT INTO Genero VALUES (2, 'Ação');
INSERT INTO Genero VALUES (3, 'Comedia');
INSERT INTO Genero VALUES (4, 'Drama');
INSERT INTO Genero VALUES (5, 'Ficção Científica');
INSERT INTO Genero VALUES (6, 'Romance');
INSERT INTO Genero VALUES (7, 'Suspense');
INSERT INTO Genero VALUES (8, 'Fantasia');
INSERT INTO Genero VALUES (9, 'Animação');



create table Produto(  
codigo_produto int primary key,  
nome varchar(100),  
bilheteria int,  
vizualização int,  
codigo_genero int,
codigo_pais int,
avaliação decimal(3, 2) check (atributo_decimal >= 0 and atributo_decimal <= 5.00),  -- Exemplo: nota 4.78
data_de_lancamento year,
foreign key (codigo_genero) references Genero(codigo_genero),
foreign key (codigo_pais) references Pais(codigo_pais)
);  
-- Inserir dados na tabela Produto. 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (1, 'Filme 1', 100000, 500000, 'Ação', 'EUA', 4.5, '1973-01-01');
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (2, 'Filme 2', 80000, 450000, 'Comedia', 'EUA', 4.2, '2022-02-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (3, 'Serie 1', 120000, 600000, 'Drama', 'EUA', 4.7, '1975-01-15');
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (4, 'Serie 2', 90000, 550000, 'Suspense', 'EUA', 4.6, '2022-03-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (5, 'Filme 3', 95000, 480000, 'Ação', 'EUA', 4.3, '2022-04-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (6, 'Serie 3', 110000, 580000, 'Comedia', 'EUA', 4.8, '2022-05-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (7, 'Filme 4', 85000, 460000, 'Drama', 'EUA', 4.4, '2022-06-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (8, 'Serie 4', 100000, 520000, 'Suspense', 'EUA', 4.6, '2022-07-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (9, 'Filme 5', 92000, 470000, 'Ação', 'EUA', 4.2, '2022-08-01'); 
INSERT INTO Produto (codigo_produto, nome, bilheteria, vizualização, genero, nacionalidade, avaliação, data_de_lancamento) VALUES (10, 'Serie 5', 115000, 560000, 'Comedia', 'EUA', 4.9, '2022-09-01');



-- Relação entre as tabelas "Usuario" e "Produto". 
create table Acessa (  
codigo_produto int,  
codigo_tipo int,   
primary key(codigo_produto,codigo_tipo),  
foreign key (codigo_produto) references Produto(codigo_produto),  
foreign key (codigo_tipo) references Tipo_de_Usuario(codigo_tipo)  
); 

-- Inserir dados na tabela Acessa. 

-- Acesso criança
INSERT INTO Acessa VALUES (1, 1);
INSERT INTO Acessa VALUES (2, 1);
INSERT INTO Acessa VALUES (3, 1);

-- Acesso adolescente
INSERT INTO Acessa VALUES (1, 2);
INSERT INTO Acessa VALUES (2, 2);
INSERT INTO Acessa VALUES (3, 2);
INSERT INTO Acessa VALUES (4, 2);
INSERT INTO Acessa VALUES (5, 2);
INSERT INTO Acessa VALUES (6, 2);
INSERT INTO Acessa VALUES (7, 2);

-- Acesso adulto
INSERT INTO Acessa VALUES (1, 3);
INSERT INTO Acessa VALUES (2, 3);
INSERT INTO Acessa VALUES (3, 3);
INSERT INTO Acessa VALUES (4, 3);
INSERT INTO Acessa VALUES (5, 3);
INSERT INTO Acessa VALUES (6, 3);
INSERT INTO Acessa VALUES (7, 3);
INSERT INTO Acessa VALUES (8, 3);
INSERT INTO Acessa VALUES (9, 3);
INSERT INTO Acessa VALUES (10, 3);


create table Diretor(  
codigo_diretor int primary key,  
nome varchar(50)
);   
-- Inserir dados na tabela Diretor. 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (1, 'Diretor 1', 'Filme 1');
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (2, 'Diretor 2', 'Filme 2'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (3, 'Diretor 3', 'Serie 1'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (4, 'Diretor 4', 'Serie 2'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (5, 'Diretor 5', 'Filme 3'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (6, 'Diretor 6', 'Serie 3'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (7, 'Diretor 7', 'Filme 4'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (8, 'Diretor 8', 'Serie 4');
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (9, 'Diretor 9', 'Filme 5'); 
INSERT INTO Diretor (codigo_diretor, nome, maior_bilheteria) VALUES (10, 'Diretor 10', 'Serie 5');
 

create table Filme(  
codigo_produto int primary key,  
codigo_diretor int, 
foreign key (codigo_produto) references Produto(codigo_produto),  
foreign key (codigo_diretor) references Diretor(codigo_diretor)  
); 
-- Inserir dados na tabela Filme. 
INSERT INTO Filme (codigo_produto, codigo_diretor) VALUES (1, 1);
INSERT INTO Filme (codigo_produto, codigo_diretor) VALUES (2, 2); 
INSERT INTO Filme (codigo_produto, codigo_diretor) VALUES (5, 5); 
INSERT INTO Filme (codigo_produto, codigo_diretor) VALUES (7, 7); 
INSERT INTO Filme (codigo_produto, codigo_diretor) VALUES (9, 9); 

  

create table Serie(  
codigo_produto int primary key,  
codigo_diretor int,  
numero_temporadas int,  
foreign key (codigo_produto) references Produto(codigo_produto),  
foreign key (codigo_diretor) references Diretor(codigo_diretor)  
);  
-- Inserir dados na tabela Serie. 
INSERT INTO Serie (codigo_produto, codigo_diretor, numero_temporadas) VALUES (3, 3, 5);
INSERT INTO Serie (codigo_produto, codigo_diretor, numero_temporadas)VALUES (4, 4, 4);
INSERT INTO Serie (codigo_produto, codigo_diretor, numero_temporadas)VALUES (6, 6, 6); 
INSERT INTO Serie (codigo_produto, codigo_diretor, numero_temporadas)VALUES (8, 8, 3); 
INSERT INTO Serie (codigo_produto, codigo_diretor, numero_temporadas)VALUES (10, 10, 7);

 

create table Atores (  
codigo_ator int primary key,  
nome varchar(50)
); 
-- Inserir dados na tabela Atores. 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (1, 'Ator 1', 10000.00);
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (2, 'Ator 2', 12000.00); 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (3, 'Ator 3', 11000.00); 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (4, 'Ator 4', 13000.00); 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (5, 'Ator 5', 9500.00);
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (6, 'Ator 6', 10500.00); 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (7, 'Ator 7', 9800.00);
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (8, 'Ator 8', 11500.00);
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (9, 'Ator 9', 12500.00); 
INSERT INTO Atores (codigo_ator, nome, chache_medio) VALUES (10, 'Ator 10', 9700.00); 

  

-- Relação entre as tabelas "Atores" e "Filme". 
create table Participa_Filme (  
codigo_produto int,  
codigo_ator int,  
primary key(codigo_produto,codigo_ator),  
foreign key (codigo_produto) references Filme(codigo_produto),  
foreign key (codigo_ator) references Atores(codigo_ator)  
); 
-- Inserir dados na tabela Participa_Filme. 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (1, 1);
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (1, 2); 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (2, 3); 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (2, 4); 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (5, 7); 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (7, 9); 
INSERT INTO Participa_Filme (codigo_produto, codigo_ator) VALUES (9, 10); 
 

  

-- Relação entre as tabelas "Atores" e "Serie". 
create table Participa_Serie (  
codigo_produto int,  
codigo_ator int,  
primary key(codigo_produto,codigo_ator),  
foreign key (codigo_produto) references Serie(codigo_produto),  
foreign key (codigo_ator) references Atores(codigo_ator)  
);  
-- Inserir dados na tabela Participa_Serie. 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES  (3, 1);
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(3, 2);
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(4, 3); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(4, 4); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(6, 5); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(6, 6); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(8, 7); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(10, 9); 
INSERT INTO Participa_Serie (codigo_produto, codigo_ator) VALUES(10, 10);



create table Categoria_Filme (
codigo_categoria_filme int primary key,
nome varchar(50)
);

 
 -- Inserir dados na tabela Categoria_Filme.
INSERT INTO Categoria_Filme (codigo_categoria_filme, nome) VALUES (1, 'Ação');
INSERT INTO Categoria_Filme (codigo_categoria_filme, nome) VALUES (2, 'Comédia');
INSERT INTO Categoria_Filme (codigo_categoria_filme, nome) VALUES (3, 'Drama');
INSERT INTO Categoria_Filme (codigo_categoria_filme, nome) VALUES (4, 'Ficção Científica');
INSERT INTO Categoria_Filme (codigo_categoria_filme, nome) VALUES (5, 'Romance');


create table Categoria_Serie (
codigo_categoria_serie int primary key,
nome varchar(50)
);


-- Inserir dados na tabela Categoria_Serie.
INSERT INTO Categoria_Serie (codigo_categoria_serie, nome) VALUES (1, 'Drama');
INSERT INTO Categoria_Serie (codigo_categoria_serie, nome) VALUES (2, 'Comédia');
INSERT INTO Categoria_Serie (codigo_categoria_serie, nome) VALUES (3, 'Ação');
INSERT INTO Categoria_Serie (codigo_categoria_serie, nome) VALUES (4, 'Ficção Científica');
INSERT INTO Categoria_Serie (codigo_categoria_serie, nome) VALUES (5, 'Suspense');


create table Oscar (  
codigo_oscar int primary key,  
codigo_categoria_filme int,
foreign key (codigo_categoria_filme) references Categoria_Filme(codigo_categoria_filme)
); 
-- Inserir dados na tabela Oscar. 
INSERT INTO Oscar (codigo_oscar, categoria) VALUES (1, 'Melhor Filme');
INSERT INTO Oscar (codigo_oscar, categoria) VALUES(2, 'Melhor Diretor');
INSERT INTO Oscar (codigo_oscar, categoria) VALUES(3, 'Melhor Ator');
INSERT INTO Oscar (codigo_oscar, categoria) VALUES(4, 'Melhor Atriz');
INSERT INTO Oscar (codigo_oscar, categoria) VALUES(5, 'Melhor Roteiro Original');

  

create table Emmy (  
codigo_emmy int primary key,  
codigo_categoria_serie int,
foreign key (codigo_categoria_serie) references Categoria_Serie(codigo_categoria_serie)
); 
-- Inserir dados na tabela Emmy. 
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (1, 'Melhor Serie Dramatica');
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (2, 'Melhor Serie de Comedia');
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (3, 'Melhor Ator em Serie Dramatica');
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (4, 'Melhor Atriz em Serie Dramatica');
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (5, 'Melhor Ator em Serie de Comedia');
INSERT INTO Emmy (codigo_emmy, categoria) VALUES (6, 'Melhor Atriz em Serie de Comedia');

  

-- Relação entre as tabelas "Filme" e "Oscar". 
create table Indica_Filme(  
codigo_produto int,  
codigo_oscar int,  
primary key(codigo_produto,codigo_oscar),  
foreign key (codigo_oscar) references Oscar(codigo_oscar),  
foreign key (codigo_produto) references Filme(codigo_produto)  
);  

-- Inserir dados na tabela Indica_Filme.
INSERT INTO Indica_Filme (codigo_produto, codigo_oscar) VALUES (1, 1);
INSERT INTO Indica_Filme (codigo_produto, codigo_oscar) VALUES (2, 2);
INSERT INTO Indica_Filme (codigo_produto, codigo_oscar) VALUES (5, 3);
INSERT INTO Indica_Filme (codigo_produto, codigo_oscar) VALUES (7, 4);
INSERT INTO Indica_Filme (codigo_produto, codigo_oscar) VALUES (9, 5);
  

-- Relação entre as tabelas "Filme" e "Serie". 
create table Indica_Serie(  
codigo_produto int,  
codigo_emmy int,  
primary key(codigo_produto,codigo_emmy),  
foreign key (codigo_emmy) references Emmy(codigo_emmy),  
foreign key (codigo_produto) references Serie(codigo_produto)  
);  


-- Inserir dados na tabela Indica_Serie.
INSERT INTO Indica_Serie (codigo_produto, codigo_emmy) VALUES (3, 1);
INSERT INTO Indica_Serie (codigo_produto, codigo_emmy) VALUES (4, 2);
INSERT INTO Indica_Serie (codigo_produto, codigo_emmy) VALUES (6, 3);
INSERT INTO Indica_Serie (codigo_produto, codigo_emmy) VALUES (8, 4);
INSERT INTO Indica_Serie (codigo_produto, codigo_emmy) VALUES (8, 6);

