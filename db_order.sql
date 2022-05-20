Utilize a tabela PRODUTOS para realizar os exercícios do laboratório. 
1. Escreva uma consulta que exiba os dados da tabela PRODUTOS na forma crescente 
pelo campo NOME. 
Resposta:
 select * from produtos order by nome desc;

2. Escreva uma consulta que exiba o NOME dos produtos ordenado de forma decrescente 
e o VALOR de forma crescente. 
Resposta:
select * from produtos order by nome asc;
select * from valor order by nome desc;

3. Escreva uma consulta que exiba os três produtos mais caros. 
Resposta:
select * from produtos order by valor desc limit 3;

4. Escreva uma consulta que exiba o VALOR do produto mais barato. 
Resposta:
select * from produtos order by valor asc;