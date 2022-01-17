-- VARCHAR(100) -> tipo de String no MySQL e seu limite de caracter.

-- Criar um banco de dados
	-- CREATE DATABASE banco;

-- Remover um banco
	-- DROP DATABASE banco;

-- Comando para usar o banco desejado 
	-- USE banco;

-- Criar uma tabela
	-- CREATE TABLE tabela (
	-- nome VARCHAR(100)
	-- );

-- Remover tabela
	-- DROP TABLE tabela;

-- Tipos de dados
	-- texto = VARCHAR(x)
	-- numero = INT(x)
	-- datas = TIMESTAMP, DATE

-- Alterar uma tabela (ADICIONAR COLUNA)
	-- ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(255);

-- Selecionar uma coluna da tabela ou todas (*)
	-- SELECT *  FROM pessoas;

-- CRUD
	-- C = Create = INSERT
	-- R = Read = SELECT (WHERE)
	-- U = Update = UPDATE (Sempre utilizar o WHERE)
	-- D = Delete = DELETE (Sempre utilizar o WHERE)

-- Inserir dados na tabela
	-- INSERT INTO pessoas (salario, nome, data_nascimento, profissao)
	-- VALUES(3000,"Lucas","1999-12-15", "Programador");

-- Seleção de dados com condição
	-- SELECT * FROM pessoas
	-- WHERE salario > 4000;

-- SET SQL_SAFE_UPDATES = 0;

-- atualização de valor
	-- UPDATE pessoas SET salario = 3000 
	-- WHERE nome = "Maria";

-- Remover dados
	-- DELETE FROM pessoas WHERE profissao = "Programador";

-- Constranins
	-- CREATE TABLE pessoas (
	-- id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	-- nome VARCHAR(100),
	-- salario INT,
	-- data_nascimento DATE
	-- );
    
 -- constraints - relação - FOREIGN KEY
    
    -- CREATE TABLE enderecos (
    -- id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    -- rua VARCHAR(255),
    -- numero VARCHAR(10),
    -- pessoa_id INT NOT NULL,
    -- FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
    -- );
    
    -- Consulta de tabelas com relação
		-- JOIN
        -- INNER JOIN
        -- LEFT JOIN
        -- RIGHT JOIN
        
		-- SELECT pessoas.nome, enderecos.*
		-- FROM pessoas
		-- JOIN enderecos ON pessoas.id = enderecos.pessoa_id;
 
		-- SELECT pessoas.nome, enderecos.*
		-- FROM pessoas
		-- LEFT JOIN enderecos ON pessoas.id = enderecos.pessoa_id;
 
		-- SELECT pessoas.nome, enderecos.*
		-- FROM pessoas
		-- RIGHT JOIN enderecos ON pessoas.id = enderecos.pessoa_id;

-- Funções de INT
	-- SELECT SUM(salario) FROM pessoas; -- soma de salarios
	-- SELECT SUM(salario)AS Soma_dos_Salarios FROM pessoas; -- soma de salarios com nome

	-- SELECT COUNT(*)AS qtd_Pessoas FROM pessoas; -- CONTADOR
	-- SELECT COUNT(*)AS qtd_enderecos FROM enderecos; -- Contador
    
    -- SELECT profissao, COUNT(*) AS qtd_por_profissao FROM pessoas
    -- GROUP BY profissao; -- agrupadar dados com as contagens
    
-- Funções de String    
	-- SELECT CONCAT("O nome da pessoa é: ", nome, ", e ele é: ", profissao)
    -- AS dados_Concatenados
    -- FROM pessoas;
    
    -- SELECT 
    -- YEAR(data_nascimento) AS ANO_DE_NASCIMENTO,
    -- MONTH(data_nascimento) AS MES_DE_NASCIMENTO,
    -- DAY(data_nascimento) As DIA_DE_NASCIMENTO
    -- FROM pessoas;
