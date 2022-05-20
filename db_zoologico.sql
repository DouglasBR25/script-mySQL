--1. Crie uma database chamada ZOOLOGICO. 
create database db_zoologico

--2. Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes campos:

create table animais(
codigo int
tipo char(15)
nome char(30)
idade int
valor decimal(10,2));

INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );
INSERT INTO ANIMAIS ( CODIGO, TIPO, NOME, IDADE, VALOR ) VALUES ( 1,
'cachorro', 'Djudi', 3, 300.00 );

--3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS. 
show tables;
select * from animais;

--4.Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, 
apresentando todos os registros da tabela. 
select tipo,nome from animais;

--5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
ANIMAIS, apresentado todos os registros.

select tipo,nome, idade from animais;

--6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS
apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias 
[Tipo de Animal] e a coluna nome com o alias [Nome do Animal].

tipo as 'tipo de animal' , nome as 'nome do animal' from animais;

--7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna 
IDADE com o alias [Tempo de Vida].

tipo as 'tipo de animal' , nome as 'nome do animal', idade as 'Tempo de vida' from animais;

--8. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma: 
select 'animal' as 'procedência',tipo, nome, idade as 'Tempo de vida' from animais; 
--9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma: 
select * tipo,nome,idade,valor from animais;
select tipo as 'Tipo', nome as 'Nome',idade as 'Idade', valor as 'Valor Original', * 1.10 as 'Valor da venda' from animais;

--10. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, 
apresentando uma vez os dados repetidos.
tipo as 'Tipo de animal' , valorOriginal as 'Valor Original',valorVenda as 'Valor de Venda', from animais;

-----------
select codigo,tipo,nome,idade,valor from animais;