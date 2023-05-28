# Tutorial de Análise de Dados com SQL

Tutorial de Análise de Dados com SQL. Neste guia, Usarei comandos SQL para realizar análises em um banco de dados.

## Descrição do Projeto

O projeto consiste em analisar um banco de dados fictício chamado "#movie", que representa uma empresa de aluguel de filmes semelhante a uma empresa de streaming. O banco de dados possui cinco tabelas: "aluguéis", "atores", "atuações", "clientes" e "filmes". Cada tabela contém informações relevantes para as análises a serem realizadas.

O objetivo principal é utilizar os comandos SQL para criar análises que possam auxiliar a empresa na tomada de decisões estratégicas. Alguns exemplos de análises que serão abordadas incluem:

- Contagem total de filmes por gênero.
- Identificação dos filmes mais populares com base na quantidade de aluguéis.
- Análise da receita gerada pelos aluguéis.
- Avaliação da satisfação dos clientes.

## Comandos SQL Utilizados

Durante o projeto, serão abordados diversos comandos SQL para realizar análises no banco de dados "#movie". Abaixo estão alguns dos comandos que serão aprendidos:

1. SELECT: Utilizado para recuperar dados de uma tabela.
2. FROM: Especifica a tabela da qual os dados serão recuperados.
3. WHERE: Filtra os resultados com base em uma condição especificada.
4. GROUP BY: Agrupa os resultados com base em uma coluna.
5. HAVING: Filtra os resultados agrupados com base em uma condição.
6. JOIN: Combina dados de duas ou mais tabelas com base em colunas relacionadas.
7. ORDER BY: Ordena os resultados em ordem ascendente ou descendente.
8. LIMIT: Limita o número de linhas retornadas pelo comando SELECT.

Esses são apenas alguns dos comandos que serão explorados durante o projeto.

## Alterações Realizadas na Tabela e Banco de Dados

Durante o projeto, foram feitas algumas alterações na tabela e no banco de dados "#movie" para melhorar a análise de dados. Abaixo estão as principais alterações realizadas:

1. Adição da coluna "genre" na tabela "movies": A coluna "genre" foi adicionada para armazenar o gênero de cada filme. Isso permite realizar análises mais detalhadas com base nos gêneros dos filmes.

2. Atualização da coluna "rental_fee" na tabela "movies": A coluna "rental_fee" foi atualizada para refletir o valor atual do aluguel de cada filme. Essa atualização permite uma análise mais precisa da receita gerada pelos aluguéis.

3. Criação da tabela "customers": Foi criada uma nova tabela chamada "customers" para armazenar informações dos clientes, como nome, endereço e detalhes de contato. Essa tabela é utilizada para analisar a satisfação dos clientes e entender melhor o perfil dos usuários do serviço de aluguel de filmes.

4. Adição da coluna "satisfaction_rating" na tabela "customers": A coluna "satisfaction_rating" foi adicionada para registrar a avaliação de satisfação dada pelos clientes. Essa informação é importante para identificar a qualidade do serviço e possíveis melhorias a serem feitas.
