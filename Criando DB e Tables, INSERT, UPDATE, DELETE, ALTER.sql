# COMANDO PARA CRIAR O BANCO DE DADOS
CREATE DATABASE SUCOS;

# COMANDO PARA ENTRAR NO BANCO DE DADOS
USE SUCOS;

-- CRIANDO A TABELA DE VENDEDORES
CREATE TABLE TABELA_DE_VENDEDORES (
	MATRICULA VARCHAR(5),
    NOME VARCHAR(100),
    PERCENTUAL_COMISSAO FLOAT    
);

-- CRIANDO A TABELA CLIENTE
CREATE TABLE tbcliente (
	CPF VARCHAR(11),
    NOME VARCHAR(100),
    ENDERECO1 VARCHAR(150),
    ENDERECO2 VARCHAR(150),
    BAIRRO VARCHAR(50),
    CIDADE VARCHAR(50),
    ESTADO VARCHAR(2),
    CEP VARCHAR(8),
    IDADE SMALLINT,
    SEXO VARCHAR(1),
    LIMITE_CREDIO FLOAT,
    VOLUME_COMPRA FLOAT,
    PRIMEIRA_COMPRA BIT(1)
);

-- CRIANDO A TABELA PRODUTO:
CREATE TABLE tbProduto (
	PRODUTO VARCHAR(20),
	NOME VARCHAR(150),
	EMBALAGEM VARCHAR(50),
	TAMANHO VARCHAR(50),
	SABOR VARCHAR(50),
	PRECO_LISTA FLOAT
);



# COMANDO PARA INSERIR DADOS NA TABELA
INSERT INTO tbproduto (
	PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
	'1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56 
);

INSERT INTO tbproduto (
	PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
	'1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.1 
);

INSERT INTO tbproduto (
	PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
	'1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31 
);

INSERT INTO tbproduto (
	PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
	'1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51
);

INSERT INTO tbproduto (
	PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml', 'Limão', 3.20
);

# COMANDO PARA ATUALIZAR DADOS NA TABELA DE PRODUTOS:
UPDATE tbproduto SET EMBALAGEM = 'Lata' WHERE PRODUTO = '1004327';

# COMANDO PARA DELETAR LINHA DA TABELA
DELETE FROM tbproduto WHERE PRODUTO = '1078680';


# COMANDO PARA INSERIR NA TABELA DE VENDEDORES
INSERT INTO tabela_de_vendedores (
	matricula, nome, percentual_comissao
) VALUES (
	'00233', 'João Geraldo da Fonseca', 0.10
);

# COMANDO PARA ADICIONAR A CHAVE PRIMARIA AO CAMPO PRODUTO NA TABELA DE PRODUTO
ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

# COMANDO PARA ATUALIZAR DADOS NA TABELA DE VENDEDORES:
UPDATE tabela_de_vendedores SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';

# COMANDO PARA DELETAR LINHA DA TABELA
DELETE FROM tabela_de_vendedores WHERE MATRICULA = '00233';

# COMANDO PARA ADICIONAR CHAVE PRIMARIA AO CAMPO MATRICULA DA TABELA DE VENDEDORES
ALTER TABLE tabela_de_vendedores ADD PRIMARY KEY (MATRICULA);