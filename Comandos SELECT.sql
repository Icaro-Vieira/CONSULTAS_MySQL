# COMANDO PARA SELECIONAR
SELECT * FROM tbcliente WHERE IDADE = 22;
SELECT * FROM tbcliente WHERE IDADE > 22;
SELECT * FROM tbcliente WHERE IDADE < 22;
SELECT * FROM tbcliente WHERE IDADE <> 22;

SELECT * FROM tbproduto WHERE PRECO_LISTA < 16.008;
SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';
SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 2;

SELECT * FROM tabela_de_vendedores WHERE DE_FERIAS = 1 AND DATA_ADMISSAO > 2016;

SELECT * FROM tabela_de_vendedores WHERE YEAR(DATA_ADMISSAO) >= 2016;
select * from tbproduto where PRECO_LISTA >= 16.007 AND preco_lista <= 16.009;
SELECT * FROM tbcliente WHERE IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M';
SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';
SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M') OR (CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins');

SELECT * FROM tabela_de_vendedores WHERE PERCENTUAL_COMISSAO > 0.10;
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';
SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 2;
SELECT * FROM tabela_de_produtos 
WHERE SABOR = 'Manga' OR TAMANHO = '450 ml';

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Laranja', 'Manga');
SELECT * FROM tabela_de_produtos WHERE SABOR = 'Laranja' OR SABOR = 'Manga';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' OR TAMANHO = '470 ml';
SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Laranja', 'Manga');
SELECT * FROM tabela_de_produtos WHERE SABOR = 'Laranja' OR SABOR = 'Manga';

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND IDADE >= 20;
SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND (IDADE >= 20 AND IDADE <= 22);

SELECT * FROM itens_notas_fiscais WHERE (QUANTIDADE > 60 AND PRECO <= 3);

